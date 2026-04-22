`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 09:56:50 AM
// Design Name: 
// Module Name: bf16_int4_mul
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define INT4_BF16_RES_S_LATENCY 4 //
`define INT4_BF16_EXP_LATENCY 2 //
`define INT4_BF16_MUL_LATENCY 2 //
`define INT4_BF16_RESET_ACCU_BUFFER_DELAY 42 //
`define INT4_BF16_BUFFER_SELECT_DELAY 46
`define INT4_BF16_FINAL_IN_DELAY 46
`define INT4_BF16_SCALE_DELAY 31 //
`define INT4_BF16_ADDER_EXP_LATENCY 3 //
`define INT4_BF16_LAST_ADDER_EXP_LATENCY 3 //

module bf16_int4_mul(
    input  clk,
    input  rst_n,
    input  i_accu_buffer_reset,
    input  i_final_in,
    input  i_MPU_data_valid,  //high fanout
    input  [64*16-1:0] i_scale,
    input  [64*16-1:0] bf16_in, 
    input  [64*32*4-1:0]  int4_in, 
    output [32*16-1:0] bf16_out,
    output o_final_out
    );
    genvar i, j;
    logic [15:0] act_data1 [0:31];
    logic [15:0] act_data2 [0:31];
    logic [3:0] weight_data1 [0:15][0:63];
    logic [3:0] weight_data2 [0:15][0:63];
    logic [15:0] scale [0:31][0:1];
    
    logic [31:0] fp32_out_top [0:31];
    logic [31:0] fp32_out_bottom [0:31];

//    logic [31:0] fp32_out_top_wire1;
//    logic [31:0] fp32_out_top_wire2;
//    logic [31:0] fp32_out_bottom_wire1;
//    logic [31:0] fp32_out_bottom_wire2;

    
    logic [31:0] accumulator [0:31];
    
    
    
    generate
        for (i = 0; i < 32; i = i + 1) begin
    	    assign act_data1[i] = (i_MPU_data_valid) ? bf16_in[(63-i)*16 +: 16] : 16'd0;
        end
    endgenerate
    

    generate
        for (i = 0; i < 32; i = i + 1) begin
    	    assign act_data2[i] = (i_MPU_data_valid) ? bf16_in[(31-i)*16 +: 16] : 16'd0;
        end
    endgenerate

    generate
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 32; j = j + 1) begin
    	        assign weight_data1[i][j] = (i_MPU_data_valid) ? int4_in[((31-2*i)*64*4+(63-j)*4) +: 4] : 4'd0;
                assign weight_data1[i][j+32] = (i_MPU_data_valid) ? int4_in[((30-2*i)*64*4+(63-j)*4) +: 4] : 4'd0;
                assign weight_data2[i][j] = (i_MPU_data_valid) ? int4_in[((31-2*i)*64*4+(31-j)*4) +: 4] : 4'd0;
                assign weight_data2[i][j+32] = (i_MPU_data_valid) ? int4_in[((30-2*i)*64*4+(31-j)*4) +: 4] : 4'd0;
            end
        end
    endgenerate      
    
    generate
        for (i = 0; i < 32; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
    	       assign scale[i][j] = (i_MPU_data_valid) ? i_scale[(63-2*i-j)*16 +: 16] : 16'd0;
    	    end
        end
    endgenerate
    
    generate
        
        for (j = 0; j < 16; j = j + 1) begin : BLOCK32_ACC_SCALE_1
            logic [15:0] local_scale [0:1];

            assign local_scale[0] = scale[2*j][0];
            assign local_scale[1] = scale[2*j+1][0];
            two_block32_acc_scale u_two_block32_acc_scale_row1 (
                .clk(clk),
                .rst_n(rst_n),
                .bf16_in(act_data1),
                .int4_in(weight_data1[j]),
                .valid(i_MPU_data_valid),
                .scale(local_scale),
                .fp32_out1(fp32_out_top[2*j]),
                .fp32_out2(fp32_out_top[2*j+1])
            );
        end

        for (j = 0; j < 16; j = j + 1) begin : BLOCK32_ACC_SCALE_2 
            logic [15:0] local_scale_row2 [0:1]; // 專屬於 row2 的局部陣列

            assign local_scale_row2[0] = scale[2*j][1];
            assign local_scale_row2[1] = scale[2*j+1][1];
            two_block32_acc_scale u_two_block32_acc_scale_row2 (
                .clk(clk),
                .rst_n(rst_n),
                .bf16_in(act_data2),
                .int4_in(weight_data2[j]),
                .valid(i_MPU_data_valid),
                .scale(local_scale_row2),
                .fp32_out1(fp32_out_bottom[2*j]),
                .fp32_out2(fp32_out_bottom[2*j+1])
            );        
        end
    endgenerate

     logic [31:0] two_row_acc [0:31];
     generate
         for (j = 0; j < 32; j = j + 1) begin : TWO_ROW_ACC_BF32_ADDER
             FPGA_FP32_ADDER u_FPGA_FP32_ADDER (
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(fp32_out_top[j]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(fp32_out_bottom[j]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(two_row_acc[j]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(clk),
	         	  .aresetn(rst_n)
	         );
         end
     endgenerate
    
//    logic [31:0] two_row_acc [0:31];
//    generate
//        for (j = 0; j < 32; j = j + 1) begin  : TWO_ROW_ACC_BF32_ADDER
//            BF32_ADDER u_BF32_ADDER (
//	        	  .i_data_1(fp32_out_top[j]),              // input wire [15 : 0] s_axis_a_tdata       // input wire s_axis_b_tvalid
//	        	  .i_data_2(fp32_out_bottom[j]), // output wire m_axis_result_tvalid
//	        	  .o_add(two_row_acc[j]) ,   // output wire [15 : 0] m_axis_result_tdata
//	        	  .i_clk(clk),
//	        	  .i_rst_n(rst_n)
//	        );
//        end
//    endgenerate

     logic [31:0] accum_out [0:31];
     generate
         for (j = 0; j < 32; j = j + 1) begin : ACCUM_OUT_BF32_ADDER
             FPGA_FP32_ADDER u_FPGA_FP32_ADDER (
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(two_row_acc[j]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),             // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(accumulator[j]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(accum_out[j]) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(clk),
	         	  .aresetn(rst_n)
	         );
         end
     endgenerate

//    logic [31:0] accum_out [0:31];
//    generate
//        for (j = 0; j < 32; j = j + 1) begin : ACCUM_OUT_BF32_ADDER
//            BF32_ADDER u_BF32_ADDER (
//	        	  .i_data_1(two_row_acc[j]),              // input wire [15 : 0] s_axis_a_tdata
//	        	  .i_data_2(accumulator[j]),              // input wire [15 : 0] s_axis_b_tdata
//	        	  .o_add(accum_out[j]) ,   // output wire [15 : 0] m_axis_result_tdata
//	        	  .i_clk(clk),
//	        	  .i_rst_n(rst_n)
//	        );
//        end
//    endgenerate

    integer k, w ;
    
    
/************************************************************************control***************************************************************/    
    /*reset_accu_buffer_delay combinational logic*/
    logic [`INT4_BF16_RESET_ACCU_BUFFER_DELAY-1:0] reset_accu_buffer_delay ;
	logic [`INT4_BF16_RESET_ACCU_BUFFER_DELAY-1:0] reset_accu_buffer_delay_nxt ;
	
	logic [`INT4_BF16_FINAL_IN_DELAY-1:0]  final_in_delay ;
	logic [`INT4_BF16_FINAL_IN_DELAY-1:0]  final_in_delay_nxt ;

	logic [`INT4_BF16_BUFFER_SELECT_DELAY-1:0][1:0]  buffer_select_delay ;
	logic [`INT4_BF16_BUFFER_SELECT_DELAY-1:0][1:0]  buffer_select_delay_nxt ;
	
	logic [1:0] i_buffer_select_r, i_buffer_select_w;
	
	logic [31:0] accu_buffer [0:31][0:3];
    logic [31:0] accu_buffer_nxt [0:31][0:3];
	
	always@(*)begin
		reset_accu_buffer_delay_nxt [0] = i_accu_buffer_reset;
		for(k=1; k<`INT4_BF16_RESET_ACCU_BUFFER_DELAY; k=k+1)begin
			reset_accu_buffer_delay_nxt[k] = reset_accu_buffer_delay[k-1];
		end
	end
	
	/*final_in_delay combinational logic*/
	always@(*)begin
		final_in_delay_nxt [0] = i_final_in;
		for(k=1; k<`INT4_BF16_FINAL_IN_DELAY; k=k+1)begin
			final_in_delay_nxt[k] = final_in_delay[k-1];
		end
	end
	
	/*buffer_select_delay combinational logic*/
	always@(*)begin
		buffer_select_delay_nxt [0] = i_buffer_select_r;
		for(k=1; k<`INT4_BF16_BUFFER_SELECT_DELAY; k=k+1)begin
			buffer_select_delay_nxt[k] = buffer_select_delay[k-1];
		end
	end
	
	always@(*) begin
        if(i_MPU_data_valid)
			i_buffer_select_w = i_buffer_select_r + 1;
		else
			i_buffer_select_w = i_buffer_select_r;
	end
	
	always@(posedge clk or negedge rst_n)begin 
		if(!rst_n)begin
			reset_accu_buffer_delay <= 0;
			final_in_delay <= 0;
			buffer_select_delay <= 0;
			i_buffer_select_r <= 0;
			for (k = 0; k < 32; k = k + 1) begin
			 for (w = 0; w < 4; w = w + 1) begin
			     accu_buffer[k][w] <= 0;
			 end
			end
		end else begin 
			reset_accu_buffer_delay <= reset_accu_buffer_delay_nxt;
			final_in_delay <= final_in_delay_nxt;
			buffer_select_delay <= buffer_select_delay_nxt;
			i_buffer_select_r <= i_buffer_select_w;
			for (k = 0; k < 32; k = k + 1) begin
			 for (w = 0; w < 4; w = w + 1) begin
			     accu_buffer[k][w] <= accu_buffer_nxt[k][w];
			 end
			end
		end
	end

    
    always @(*) begin
        if (reset_accu_buffer_delay[`INT4_BF16_RESET_ACCU_BUFFER_DELAY-1]) begin
            for (k = 0; k < 32; k = k + 1) accumulator[k] = 32'd0;
        end else begin
            for (k = 0; k < 32; k = k + 1) begin
                accumulator[k] = accu_buffer[k][buffer_select_delay[`INT4_BF16_BUFFER_SELECT_DELAY-5]];
            end
        end
    end

    always @(*) begin
        for (k = 0; k < 32; k = k + 1) begin
            for (w = 0; w < 4; w = w + 1) begin
                accu_buffer_nxt[k][w] = accu_buffer[k][w];
            end
        end
        for (k = 0; k < 32; k = k + 1) begin
            accu_buffer_nxt[k][buffer_select_delay[`INT4_BF16_BUFFER_SELECT_DELAY-2]] = accum_out[k];
        end
    end
    
    logic [511:0] bf16_out_wire;
    generate
        for (j = 0; j < 32; j = j + 1) begin : gen_bf16_out
            assign bf16_out_wire[j*16 +: 16] = accu_buffer[31-j][buffer_select_delay[`INT4_BF16_BUFFER_SELECT_DELAY-1]][31:16];
        end
    endgenerate
    assign bf16_out = (final_in_delay[`INT4_BF16_FINAL_IN_DELAY-1] == 1'b1) ? bf16_out_wire : 512'd0;
    
//    always@(*)begin
//		bf16_out = 0; 
//		if(final_in_delay[`INT4_BF16_FINAL_IN_DELAY-1] ==  1'b1)begin
//		  for (k = 0; k < 32; k = k + 1) begin
//			bf16_out[k*16 +: 16] = accu_buffer[31-k][buffer_select_delay[`INT4_BF16_BUFFER_SELECT_DELAY-1]][31:16];	
//		  end	
//		end
//	end
	
	
	assign o_final_out = final_in_delay[`INT4_BF16_FINAL_IN_DELAY-1];
endmodule







module two_block32_acc_scale (
    input clk,
    input rst_n,
    input [15:0] bf16_in [0:31],
    input [3:0] int4_in [0:63],
    input valid,
    input [15:0] scale [0:1],
    output [31:0] fp32_out1,
    output [31:0] fp32_out2
);
    genvar i, j;
    
    integer k;
    
    //store scale
    logic [`INT4_BF16_SCALE_DELAY-1:0][15:0] scale1_delay;
	logic [`INT4_BF16_SCALE_DELAY-1:0][15:0] scale1_delay_nxt;
	logic [`INT4_BF16_SCALE_DELAY-1:0][15:0] scale2_delay;
	logic [`INT4_BF16_SCALE_DELAY-1:0][15:0] scale2_delay_nxt;
	
    
    always@(*)begin
		scale1_delay_nxt[0] = scale[0];
		for(k=1; k<`INT4_BF16_SCALE_DELAY; k=k+1)begin
			scale1_delay_nxt[k] = scale1_delay[k-1];
		end
	end
	
    always@(*)begin		
		scale2_delay_nxt[0] = scale[1];
		for(k=1; k<`INT4_BF16_SCALE_DELAY; k=k+1)begin
			scale2_delay_nxt[k] = scale2_delay[k-1];
		end
	end
	
	always@(posedge clk or negedge rst_n)begin 
		if(!rst_n)begin
			scale1_delay <= 0;
			scale2_delay <= 0;
		end else begin 
			scale1_delay <= scale1_delay_nxt;
			scale2_delay <= scale2_delay_nxt;
		end
	end
    //construct bf16 exp
    logic [7:0] e1 [0:31];
//    generate
//        for (i = 0; i < 32; i = i + 1) begin
//            assign e1[i] = bf16_in[i][14:7];
//        end
//    endgenerate
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for (k = 0; k < 32; k = k + 1) begin
                e1[k] <= '0;
            end
        end
        else begin
            for (k = 0; k < 32; k = k + 1) begin
                e1[k] <= bf16_in[k][14:7];
            end
        end
	end
    //construct bf16 mantissa
    logic [7:0] m1 [0:31];
//    generate
//        for (i = 0; i < 32; i = i + 1) begin
//            assign m1[i] = {!(bf16_in[i][14:7] == 8'd0), bf16_in[i][6:0]};
//        end
//    endgenerate
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for (k = 0; k < 32; k = k + 1) begin
                m1[k] <= '0;
            end
        end
        else begin
            for (k = 0; k < 32; k = k + 1) begin
                m1[k] <= {!(bf16_in[k][14:7] == 8'd0), bf16_in[k][6:0]};
            end
        end
	end
        //wire is_subnormal_1 = (bf16_in[14:7] == 8'd0);
        //wire is_subnormal_2 = (bf16_in[30:23] == 8'd0);
        //wire [7:0] m1 = { !is_subnormal_1, bf16_in[6:0] };
        //wire [7:0] m2 = { !is_subnormal_2, bf16_in[22:16] };

    //construct int4 abs
    logic [3:0] d1_abs [0:63];
//    logic signed [4:0] d1_s [0:63];
//    generate
//        for (i = 0; i < 64; i = i + 1) begin
//            assign d1_s[i] = $signed({1'b0, int4_in[i]}) - 5'sd8;
//        end
//    endgenerate

//    generate
//        for (i = 0; i < 64; i = i + 1) begin
//            //assign d1_abs[i] = int4_in[i][3] ? (~d1_s[i][3:0] + 1) : d1_s[i][3:0];
//            assign d1_abs[i] = int4_in[i][3] ? {1'b0, int4_in[i][2:0]} : ~{1'b1, int4_in[i][2:0]} + 4'd1;
//        end
//    endgenerate
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for (k = 0; k < 64; k = k + 1) begin
                d1_abs[k] <= '0;
            end
        end
        else begin    
            for (k = 0; k < 64; k = k + 1) begin
                d1_abs[k] <= int4_in[k][3] ? {1'b0, int4_in[k][2:0]} : ~{1'b1, int4_in[k][2:0]} + 4'd1;
            end
        end
	end
	
	
    //sign bit delay
    logic [31:0] s_bf16;
    generate
        for (j = 0; j < 32; j = j + 1) begin
            assign s_bf16[j] = bf16_in[j][15];
        end
    endgenerate
    logic [63:0] s_int4;
    generate
        for (j = 0; j < 64; j = j + 1) begin
            assign s_int4[j] = ~int4_in[j][3]; 
        end
    endgenerate

    logic [63:0] res_s_nxt [0:`INT4_BF16_RES_S_LATENCY-1];
    logic [63:0] res_s_delay [0:`INT4_BF16_RES_S_LATENCY-1];
    
    always@(*) begin
        res_s_nxt [0] = { (s_bf16 ^ s_int4[63:32]), (s_bf16 ^ s_int4[31:0]) };
        //res_s_nxt [0] = {bf16_in[31][15] ^ ~int4_in[63][3],...,bf16_in[0][15] ^ ~int4_in[32][3],bf16_in[31][15] ^ ~int4_in[31][3],...,bf16_in[1][15] ^ ~int4_in[1][3],bf16_in[0][15] ^ ~int4_in[0][3]};    always@(*)begin
		
		for(int k=1; k<`INT4_BF16_RES_S_LATENCY; k=k+1)begin
			res_s_nxt[k] = res_s_delay[k-1];
		end
	end

    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for(int j = 0; j < `INT4_BF16_RES_S_LATENCY; j = j + 1) begin
		    	res_s_delay[j] <= '0;
		    end
        end
        else begin
            for(int j = 0; j < `INT4_BF16_RES_S_LATENCY; j = j + 1) begin
		    	res_s_delay[j] <= res_s_nxt[j];
		    end
        end
	end

    //m1 2's complement
    logic [25:0] p_out1 [0:31];
    logic [25:0] p_out2 [0:31];
    logic [7:0] p_out1_e [0:31];
    logic [7:0] p_out2_e [0:31];

    logic signed [25:0] signed_m1 [0:63];
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n) begin    
            for (int j = 0; j < 64; j = j + 1) begin
                signed_m1[j] <= '0;
            end
        end
        else begin
            for (int j = 0; j < 16; j = j + 1) begin
                if(p_out1_e[2*j] > p_out1_e[2*j+1])begin
                    signed_m1[2*j] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j] ? -p_out1[2*j] : p_out1[2*j];
                    signed_m1[2*j+1] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j+1] ? -p_out1[2*j+1] : p_out1[2*j+1];
                end
                else begin
                    signed_m1[2*j+1] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j] ? -p_out1[2*j] : p_out1[2*j];
                    signed_m1[2*j] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j+1] ? -p_out1[2*j+1] : p_out1[2*j+1];
                end
            end
            for (int j = 16; j < 32; j = j + 1) begin
                if(p_out2_e[2*(j-16)] > p_out2_e[2*(j-16)+1])begin
                    signed_m1[2*j] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j] ? -p_out2[2*(j-16)] : p_out2[2*(j-16)];
                    signed_m1[2*j+1] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j+1] ? -p_out2[2*(j-16)+1] : p_out2[2*(j-16)+1];
                end
                else begin
                    signed_m1[2*j+1] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j] ? -p_out2[2*(j-16)] : p_out2[2*(j-16)];
                    signed_m1[2*j] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j+1] ? -p_out2[2*(j-16)+1] : p_out2[2*(j-16)+1];
                end
            end
        end
    end
    
//    always @(posedge clk) begin
//        for (int j = 0; j < 16; j = j + 1) begin
//            signed_m1[2*j] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j] ? -p_out1[2*j] : p_out1[2*j];
//            signed_m1[2*j+1] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j+1] ? -p_out1[2*j+1] : p_out1[2*j+1];
//        end
//        for (int j = 16; j < 32; j = j + 1) begin
//            signed_m1[2*j] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j] ? -p_out2[2*j] : p_out2[2*j];
//            signed_m1[2*j+1] <= res_s_delay[`INT4_BF16_RES_S_LATENCY-1][2*j+1] ? -p_out2[2*j+1] : p_out2[2*j+1];
//        end
//    end
    //5 layer block accumulation 
    logic [7:0] layer1_max [0:31];
    logic [7:0] layer1_sub [0:31];
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for (int j = 0; j < 32; j = j + 1) begin
                layer1_max[j] <= '0;
                layer1_sub[j] <= '0;
            end
        end
        else begin
            for (int j = 0; j < 16; j = j + 1) begin
                layer1_max[j] <= (p_out1_e[2*j] > p_out1_e[2*j+1]) ? p_out1_e[2*j] : p_out1_e[2*j+1];
                layer1_sub[j] <= (p_out1_e[2*j] > p_out1_e[2*j+1]) ? p_out1_e[2*j] - p_out1_e[2*j+1] : p_out1_e[2*j+1] - p_out1_e[2*j];
            end
            for (int j = 0; j < 16; j = j + 1) begin
                layer1_max[j+16] <= (p_out2_e[2*j] > p_out2_e[2*j+1]) ? p_out2_e[2*j] : p_out2_e[2*j+1];
                layer1_sub[j+16] <= (p_out2_e[2*j] > p_out2_e[2*j+1]) ? p_out2_e[2*j] - p_out2_e[2*j+1] : p_out2_e[2*j+1] - p_out2_e[2*j];
            end
        end
    end

    
//    logic [7:0] layer2_max [0:15];
//    logic [7:0] layer2_sub [0:15];
//    always @(posedge clk) begin
//        for (int j = 0; j < 16; j = j + 1) begin
//            layer2_max[j] <= (layer1_max[2*j] > layer1_max[2*j+1]) ? layer1_max[2*j] : layer1_max[2*j+1];
//            layer2_sub[j] <= (layer1_max[2*j] > layer1_max[2*j+1]) ? layer1_max[2*j] - layer1_max[2*j+1] : layer1_max[2*j+1] - layer1_max[2*j];
//        end
//    end

    logic signed [25:0] layer1_s1 [0:31];
//    logic signed [25:0] layer1_s2 [0:15];

//    logic signed [23:0] layer1_acc [0:31];
    logic [7:0] layer1_shift_max [0:15];
    generate
        for (j = 0; j < 16; j = j + 1) begin : DSP58_TWO_ADDER_16
            dsp58_two24_adder dsp_inst (
                .clk(clk),
                .rst_n(rst_n),
                .a1(signed_m1[4*j]), .b1(signed_m1[4*j+1] >>> layer1_sub[2*j]),
                .a2(signed_m1[4*j+2]), .b2(signed_m1[4*j+3] >>> layer1_sub[2*j+1]),
                .exp_in1(layer1_max[2*j]), .exp_in2(layer1_max[2*j+1]), 
                .s1(layer1_s1[2*j]), 
                .s2(layer1_s1[2*j+1]),
                .exp_out(layer1_shift_max[j])  
            );
        end
    endgenerate

//    always @(posedge clk) begin
//        for (int j = 0; j < 16; j = j + 1) begin
//            if(layer1_max[2*j] > layer1_max[2*j+1]) begin
                
//                layer1_acc[2*j] <= layer1_s1[j]; 
//                layer1_acc[2*j+1] <= layer1_s2[j]; 
//            end
//            else begin
//                layer1_acc[2*j+1] <= layer1_s1[j]; 
//                layer1_acc[2*j] <= layer1_s2[j]; 
//            end
//        end
//    end

//    logic [7:0] layer3_max [0:7];
//    logic [7:0] layer3_sub [0:7];
//    always @(posedge clk) begin
//        for (int j = 0; j < 8; j = j + 1) begin
//            layer3_max[j] <= (layer2_max[2*j] > layer2_max[2*j+1]) ? layer2_max[2*j] : layer2_max[2*j+1];
//            layer3_sub[j] <= (layer2_max[2*j] > layer2_max[2*j+1]) ? layer2_max[2*j] - layer2_max[2*j+1] : layer2_max[2*j+1] - layer2_max[2*j];
//        end
//    end

    logic signed [25:0] layer2_s1 [0:15];
//    logic signed [23:0] layer2_s2 [0:7];

//    logic signed [23:0] layer2_acc [0:15];
    logic [7:0] layer2_shift_max [0:7];
    generate
        for (j = 0; j < 8; j = j + 1) begin : DSP58_TWO_ADDER_8
            dsp58_two24_adder dsp_inst (
                .clk(clk),
                .rst_n(rst_n),
                .a1(layer1_s1[4*j]), .b1(layer1_s1[4*j+1]),
                .a2(layer1_s1[4*j+2]), .b2(layer1_s1[4*j+3]),
                .exp_in1(layer1_shift_max[2*j]), .exp_in2(layer1_shift_max[2*j+1]), 
                .s1(layer2_s1[2*j]), 
                .s2(layer2_s1[2*j+1]),
                .exp_out(layer2_shift_max[j])   
            );
        end
    endgenerate

//    always @(posedge clk) begin
//        for (int j = 0; j < 8; j = j + 1) begin
//            if(layer2_max[2*j] > layer2_max[2*j+1]) begin
                
//                layer2_acc[2*j] <= layer2_s1[j]; 
//                layer2_acc[2*j+1] <= layer2_s2[j]; 
//            end
//            else begin
//                layer2_acc[2*j+1] <= layer2_s1[j]; 
//                layer2_acc[2*j] <= layer2_s2[j]; 
//            end
//        end
//    end

//    logic [7:0] layer4_max [0:3];
//    logic [7:0] layer4_sub [0:3];
//    always @(posedge clk) begin
//        for (int j = 0; j < 4; j = j + 1) begin
//            layer4_max[j] <= (layer3_max[2*j] > layer3_max[2*j+1]) ? layer3_max[2*j] : layer3_max[2*j+1];
//            layer4_sub[j] <= (layer3_max[2*j] > layer3_max[2*j+1]) ? layer3_max[2*j] - layer3_max[2*j+1] : layer3_max[2*j+1] - layer3_max[2*j];
//        end
//    end

    logic signed [25:0] layer3_s1 [0:7];
//    logic signed [23:0] layer3_s2 [0:3];

//    logic signed [23:0] layer3_acc [0:7];
    logic [7:0] layer3_shift_max [0:3];
    generate
        for (j = 0; j < 4; j = j + 1) begin : DSP58_TWO_ADDER_4
            dsp58_two24_adder dsp_inst (
                .clk(clk),
                .rst_n(rst_n),
                .a1(layer2_s1[4*j]), .b1(layer2_s1[4*j+1]),
                .a2(layer2_s1[4*j+2]), .b2(layer2_s1[4*j+3]),
                .exp_in1(layer2_shift_max[2*j]), .exp_in2(layer2_shift_max[2*j+1]), 
                .s1(layer3_s1[2*j]), 
                .s2(layer3_s1[2*j+1]),
                .exp_out(layer3_shift_max[j])   
            );
        end
    endgenerate

//    always @(posedge clk) begin
//        for (int j = 0; j < 4; j = j + 1) begin
//            if(layer3_max[2*j] > layer3_max[2*j+1]) begin
                
//                layer3_acc[2*j] <= layer3_s1[j]; 
//                layer3_acc[2*j+1] <= layer3_s2[j]; 
//            end
//            else begin
//                layer3_acc[2*j+1] <= layer3_s1[j]; 
//                layer3_acc[2*j] <= layer3_s2[j]; 
//            end
//        end
//    end

//    logic [7:0] layer5_max [0:1];
//    logic [7:0] layer5_sub [0:1];
//    always @(posedge clk) begin
//        for (int j = 0; j < 2; j = j + 1) begin
//            layer5_max[j] <= (layer4_max[2*j] > layer4_max[2*j+1]) ? layer4_max[2*j] : layer4_max[2*j+1];
//            layer5_sub[j] <= (layer4_max[2*j] > layer4_max[2*j+1]) ? layer4_max[2*j] - layer4_max[2*j+1] : layer4_max[2*j+1] - layer4_max[2*j];
//        end
//    end

    logic signed [25:0] layer4_s1 [0:3];
//    logic signed [23:0] layer4_s2 [0:1];

//    logic signed [23:0] layer4_acc [0:3];
    logic [7:0] layer4_shift_max [0:1];
    generate
        for (j = 0; j < 2; j = j + 1) begin : DSP58_TWO_ADDER_2
            dsp58_two24_adder dsp_inst (
                .clk(clk),
                .rst_n(rst_n),
                .a1(layer3_s1[4*j]), .b1(layer3_s1[4*j+1]),
                .a2(layer3_s1[4*j+2]), .b2(layer3_s1[4*j+3]),
                .exp_in1(layer3_shift_max[2*j]), .exp_in2(layer3_shift_max[2*j+1]), 
                .s1(layer4_s1[2*j]), 
                .s2(layer4_s1[2*j+1])  ,
                .exp_out(layer4_shift_max[j])
            );
        end
    endgenerate

//    always @(posedge clk) begin
//        for (int j = 0; j < 2; j = j + 1) begin
//            if(layer4_max[2*j] > layer4_max[2*j+1]) begin
                
//                layer4_acc[2*j] <= layer4_s1[j]; 
//                layer4_acc[2*j+1] <= layer4_s2[j]; 
//            end
//            else begin
//                layer4_acc[2*j+1] <= layer4_s1[j]; 
//                layer4_acc[2*j] <= layer4_s2[j]; 
//            end
//        end
//    end

    logic signed [25:0] layer5_s1;
    logic signed [25:0] layer5_s2;
    logic [7:0] final1_e;
    logic [7:0] final2_e;
//    logic signed [25:0] layer5_acc [0:1];
    //logic [7:0] layer5_shift_max;
    generate
        begin : DSP58_TWO24_ADDER_LAST
            dsp58_two24_adder_last dsp_inst (
                .clk(clk),
                .rst_n(rst_n),
                .a1(layer4_s1[0]), .b1(layer4_s1[1]),
                .a2(layer4_s1[2]), .b2(layer4_s1[3]),
                .exp_in1(layer4_shift_max[0]), .exp_in2(layer4_shift_max[1]), 
                .s1(layer5_s1), 
                .s2(layer5_s2),
                .exp_out1(final1_e), .exp_out2(final2_e)  
            );
        end
    endgenerate
    
    logic signed [25:0] final1_m;
    logic signed [25:0] final2_m;
    assign final1_m = (layer5_s1[25]) ? -layer5_s1 : layer5_s1; 
    assign final2_m = (layer5_s2[25]) ? -layer5_s2 : layer5_s2; 
//    always @(posedge clk) begin
            
//        layer5_acc[0] <= (layer5_s1[23]) ? -layer5_s1 : layer5_s1; 
//        layer5_acc[1] <= (layer5_s2[23]) ? -layer5_s2 : layer5_s2; 
//    end
    
//    logic layer5_s [0:1];
//    always @(posedge clk) begin
            
//        layer5_s[0] <= (layer5_s1[23]); 
//        layer5_s[1] <= (layer5_s2[23]); 
//    end

//    logic signed [7:0] layer5_max_d [0:1];
//    always @(posedge clk) begin
            
//        layer5_max_d[0] <= layer5_max[0]; 
//        layer5_max_d[1] <= layer5_max[1]; 
//    end
    
//    logic layer5_s_d [0:1];
//    always @(posedge clk) begin
            
//        layer5_s_d[0] <= (layer5_s[0]); 
//        layer5_s_d[1] <= (layer5_s[1]); 
//    end


//    //reconstruct to bf16
//    logic final1_s, final2_s;
//    always @(posedge clk) begin
//        final1_s <= (layer5_s_d[0]); 
//        final2_s <= (layer5_s_d[1]); 
//    end

//    logic [7:0] final1_e_nxt;
//    logic [7:0] final1_e;
//    logic [23:0] final1_m_nxt;
//    logic [23:0] final1_m;
//    always @(*) begin
//        if(layer5_acc[0][22]) begin
//            final1_e_nxt = layer5_max_d[0] + 8'd5 + (layer5_max_d[0] == 8'd0);
//            final1_m_nxt = layer5_acc[0] >> 5;
//        end
//        else if(layer5_acc[0][21]) begin
//            final1_e_nxt = layer5_max_d[0] + 8'd4 + (layer5_max_d[0] == 8'd0);
//            final1_m_nxt = layer5_acc[0] >> 4;
//        end
//        else if(layer5_acc[0][20]) begin
//            final1_e_nxt = layer5_max_d[0] + 8'd3 + (layer5_max_d[0] == 8'd0);
//            final1_m_nxt = layer5_acc[0] >> 3;
//        end
//        else if(layer5_acc[0][19]) begin
//            final1_e_nxt = layer5_max_d[0] + 8'd2 + (layer5_max_d[0] == 8'd0);
//            final1_m_nxt = layer5_acc[0] >> 2;
//        end
//        else if(layer5_acc[0][18]) begin
//            final1_e_nxt = layer5_max_d[0] + 8'd1 + (layer5_max_d[0] == 8'd0);
//            final1_m_nxt = layer5_acc[0] >> 1;
//        end
//        else if(layer5_acc[0][17]) begin
//            final1_e_nxt = layer5_max_d[0] + (layer5_max_d[0] == 8'd0);
//            final1_m_nxt = layer5_acc[0];
//        end
//        else begin
//            final1_e_nxt = layer5_max_d[0];
//            final1_m_nxt = layer5_acc[0];
//        end
//    end

//    logic [7:0] final2_e_nxt;
//    logic [7:0] final2_e;
//    logic [23:0] final2_m_nxt;
//    logic [23:0] final2_m;
//    always @(*) begin
//        if(layer5_acc[1][22]) begin
//            final2_e_nxt = layer5_max_d[1] + 8'd5 + (layer5_max_d[1] == 8'd0);
//            final2_m_nxt = layer5_acc[1] >> 5;
//        end
//        else if(layer5_acc[1][21]) begin
//            final2_e_nxt = layer5_max_d[1] + 8'd4 + (layer5_max_d[1] == 8'd0);
//            final2_m_nxt = layer5_acc[1] >> 4;
//        end
//        else if(layer5_acc[1][20]) begin
//            final2_e_nxt = layer5_max_d[1] + 8'd3 + (layer5_max_d[1] == 8'd0);
//            final2_m_nxt = layer5_acc[1] >> 3;
//        end
//        else if(layer5_acc[1][19]) begin
//            final2_e_nxt = layer5_max_d[1] + 8'd2 + (layer5_max_d[1] == 8'd0);
//            final2_m_nxt = layer5_acc[1] >> 2;
//        end
//        else if(layer5_acc[1][18]) begin
//            final2_e_nxt = layer5_max_d[1] + 8'd1 + (layer5_max_d[1] == 8'd0);
//            final2_m_nxt = layer5_acc[1] >> 1;
//        end
//        else if(layer5_acc[1][17]) begin
//            final2_e_nxt = layer5_max_d[1] + (layer5_max_d[1] == 8'd0);
//            final2_m_nxt = layer5_acc[1];
//        end
//        else begin
//            final2_e_nxt = layer5_max_d[1];
//            final2_m_nxt = layer5_acc[1];
//        end
//    end

//    always @(posedge clk) begin   
//        final1_e <= final1_e_nxt;
//        final2_e <= final2_e_nxt;
//        final1_m <= final1_m_nxt;
//        final2_m <= final2_m_nxt;
//    end
    
    //logic [15:0] final1, final2;
    //assign final1 = {final1_s, final1_e, final1_m[16:10]};
    //assign final2 = {final2_s, final2_e, final2_m[16:10]};
    
    //scaling
    logic [31:0] scale_fp32 [0:1];

    // //logic [31:0] scale_result [0:1];
     FPGA_FP16TO32 u_FPGA_FP16TO32_1 (
	  
	   .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	   .s_axis_a_tdata           (scale1_delay[`INT4_BF16_SCALE_DELAY-1]),              // input wire [15 : 0] s_axis_a_tdata
	   //.s_axis_a_tready(),
	   .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	   .m_axis_result_tdata      (scale_fp32[0]) ,   // output wire [15 : 0] m_axis_result_tdata
	   .aclk   					(clk),
	   .aresetn					(rst_n)
	 );

     FPGA_FP16TO32 u_FPGA_FP16TO32_2 (
	  
	   .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	   .s_axis_a_tdata           (scale2_delay[`INT4_BF16_SCALE_DELAY-1]),              // input wire [15 : 0] s_axis_a_tdata
	   //.s_axis_a_tready(),
	   .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	   .m_axis_result_tdata      (scale_fp32[1]) ,   // output wire [15 : 0] m_axis_result_tdata
	   .aclk   					(clk),
	   .aresetn					(rst_n)
	 );

     FPGA_FP32_MULTIPLIER u_FPGA_FP32_MULTIPLIER_1 (
	  
	   .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	   //.s_axis_a_tdata           ({final1, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
	   .s_axis_a_tdata           ({layer5_s1[25], final1_e, final1_m[22:0]}),
	   .s_axis_b_tvalid          (1'b1),            // input wire s_axis_b_tvalid
	   .s_axis_b_tdata           (scale_fp32[0]),              // input wire [15 : 0] s_axis_b_tdata
	   .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	   .m_axis_result_tdata      (fp32_out1) ,   // output wire [15 : 0] m_axis_result_tdata
	   .aclk   					(clk),
	   .aresetn					(rst_n)
	 );

     FPGA_FP32_MULTIPLIER u_FPGA_FP32_MULTIPLIER_2 (
	  
	   .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	   //.s_axis_a_tdata           ({final2, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
	   .s_axis_a_tdata           ({layer5_s2[25], final2_e, final2_m[22:0]}),
	   .s_axis_b_tvalid          (1'b1),            // input wire s_axis_b_tvalid
	   .s_axis_b_tdata           (scale_fp32[1]),              // input wire [15 : 0] s_axis_b_tdata
	   .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	   .m_axis_result_tdata      (fp32_out2) ,   // output wire [15 : 0] m_axis_result_tdata
	   .aclk   					(clk),
	   .aresetn					(rst_n)
	 );

//    FP16TO32 u_FP16TO32_1 (
//	  .i_clk(clk),
//      .i_rst_n(rst_n),
//      .f16           (scale1_delay[`INT4_BF16_SCALE_DELAY-1]),              // input wire [15 : 0] s_axis_a_tdata
//	  .f32           (scale_fp32[0])   // output wire [15 : 0] m_axis_result_tdata
//	);

//    FP16TO32 u_FP16TO32_2 (
//	  .i_clk(clk),
//      .i_rst_n(rst_n),
//      .f16           (scale2_delay[`INT4_BF16_SCALE_DELAY-1]),              // input wire [15 : 0] s_axis_a_tdata
//	  .f32           (scale_fp32[1])   // output wire [15 : 0] m_axis_result_tdata
//	);

//    BF32_MULTIPLIER u_BF32_MULTIPLIER_1 (
//	  //.s_axis_a_tdata           ({final1, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
//	  .i_data_1           ({layer5_s1[25], final1_e, final1_m[22:0]}),
//	  .i_data_2           (scale_fp32[0]),              // input wire [15 : 0] s_axis_b_tdata
//	  .o_mul      (fp32_out1) ,   // output wire [15 : 0] m_axis_result_tdata
//	  .i_clk   					(clk),
//	  .i_rst_n					(rst_n)
//	);

//    BF32_MULTIPLIER u_BF32_MULTIPLIER_2 (
//	  //.s_axis_a_tdata           ({final2, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
//	  .i_data_1           ({layer5_s2[25], final2_e, final2_m[22:0]}),
//	  .i_data_2           (scale_fp32[1]),              // input wire [15 : 0] s_axis_b_tdata
//	  .o_mul      (fp32_out2) ,   // output wire [15 : 0] m_axis_result_tdata
//	  .i_clk   					(clk),
//	  .i_rst_n					(rst_n)
//	);

    generate
        for (i = 0; i < 32; i = i + 1) begin : TWO_INT4_BF16_MUL_1
            two_int4_bf16_mul u_two_int4_bf16_mul (
                .clk(clk),
                .rst_n(rst_n),
                .e_bf16(e1[i]),
                .m_bf16(m1[i]),
                .d1_int4(d1_abs[i]),
                .d2_int4(d1_abs[i+32]),
                .p_out1(p_out1[i]),
                .p_out2(p_out2[i]),
                .p_out1_e(p_out1_e[i]),
                .p_out2_e(p_out2_e[i])
            );
        end
    endgenerate

endmodule

module two_int4_bf16_mul (
    input clk,
    input rst_n,
    input [7:0] e_bf16,
    input  [7:0] m_bf16,   
    input  [3:0] d1_int4, 
    input  [3:0] d2_int4,   
    output [25:0] p_out1, 
    output [25:0] p_out2,
    //output reg [1:0]  p_out1_shift, p_out2_shift,
    output [7:0]  p_out1_e,
    output [7:0]  p_out2_e
);
    //wire [3:0] abs_d1 = d1_int4[3] ? (~d1_int4 + 1'b1) : d1_int4;
    //wire [3:0] abs_d2 = d2_int4[3] ? (~d2_int4 + 1'b1) : d2_int4;

    //reg [26:0] m_pack;
    //reg [23:0] d_pack;
    logic [57:0] p_out;
    
    //assign p_out1 = p_out[11:0];
    //assign p_out2 = p_out[31:20];
    
    //wire [10:0] m_s1 = {m_bf16, 1'b0}; 
    //wire [10:0] m_s2 = {m_bf16, 2'b0}; 
    //wire [10:0] m_s3 = {m_bf16, 3'b0}; 
    logic [7:0] p_out1_e_nxt [0:`INT4_BF16_EXP_LATENCY-1];
    logic [7:0] p_out1_e_delay [0:`INT4_BF16_EXP_LATENCY-1];
    logic [7:0] p_out2_e_nxt [0:`INT4_BF16_EXP_LATENCY-1];
    logic [7:0] p_out2_e_delay [0:`INT4_BF16_EXP_LATENCY-1];
    logic [1:0] p_out1_shift_nxt;
    logic [1:0] p_out1_shift;
    logic [1:0] p_out2_shift_nxt;
    logic [1:0] p_out2_shift;
    
    logic [26:0] p_out1_result, p_out2_result;
    logic [8:0] p_out1_e_result, p_out2_e_result;
    
    assign p_out1 = (p_out1_e_result[8] || p_out1_e_result[7:0] == 8'd255) ? $signed({2'd0, 1'd1, 23'd0}) : p_out1_result[25:0];
    assign p_out2 = (p_out2_e_result[8] || p_out2_e_result[7:0] == 8'd255) ? $signed({2'd0, 1'd1, 23'd0}) : p_out2_result[25:0];
    assign p_out1_e = p_out1_e_result[8] ? 8'd255: p_out1_e_result[7:0];
    assign p_out2_e = p_out2_e_result[8] ? 8'd255: p_out2_e_result[7:0];
    
    always@(*) begin
        p_out1_e_nxt [0] = (d1_int4 == 4'd0 && e_bf16 != 8'd255) ? 8'd0 : e_bf16;
        p_out2_e_nxt [0] = (d2_int4 == 4'd0 && e_bf16 != 8'd255) ? 8'd0 : e_bf16;
        //res_s_nxt [0] = {bf16_in[31][15] ^ ~int4_in[63][3],...,bf16_in[0][15] ^ ~int4_in[32][3],bf16_in[31][15] ^ ~int4_in[31][3],...,bf16_in[1][15] ^ ~int4_in[1][3],bf16_in[0][15] ^ ~int4_in[0][3]};    always@(*)begin
		
		for(int k=1; k<`INT4_BF16_EXP_LATENCY; k=k+1)begin
			p_out1_e_nxt[k] = p_out1_e_delay[k-1];
            p_out2_e_nxt[k] = p_out2_e_delay[k-1];
		end
	end

    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for(int j = 0; j < `INT4_BF16_EXP_LATENCY; j = j + 1) begin
		    	p_out1_e_delay[j] <= '0;
                p_out2_e_delay[j] <= '0;
		    end
        end
        else begin
            for(int j = 0; j < `INT4_BF16_EXP_LATENCY; j = j + 1) begin
		    	p_out1_e_delay[j] <= p_out1_e_nxt[j];
                p_out2_e_delay[j] <= p_out2_e_nxt[j];
		    end
        end
	end

    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            p_out1_e_result <= '0;
            p_out2_e_result <= '0;
        end
        else begin
		    p_out1_e_result <= p_out1_e_delay[`INT4_BF16_EXP_LATENCY-1] + p_out1_shift;
            p_out2_e_result <= p_out2_e_delay[`INT4_BF16_EXP_LATENCY-1] + p_out2_shift;
        end
	end

    logic [`INT4_BF16_MUL_LATENCY-1:0] bf16_hidden1_nxt;
    logic [`INT4_BF16_MUL_LATENCY-1:0] bf16_hidden1_delay;
    int k;
    always@(*) begin
        bf16_hidden1_nxt[0] = m_bf16[7];
        //res_s_nxt [0] = {bf16_in[31][15] ^ ~int4_in[63][3],...,bf16_in[0][15] ^ ~int4_in[32][3],bf16_in[31][15] ^ ~int4_in[31][3],...,bf16_in[1][15] ^ ~int4_in[1][3],bf16_in[0][15] ^ ~int4_in[0][3]};    always@(*)begin
		
		for(k=1; k<`INT4_BF16_MUL_LATENCY; k=k+1)
			bf16_hidden1_nxt[k] = bf16_hidden1_delay[k-1];
		
	end

    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for(int j = 0; j < `INT4_BF16_MUL_LATENCY; j = j + 1) begin
		    	bf16_hidden1_delay[j] <= '0;
		    end
        end
        else begin
            for(int j = 0; j < `INT4_BF16_MUL_LATENCY; j = j + 1) begin
		    	bf16_hidden1_delay[j] <= bf16_hidden1_nxt[j];
		    end
        end
	end


    always @(*) begin
        if(p_out[10])
            p_out1_shift_nxt = 2'd3;
        else if(p_out[9])
            p_out1_shift_nxt = 2'd2 + {1'b0, (~bf16_hidden1_delay[`INT4_BF16_MUL_LATENCY-2])};
        else if(p_out[8])
            p_out1_shift_nxt = 2'd1 + {1'b0, (~bf16_hidden1_delay[`INT4_BF16_MUL_LATENCY-2])};
        else if(p_out[7])
            p_out1_shift_nxt = 2'd0 + {1'b0, (~bf16_hidden1_delay[`INT4_BF16_MUL_LATENCY-2])};
        else
            p_out1_shift_nxt = 2'd0;
    end


    always @(*) begin
        if(p_out[30])
            p_out2_shift_nxt = 2'd3;
        else if(p_out[29])
            p_out2_shift_nxt = 2'd2 + {1'b0, (~bf16_hidden1_delay[`INT4_BF16_MUL_LATENCY-2])};
        else if(p_out[28])
            p_out2_shift_nxt = 2'd1 + {1'b0, (~bf16_hidden1_delay[`INT4_BF16_MUL_LATENCY-2])};
        else if(p_out[27])
            p_out2_shift_nxt = 2'd0 + {1'b0, (~bf16_hidden1_delay[`INT4_BF16_MUL_LATENCY-2])};
        else
            p_out2_shift_nxt = 2'd0;
    end

    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            p_out1_shift <= '0;
            p_out2_shift <= '0;
        end
        else begin
            p_out1_shift <= p_out1_shift_nxt;
            p_out2_shift <= p_out2_shift_nxt;
        end
	end
    
    (* use_dsp = "yes" *)

    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            p_out <= 0;
        else
            p_out <= ({7'b0, 19'b0, m_bf16} * {d2_int4, 16'b0, d1_int4});
    end

    logic [10:0] p_out1_d, p_out2_d;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            p_out1_d <= '0;
            p_out2_d <= '0;
        end
        else begin
            p_out1_d <= p_out[10:0];
            p_out2_d <= p_out[30:20];
        end
	end
    
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            p_out1_result <= '0;
        end
        else begin    
            if(p_out1_shift == 0)
                p_out1_result <= {p_out1_d, 16'd0};
            else     
                p_out1_result <= {p_out1_d, 16'd0} >> (p_out1_shift - {1'b0, (~bf16_hidden1_delay[`INT4_BF16_MUL_LATENCY-1])});
        end
	end
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            p_out2_result <= '0;
        end
        else begin    
            if(p_out2_shift == 0)
                p_out2_result <= {p_out2_d, 16'd0};
            else     
                p_out2_result <= {p_out2_d, 16'd0} >> (p_out2_shift - {1'b0, (~bf16_hidden1_delay[`INT4_BF16_MUL_LATENCY-1])});
        end
    end
    
    
endmodule

module dsp58_two24_adder (
    input                 clk,
    input rst_n,
    input   signed [25:0] a1, b1, 
    input   signed [25:0] a2, b2, 
    input   [7:0] exp_in1, exp_in2,
    output  signed [25:0] s1, s2,
    output  [7:0] exp_out
);
    logic [57:0] p_out;
    logic [57:0] p_out_nxt;
    logic [7:0] exp_out_result;
    logic [25:0] p_out1_com ;
    logic [25:0] p_out2_com ;
    assign p_out1_com = (p_out_nxt[25]) ? ~p_out_nxt[25:0] + 1 : p_out_nxt[25:0] ;
    assign p_out2_com = (p_out_nxt[54]) ? ~p_out_nxt[54:29] + 1 : p_out_nxt[54:29] ;
    
    assign exp_out = exp_out_result;
     DSP58 #(
       // Feature Control Attributes: Data Path Selection
       .AMULTSEL("A"),                    // Selects A input to multiplier (A, AD)
       .A_INPUT("DIRECT"),                // Selects A input source, "DIRECT" (A port) or "CASCADE" (ACIN port)
       .BMULTSEL("B"),                    // Selects B input to multiplier (AD, B)
       .B_INPUT("DIRECT"),                // Selects B input source, "DIRECT" (B port) or "CASCADE" (BCIN port)
       .DSP_MODE("INT24"),                // Configures DSP to a particular mode of operation. Set to INT24 for
                                          // legacy mode.
       .PREADDINSEL("A"),                 // Selects input to pre-adder (A, B)
       .RND(58'h000000000000000),         // Rounding Constant
       .USE_MULT("NONE"),             // Select multiplier usage (DYNAMIC, MULTIPLY, NONE)
       .USE_SIMD("ONE58"),                // SIMD selection (FOUR12, ONE58, TWO24)
       .USE_WIDEXOR("FALSE"),             // Use the Wide XOR function (FALSE, TRUE)
       .XORSIMD("XOR24_34_58_116"),       // Mode of operation for the Wide XOR (XOR12_22, XOR24_34_58_116)
       // Pattern Detector Attributes: Pattern Detection Configuration
       .AUTORESET_PATDET("NO_RESET"),     // NO_RESET, RESET_MATCH, RESET_NOT_MATCH
       .AUTORESET_PRIORITY("RESET"),      // Priority of AUTORESET vs. CEP (CEP, RESET).
       .MASK(58'h0ffffffffffffff),        // 58-bit mask value for pattern detect (1=ignore)
       .PATTERN(58'h000000000000000),     // 58-bit pattern match for pattern detect
       .SEL_MASK("MASK"),                 // C, MASK, ROUNDING_MODE1, ROUNDING_MODE2
       .SEL_PATTERN("PATTERN"),           // Select pattern value (C, PATTERN)
       .USE_PATTERN_DETECT("NO_PATDET"),  // Enable pattern detect (NO_PATDET, PATDET)
       // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
       .IS_ALUMODE_INVERTED(4'b0000),     // Optional inversion for ALUMODE
       .IS_CARRYIN_INVERTED(1'b0),        // Optional inversion for CARRYIN
       .IS_CLK_INVERTED(1'b0),            // Optional inversion for CLK
       .IS_INMODE_INVERTED(5'b00000),     // Optional inversion for INMODE
       .IS_NEGATE_INVERTED(3'b000),       // Optional inversion for NEGATE
       .IS_OPMODE_INVERTED(9'b000000000), // Optional inversion for OPMODE
       .IS_RSTALLCARRYIN_INVERTED(1'b0),  // Optional inversion for RSTALLCARRYIN
       .IS_RSTALUMODE_INVERTED(1'b0),     // Optional inversion for RSTALUMODE
       .IS_RSTA_INVERTED(1'b0),           // Optional inversion for RSTA
       .IS_RSTB_INVERTED(1'b0),           // Optional inversion for RSTB
       .IS_RSTCTRL_INVERTED(1'b0),        // Optional inversion for STCONJUGATE_A
       .IS_RSTC_INVERTED(1'b0),           // Optional inversion for RSTC
       .IS_RSTD_INVERTED(1'b0),           // Optional inversion for RSTD
       .IS_RSTINMODE_INVERTED(1'b0),      // Optional inversion for RSTINMODE
       .IS_RSTM_INVERTED(1'b0),           // Optional inversion for RSTM
       .IS_RSTP_INVERTED(1'b0),           // Optional inversion for RSTP
       // Register Control Attributes: Pipeline Register Configuration
       .ACASCREG(0),                      // Number of pipeline stages between A/ACIN and ACOUT (0-2)
       .ADREG(0),                         // Pipeline stages for pre-adder (0-1)
       .ALUMODEREG(0),                    // Pipeline stages for ALUMODE (0-1)
       .AREG(0),                          // Pipeline stages for A (0-2)
       .BCASCREG(0),                      // Number of pipeline stages between B/BCIN and BCOUT (0-2)
       .BREG(0),                          // Pipeline stages for B (0-2)
       .CARRYINREG(0),                    // Pipeline stages for CARRYIN (0-1)
       .CARRYINSELREG(0),                 // Pipeline stages for CARRYINSEL (0-1)
       .CREG(0),                          // Pipeline stages for C (0-1)
       .DREG(0),                          // Pipeline stages for D (0-1)
       .INMODEREG(0),                     // Pipeline stages for INMODE (0-1)
       .MREG(0),                          // Multiplier pipeline stages (0-1)
       .OPMODEREG(0),                     // Pipeline stages for OPMODE (0-1)
       .PREG(1),                          // Number of pipeline stages for P (0-1)
       .RESET_MODE("SYNC")                // Selection of synchronous or asynchronous reset. (ASYNC, SYNC).
    )
    DSP58_inst (
       // Cascade outputs: Cascade Ports
       .CLK(clk),
       .ALUMODE(4'b0000),
       .OPMODE(9'b000_11_00_11),
       .INMODE(5'b00000),

       .A({3'b0, a2[25:0], 3'b0, a1[25:24]}),
       .B({a1[23:0]}),
       .C({3'b0, b2[25:0], 3'b0, b1[25:0]}),
       .P(p_out_nxt),
       .CEA1(1'b1), .CEA2(1'b1), .CEB1(1'b1), .CEB2(1'b1), .CEC(1'b1), 
       .CEP(1'b1), .RSTA(1'b0), .RSTB(1'b0), .RSTC(1'b0), .RSTP(1'b0)
      
    );
   // always@(posedge clk  or negedge rst_n) begin
   //      if(~rst_n) begin
   //          p_out_nxt <= '0;
   //      end
   //      else begin
   //          p_out_nxt <= {3'b0, a2[25:0], 3'b0, a1[25:0]} + {3'b0, b2[25:0], 3'b0, b1[25:0]};
   //      end
   // end
   logic [4:0] p_out1_pos_o, p_out2_pos_o;
   logic [4:0] p_out1_pos_o_reg, p_out2_pos_o_reg;
   
   logic [7:0] exp_in1_delay_nxt [0:`INT4_BF16_ADDER_EXP_LATENCY-1];
   logic [7:0] exp_in1_delay [0:`INT4_BF16_ADDER_EXP_LATENCY-1];
   logic [7:0] exp_in2_delay_nxt [0:`INT4_BF16_ADDER_EXP_LATENCY-1];
   logic [7:0] exp_in2_delay [0:`INT4_BF16_ADDER_EXP_LATENCY-1];
   
   logic [7:0] exp_out1;
   logic [7:0] exp_out2;
   
   always@(*) begin
        exp_in1_delay_nxt [0] = exp_in1;
        exp_in2_delay_nxt [0] = exp_in2;
        //res_s_nxt [0] = {bf16_in[31][15] ^ ~int4_in[63][3],...,bf16_in[0][15] ^ ~int4_in[32][3],bf16_in[31][15] ^ ~int4_in[31][3],...,bf16_in[1][15] ^ ~int4_in[1][3],bf16_in[0][15] ^ ~int4_in[0][3]};    always@(*)begin
		
		for(int k=1; k<`INT4_BF16_ADDER_EXP_LATENCY; k=k+1)begin
			exp_in1_delay_nxt[k] = exp_in1_delay[k-1];
            exp_in2_delay_nxt[k] = exp_in2_delay[k-1];
		end
	end
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            p_out <= '0;
        end
        else begin
            p_out <= p_out_nxt;
        end
	end
	
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for(int j = 0; j < `INT4_BF16_ADDER_EXP_LATENCY; j = j + 1) begin
		    	exp_in1_delay[j] <= '0;
                exp_in2_delay[j] <= '0;
		    end
        end
        else begin
            for(int j = 0; j < `INT4_BF16_ADDER_EXP_LATENCY; j = j + 1) begin
		    	exp_in1_delay[j] <= exp_in1_delay_nxt[j];
                exp_in2_delay[j] <= exp_in2_delay_nxt[j];
		    end
        end
	end

    logic [4:0] exp_plus1_nxt, exp_plus2_nxt;
    logic [4:0] exp_plus1, exp_plus2;
    logic flag1_nxt, flag2_nxt;
    logic flag1, flag2;
    logic [4:0] man_shift1_nxt, man_shift2_nxt;
    logic [4:0] man_shift1, man_shift2;
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            exp_plus1 <= '0;
            exp_plus2 <= '0;
            man_shift1 <= '0;
            man_shift2 <= '0;
            flag1 <= '0;
            flag2 <= '0;
        end
        else begin
            exp_plus1 <= exp_plus1_nxt;
            exp_plus2 <= exp_plus2_nxt;
            man_shift1 <= man_shift1_nxt;
            man_shift2 <= man_shift2_nxt;
            flag1 <= flag1_nxt;
            flag2 <= flag2_nxt;
        end
    end
    
    always@(*) begin
        if(exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] == 0 && p_out1_pos_o == 5'd23) begin
		    exp_plus1_nxt = 1;
		    flag1_nxt = 0;
		    man_shift1_nxt = 0;
		end
		else if(exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] == 0 && p_out1_pos_o == 5'd24) begin
		    exp_plus1_nxt = 2;
		    flag1_nxt = 0;
		    man_shift1_nxt = 0;
		end
		else if(exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] == 8'd255) begin
		    exp_plus1_nxt = 0;
		    flag1_nxt = 0;
		    man_shift1_nxt = 0;
		end
		else if(exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] != 0 && p_out1_pos_o == 5'd24) begin
		    exp_plus1_nxt = 1;
		    flag1_nxt = 0;
		    man_shift1_nxt = 0;
		end
		else if(exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] != 0) begin
            exp_plus1_nxt = 5'd23 - p_out1_pos_o;
            flag1_nxt = 1;
            man_shift1_nxt = 5'd23 - p_out1_pos_o;
		end
		else begin
            exp_plus1_nxt = 0;
            flag1_nxt = 0;
            man_shift1_nxt = 0;
		end
	end
	
	always@(posedge clk or negedge rst_n) begin
	    if(~rst_n) begin
            exp_out1 <= '0;
        end
        else begin    
            if(flag1) begin
	            if(exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] > 8'(exp_plus1))
	               exp_out1 <=  exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] - exp_plus1;
	            else
	               exp_out1 <=  0;
	        end
	        else
	            exp_out1 <=  exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] + exp_plus1;
        end
	end
	
//    always@(posedge clk) begin
//		exp_out1 <= exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] + (p_out1_pos_o - 5'd23);
//        exp_out2 <= exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] + (p_out2_pos_o - 5'd23);
//	end
	always@(*) begin
        if(exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] == 0 && p_out2_pos_o == 5'd23) begin
		    exp_plus2_nxt = 1;
		    flag2_nxt = 0;
		    man_shift2_nxt = 0;
		end
		else if(exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] == 0 && p_out2_pos_o == 5'd24) begin
		    exp_plus2_nxt = 2;
		    flag2_nxt = 0;
		    man_shift2_nxt = 0;
		end
		else if(exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] == 8'd255) begin
		    exp_plus2_nxt = 0;
		    flag2_nxt = 0;
		    man_shift2_nxt = 0;
		end
		else if(exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] != 0 && p_out2_pos_o == 5'd24) begin
		    exp_plus2_nxt = 1;
		    flag2_nxt = 0;
		    man_shift2_nxt = 0;
		end
		else if(exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-2] != 0) begin
            exp_plus2_nxt = 5'd23 - p_out2_pos_o;
            flag2_nxt = 1;
            man_shift2_nxt = 5'd23 - p_out2_pos_o;
		end
		else begin
            exp_plus2_nxt = 0;
            flag2_nxt = 0;
            man_shift2_nxt = 0;
		end
	end
	
	always@(posedge clk or negedge rst_n) begin
	    if(~rst_n) begin
            exp_out2 <= '0;
        end
        else begin
            if(flag2) begin
	            if(exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] > 8'(exp_plus2))
	               exp_out2 <=  exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] - exp_plus2;
	            else
	               exp_out2 <=  0;
	        end
	        else
	            exp_out2 <=  exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] + exp_plus2;
        end
	end
	
	logic inf_flag1, inf_flag2;
	logic inf_flag1_d, inf_flag2_d;
	always@(posedge clk or negedge rst_n) begin
	    if(~rst_n) begin
            inf_flag1 <= '0;
        end
        else begin
            if(exp_out1 == 8'd255)
	            inf_flag1 <= 1;
	        else
	            inf_flag1 <= 0;
        end
	end

	always@(posedge clk or negedge rst_n) begin
	    if(~rst_n) begin
            inf_flag2 <= '0;
        end
        else begin    
            if(exp_out2 == 8'd255)
	            inf_flag2 <= 1;
	        else
	            inf_flag2 <= 0;
        end
	end

	always@(posedge clk or negedge rst_n) begin
	    if(~rst_n) begin
            inf_flag1_d <= 0;
            inf_flag2_d <= 0;
        end
        else begin
            inf_flag1_d <= inf_flag1;
	        inf_flag2_d <= inf_flag2;
        end
	end
	
	logic [7:0] exp_shift;
	always@(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
            exp_shift <= '0;
        end
        else begin
            if(exp_out1 > exp_out2) begin
	            exp_shift <= exp_out1 - exp_out2;
            end
            else begin
                exp_shift <= exp_out2 - exp_out1;
            end
        end
	end
	
   lod lod_s1 (
    .data_i({6'b0, p_out1_com}),
    .pos_o(p_out1_pos_o_reg),
    .valid_o()
   );
   lod lod_s2 (
    .data_i({6'b0, p_out2_com}),
    .pos_o(p_out2_pos_o_reg),
    .valid_o()
   );
   
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            p_out1_pos_o <= '0;
            p_out2_pos_o <= '0;
        end
        else begin    
            p_out1_pos_o <= p_out1_pos_o_reg;
            p_out2_pos_o <= p_out2_pos_o_reg;
        end
   end
   
   logic signed [25:0] s1_reg, s2_reg;
   logic signed [25:0] s1_reg_d, s2_reg_d;
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s1_reg <= '0;
        end
        else begin
            if(p_out1_pos_o == 5'd24)
	            s1_reg <= $signed(p_out[25:0]) >>> 1;
	        else
	            s1_reg <= p_out[25:0];
            //s2 <= p_out[54:29] >> (p_out2_pos_o - 5'd23);
        end
   end
   
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s1_reg_d <= '0;
        end
        else begin    
            if(exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] == 0)
                s1_reg_d <= s1_reg;
            else begin
                if(exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] > 8'(man_shift1))
	                s1_reg_d <= s1_reg << man_shift1;
	            else
	                s1_reg_d <= s1_reg << (exp_in1_delay[`INT4_BF16_ADDER_EXP_LATENCY-1]-1);
	        end
        end
   end
   
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s2_reg <= '0;
        end
        else begin   
            if(p_out2_pos_o == 5'd24)
	            s2_reg <= $signed(p_out[54:29]) >>> 1;
	        else
	            s2_reg <= p_out[54:29];
            //s2 <= p_out[54:29] >> (p_out2_pos_o - 5'd23);
        end
   end
   
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s2_reg_d <= '0;
        end
        else begin
            if(exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] == 0)
                s2_reg_d <= s2_reg;
            else begin
                if(exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-1] > 8'(man_shift2))
	               s2_reg_d <= s2_reg << man_shift2;
	            else
	               s2_reg_d <= s2_reg << (exp_in2_delay[`INT4_BF16_ADDER_EXP_LATENCY-1]-1);
	        end
        end
   end
   
   
   
   
   
   
   
//   logic signed [25:0] s1_reg, s2_reg;
//   always@(posedge clk) begin
//	   s1_reg <= p_out[25:0] >> (p_out1_pos_o - 5'd23);
//       s2_reg <= p_out[54:29] >> (p_out2_pos_o - 5'd23);
//   end
   
   logic signed [25:0] s1_reg_dd, s2_reg_dd;
   logic signed [25:0] s1_out, s2_out;
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s1_reg_dd <= '0;
            s2_reg_dd <= '0;
        end
        else begin
            if(exp_out1 > exp_out2) begin
	            s1_reg_dd <= s1_reg_d;
                s2_reg_dd <= s2_reg_d;
            end
            else begin
                s1_reg_dd <= s2_reg_d;
                s2_reg_dd <= s1_reg_d;
            end
        end
   end
   
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s1_out <= '0;
            s2_out <= '0;
        end
        else begin
            s1_out <= s1_reg_dd;
            s2_out <= s2_reg_dd >>> exp_shift;
        end
   end
   
   assign s1 = (inf_flag1_d) ? $signed({2'd0, 1'd1, 23'd0}) : s1_out;
   assign s2 = (inf_flag2_d) ? $signed({2'd0, 1'd1, 23'd0}) : s2_out;
   
   logic [7:0] exp_out_reg;
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            exp_out_reg <= '0;
            exp_out_result <= '0;
        end
        else begin
            exp_out_reg <= (exp_out1 > exp_out2) ? exp_out1 : exp_out2;
            exp_out_result <= exp_out_reg;
        end
   end
endmodule

module dsp58_two24_adder_last (
    input                 clk,
    input rst_n,
    input   signed [25:0] a1, b1, 
    input   signed [25:0] a2, b2, 
    input   [7:0] exp_in1, exp_in2,
    output  signed [25:0] s1, s2,
    output  [7:0] exp_out1, exp_out2
);
    logic [57:0] p_out;
    logic [57:0] p_out_nxt;
    logic [7:0] exp_out1_result, exp_out2_result;
    logic [25:0] p_out1_com ;
    logic [25:0] p_out2_com ;
    assign p_out1_com = (p_out_nxt[25]) ? ~p_out_nxt[25:0] + 1 : p_out_nxt[25:0] ;
    assign p_out2_com = (p_out_nxt[54]) ? ~p_out_nxt[54:29] + 1 : p_out_nxt[54:29] ;
    assign exp_out1 = exp_out1_result;
    assign exp_out2 = exp_out2_result;
     DSP58 #(
       // Feature Control Attributes: Data Path Selection
       .AMULTSEL("A"),                    // Selects A input to multiplier (A, AD)
       .A_INPUT("DIRECT"),                // Selects A input source, "DIRECT" (A port) or "CASCADE" (ACIN port)
       .BMULTSEL("B"),                    // Selects B input to multiplier (AD, B)
       .B_INPUT("DIRECT"),                // Selects B input source, "DIRECT" (B port) or "CASCADE" (BCIN port)
       .DSP_MODE("INT24"),                // Configures DSP to a particular mode of operation. Set to INT24 for
                                          // legacy mode.
       .PREADDINSEL("A"),                 // Selects input to pre-adder (A, B)
       .RND(58'h000000000000000),         // Rounding Constant
       .USE_MULT("NONE"),             // Select multiplier usage (DYNAMIC, MULTIPLY, NONE)
       .USE_SIMD("ONE58"),                // SIMD selection (FOUR12, ONE58, TWO24)
       .USE_WIDEXOR("FALSE"),             // Use the Wide XOR function (FALSE, TRUE)
       .XORSIMD("XOR24_34_58_116"),       // Mode of operation for the Wide XOR (XOR12_22, XOR24_34_58_116)
       // Pattern Detector Attributes: Pattern Detection Configuration
       .AUTORESET_PATDET("NO_RESET"),     // NO_RESET, RESET_MATCH, RESET_NOT_MATCH
       .AUTORESET_PRIORITY("RESET"),      // Priority of AUTORESET vs. CEP (CEP, RESET).
       .MASK(58'h0ffffffffffffff),        // 58-bit mask value for pattern detect (1=ignore)
       .PATTERN(58'h000000000000000),     // 58-bit pattern match for pattern detect
       .SEL_MASK("MASK"),                 // C, MASK, ROUNDING_MODE1, ROUNDING_MODE2
       .SEL_PATTERN("PATTERN"),           // Select pattern value (C, PATTERN)
       .USE_PATTERN_DETECT("NO_PATDET"),  // Enable pattern detect (NO_PATDET, PATDET)
       // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
       .IS_ALUMODE_INVERTED(4'b0000),     // Optional inversion for ALUMODE
       .IS_CARRYIN_INVERTED(1'b0),        // Optional inversion for CARRYIN
       .IS_CLK_INVERTED(1'b0),            // Optional inversion for CLK
       .IS_INMODE_INVERTED(5'b00000),     // Optional inversion for INMODE
       .IS_NEGATE_INVERTED(3'b000),       // Optional inversion for NEGATE
       .IS_OPMODE_INVERTED(9'b000000000), // Optional inversion for OPMODE
       .IS_RSTALLCARRYIN_INVERTED(1'b0),  // Optional inversion for RSTALLCARRYIN
       .IS_RSTALUMODE_INVERTED(1'b0),     // Optional inversion for RSTALUMODE
       .IS_RSTA_INVERTED(1'b0),           // Optional inversion for RSTA
       .IS_RSTB_INVERTED(1'b0),           // Optional inversion for RSTB
       .IS_RSTCTRL_INVERTED(1'b0),        // Optional inversion for STCONJUGATE_A
       .IS_RSTC_INVERTED(1'b0),           // Optional inversion for RSTC
       .IS_RSTD_INVERTED(1'b0),           // Optional inversion for RSTD
       .IS_RSTINMODE_INVERTED(1'b0),      // Optional inversion for RSTINMODE
       .IS_RSTM_INVERTED(1'b0),           // Optional inversion for RSTM
       .IS_RSTP_INVERTED(1'b0),           // Optional inversion for RSTP
       // Register Control Attributes: Pipeline Register Configuration
       .ACASCREG(0),                      // Number of pipeline stages between A/ACIN and ACOUT (0-2)
       .ADREG(0),                         // Pipeline stages for pre-adder (0-1)
       .ALUMODEREG(0),                    // Pipeline stages for ALUMODE (0-1)
       .AREG(0),                          // Pipeline stages for A (0-2)
       .BCASCREG(0),                      // Number of pipeline stages between B/BCIN and BCOUT (0-2)
       .BREG(0),                          // Pipeline stages for B (0-2)
       .CARRYINREG(0),                    // Pipeline stages for CARRYIN (0-1)
       .CARRYINSELREG(0),                 // Pipeline stages for CARRYINSEL (0-1)
       .CREG(0),                          // Pipeline stages for C (0-1)
       .DREG(0),                          // Pipeline stages for D (0-1)
       .INMODEREG(0),                     // Pipeline stages for INMODE (0-1)
       .MREG(0),                          // Multiplier pipeline stages (0-1)
       .OPMODEREG(0),                     // Pipeline stages for OPMODE (0-1)
       .PREG(1),                          // Number of pipeline stages for P (0-1)
       .RESET_MODE("SYNC")                // Selection of synchronous or asynchronous reset. (ASYNC, SYNC).
    )
    DSP58_inst (
       // Cascade outputs: Cascade Ports
       .CLK(clk),
       .ALUMODE(4'b0000),
       .OPMODE(9'b000_11_00_11),
       .INMODE(5'b00000),

       .A({3'b0, a2[25:0], 3'b0, a1[25:24]}),
       .B({a1[23:0]}),
       .C({3'b0, b2[25:0], 3'b0, b1[25:0]}),
       .P(p_out_nxt),
       .CEA1(1'b1), .CEA2(1'b1), .CEB1(1'b1), .CEB2(1'b1), .CEC(1'b1), 
       .CEP(1'b1), .RSTA(1'b0), .RSTB(1'b0), .RSTC(1'b0), .RSTP(1'b0)
      
    );
   // always@(posedge clk or negedge rst_n) begin
   //      if(~rst_n) begin
   //          p_out_nxt <= '0;
   //      end
   //      else begin
   //          p_out_nxt <= {3'b0, a2[25:0], 3'b0, a1[25:0]} + {3'b0, b2[25:0], 3'b0, b1[25:0]};
   //      end
   // end
   logic [4:0] p_out1_pos_o, p_out2_pos_o;
   logic [4:0] p_out1_pos_o_reg, p_out2_pos_o_reg;
   
   logic [7:0] exp_in1_delay_nxt [0:`INT4_BF16_LAST_ADDER_EXP_LATENCY-1];
   logic [7:0] exp_in1_delay [0:`INT4_BF16_LAST_ADDER_EXP_LATENCY-1];
   logic [7:0] exp_in2_delay_nxt [0:`INT4_BF16_LAST_ADDER_EXP_LATENCY-1];
   logic [7:0] exp_in2_delay [0:`INT4_BF16_LAST_ADDER_EXP_LATENCY-1];
   
//    always@(posedge clk) begin
//     p_out <= p_out_nxt;
//    end
   
   always@(*) begin
        exp_in1_delay_nxt [0] = exp_in1;
        exp_in2_delay_nxt [0] = exp_in2;
        //res_s_nxt [0] = {bf16_in[31][15] ^ ~int4_in[63][3],...,bf16_in[0][15] ^ ~int4_in[32][3],bf16_in[31][15] ^ ~int4_in[31][3],...,bf16_in[1][15] ^ ~int4_in[1][3],bf16_in[0][15] ^ ~int4_in[0][3]};    always@(*)begin
		
		for(int k=1; k<`INT4_BF16_LAST_ADDER_EXP_LATENCY; k=k+1)begin
			exp_in1_delay_nxt[k] = exp_in1_delay[k-1];
            exp_in2_delay_nxt[k] = exp_in2_delay[k-1];
		end
	end

    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            for(int j = 0; j < `INT4_BF16_LAST_ADDER_EXP_LATENCY; j = j + 1) begin
                exp_in1_delay[j] <= '0;
                exp_in2_delay[j] <= '0;
            end
        end
        else begin    
            for(int j = 0; j < `INT4_BF16_LAST_ADDER_EXP_LATENCY; j = j + 1) begin
		    	exp_in1_delay[j] <= exp_in1_delay_nxt[j];
                exp_in2_delay[j] <= exp_in2_delay_nxt[j];
		    end
        end
	end
    
    logic [4:0] exp_plus1_nxt, exp_plus2_nxt;
    logic [4:0] exp_plus1, exp_plus2;
    logic flag1_nxt, flag2_nxt;
    logic flag1, flag2;
    logic [4:0] man_shift1_nxt, man_shift2_nxt;
    logic [4:0] man_shift1, man_shift2;
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            exp_plus1 <= '0;
            exp_plus2 <= '0;
            man_shift1 <= '0;
            man_shift2 <= '0;
            flag1 <= '0;
            flag2 <= '0;
            p_out <= '0;
        end
        else begin
            exp_plus1 <= exp_plus1_nxt;
            exp_plus2 <= exp_plus2_nxt;
            man_shift1 <= man_shift1_nxt;
            man_shift2 <= man_shift2_nxt;
            flag1 <= flag1_nxt;
            flag2 <= flag2_nxt;
            p_out <= p_out_nxt;
        end
    end
    
    always@(*) begin
        if(exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] == 0 && p_out1_pos_o == 5'd23) begin
		    exp_plus1_nxt = 1;
		    flag1_nxt = 0;
		    man_shift1_nxt = 0;
		end
		else if(exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] == 0 && p_out1_pos_o == 5'd24) begin
		    exp_plus1_nxt = 2;
		    flag1_nxt = 0;
		    man_shift1_nxt = 0;
		end
		else if(exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] == 8'd255) begin
		    exp_plus1_nxt = 0;
		    flag1_nxt = 0;
		    man_shift1_nxt = 0;
		end
		else if(exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] != 0 && p_out1_pos_o == 5'd24) begin
		    exp_plus1_nxt = 1;
		    flag1_nxt = 0;
		    man_shift1_nxt = 0;
		end
		else if(exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] != 0) begin
            exp_plus1_nxt = 5'd23 - p_out1_pos_o;
            flag1_nxt = 1;
            man_shift1_nxt = 5'd23 - p_out1_pos_o;
		end
		else begin
            exp_plus1_nxt = 0;
            flag1_nxt = 0;
            man_shift1_nxt = 0;
		end
	end
	
	always@(posedge clk or negedge rst_n) begin
	    if(~rst_n) begin
            exp_out1_result <= '0;
        end
        else begin    
            if(flag1) begin
	            if(exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] > 8'(exp_plus1))
	               exp_out1_result <=  exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] - exp_plus1;
	            else
	               exp_out1_result <=  0;
	        end
	        else
	            exp_out1_result <=  exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] + exp_plus1;
        end
	end
	
	always@(*) begin
        if(exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] == 0 && p_out2_pos_o == 5'd23) begin
		    exp_plus2_nxt = 1;
		    flag2_nxt = 0;
		    man_shift2_nxt = 0;
		end
		else if(exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] == 0 && p_out2_pos_o == 5'd24) begin
		    exp_plus2_nxt = 2;
		    flag2_nxt = 0;
		    man_shift2_nxt = 0;
		end
		else if(exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] == 8'd255) begin
		    exp_plus2_nxt = 0;
		    flag2_nxt = 0;
		    man_shift2_nxt = 0;
		end
		else if(exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] != 0 && p_out2_pos_o == 5'd24) begin
		    exp_plus2_nxt = 1;
		    flag2_nxt = 0;
		    man_shift2_nxt = 0;
		end
		else if(exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-2] != 0) begin
            exp_plus2_nxt = 5'd23 - p_out2_pos_o;
            flag2_nxt = 1;
            man_shift2_nxt = 5'd23 - p_out2_pos_o;
		end
		else begin
            exp_plus2_nxt = 0;
            flag2_nxt = 0;
            man_shift2_nxt = 0;
		end
	end
	
	always@(posedge clk or negedge rst_n) begin
	    if(~rst_n) begin
            exp_out2_result <= '0;
        end
        else begin       
            if(flag2) begin
	            if(exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] > 8'(exp_plus2))
	               exp_out2_result <=  exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] - exp_plus2;
	            else
	               exp_out2_result <=  0;
	        end
	        else
	            exp_out2_result <=  exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] + exp_plus2;
        end
	end
//	logic [7:0] exp_shift;
//	always@(posedge clk) begin
//		if(exp_out1 > exp_out2) begin
//	       exp_shift <= exp_out1 - exp_out2;
//       end
//       else begin
//           exp_shift <= exp_out2 - exp_out1;
//       end
//	end
	
   lod lod_s1 (
    .data_i({6'b0, p_out1_com}),
    .pos_o(p_out1_pos_o_reg),
    .valid_o()
   );
   lod lod_s2 (
    .data_i({6'b0, p_out2_com}),
    .pos_o(p_out2_pos_o_reg),
    .valid_o()
   );
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            p_out1_pos_o <= '0;
            p_out2_pos_o <= '0;
        end
        else begin    
            p_out1_pos_o <= p_out1_pos_o_reg;
            p_out2_pos_o <= p_out2_pos_o_reg;
        end
   end
   
   logic signed [25:0] s1_reg, s2_reg;
   logic signed [25:0] s1_reg_d, s2_reg_d;
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s1_reg <= '0;
        end
        else begin      
            if(p_out1_pos_o == 5'd24)
	            s1_reg <= $signed(p_out[25:0]) >>> 1;
	        else
	            s1_reg <= p_out[25:0];
            //s2 <= p_out[54:29] >> (p_out2_pos_o - 5'd23);
        end
   end
   
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s1_reg_d <= '0;
        end
        else begin     
            if(exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] == 0)
                s1_reg_d <= s1_reg;
            else begin
                if(exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] > 8'(man_shift1))
	               s1_reg_d <= s1_reg << man_shift1;
	            else
	               s1_reg_d <= s1_reg << (exp_in1_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1]-1);
	        end
        end
   end
   
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s2_reg <= '0;
        end
        else begin       
            if(p_out2_pos_o == 5'd24)
	            s2_reg <= $signed(p_out[54:29]) >>> 1;
	        else
	            s2_reg <= p_out[54:29];
            //s2 <= p_out[54:29] >> (p_out2_pos_o - 5'd23);
        end
   end
   
   always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            s2_reg_d <= '0;
        end
        else begin     
            if(exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] == 0)
                s2_reg_d <= s2_reg;
            else begin
                if(exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1] > 8'(man_shift2))
	               s2_reg_d <= s2_reg << man_shift2;
	            else
	               s2_reg_d <= s2_reg << (exp_in2_delay[`INT4_BF16_LAST_ADDER_EXP_LATENCY-1]-1);
	        end
        end
   end
   
   assign s1 = (exp_out1 == 8'd255) ? $signed({2'd0, 1'd1, 23'd0}) : s1_reg_d;
   assign s2 = (exp_out2 == 8'd255) ? $signed({2'd0, 1'd1, 23'd0}) : s2_reg_d;
//   logic signed [25:0] s1_reg_d, s2_reg_d;
   
//   always@(posedge clk) begin
//       if(exp_out1 > exp_out2) begin
//	       s1_reg_d <= s1_reg;
//           s2_reg_d <= s2_reg;
//       end
//       else begin
//           s1_reg_d <= s2_reg;
//           s2_reg_d <= s1_reg;
//       end
//   end
   
//   always@(posedge clk) begin
//       s1 <= s1_reg_d;
//       s2 <= s2_reg_d >> exp_shift;
//   end
   
//   logic [7:0] exp_out_reg;
//   always@(posedge clk) begin
//       exp_out_reg <= (exp_out1 > exp_out2) ? exp_out1 : exp_out2;
//       exp_out <= exp_out_reg;
//   end
endmodule



// module FP16TO32 (
//     input i_clk,
//     input i_rst_n,
//     input [15:0] f16,
//     output [31:0] f32
// );
//     logic        sign;
//     logic [4:0]  exp16;
//     logic [9:0]  man16;

//     logic [7:0]  exp32;
//     logic [22:0] man32;
//     logic [3:0]  shift;
//     logic [31:0] f32_d;
//     logic [31:0] f32_dd;

//     assign f32 = f32_dd;

//     assign sign  = f16[15];
//     assign exp16 = f16[14:10];
//     assign man16 = f16[9:0];
//     always@(*) begin
//         if (exp16 == 5'h1F) begin
//             // NaN 或 Infinity
//             exp32 = 8'hFF;
//             man32 = {man16, 13'h0};
//         end else if (exp16 == 5'h00) begin
//             if (man16 == 10'h0) begin
//                 // 真正的 0
//                 exp32 = 8'h00;
//                 man32 = 23'h0;
//             end else begin
//                 // --- 處理 Denormal 數值 ---
//                 // 找出第一個 1 的位置 (Leading One Detection)
                

//                 // 補償指數：FP16 denormal 的實際指數是 -14
//                 // 經過 shift 之後，我們要再減去 shift 的值
//                 exp32 = 8'd103 + {4'd0, shift}; 
//                 // 將剩下的 mantissa 填入 (排除掉已經變為隱藏位的那個 1)
//                 man32 = {man16[9:0], 13'h0} << (4'd10 - shift);
//             end
//         end else begin
//             // 正常數值
//             exp32 = exp16 + 8'd112;
//             man32 = {man16, 13'h0};
//         end
//     end

//     always@(posedge i_clk or negedge i_rst_n) begin
//         if(!i_rst_n) begin
//             f32_d <= 0;
//             f32_dd <= 0;
//         end
//         else begin
//             f32_d <= {sign, exp32, man32};
//             f32_dd <= f32_d;
//         end
//     end

//     lod #(.WIDTH(16)) u_lod (
//         .data_i({6'd0, man16}),
//         .pos_o(shift),
//         .valid_o()
//     );
// endmodule


module lod #(
    parameter WIDTH = 32,
    parameter SEL_W = $clog2(WIDTH)
)(
    input [WIDTH-1:0] data_i,
    output [SEL_W-1:0] pos_o,
    output             valid_o
);

    if (WIDTH == 2) begin : base_case
        assign valid_o = data_i[1] | data_i[0];
        assign pos_o   = data_i[1]; 
    end 
    else begin : recursive_step
        logic [SEL_W-2:0] pos_high, pos_low;
        logic             valid_high, valid_low;

       
        lod #(.WIDTH(WIDTH/2)) upper (
            .data_i(data_i[WIDTH-1 : WIDTH/2]),
            .pos_o (pos_high),
            .valid_o(valid_high)
        );

        lod #(.WIDTH(WIDTH/2)) lower (
            .data_i(data_i[WIDTH/2-1 : 0]),
            .pos_o (pos_low),
            .valid_o(valid_low)
        );

    
        assign valid_o = valid_high | valid_low;
        assign pos_o = valid_high ? {1'b1, pos_high} : {1'b0, pos_low};
    end

endmodule