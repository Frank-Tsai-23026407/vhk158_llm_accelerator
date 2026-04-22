module MFU (
	input i_clk,
	input i_rst_n,


	//input logic i_accu_buffer_reset,
	//input logic [1:0] i_buffer_select,

	// DMA -> MFU
	input [`BIT_NUM-1:0] i_data         [0:`PARALLEL_NUM-1],
	//input                i_valid_data   [0:`PARALLEL_NUM-1], //no use
	input [`BIT_NUM-1:0] i_weight       [0:`PARALLEL_NUM-1],

	input i_accu_buffer_reset,
	input [1:0] i_buffer_select,
	input i_final_in,
	input [1:0] i_cmd,
	input i_sfu_m_valid_reset,
	//input                i_valid_weight [0:`PARALLEL_NUM-1], //no use
	//input logic i_final_in,
	//input logic i_reduce_max_output_ready,

	// MFU -> SFU
	//output logic o_final_out,
	output o_final_out,
	output o_final_out_pre,
    output [`BIT_NUM-1:0] o_sv_ports [0:`PARALLEL_TOKEN_NUM-1],
	output [`BIT_NUM-1:0] o_mux_data
	//output logic [1:0] o_mux_index
);

	localparam ACTI_OPER = 2'd1;
    localparam MASK_OPER = 2'd2;
    localparam PASS_OPER = 2'd0;
    localparam SV_OPER = 2'd3;

	logic [`BIT_NUM-1:0] mul_output [0:`PARALLEL_NUM-1];
	logic [`BIT_NUM-1:0] adder_tree_output;
	//assign o_mux_data = (o_final_out) ? accu_buffer_result : 32'hff800000;
	//assign o_final_out = (delay_cycle_type == 0) ? final_in_delay[`MFU_QK_FINAL_IN_DELAY-1] : final_in_delay[`MFU_SV_FINAL_IN_DELAY-1];
	genvar mul_i;
	
	integer k, w;

	logic [`BIT_NUM-1:0] mux_data, mux_data_nxt;
	logic  final_out, final_out_nxt;
	logic  final_out_pre, final_out_pre_nxt;

	assign o_mux_data = mux_data;
	assign o_final_out = final_out;
	assign o_final_out_pre = final_out_pre;
	/*reset_accu_buffer_delay combinational logic*/
    logic [`MFU_RESET_ACCU_BUFFER_DELAY-1:0] reset_accu_buffer_delay ;
	logic [`MFU_RESET_ACCU_BUFFER_DELAY-1:0] reset_accu_buffer_delay_nxt ;
	
	logic [`MFU_QK_FINAL_IN_DELAY-1:0]  final_in_delay ;
	logic [`MFU_QK_FINAL_IN_DELAY-1:0]  final_in_delay_nxt ;

	logic [`MFU_BUFFER_SELECT_DELAY-1:0][1:0]  buffer_select_delay ;
	logic [`MFU_BUFFER_SELECT_DELAY-1:0][1:0]  buffer_select_delay_nxt ;
	
	//logic [1:0] i_buffer_select_r, i_buffer_select_w;
	
	logic [`BIT_NUM-1:0] accum_out;
	logic [`BIT_NUM-1:0] accu_buffer [0:3];
    logic [`BIT_NUM-1:0] accu_buffer_nxt [0:3];
	
	logic [`BIT_NUM-1:0] accu_buffer_result1;
	logic [`BIT_NUM-1:0] accu_buffer_result2;
	logic [`BIT_NUM-1:0] accu_buffer_result ;
	logic [`BIT_NUM-1:0] accumulator;
	
	FPGA_FP32_ADDER  u_adder_for_accu(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(accumulator),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(adder_tree_output),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(accum_out) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	         
//	BF32_ADDER u_adder_for_accu(
//		.i_clk(i_clk),
//		.i_rst_n(i_rst_n),
//		.i_data_1 (accumulator),
//		.i_data_2 (adder_tree_output),
//		.o_add (accum_out)	
//	);

	always@(*)begin
		reset_accu_buffer_delay_nxt [0] = i_accu_buffer_reset;
		for(k=1; k<`MFU_RESET_ACCU_BUFFER_DELAY; k=k+1)begin
			reset_accu_buffer_delay_nxt[k] = reset_accu_buffer_delay[k-1];
		end
	end
	
	/*final_in_delay combinational logic*/
	always@(*)begin
		final_in_delay_nxt [0] = i_final_in;
		for(k=1; k<`MFU_QK_FINAL_IN_DELAY; k=k+1)begin
			final_in_delay_nxt[k] = final_in_delay[k-1];
		end
	end
	
	/*buffer_select_delay combinational logic*/
	always@(*)begin
		buffer_select_delay_nxt [0] = i_buffer_select;
		for(k=1; k<`MFU_BUFFER_SELECT_DELAY; k=k+1)begin
			buffer_select_delay_nxt[k] = buffer_select_delay[k-1];
		end
	end
	
	// always@(*) begin
    //     if(i_MPU_data_valid)
	// 		i_buffer_select_w = i_buffer_select_r + 1;
	// 	else
	// 		i_buffer_select_w = i_buffer_select_r;
	// end
	

	always@(*)begin
		mux_data_nxt = 0; 
		if(i_cmd == MASK_OPER)
			mux_data_nxt = (final_in_delay[`MFU_QK_FINAL_IN_DELAY-1]) ? accu_buffer_result : 32'hff800000;
		else if(i_cmd == PASS_OPER && final_in_delay[`MFU_LM_PROJ_FINAL_IN_DELAY-1]) begin
			mux_data_nxt = accu_buffer[buffer_select_delay[`MFU_BUFFER_SELECT_DELAY-1]];
		end
	end
    
	always@(*)begin
		final_out_nxt = 0;
		if(i_cmd == MASK_OPER)
			final_out_nxt = final_in_delay[`MFU_QK_FINAL_IN_DELAY-1];
		else if(i_cmd == SV_OPER)
			final_out_nxt = final_in_delay[`MFU_SV_FINAL_IN_DELAY-1];
		else
			final_out_nxt = final_in_delay[`MFU_LM_PROJ_FINAL_IN_DELAY-1];
	end

	always@(*)begin
		final_out_pre_nxt = 0;
		if(i_cmd == MASK_OPER)
			final_out_pre_nxt = final_in_delay[`MFU_QK_FINAL_IN_DELAY-2];
		else if(i_cmd == SV_OPER)
			final_out_pre_nxt = final_in_delay[`MFU_SV_FINAL_IN_DELAY-2];
		else
			final_out_pre_nxt = final_in_delay[`MFU_LM_PROJ_FINAL_IN_DELAY-2];
	end

    always @(*) begin
        if (reset_accu_buffer_delay[`MFU_RESET_ACCU_BUFFER_DELAY-1]) begin
            accumulator = '0;
        end else begin
            accumulator = accu_buffer[buffer_select_delay[`MFU_BUFFER_SELECT_DELAY-5]];
        end
    end

    always @(*) begin
        for (w = 0; w < 4; w = w + 1) begin
            accu_buffer_nxt[w] = accu_buffer[w];
        end
		if(i_cmd == PASS_OPER)
        	accu_buffer_nxt[buffer_select_delay[`MFU_BUFFER_SELECT_DELAY-2]] = accum_out;
		else
			accu_buffer_nxt[buffer_select_delay[`MFU_BUFFER_SELECT_DELAY-5]] = adder_tree_output;
    end
    
	always@(posedge i_clk or negedge i_rst_n)begin 
		if(!i_rst_n)begin
			reset_accu_buffer_delay <= 0;
			final_in_delay <= 0;
			buffer_select_delay <= 0;
			//i_buffer_select_r <= 0;
			for (w = 0; w < 4; w = w + 1) begin
			    accu_buffer[w] <= 0;
			end
			mux_data <= 0;
			final_out <= 0;
			final_out_pre <= 0;
		end else begin 
			reset_accu_buffer_delay <= reset_accu_buffer_delay_nxt;
			if (i_sfu_m_valid_reset)
				final_in_delay <= 0;
			else
				final_in_delay <= final_in_delay_nxt;
			buffer_select_delay <= buffer_select_delay_nxt;
			//i_buffer_select_r <= i_buffer_select_w;
			for (w = 0; w < 4; w = w + 1) begin
			    accu_buffer[w] <= accu_buffer_nxt[w];
			end
			mux_data <= mux_data_nxt;
			final_out <= final_out_nxt;
			final_out_pre <= final_out_pre_nxt;
		end
	end
    
    FPGA_FP32_ADDER  u_BF32_ACCU_ADDER1(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(accu_buffer[0]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(accu_buffer[1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(accu_buffer_result1) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	         
	FPGA_FP32_ADDER  u_BF32_ACCU_ADDER2(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(accu_buffer[2]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(accu_buffer[3]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(accu_buffer_result2) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	
	FPGA_FP32_ADDER  u_BF32_ACCU_ADDER3(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(accu_buffer_result1),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(accu_buffer_result2),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(accu_buffer_result) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	         
	         
//    BF32_ADDER u_BF32_ACCU_ADDER1 (
//		  .i_data_1(accu_buffer[0]),              // input wire [15 : 0] s_axis_a_tdata
//		  .i_data_2(accu_buffer[1]),              // input wire [15 : 0] s_axis_b_tdata
//		  .o_add(accu_buffer_result1) ,   // output wire [15 : 0] m_axis_result_tdata
//		  .i_clk(i_clk),
//		  .i_rst_n(i_rst_n)
//	);
//	BF32_ADDER u_BF32_ACCU_ADDER2 (
//		  .i_data_1(accu_buffer[2]),              // input wire [15 : 0] s_axis_a_tdata
//		  .i_data_2(accu_buffer[3]),              // input wire [15 : 0] s_axis_b_tdata
//		  .o_add(accu_buffer_result2) ,   // output wire [15 : 0] m_axis_result_tdata
//		  .i_clk(i_clk),
//		  .i_rst_n(i_rst_n)
//	);
//	BF32_ADDER u_BF32_ACCU_ADDER3 (
//		  .i_data_1(accu_buffer_result1),              // input wire [15 : 0] s_axis_a_tdata
//		  .i_data_2(accu_buffer_result2),              // input wire [15 : 0] s_axis_b_tdata
//		  .o_add(accu_buffer_result) ,   // output wire [15 : 0] m_axis_result_tdata
//		  .i_clk(i_clk),
//		  .i_rst_n(i_rst_n)
//	);

	generate //i_data, i_weight = 0 for MFU idle
		for (mul_i = 0 ; mul_i < `PARALLEL_NUM ;  mul_i = mul_i+1) begin: gen_64mul
			FPGA_FP32_MULTIPLIER u_BF32_MULTIPLIER (
	  
	           .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	           //.s_axis_a_tdata           ({final1, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
	           .s_axis_a_tdata           (i_data[mul_i]),
	           .s_axis_b_tvalid          (1'b1),            // input wire s_axis_b_tvalid
	           .s_axis_b_tdata           (i_weight[mul_i]),              // input wire [15 : 0] s_axis_b_tdata
	           .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	           .m_axis_result_tdata      (mul_output[mul_i]) ,   // output wire [15 : 0] m_axis_result_tdata
	           .aclk   					(i_clk),
	           .aresetn					(i_rst_n)
	       );
			
//			BF32_MULTIPLIER u_BF32_MULTIPLIER(
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//				.i_data_1 (i_data[mul_i]),
//				.i_data_2 (i_weight[mul_i]),
//				.o_mul (mul_output[mul_i])
//			);
		end
	endgenerate

	BF32_ADDER_TREE u_BF32_ADDER_TREE(
		.i_clk(i_clk),
		.i_rst_n(i_rst_n),
		.i_data (mul_output),
        .o_sv_ports(o_sv_ports),
		.o_sum (adder_tree_output)
	);

endmodule
