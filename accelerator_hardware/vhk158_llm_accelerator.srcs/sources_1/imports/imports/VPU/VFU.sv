// VFU
`define BYPASS 2'b00
`define ADD 2'b01
`define SUBEXP 2'b10
`define MUL 2'b11

`define VFU_MUL_TOTAL_LATENCY 7
`define VFU_ADD_TOTAL_LATENCY 4
`define VFU_SUB_LATENCY 3
`define VFU_EXP_LATENCY 4
`define VFU_SUBEXP_TOTAL_LATENCY 10 //8

// `define PARALLEL_NUM 64
// `define BIT_NUM 32
module VFU (
	input i_clk,
	input i_rst_n,

	// CPU Ctrl Register
	input [1:0] i_cfg_cmd,
	input i_sfu_v_valid_reset,
	// input logic i_cfg_valid,
	// output logic i_cfg_ready,

	// DMA -> VFU
	input [`PARALLEL_NUM-1:0] i_valid,
	input [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] i_data_1,
	input [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] i_data_2,
	
	// VFU -> SFU
	output [`PARALLEL_NUM-1:0] o_valid,
	output [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] o_data
);

	//logic [63:0][15:0] data_1, data_1_nxt, data_2, data_2_nxt;
	//logic [1:0] cmd, cmd_nxt;
	integer k;
	logic [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] data_out, data_out_nxt;
	logic [`PARALLEL_NUM-1:0] valid_out, valid_out_nxt;

	logic [`VFU_SUBEXP_TOTAL_LATENCY-2:0][`PARALLEL_NUM-1:0] valid_delay_nxt;
	logic [`VFU_SUBEXP_TOTAL_LATENCY-2:0][`PARALLEL_NUM-1:0] valid_delay;

	// logic [`VFU_ADD_TOTAL_LATENCY-2:0][`PARALLEL_NUM-1:0] valid_add_delay_nxt;
	// logic [`VFU_ADD_TOTAL_LATENCY-2:0][`PARALLEL_NUM-1:0] valid_add_delay;

	//logic [`PARALLEL_NUM*`BIT_NUM-1:0]    valid_dup_flat;

	integer i;
	genvar j, g_i;

	assign o_data = data_out;
	assign o_valid = valid_out;

	logic [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] mul_output, add_output;
	logic [`PARALLEL_TOKEN_NUM:0][`BIT_NUM-1:0] sub_output, exp_output;
	
	/*
	generate 
		for(g_i =0 ; g_i < 64 ; g_i = g_i+1)begin
			BF16_MULTIPLIER u_BF16_MULTIPLIER (
				.i_clk  (i_clk),
			 	.i_rst_n(i_rst_n),
			 	.i_data_1(i_mul_1[g_i]),
			 	.i_data_2(i_mul_2[g_i]),
			 	.o_mul  (o_mul[g_i])
			);
		end
	endgenerate

	generate 
		for(g_i =0 ; g_i < 64 ; g_i = g_i+1)begin
			BF16_ADDER u_BF16_ADDER (
			 	.i_clk  (i_clk),
			 	.i_rst_n(i_rst_n),
			 	.i_data_1(i_add_1[g_i]),
			 	.i_data_2(i_add_2[g_i]),
			 	.o_add  (o_add[g_i])
			);
		end
	endgenerate

	generate 
		for(g_i =0 ; g_i < 64 ; g_i = g_i+1)begin
			BF16_SUBTRACTOR u_BF16_SUBTRACTOR (
			 	.i_clk  (i_clk),
			 	.i_rst_n(i_rst_n),
			 	.i_data_1(i_sub_1[g_i]),
			 	.i_data_2(i_sub_2[g_i]),
			 	.o_sub  (o_sub[g_i])
			);
		end
	endgenerate

	generate 
		for(g_i =0 ; g_i < 64 ; g_i = g_i+1)begin
			BF16_EXPONENT u_BF16_EXPONENT (
			 	.i_clk  (i_clk),
			 	.i_rst_n(i_rst_n),
			 	.i_data(i_exp_1[g_i]),			 	
			 	.o_exp  (o_exp[g_i])
			);
		end
	endgenerate
	*/
	
	VFU_MUL u_VFU_MUL(
		.i_clk(i_clk),
		.i_rst_n(i_rst_n),
		.o_mul (mul_output),
		.i_data_1 (i_data_1),
		.i_data_2 (i_data_2)
	);

	VFU_ADD u_VFU_ADD(
		.i_clk(i_clk),
		.i_rst_n(i_rst_n),
		.o_add (add_output),
		.i_data_1 (i_data_1),
		.i_data_2 (i_data_2)
	);

	VFU_SUB u_VFU_SUB(
		.i_clk(i_clk),
		.i_rst_n(i_rst_n),
		.o_sub (sub_output),
		.i_data_1 (i_data_1[`PARALLEL_TOKEN_NUM:0]),
		.i_data_2 (i_data_2[`PARALLEL_TOKEN_NUM:0])
	);

	VFU_EXP u_VFU_EXP(
		.i_clk(i_clk),
		.i_rst_n(i_rst_n),
		.o_exp (exp_output),
		.i_data (sub_output)
	);
	
	// always_comb begin
	// 	cmd_nxt = (i_cfg_valid && i_cfg_ready) ? i_cfg_cmd : cmd;
	// end

	/*
	always_comb begin
		cmd_nxt = i_cfg_cmd;
	end
	*/

	// always_comb begin
	// 	valid_out_nxt = 1'b0;
	// 	if (i_valid) begin
	// 		valid_out_nxt = 1'b1;
	// 	end
	// end
	always_comb begin
		valid_delay_nxt [0] = i_valid;
		for(k=1; k<`VFU_SUBEXP_TOTAL_LATENCY-1; k=k+1)begin
			valid_delay_nxt[k] = valid_delay[k-1];
		end
	end

	// always_comb begin
	// 	valid_add_delay_nxt [0] = i_valid;
	// 	for(k=1; k<`VFU_ADD_TOTAL_LATENCY-1; k=k+1)begin
	// 		valid_add_delay_nxt[k] = valid_add_delay[k-1];
	// 	end
	// end

	always_comb begin
		valid_out_nxt = '0;
		case(i_cfg_cmd)
			`BYPASS: valid_out_nxt = i_valid;
			`ADD: valid_out_nxt = valid_delay[`VFU_ADD_TOTAL_LATENCY-2];
			`SUBEXP: valid_out_nxt = valid_delay[`VFU_SUBEXP_TOTAL_LATENCY-2];
			`MUL: valid_out_nxt = valid_delay[`VFU_MUL_TOTAL_LATENCY-2];
		endcase
		/*
		if (cmd[1:0] == `BYPASS) begin
			valid_out_nxt = i_valid;
		end
		else if (cmd[1:0] == `ADD) begin
			valid_out_nxt = o_valid[1];
		end
		else if (cmd[1:0] == `SUBEXP) begin
			valid_out_nxt = o_valid[7];
		end
		else if (cmd[1:0] == `MUL) begin
			valid_out_nxt = o_valid[2];
		end
		*/
	end

	// for real work
	// always_comb begin
	// 	case(cmd[1:0])
	// 		`BYPASS: data_out_nxt = i_data_1;
	// 		`ADD: data_out_nxt = add_output;
	// 		`SUB: data_out_nxt = exp_output & valid_dup_flat;
	// 		`MUL: data_out_nxt = mul_output;
	// 		default: data_out_nxt = i_data_1;
	// 	endcase	
	// end

	// for real work
	// generate
	// for (j = 0; j < 64; j = j + 1) begin : loop_j
	// 	assign valid_dup_flat[j*16 +: 16] = {16{o_valid[7][j]}};
	// end
	// endgenerate

	// generate
	// 	for (j = 0; j < `PARALLEL_NUM; j = j + 1) begin : loop_j
	// 		assign valid_dup_flat[j*`BIT_NUM +: `BIT_NUM] = {`BIT_NUM{valid_delay[`VFU_SUBEXP_TOTAL_LATENCY-2][j]}};
	// 	end
	// endgenerate

	// just for test(simulate the pipeline delay)
	always_comb begin
		case(i_cfg_cmd)
			`BYPASS: begin
				if (|i_valid)
					data_out_nxt = i_data_1;
				else 
					data_out_nxt = 0;
					//data_out_nxt = data_out;
			end
			`ADD: begin
				if (|valid_delay[`VFU_ADD_TOTAL_LATENCY-2])
					data_out_nxt = add_output;
				else 
					data_out_nxt = 0;
					//data_out_nxt = data_out;
			end
			`SUBEXP: begin
				if (|valid_delay[`VFU_SUBEXP_TOTAL_LATENCY-2]) begin
					//data_out_nxt[`PARALLEL_TOKEN_NUM] = exp_output & valid_dup_flat;
					data_out_nxt[`PARALLEL_TOKEN_NUM:0] = exp_output;
					data_out_nxt[`PARALLEL_NUM-1:`PARALLEL_TOKEN_NUM+1] = 0;
				end
				else 
					data_out_nxt = 0;
					//data_out_nxt = data_out;
			end
			`MUL: begin
				if (|valid_delay[`VFU_MUL_TOTAL_LATENCY-2])
					data_out_nxt = mul_output;
				else 
					data_out_nxt = 0;
					//data_out_nxt = data_out;
			end
			default: data_out_nxt = 0;
		endcase	
	end

	/*
	always_comb begin
		data_1_nxt = data_1;
		data_2_nxt = data_2;

		if (i_valid) begin
			data_1_nxt = i_data_1;
			data_2_nxt = i_data_2;
		end
	end
	*/
	always_ff @(posedge i_clk or negedge i_rst_n)begin
		if(!i_rst_n)begin
			//data_1 <= 0;
			//data_2 <= 0;
			//cmd <= 0;
			data_out <= 0;
			valid_out <= 0;
			valid_delay <= 0;
			//valid_add_delay <= 0;
			/*
			for (i = 0; i < 8; i = i + 1) begin
				o_valid_r[i] <= 0;
			end
			*/
		end else begin
			//data_1 <= data_1_nxt;
			//data_2 <= data_2_nxt;
			//cmd <= cmd_nxt;	
			data_out <= data_out_nxt;
			valid_out <= valid_out_nxt;
			if(i_sfu_v_valid_reset)
				valid_delay <= '0;
			else
				valid_delay <= valid_delay_nxt;
			//valid_add_delay <= valid_add_delay_nxt;
			/*
			o_valid_r[0] <= i_valid;
			for (i = 1; i < 8; i = i + 1) begin
				o_valid_r[i] <= o_valid_r[i - 1];
			end
			*/
		end
	end

endmodule


module VFU_MUL (
	input i_clk,
	input i_rst_n,
	input [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] i_data_1,
	input [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] i_data_2,
	output [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] o_mul
);	
	genvar i;
	generate 
		for (i = 0 ; i < `PARALLEL_NUM ; i = i + 1) begin: gen_mul
		  FPGA_FP32_MULTIPLIER u_BF32_MULTIPLIER (
	  
	           .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	           //.s_axis_a_tdata           ({final1, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
	           .s_axis_a_tdata           (i_data_1[i]),
	           .s_axis_b_tvalid          (1'b1),            // input wire s_axis_b_tvalid
	           .s_axis_b_tdata           (i_data_2[i]),              // input wire [15 : 0] s_axis_b_tdata
	           .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	           .m_axis_result_tdata      (o_mul[i]) ,   // output wire [15 : 0] m_axis_result_tdata
	           .aclk   					(i_clk),
	           .aresetn					(i_rst_n)
	       );
//			BF32_MULTIPLIER u_BF32_MULTIPLIER (
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//			 	.i_data_1(i_data_1[i]),
//			 	.i_data_2(i_data_2[i]),
//			 	.o_mul  (o_mul[i])
//			);
		end
	endgenerate

endmodule


module VFU_ADD (
	input i_clk,
	input i_rst_n,
	input [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] i_data_1,
	input [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] i_data_2,
	output [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] o_add
);
	logic [`PARALLEL_NUM-1:0][`BIT_NUM_16-1:0] o_add_result;
	genvar i ;
	generate 
		for(i =0 ; i < `PARALLEL_NUM ; i = i+1)begin: gen_add
		     FPGA_BF16_ADDER  u_BF16_ADDER(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(i_data_1[i][`BIT_NUM-1 -: 16]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(i_data_2[i][`BIT_NUM-1 -: 16]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(o_add_result[i]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//			BF16_ADDER u_BF16_ADDER (
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//			 	.i_data_1(i_data_1[i][`BIT_NUM-1 -: 16]),
//			 	.i_data_2(i_data_2[i][`BIT_NUM-1 -: 16]),
//			 	.o_add  (o_add_result[i])
//			);
		end
	endgenerate
	generate 
		for (i = 0 ; i < `PARALLEL_NUM ; i = i + 1) begin: gen_add_concat
			assign o_add[i] = {o_add_result[i], 16'd0};
		end
	endgenerate	
endmodule


module VFU_EXP (
	input i_clk,
	input i_rst_n,
	input [`PARALLEL_TOKEN_NUM:0][`BIT_NUM-1:0] i_data,
	output [`PARALLEL_TOKEN_NUM:0][`BIT_NUM-1:0] o_exp
);

	genvar i ;
	generate 
		for (i = 0 ; i < `PARALLEL_TOKEN_NUM+1 ; i = i + 1) begin: gen_exp
		  FPGA_FP32_EXPONENT u_BF32_EXPONENT(
	           .aclk(i_clk),
	           .aresetn(i_rst_n),
	           .s_axis_a_tvalid(1'b1),
	           .s_axis_a_tdata(i_data[i]),
	           .m_axis_result_tvalid( ),
	           .m_axis_result_tdata(o_exp[i])
	       );
//			BF32_EXPONENT u_BF32_EXPONENT (
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//				.i_data(i_data[i]),
//				.o_exp  (o_exp[i])
//			);
		end
	endgenerate

endmodule


module VFU_SUB (
	input i_clk,
	input i_rst_n,
	input [`PARALLEL_TOKEN_NUM:0][`BIT_NUM-1:0] i_data_1,
	input [`PARALLEL_TOKEN_NUM:0][`BIT_NUM-1:0] i_data_2,
	output [`PARALLEL_TOKEN_NUM:0][`BIT_NUM-1:0] o_sub
);
	logic [`PARALLEL_TOKEN_NUM:0][`BIT_NUM_16-1:0] o_sub_result;
	genvar i ;
	generate 
		for (i = 0 ; i < `PARALLEL_TOKEN_NUM+1 ; i = i + 1) begin: gen_sub
		      FPGA_BF16_SUBTRACTOR  u_BF16_SUBTRACTOR(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(i_data_1[i][`BIT_NUM-1 -: 16]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(i_data_2[i][`BIT_NUM-1 -: 16]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(o_sub_result[i]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//			BF16_SUBTRACTOR u_BF16_SUBTRACTOR (
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//			 	.i_data_1(i_data_1[i][`BIT_NUM-1 -: 16]),
//			 	.i_data_2(i_data_2[i][`BIT_NUM-1 -: 16]),
//			 	.o_sub  (o_sub_result[i])
//			);
		end
	endgenerate

	generate 
		for (i = 0 ; i < `PARALLEL_TOKEN_NUM+1 ; i = i + 1) begin: gen_sub_concat
			assign o_sub[i] = {o_sub_result[i], 16'd0};
		end
	endgenerate	
endmodule