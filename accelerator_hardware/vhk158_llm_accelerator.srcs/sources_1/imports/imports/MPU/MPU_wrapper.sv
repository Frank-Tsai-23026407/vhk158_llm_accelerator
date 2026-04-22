`define PROJ_40 40
module MPU_wrapper  (
input logic HCLK,
input logic HCLK_CORE,
input logic HRESETn,
input logic HSEL_MPUS,
input logic [31:0] HADDR_MPUS,
input logic [1:0] HTRANS_MPUS,
input logic HWRITE_MPUS,
input logic [2:0] HSIZE_MPUS,
input logic [31:0] HWDATA_MPUS,
output logic [31:0] HRDATA_MPUS,
output logic HREADYOUT_MPUS,
output logic HRESP_MPUS,
input logic FR_FULL_MPU,
output logic FR_WRITE_MPU,
output logic [31:0] FR_WDATA_MPU,
output logic IRQ_MPU,

input  i_16x4_MPU_data_valid,
input  [`PARALLEL_NUM*`BIT_NUM_16-1:0] i_16x4_scale,
input  [`PARALLEL_NUM*`BIT_NUM_16-1:0] i_16x4_bf16_in, 
input  [`PARALLEL_NUM*`MUL_16X4_LANE_NUM*4-1:0]  i_16x4_int4_in, 
input  [`PARALLEL_NUM*`BIT_NUM-1:0]	   i_mpu_64x8_data0,
input  [`MFU_LANE_NUM*`PARALLEL_NUM*`BIT_NUM-1:0]    i_mpu_64x8_data1,
input  [`MFU_LANE_NUM*`PARALLEL_NUM-1:0]    i_mpu_64x8_data_vald,
input  [`BIT_NUM-1:0] i_prob [0:`PARALLEL_TOKEN_NUM-1],
input  i_prob_valid,
input i_one_head_fa_finish,
//SFU
output [`BIT_NUM-1:0] o_MPU_max,
output 		          o_MPU_max_valid,
output [`BIT_NUM-1:0]    o_MPU_VPU_data 		 [0:`PARALLEL_NUM-1],
output   	             o_MPU_VPU_data_valid,

output [`PARALLEL_NUM*`BIT_NUM_16-1:0] o_mpu_done_data,
output   	              o_MPU_DMA_data_valid,
output [`DIC_NUM_LOG-1:0] o_MPU_DMA_max_id,
output                    o_MPU_DMA_max_id_valid,
output                    o_SV_data_valid,
output o_MPU_VPU_flag	
);

logic [31:0] C_REG_MFU_MODE_CONFIG;
logic [31:0] C_REG_OUTPUT_ID_RECEIVE_FLAG;
logic [31:0] C_REG_CLEAR_IRQ;
logic [31:0] S_REG_OUTPUT_ID;
logic [31:0] S_REG_OUTPUT_ID_DONE;

slave_bridge_MPUs u_slave_bridge_MPUs (
    .*
);

/************************************************************/
/*                                                          */
/* TODO: Connect your design interface here                 */
/*       Match your interfaces to the declared signals & IO */
/*                                                          */
/************************************************************/
logic [31:0] i_mfu_mode_config;
logic [31:0] o_output_id;
logic [31:0] o_output_id_done;
logic [5:0] i_cmd;
logic id_eos_flag;
logic [`DIC_NUM_LOG-1:0] o_MPU_max_id;
logic o_MPU_max_id_valid;

assign o_output_id = {14'b0, o_MPU_max_id};
assign o_output_id_done = {31'b0, o_MPU_max_id_valid};
assign o_MPU_DMA_max_id = (id_eos_flag) ? 18'd0 : o_MPU_max_id;
assign o_MPU_DMA_max_id_valid = (id_eos_flag) ? 0 : o_MPU_max_id_valid;

mpu_cdc_top u_mpu_cdc_top (
    .i_clk_cpu(HCLK),
    .i_clk_core(HCLK_CORE),
    .i_rst_n(HRESETn),
    .i_C_REG_mfu_mode_config(C_REG_MFU_MODE_CONFIG),
    .i_C_REG_output_id_receive_flag(C_REG_OUTPUT_ID_RECEIVE_FLAG),
    .i_S_REG_output_id(o_output_id),
    .i_S_REG_output_id_done(o_output_id_done),
    .i_write_enable(o_MPU_max_id_valid),
    .o_C_REG_mfu_mode_config(i_mfu_mode_config),
    .o_S_REG_output_id(S_REG_OUTPUT_ID),
    .o_S_REG_output_id_done(S_REG_OUTPUT_ID_DONE)
);

always_ff @(posedge HCLK_CORE or negedge HRESETn) begin
    if (!HRESETn) begin
        i_cmd <= 6'd0;
    end 
    else begin
        if (i_mfu_mode_config[5:0] != 6'd0 && i_mfu_mode_config[5:0] != i_cmd) begin
            i_cmd <= i_mfu_mode_config[5:0];
        end
        else
            i_cmd <= i_cmd;
    end 
end

always_ff @(posedge HCLK_CORE or negedge HRESETn) begin
    if (!HRESETn) begin
        id_eos_flag <= 0;
    end 
    else begin
        if (o_MPU_max_id == 18'd1 && o_MPU_max_id_valid)
            id_eos_flag <= 1;
        else if(o_MPU_max_id_valid)
            id_eos_flag <= 0;
        else
            id_eos_flag <= id_eos_flag;
    end 
end

MPU MPU_inst (
    .i_clk(HCLK_CORE),
    .i_rst_n(HRESETn),
    .i_cpu_cmd(i_mfu_mode_config[5:0]),
    .i_cmd(i_cmd),
    .i_prob(i_prob),
    .i_prob_valid(i_prob_valid),
    //.i_vpu_s_is_ready(i_vpu_s_is_ready),
    .i_16x4_MPU_data_valid(i_16x4_MPU_data_valid),
    .i_16x4_scale(i_16x4_scale),
    .i_16x4_bf16_in(i_16x4_bf16_in),
    .i_16x4_int4_in(i_16x4_int4_in),
    .i_mpu_64x8_data0(i_mpu_64x8_data0),
    .i_mpu_64x8_data1(i_mpu_64x8_data1),
    .i_mpu_64x8_data_vald(i_mpu_64x8_data_vald),
    .i_one_head_fa_finish(i_one_head_fa_finish),
    .o_MPU_max(o_MPU_max),
    .o_MPU_max_valid(o_MPU_max_valid),
    .o_MPU_VPU_data(o_MPU_VPU_data),
    .o_MPU_VPU_data_valid(o_MPU_VPU_data_valid),
    .o_mpu_done_data(o_mpu_done_data),
    .o_MPU_DMA_data_valid(o_MPU_DMA_data_valid),
    .o_MPU_max_id(o_MPU_max_id),
    .o_MPU_max_id_valid(o_MPU_max_id_valid),
    .o_SV_data_valid(o_SV_data_valid),
    .o_MPU_VPU_flag(o_MPU_VPU_flag)
);

//ila_6 mpu_cpu_clk (
//        .clk(HCLK),
//        .probe0(C_REG_MFU_MODE_CONFIG), //32
//        .probe1(C_REG_OUTPUT_ID_RECEIVE_FLAG), //32
//        .probe2(S_REG_OUTPUT_ID), //32
//        .probe3(S_REG_OUTPUT_ID_DONE) //32
//    );
    
//ila_7 mpu_core_clk (
//        .clk(HCLK_CORE),
//        .probe0(i_cmd), //6
//        .probe1(i_mfu_mode_config), //32
//        .probe2(id_eos_flag), //1
//        .probe3(o_MPU_DMA_max_id), //18
//        .probe4(o_MPU_DMA_max_id_valid) //1
//    );
endmodule

module slave_bridge_MPUs  (
input logic HCLK,
input logic HRESETn,
input logic HSEL_MPUS,
input logic [31:0] HADDR_MPUS,
input logic [1:0] HTRANS_MPUS,
input logic HWRITE_MPUS,
input logic [2:0] HSIZE_MPUS,
input logic [31:0] HWDATA_MPUS,
output logic [31:0] HRDATA_MPUS,
output logic HREADYOUT_MPUS,
output logic HRESP_MPUS,
output logic [31:0] C_REG_MFU_MODE_CONFIG,
output logic [31:0] C_REG_OUTPUT_ID_RECEIVE_FLAG,
output logic [31:0] C_REG_CLEAR_IRQ,
input logic [31:0] S_REG_OUTPUT_ID,
input logic [31:0] S_REG_OUTPUT_ID_DONE
);

logic        act_w, act_r;
logic [31:0] addr_w, addr_r;
logic [ 3:0] wen_w, wen_r;
logic [13:0] addr_dec;

logic [31:0] w_MFU_MODE_CONFIG;
logic [31:0] r_MFU_MODE_CONFIG;
assign C_REG_MFU_MODE_CONFIG = r_MFU_MODE_CONFIG;

logic [31:0] w_OUTPUT_ID_RECEIVE_FLAG;
logic [31:0] r_OUTPUT_ID_RECEIVE_FLAG;
assign C_REG_OUTPUT_ID_RECEIVE_FLAG = r_OUTPUT_ID_RECEIVE_FLAG;

logic w_CLEAR_IRQ;
logic r_CLEAR_IRQ;
assign C_REG_CLEAR_IRQ = r_CLEAR_IRQ;



assign addr_dec = addr_r[15:2];
always_comb begin
    act_w  = (HSEL_MPUS && HTRANS_MPUS == 2'b10);
    addr_w = (HSEL_MPUS && HTRANS_MPUS == 2'b10) ? HADDR_MPUS : addr_r;
    wen_w  = (HSEL_MPUS && HTRANS_MPUS == 2'b10) ? HWRITE_MPUS : wen_r;
end

always_comb begin
HRDATA_MPUS    = 32'd0;
HREADYOUT_MPUS = 1'b1;
HRESP_MPUS     = 1'b0;
w_MFU_MODE_CONFIG = '0;
w_OUTPUT_ID_RECEIVE_FLAG = '0;
w_CLEAR_IRQ = '0;
if(act_r) begin
if(wen_r) begin
if(addr_dec == 0) begin w_MFU_MODE_CONFIG = HWDATA_MPUS; end
if(addr_dec == 1) begin w_OUTPUT_ID_RECEIVE_FLAG = HWDATA_MPUS; end
if(addr_dec == 2) begin w_CLEAR_IRQ = HWDATA_MPUS; end
end else begin
if(addr_dec == 3) begin HRDATA_MPUS = S_REG_OUTPUT_ID; end
if(addr_dec == 4) begin HRDATA_MPUS = S_REG_OUTPUT_ID_DONE; end
end
end
end

always_ff@(posedge HCLK or negedge HRESETn) begin
if(~HRESETn) begin
act_r <= '0;
addr_r <= '0;
wen_r <= '0;
r_MFU_MODE_CONFIG <= '0;
r_OUTPUT_ID_RECEIVE_FLAG <= '0;
r_CLEAR_IRQ <= '0;
end else begin
act_r <= act_w;
addr_r <= addr_w;
wen_r <= wen_w;
r_MFU_MODE_CONFIG <= w_MFU_MODE_CONFIG;
r_OUTPUT_ID_RECEIVE_FLAG <= w_OUTPUT_ID_RECEIVE_FLAG;
r_CLEAR_IRQ <= w_CLEAR_IRQ;
end
end

endmodule
