`define BIT_NUM 32
`define PARALLEL_NUM 64
`define PARALLEL_TOKEN_NUM 8

module BF32_ADDER_TREE (
	input i_clk,
	input i_rst_n,
	input [`BIT_NUM-1:0] i_data [0:`PARALLEL_NUM-1],	
	output [`BIT_NUM-1:0] o_sv_ports [0:`PARALLEL_TOKEN_NUM-1],
	output [`BIT_NUM-1:0] o_sum
);
	
	logic [`BIT_NUM-1:0] layer_1 [0:`PARALLEL_NUM/2-1];
	logic [`BIT_NUM-1:0] layer_2 [0:`PARALLEL_NUM/4-1];
	logic [`BIT_NUM-1:0] layer_3 [0:`PARALLEL_NUM/8-1];
	logic [`BIT_NUM-1:0] layer_4 [0:`PARALLEL_NUM/16-1];
	logic [`BIT_NUM-1:0] layer_5 [0:`PARALLEL_NUM/32-1];
	logic [`BIT_NUM-1:0] layer_6;
	logic [`BIT_NUM-1:0] i_data_wire [0:`PARALLEL_NUM-1];
	genvar i;
	assign o_sum = layer_6 ;

	generate
		for (i=0; i<`PARALLEL_NUM ; i=i+1) begin
			assign i_data_wire[i] = i_data[i];
		end
	endgenerate

	generate
		for (i=0; i<`PARALLEL_TOKEN_NUM ; i=i+1) begin
			assign o_sv_ports[i] = layer_3[i];
		end
	endgenerate

	generate
		for (i=0; i<`PARALLEL_NUM/2 ; i=i+1) begin: gen_adder_tree_1 //2
            FPGA_FP32_ADDER  u_layer_1_BF32_ADDER(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(i_data_wire[2*i]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(i_data_wire[2*i+1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(layer_1[i]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//			BF32_ADDER u_layer_1_BF32_ADDER(
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//				.i_data_1 (i_data_wire[2*i]),
//				.i_data_2 (i_data_wire[2*i+1]),
//				.o_add (layer_1[i])
//			);
		end

		for (i=0; i<`PARALLEL_NUM/4; i=i+1) begin: gen_adder_tree_2 //4
            FPGA_FP32_ADDER  u_layer_2_BF32_ADDER(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(layer_1[2*i]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(layer_1[2*i+1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(layer_2[i]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//			BF32_ADDER u_layer_2_BF32_ADDER(
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//				.i_data_1 (layer_1[2*i]),
//				.i_data_2 (layer_1[2*i+1]),
//				.o_add (layer_2[i] )
//			);
		end

		for (i=0; i<`PARALLEL_NUM/8; i=i+1) begin: gen_adder_tree_3 //8
            FPGA_FP32_ADDER  u_layer_3_BF32_ADDER(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(layer_2[2*i]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(layer_2[2*i+1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(layer_3[i]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//			BF32_ADDER u_layer_3_BF32_ADDER(
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//				.i_data_1 (layer_2[2*i]),
//				.i_data_2 (layer_2[2*i+1]),
//				.o_add (layer_3[i])
//			);
		end

		for (i=0; i<`PARALLEL_NUM/16; i=i+1) begin: gen_adder_tree_4 //16
            FPGA_FP32_ADDER  u_layer_4_BF32_ADDER(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(layer_3[2*i]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(layer_3[2*i+1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(layer_4[i]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//			BF32_ADDER u_layer_4_BF32_ADDER(
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//				.i_data_1 (layer_3[2*i]),
//				.i_data_2 (layer_3[2*i+1]),
//				.o_add (layer_4[i])
//			);
		end

		for (i=0; i<`PARALLEL_NUM/32; i=i+1) begin: gen_adder_tree_5 //32
            FPGA_FP32_ADDER  u_layer_5_BF32_ADDER(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(layer_4[2*i]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(layer_4[2*i+1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(layer_5[i]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//			BF32_ADDER u_layer_5_BF32_ADDER(
//				.i_clk(i_clk),
//				.i_rst_n(i_rst_n),
//				.i_data_1 (layer_4[2*i]),
//				.i_data_2 (layer_4[2*i+1]),
//				.o_add (layer_5[i])
//			);
		end
        
        FPGA_FP32_ADDER  u_layer_6_BF32_ADDER(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(layer_5[0]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(layer_5[1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(layer_6) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	         
//		BF32_ADDER u_layer_6_BF32_ADDER( //64
//			.i_clk(i_clk),
//			.i_rst_n(i_rst_n),
//			.i_data_1 (layer_5[0]),
//			.i_data_2 (layer_5[1]),
//			.o_add (layer_6)
//		);	
	endgenerate

endmodule