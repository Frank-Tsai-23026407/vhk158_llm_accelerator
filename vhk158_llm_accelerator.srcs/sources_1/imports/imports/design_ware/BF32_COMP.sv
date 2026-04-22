//`include "/usr/cad/synopsys/synthesis/cur/dw/sim_ver/DW_fp_cmp.v"
`define COMP_LATENCY 2
//`define DIC_NUM_LOG 18 
module BF32_COMP (
	input i_clk,
	input i_rst_n,
    input [`DIC_NUM_LOG-1:0] i_id_1,
	input [`DIC_NUM_LOG-1:0] i_id_2,
	input [`BIT_NUM-1:0] i_data_1,
	input [`BIT_NUM-1:0] i_data_2,
	output [`BIT_NUM-1:0] o_comp,
    output [`DIC_NUM_LOG-1:0] o_comp_id
);
    integer k;
    wire [7:0] bool_result;
    
    
    logic [`COMP_LATENCY-1:0][`BIT_NUM-1:0] data1_delay_nxt, data1_delay;
    logic [`COMP_LATENCY-1:0][`DIC_NUM_LOG-1:0] id1_delay_nxt, id1_delay;
    logic [`COMP_LATENCY-1:0][`BIT_NUM-1:0] data2_delay_nxt, data2_delay;
    logic [`COMP_LATENCY-1:0][`DIC_NUM_LOG-1:0] id2_delay_nxt, id2_delay;
    
    assign o_comp = (bool_result[0])? data1_delay[`COMP_LATENCY-1] : data2_delay[`COMP_LATENCY-1];
    assign o_comp_id = (bool_result[0])? id1_delay[`COMP_LATENCY-1] : id2_delay[`COMP_LATENCY-1];
    
    always@(*) begin
	    data1_delay_nxt[0] = i_data_1;
	    for(k=1; k<`COMP_LATENCY; k=k+1)begin
	        data1_delay_nxt[k] = data1_delay[k-1];
	    end
    end

    always@(*) begin
	    data2_delay_nxt[0] = i_data_2;
	    for(k=1; k<`COMP_LATENCY; k=k+1)begin
	        data2_delay_nxt[k] = data2_delay[k-1];
	    end
    end

    always@(*) begin
	    id1_delay_nxt[0] = i_id_1;
	    for(k=1; k<`COMP_LATENCY; k=k+1)begin
	        id1_delay_nxt[k] = id1_delay[k-1];
	    end
    end

    always@(*) begin
	    id2_delay_nxt[0] = i_id_2;
	    for(k=1; k<`COMP_LATENCY; k=k+1)begin
	        id2_delay_nxt[k] = id2_delay[k-1];
	    end
    end
    
    always@(posedge i_clk or negedge i_rst_n) begin
	    if(!i_rst_n) begin
	        data1_delay <= 0;
            data2_delay <= 0;
            id1_delay <= 0;
            id2_delay <= 0;
	    end
	    else begin
	        data1_delay <= data1_delay_nxt;
            data2_delay <= data2_delay_nxt;
            id1_delay <= id1_delay_nxt;
            id2_delay <= id2_delay_nxt;
	    end
    end
//    integer k;
//    logic [`COMP_LATENCY-1:0][`BIT_NUM-1:0] comp_output_delay_nxt, comp_output_delay;
//    logic [`COMP_LATENCY-1:0][`DIC_NUM_LOG-1:0] comp_idoutput_delay_nxt, comp_idoutput_delay;
//    logic [`BIT_NUM-1:0] comp_output;
//    logic [`DIC_NUM_LOG-1:0] comp_idoutput;

//    assign o_comp = comp_output_delay[`COMP_LATENCY-1];
//    assign o_comp_id = comp_idoutput_delay[`COMP_LATENCY-1];
//    assign comp_idoutput = (comp_output == i_data_1) ? i_id_1 : i_id_2;

//    always@(*) begin
//	    comp_output_delay_nxt[0] = comp_output;
//	    for(k=1; k<`COMP_LATENCY; k=k+1)begin
//	        comp_output_delay_nxt[k] = comp_output_delay[k-1];
//	    end
//    end
	
//    always@(*) begin
//	    comp_idoutput_delay_nxt[0] = comp_idoutput;
//	    for(k=1; k<`COMP_LATENCY; k=k+1)begin
//	        comp_idoutput_delay_nxt[k] = comp_idoutput_delay[k-1];
//	    end
//    end

//    always@(posedge i_clk or negedge i_rst_n) begin
//	    if(!i_rst_n) begin
//	        comp_output_delay <= 0;
//            comp_idoutput_delay <= 0;
//	    end
//	    else begin
//	        comp_output_delay <= comp_output_delay_nxt;
//            comp_idoutput_delay <= comp_idoutput_delay_nxt;
//	    end
//    end
    
    FPGA_BF32_COMP u_FPGA_BF32_COMP (
		  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
		  .s_axis_a_tdata(i_data_1),              // input wire [15 : 0] s_axis_a_tdata
		  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
		  .s_axis_b_tdata(i_data_2),              // input wire [15 : 0] s_axis_b_tdata
		  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
		  .m_axis_result_tdata(bool_result) ,   // output wire [7 : 0] m_axis_result_tdata
		  .aclk(i_clk),
		  .aresetn					(i_rst_n)
	);
	
//    DW_fp_cmp #(23, 8, 0) comp_temp(
//        .a(i_data_1),
//        .b(i_data_2),
//        .zctr(1'b1),
//        .aeqb(),
//        .altb(),
//        .agtb(),
//        .unordered(),
//        .z0(comp_output),
//        .z1(),
//        .status0(),
//        .status1()
//    );
	
endmodule