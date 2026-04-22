module VPU_wrapper  (
input logic HCLK,
input logic HCLK_CORE,
input logic HRESETn,
input logic HSEL_VPUS,
input logic [31:0] HADDR_VPUS,
input logic [1:0] HTRANS_VPUS,
input logic HWRITE_VPUS,
input logic [2:0] HSIZE_VPUS,
input logic [31:0] HWDATA_VPUS,
output logic [31:0] HRDATA_VPUS,
output logic HREADYOUT_VPUS,
output logic HRESP_VPUS,
input logic FR_FULL_VPU,
output logic FR_WRITE_VPU,
output logic [31:0] FR_WDATA_VPU,
output logic IRQ_VPU,

input i_SV_data_valid,
input   [`BIT_NUM-1:0]  i_VPU_data_1       [0:`PARALLEL_NUM-1],
input   [`BIT_NUM-1:0]  i_VPU_data_2       [0:`PARALLEL_NUM-1],
input                   i_VPU_data_valid   [0:`PARALLEL_NUM-1],
input   [`BIT_NUM-1:0] i_MPU_VPU_data [0:`PARALLEL_NUM-1],
input   i_MPU_VPU_valid,
input  [`BIT_NUM-1:0] i_MPU_max,
input  i_MPU_max_valid,
output  [`BIT_NUM-1:0]  o_VPU_scale,
output                  o_VPU_flag,
output                  o_VPU_scale_valid,
output  [`BIT_NUM-1:0]  o_VPU_data         [0:`PARALLEL_NUM-1],
output                  o_VPU_data_valid,
//output o_vpu_s_is_ready,
output  [`BIT_NUM-1:0] o_prob [0:`PARALLEL_TOKEN_NUM-1],
output o_prob_valid,
output o_one_head_fa_finish

// /*********/
// output [5:0] o_cmd
// /*********/
);

logic [31:0] C_REG_VFU_MODE_CONFIG;
logic [31:0] C_REG_CLEAR_IRQ;

slave_bridge_VPUs u_slave_bridge_VPUs (
    .*
);

/************************************************************/
/*                                                          */
/* TODO: Connect your design interface here                 */
/*       Match your interfaces to the declared signals & IO */
/*                                                          */
/************************************************************/
logic [31:0] i_vfu_mode_config;
logic [5:0] i_cmd;
logic [`BIT_NUM-1:0] MPU_VPU_data [0:`PARALLEL_NUM-1];
logic MPU_VPU_valid;

logic [3:0] qk_norm_cnt;
logic [3:0] qk_norm_cnt_num;

// /*********/
// assign o_cmd = i_cmd;
// /*********/

//logic o_qk_rope_fusion_done;

genvar i;
assign MPU_VPU_valid = (i_cmd == 6'd7 || i_cmd == 6'd11 || i_cmd == 6'd13 || i_cmd == 6'd23) ? i_MPU_VPU_valid : 0;
generate
    for (i = 0; i < `PARALLEL_NUM; i = i + 1) begin
        assign MPU_VPU_data[i] = (i_cmd == 6'd7 || i_cmd == 6'd11 || i_cmd == 6'd13 || i_cmd == 6'd23) ? i_MPU_VPU_data[i] : 0;
    end
endgenerate

vpu_cdc_top u_vpu_cdc_top (
    .i_clk_cpu(HCLK),
    .i_clk_core(HCLK_CORE),
    .i_rst_n(HRESETn),
    .i_C_REG_VFU_MODE_CONFIG(C_REG_VFU_MODE_CONFIG),
    .o_C_REG_VFU_MODE_CONFIG(i_vfu_mode_config)
);

logic [5:0] i_cmd_nxt;

always_comb begin
    i_cmd_nxt = i_cmd; 
    
    if (i_cmd == 6'd7 || i_cmd == 6'd11 || i_cmd == 6'd13 || i_cmd == 6'd19 || i_cmd == 6'd23) begin
        if (i_vfu_mode_config[5:0] != 6'd0 && i_vfu_mode_config[5:0] != i_cmd) begin
            i_cmd_nxt = i_vfu_mode_config[5:0];
        end
    end
    else begin
        i_cmd_nxt = i_vfu_mode_config[5:0];
    end
end

always_ff @(posedge HCLK_CORE or negedge HRESETn) begin
    if (!HRESETn) begin
        i_cmd <= 6'd0;
    end 
    else begin
        i_cmd <= i_cmd_nxt;
    end
end

// always_ff @(posedge HCLK_CORE or negedge HRESETn) begin
//     if (!HRESETn) begin
//         i_cmd <= 6'd0;
//     end 
//     else begin
//         if (i_cmd == 6'd7 || i_cmd == 6'd11 || i_cmd == 6'd13 || i_cmd == 6'd19 || i_cmd == 6'd23) begin
//             if (i_vfu_mode_config[5:0] != 6'd0 && i_vfu_mode_config[5:0] != i_cmd) begin
//                 i_cmd <= i_vfu_mode_config[5:0];
//             end
//             else
//                 i_cmd <= i_cmd;
//         end
//         else begin
//             i_cmd <= i_vfu_mode_config[5:0];
//         end
//     end 
// end

VPU VPU_inst (
    .i_clk(HCLK_CORE),
    .i_rst_n(HRESETn),
    //.i_recip_valid(1'b0),
    .i_cmd(i_cmd),
    .i_mpu_data(MPU_VPU_data),
    .i_mpu_valid(MPU_VPU_valid),
    .i_SV_data_valid(i_SV_data_valid),
    .i_MPU_max(i_MPU_max),
    .i_MPU_max_valid(i_MPU_max_valid),
    .i_VPU_data_1(i_VPU_data_1),
    .i_VPU_data_2(i_VPU_data_2),
    .i_VPU_data_valid(i_VPU_data_valid),
    .o_VPU_scale(o_VPU_scale),
    .o_VPU_flag(o_VPU_flag),
    .o_VPU_scale_valid(o_VPU_scale_valid),
    .o_VPU_data(o_VPU_data),
    .o_VPU_data_valid(o_VPU_data_valid),
    //.o_qk_rope_fusion_done(o_qk_rope_fusion_done),
    .o_prob(o_prob),
    .o_prob_valid(o_prob_valid),
    .o_one_head_fa_finish(o_one_head_fa_finish)
    //.o_vpu_s_is_ready(o_vpu_s_is_ready)
);

//ila_9 vpu_core_clk (
//        .clk(HCLK_CORE),
//        .probe0(i_vfu_mode_config), //32
//        .probe1(i_cmd), //6
//        .probe2(S_REG_OUTPUT_ID), //32
//        .probe3(S_REG_OUTPUT_ID_DONE) //32
//    );
    
endmodule

module slave_bridge_VPUs  (
input logic HCLK,
input logic HRESETn,
input logic HSEL_VPUS,
input logic [31:0] HADDR_VPUS,
input logic [1:0] HTRANS_VPUS,
input logic HWRITE_VPUS,
input logic [2:0] HSIZE_VPUS,
input logic [31:0] HWDATA_VPUS,
output logic [31:0] HRDATA_VPUS,
output logic HREADYOUT_VPUS,
output logic HRESP_VPUS,
output logic [31:0] C_REG_VFU_MODE_CONFIG,
output logic [31:0] C_REG_CLEAR_IRQ
);

logic        act_w, act_r;
logic [31:0] addr_w, addr_r;
logic [ 3:0] wen_w, wen_r;
logic [13:0] addr_dec;

logic [31:0] w_VFU_MODE_CONFIG;
logic [31:0] r_VFU_MODE_CONFIG;
assign C_REG_VFU_MODE_CONFIG = r_VFU_MODE_CONFIG;

logic w_CLEAR_IRQ;
logic r_CLEAR_IRQ;
assign C_REG_CLEAR_IRQ = r_CLEAR_IRQ;

assign addr_dec = addr_r[15:2];
always_comb begin
    act_w  = (HSEL_VPUS && HTRANS_VPUS == 2'b10);
    addr_w = (HSEL_VPUS && HTRANS_VPUS == 2'b10) ? HADDR_VPUS : addr_r;
    wen_w  = (HSEL_VPUS && HTRANS_VPUS == 2'b10) ? HWRITE_VPUS : wen_r;
end

always_comb begin
HRDATA_VPUS    = 32'd0;
HREADYOUT_VPUS = 1'b1;
HRESP_VPUS     = 1'b0;
w_VFU_MODE_CONFIG = '0;
w_CLEAR_IRQ = '0;
if(act_r) begin
if(wen_r) begin
if(addr_dec == 0) begin w_VFU_MODE_CONFIG = HWDATA_VPUS; end
if(addr_dec == 1) begin w_CLEAR_IRQ = HWDATA_VPUS; end
end else begin
end
end
end

always_ff@(posedge HCLK or negedge HRESETn) begin
if(~HRESETn) begin
act_r <= '0;
addr_r <= '0;
wen_r <= '0;
r_VFU_MODE_CONFIG <= '0;
r_CLEAR_IRQ <= '0;
end else begin
act_r <= act_w;
addr_r <= addr_w;
wen_r <= wen_w;
r_VFU_MODE_CONFIG <= w_VFU_MODE_CONFIG;
r_CLEAR_IRQ <= w_CLEAR_IRQ;
end
end

endmodule
