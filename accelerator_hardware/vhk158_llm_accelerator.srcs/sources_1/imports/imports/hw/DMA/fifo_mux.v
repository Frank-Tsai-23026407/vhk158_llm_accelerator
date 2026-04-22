module fifo_mux (
    input               i_clk,
    input               i_rst_n,

    // cpu command  
    input               i_cpu_cmd_vald,
    input  [4:0]        i_cpu_cmd,

    output              o_cpu_cmd_done,

    // main control ports
    input  [5:0]        i_layer_cnt,
    input  [19:0]       i_token_cnt,
    input               i_token_len_within_1024,

    // fifo ports   
    input               i_fifo_empty_0,
    input               i_fifo_empty_1,
    input               i_fifo_empty_2,
    input               i_fifo_empty_3,
    input               i_fifo_empty_4,
    input               i_fifo_empty_5,
    input               i_fifo_empty_6,
    input               i_fifo_empty_7,
    input               i_fifo_empty_8,
    input               i_fifo_empty_9,
    input               i_fifo_empty_10,
    input               i_fifo_empty_11,
    input               i_fifo_empty_12,
    input               i_fifo_empty_13,
    input               i_fifo_empty_14,
    input               i_fifo_empty_15,
    input               i_fifo_empty_16,
    input               i_fifo_empty_17,
    input               i_fifo_empty_18,
    input               i_fifo_empty_19,
    input               i_fifo_empty_20,
    input               i_fifo_empty_21,
    input               i_fifo_empty_22,
    input               i_fifo_empty_23,
    input               i_fifo_empty_24,
    input               i_fifo_empty_25,
    input               i_fifo_empty_26,
    input               i_fifo_empty_27,
    input               i_fifo_empty_28,
    input               i_fifo_empty_29,
    input               i_fifo_empty_30,
    input               i_fifo_empty_31,

    input               i_fifo_almost_empty_0,
    input               i_fifo_almost_empty_1,
    input               i_fifo_almost_empty_2,
    input               i_fifo_almost_empty_3,
    input               i_fifo_almost_empty_4,
    input               i_fifo_almost_empty_5,
    input               i_fifo_almost_empty_6,
    input               i_fifo_almost_empty_7,
    input               i_fifo_almost_empty_8,
    input               i_fifo_almost_empty_9,
    input               i_fifo_almost_empty_10,
    input               i_fifo_almost_empty_11,
    input               i_fifo_almost_empty_12,
    input               i_fifo_almost_empty_13,
    input               i_fifo_almost_empty_14,
    input               i_fifo_almost_empty_15,
    input               i_fifo_almost_empty_16,
    input               i_fifo_almost_empty_17,
    input               i_fifo_almost_empty_18,
    input               i_fifo_almost_empty_19,
    input               i_fifo_almost_empty_20,
    input               i_fifo_almost_empty_21,
    input               i_fifo_almost_empty_22,
    input               i_fifo_almost_empty_23,
    input               i_fifo_almost_empty_24,
    input               i_fifo_almost_empty_25,
    input               i_fifo_almost_empty_26,
    input               i_fifo_almost_empty_27,
    input               i_fifo_almost_empty_28,
    input               i_fifo_almost_empty_29,
    input               i_fifo_almost_empty_30,
    input               i_fifo_almost_empty_31,

    input [511:0]       i_fifo_rd_data_0,
    input [511:0]       i_fifo_rd_data_1,
    input [511:0]       i_fifo_rd_data_2,
    input [511:0]       i_fifo_rd_data_3,
    input [511:0]       i_fifo_rd_data_4,
    input [511:0]       i_fifo_rd_data_5,
    input [511:0]       i_fifo_rd_data_6,
    input [511:0]       i_fifo_rd_data_7,
    input [511:0]       i_fifo_rd_data_8,
    input [511:0]       i_fifo_rd_data_9,
    input [511:0]       i_fifo_rd_data_10,
    input [511:0]       i_fifo_rd_data_11,
    input [511:0]       i_fifo_rd_data_12,
    input [511:0]       i_fifo_rd_data_13,
    input [511:0]       i_fifo_rd_data_14,
    input [511:0]       i_fifo_rd_data_15,
    input [511:0]       i_fifo_rd_data_16,
    input [511:0]       i_fifo_rd_data_17,
    input [511:0]       i_fifo_rd_data_18,
    input [511:0]       i_fifo_rd_data_19,
    input [511:0]       i_fifo_rd_data_20,
    input [511:0]       i_fifo_rd_data_21,
    input [511:0]       i_fifo_rd_data_22,
    input [511:0]       i_fifo_rd_data_23,
    input [511:0]       i_fifo_rd_data_24,
    input [511:0]       i_fifo_rd_data_25,
    input [511:0]       i_fifo_rd_data_26,
    input [511:0]       i_fifo_rd_data_27,
    input [511:0]       i_fifo_rd_data_28,
    input [511:0]       i_fifo_rd_data_29,
    input [511:0]       i_fifo_rd_data_30,
    input [511:0]       i_fifo_rd_data_31,

    output              o_fifo_rd_en_0,
    output              o_fifo_rd_en_1,
    output              o_fifo_rd_en_2,
    output              o_fifo_rd_en_3,
    output              o_fifo_rd_en_4,
    output              o_fifo_rd_en_5,
    output              o_fifo_rd_en_6,
    output              o_fifo_rd_en_7,
    output              o_fifo_rd_en_8,
    output              o_fifo_rd_en_9,
    output              o_fifo_rd_en_10,
    output              o_fifo_rd_en_11,
    output              o_fifo_rd_en_12,
    output              o_fifo_rd_en_13,
    output              o_fifo_rd_en_14,
    output              o_fifo_rd_en_15,
    output              o_fifo_rd_en_16,
    output              o_fifo_rd_en_17,
    output              o_fifo_rd_en_18,
    output              o_fifo_rd_en_19,
    output              o_fifo_rd_en_20,
    output              o_fifo_rd_en_21,
    output              o_fifo_rd_en_22,
    output              o_fifo_rd_en_23,
    output              o_fifo_rd_en_24,
    output              o_fifo_rd_en_25,
    output              o_fifo_rd_en_26,
    output              o_fifo_rd_en_27,
    output              o_fifo_rd_en_28,
    output              o_fifo_rd_en_29,
    output              o_fifo_rd_en_30,
    output              o_fifo_rd_en_31,

    // SRAM ports   
    output              o_g0_wea,
    output [1023:0]     o_g0_wdata,
    output [5:0]        o_g0_addr,
    input  [1023:0]     i_g0_rdata,   

    output              o_g1_wea,
    output [1023:0]     o_g1_wdata,
    output [5:0]        o_g1_addr,
    input  [1023:0]     i_g1_rdata,  

    output              o_g2_wea,
    output [1023:0]     o_g2_wdata,
    output [5:0]        o_g2_addr,
    input  [1023:0]     i_g2_rdata,  

    output              o_g3_wea,
    output [1023:0]     o_g3_wdata,
    output [5:0]        o_g3_addr,
    input  [1023:0]     i_g3_rdata,    

    output              o_g4_wea,
    output [1023:0]     o_g4_wdata,
    output [5:0]        o_g4_addr,
    input  [1023:0]     i_g4_rdata,

    output              o_g5_wea,
    output [1023:0]     o_g5_wdata,
    output [5:0]        o_g5_addr,
    input  [1023:0]     i_g5_rdata,

    // VPU ports    
    output              o_vpu_data_vald,
    output [2047:0]     o_vpu_data0,
    output [2047:0]     o_vpu_data1,
    input               i_vpu_done_data_vald,
    input  [2047:0]     i_vpu_done_data,
    input               i_vpu_flag,

    // MPU ports
    output              o_mpu_data_vald,
    output [1023:0]     o_mpu_data0,
    output [8191:0]     o_mpu_data1,
    output [1023:0]     o_mpu_scale,
    output [511:0]      o_mpu_64x8_data_vald,
    output [2047:0]     o_mpu_64x8_data0,
    output [16383:0]    o_mpu_64x8_data1,
    input               i_mpu_done_data_vald,
    input  [1023:0]     i_mpu_done_data,

    // fifo write ports
    output              o_fifo_wr_en0,
    output [511:0]      o_fifo_wdata0,
    output              o_fifo_wr_en1,
    output [511:0]      o_fifo_wdata1
);

    // integer
    integer i, j;

    // input register
    reg             i_cpu_cmd_vald_r;
    reg [4:0]       i_cpu_cmd_r;
    reg             i_vpu_done_data_vald_r;
    reg             i_mpu_done_data_vald_r;

    // main register
    reg [3:0]       chnl_cnt_r, chnl_cnt_w;
    reg [12:0]      fifo_dep_cnt_r, fifo_dep_cnt_w;
    reg [12:0]      fifo_dep_cnt_2_r, fifo_dep_cnt_2_w;
    reg [2:0]       head_cnt_r, head_cnt_w;
    reg             in_head_cnt_r, in_head_cnt_w;
    reg [4:0]       r_state_r, r_state_w;
    reg [2:0]       intra_r_state_r, intra_r_state_w;
    reg [2:0]       intra_w_state_r, intra_w_state_w;
    reg             vpu_g1_irms_vald_r, vpu_g1_irms_vald_w, vpu_g1_irms_vald_d_r,
                    vpu_g1_orms_vald_r, vpu_g1_orms_vald_w, vpu_g1_orms_vald_d_r,
                    vpu_g2_irms_vald_r, vpu_g2_irms_vald_w, vpu_g2_irms_vald_d_r,
                    vpu_g0_parms_vald_r, vpu_g0_parms_vald_w, vpu_g0_parms_vald_d_r,
                    vpu_g3_pofrms_vald_r, vpu_g3_pofrms_vald_w, vpu_g3_pofrms_vald_d_r,
                    vpu_res0_vald_r, vpu_res0_vald_w, vpu_res0_vald_d_r,
                    vpu_res1_vald_r, vpu_res1_vald_w, vpu_res1_vald_d_r,
                    vpu_qk_fusion_vald_r, vpu_qk_fusion_vald_w, vpu_qk_fusion_vald_d_r;

    reg             mpu_proj_vald_r, mpu_proj_vald_w, mpu_proj_vald_d_r,
                    mpu_l_proj_vald_r, mpu_l_proj_vald_w, mpu_l_proj_vald_d_r,
                    mpu_down_vald1_r, mpu_down_vald1_w, mpu_down_vald1_d_r,
                    mpu_down_vald2_r, mpu_down_vald2_w, mpu_down_vald2_d_r,
                    mpu_down_vald3_r, mpu_down_vald3_w, mpu_down_vald3_d_r,
                    mpu_down_vald4_r, mpu_down_vald4_w, mpu_down_vald4_d_r,
                    qk_vald_r, qk_vald_w, qk_vald_d_r,
                    sv_vald_r, sv_vald_w, sv_vald_d_r;

    wire [31:0]     fifo_rd_en_all;
    reg  [31:0]     fifo_rd_en_all_d1, fifo_rd_en_all_d2, fifo_rd_en_all_d3;
    wire            fifo_empty_all, fifo_empty_0_15, fifo_empty_16_31;

    // output register
    reg             o_cpu_cmd_done_r, o_cpu_cmd_done_w;

    reg             o_rd_en_0_r,  o_rd_en_0_w;
    reg             o_rd_en_1_r,  o_rd_en_1_w;
    reg             o_rd_en_2_r,  o_rd_en_2_w;
    reg             o_rd_en_3_r,  o_rd_en_3_w;
    reg             o_rd_en_4_r,  o_rd_en_4_w;
    reg             o_rd_en_5_r,  o_rd_en_5_w;
    reg             o_rd_en_6_r,  o_rd_en_6_w;
    reg             o_rd_en_7_r,  o_rd_en_7_w;
    reg             o_rd_en_8_r,  o_rd_en_8_w;
    reg             o_rd_en_9_r,  o_rd_en_9_w;
    reg             o_rd_en_10_r, o_rd_en_10_w;
    reg             o_rd_en_11_r, o_rd_en_11_w;
    reg             o_rd_en_12_r, o_rd_en_12_w;
    reg             o_rd_en_13_r, o_rd_en_13_w;
    reg             o_rd_en_14_r, o_rd_en_14_w;
    reg             o_rd_en_15_r, o_rd_en_15_w;
    reg             o_rd_en_16_r, o_rd_en_16_w;
    reg             o_rd_en_17_r, o_rd_en_17_w;
    reg             o_rd_en_18_r, o_rd_en_18_w;
    reg             o_rd_en_19_r, o_rd_en_19_w;
    reg             o_rd_en_20_r, o_rd_en_20_w;
    reg             o_rd_en_21_r, o_rd_en_21_w;
    reg             o_rd_en_22_r, o_rd_en_22_w;
    reg             o_rd_en_23_r, o_rd_en_23_w;
    reg             o_rd_en_24_r, o_rd_en_24_w;
    reg             o_rd_en_25_r, o_rd_en_25_w;
    reg             o_rd_en_26_r, o_rd_en_26_w;
    reg             o_rd_en_27_r, o_rd_en_27_w;
    reg             o_rd_en_28_r, o_rd_en_28_w;
    reg             o_rd_en_29_r, o_rd_en_29_w;
    reg             o_rd_en_30_r, o_rd_en_30_w;
    reg             o_rd_en_31_r, o_rd_en_31_w;

    reg [5:0]       o_g0_addr_r, o_g0_addr_w;
    reg [1023:0]    o_g0_wdata_r, o_g0_wdata_w;
    reg             o_g0_wea_r, o_g0_wea_w;

    reg [5:0]       o_g1_addr_r, o_g1_addr_w;
    reg [1023:0]    o_g1_wdata_r, o_g1_wdata_w;
    reg             o_g1_wea_r, o_g1_wea_w;

    reg [5:0]       o_g2_addr_r, o_g2_addr_w;
    reg [1023:0]    o_g2_wdata_r, o_g2_wdata_w;
    reg             o_g2_wea_r, o_g2_wea_w;

    reg [5:0]       o_g3_addr_r, o_g3_addr_w;
    reg [1023:0]    o_g3_wdata_r, o_g3_wdata_w;
    reg             o_g3_wea_r, o_g3_wea_w;

    reg [5:0]       o_g4_addr_r, o_g4_addr_w;
    reg [1023:0]    o_g4_wdata_r, o_g4_wdata_w;
    reg             o_g4_wea_r, o_g4_wea_w;

    reg [5:0]       o_g5_addr_r, o_g5_addr_w;
    reg [1023:0]    o_g5_wdata_r, o_g5_wdata_w;
    reg             o_g5_wea_r, o_g5_wea_w;

    // vpu 
    reg             o_vpu_data_vald_r, o_vpu_data_vald_w;
    reg [2047:0]    o_vpu_data0_r, o_vpu_data0_w;
    reg [2047:0]    o_vpu_data1_r, o_vpu_data1_w;

    // mpu
    reg             o_mpu_data_vald_r, o_mpu_data_vald_w;
    reg [1023:0]    o_mpu_data0_r, o_mpu_data0_w;
    reg [8191:0]    o_mpu_data1_r, o_mpu_data1_w;

    reg [511:0]     o_mpu_64x8_data_vald_r, o_mpu_64x8_data_vald_w;
    reg [2047:0]    o_mpu_64x8_data0_r, o_mpu_64x8_data0_w;
    reg [16383:0]   o_mpu_64x8_data1_r, o_mpu_64x8_data1_w;

    reg [1023:0]    o_mpu_scale_r, o_mpu_scale_w;

    reg             o_fifo_wr_en0_r, o_fifo_wr_en0_w, o_fifo_wr_en1_r, o_fifo_wr_en1_w;
    reg [511:0]     o_fifo_wdata0_r, o_fifo_wdata0_w, o_fifo_wdata1_r, o_fifo_wdata1_w;

    reg             last_flag_k_r, last_flag_k_w, last_flag_k_d_r, last_flag_k_d2_r,
                    last_flag_v_r, last_flag_v_w, last_flag_v_d_r, last_flag_v_d2_r;

    // output assignment
    assign o_cpu_cmd_done = o_cpu_cmd_done_r;

    assign o_g0_addr    = o_g0_addr_r;
    assign o_g0_wdata   = o_g0_wdata_r;
    assign o_g0_wea     = o_g0_wea_r;

    assign o_g1_addr    = o_g1_addr_r;
    assign o_g1_wdata   = o_g1_wdata_r;
    assign o_g1_wea     = o_g1_wea_r;

    assign o_g2_addr    = o_g2_addr_r;
    assign o_g2_wdata   = o_g2_wdata_r;
    assign o_g2_wea     = o_g2_wea_r;

    assign o_g3_addr    = o_g3_addr_r;
    assign o_g3_wdata   = o_g3_wdata_r;
    assign o_g3_wea     = o_g3_wea_r;

    assign o_g4_addr    = o_g4_addr_r;
    assign o_g4_wdata   = o_g4_wdata_r;
    assign o_g4_wea     = o_g4_wea_r;

    assign o_g5_addr    = o_g5_addr_r;
    assign o_g5_wdata   = o_g5_wdata_r;
    assign o_g5_wea     = o_g5_wea_r;

    assign o_vpu_data_vald          = o_vpu_data_vald_r;
    assign o_vpu_data0              = o_vpu_data0_r;
    assign o_vpu_data1              = o_vpu_data1_r;

    assign o_mpu_data_vald          = o_mpu_data_vald_r;
    assign o_mpu_data0              = o_mpu_data0_r;
    assign o_mpu_data1              = o_mpu_data1_r;
    assign o_mpu_scale              = o_mpu_scale_r;

    assign o_mpu_64x8_data_vald     = o_mpu_64x8_data_vald_r;
    assign o_mpu_64x8_data0         = o_mpu_64x8_data0_r;
    assign o_mpu_64x8_data1         = o_mpu_64x8_data1_r;

    assign o_fifo_wr_en0            = o_fifo_wr_en0_r;
    assign o_fifo_wr_en1            = o_fifo_wr_en1_r;
    assign o_fifo_wdata0            = o_fifo_wdata0_r;
    assign o_fifo_wdata1            = o_fifo_wdata1_r;

    assign o_fifo_rd_en_0 = o_rd_en_0_r;
    assign o_fifo_rd_en_1 = o_rd_en_1_r;
    assign o_fifo_rd_en_2 = o_rd_en_2_r;
    assign o_fifo_rd_en_3 = o_rd_en_3_r;
    assign o_fifo_rd_en_4 = o_rd_en_4_r;
    assign o_fifo_rd_en_5 = o_rd_en_5_r;
    assign o_fifo_rd_en_6 = o_rd_en_6_r;
    assign o_fifo_rd_en_7 = o_rd_en_7_r;
    assign o_fifo_rd_en_8 = o_rd_en_8_r;
    assign o_fifo_rd_en_9 = o_rd_en_9_r;
    assign o_fifo_rd_en_10 = o_rd_en_10_r;
    assign o_fifo_rd_en_11 = o_rd_en_11_r;
    assign o_fifo_rd_en_12 = o_rd_en_12_r;
    assign o_fifo_rd_en_13 = o_rd_en_13_r;
    assign o_fifo_rd_en_14 = o_rd_en_14_r;
    assign o_fifo_rd_en_15 = o_rd_en_15_r;
    assign o_fifo_rd_en_16 = o_rd_en_16_r;
    assign o_fifo_rd_en_17 = o_rd_en_17_r;
    assign o_fifo_rd_en_18 = o_rd_en_18_r;
    assign o_fifo_rd_en_19 = o_rd_en_19_r;
    assign o_fifo_rd_en_20 = o_rd_en_20_r;
    assign o_fifo_rd_en_21 = o_rd_en_21_r;
    assign o_fifo_rd_en_22 = o_rd_en_22_r;
    assign o_fifo_rd_en_23 = o_rd_en_23_r;
    assign o_fifo_rd_en_24 = o_rd_en_24_r;
    assign o_fifo_rd_en_25 = o_rd_en_25_r;
    assign o_fifo_rd_en_26 = o_rd_en_26_r;
    assign o_fifo_rd_en_27 = o_rd_en_27_r;
    assign o_fifo_rd_en_28 = o_rd_en_28_r;
    assign o_fifo_rd_en_29 = o_rd_en_29_r;
    assign o_fifo_rd_en_30 = o_rd_en_30_r;
    assign o_fifo_rd_en_31 = o_rd_en_31_r;

    assign fifo_rd_en_all = {o_rd_en_31_r & (!i_fifo_empty_31), 
                             o_rd_en_30_r & (!i_fifo_empty_30), 
                             o_rd_en_29_r & (!i_fifo_empty_29), 
                             o_rd_en_28_r & (!i_fifo_empty_28), 
                             o_rd_en_27_r & (!i_fifo_empty_27), 
                             o_rd_en_26_r & (!i_fifo_empty_26), 
                             o_rd_en_25_r & (!i_fifo_empty_25), 
                             o_rd_en_24_r & (!i_fifo_empty_24), 
                             o_rd_en_23_r & (!i_fifo_empty_23), 
                             o_rd_en_22_r & (!i_fifo_empty_22), 
                             o_rd_en_21_r & (!i_fifo_empty_21), 
                             o_rd_en_20_r & (!i_fifo_empty_20), 
                             o_rd_en_19_r & (!i_fifo_empty_19), 
                             o_rd_en_18_r & (!i_fifo_empty_18), 
                             o_rd_en_17_r & (!i_fifo_empty_17), 
                             o_rd_en_16_r & (!i_fifo_empty_16), 
                             o_rd_en_15_r & (!i_fifo_empty_15), 
                             o_rd_en_14_r & (!i_fifo_empty_14), 
                             o_rd_en_13_r & (!i_fifo_empty_13), 
                             o_rd_en_12_r & (!i_fifo_empty_12),
                             o_rd_en_11_r & (!i_fifo_empty_11), 
                             o_rd_en_10_r & (!i_fifo_empty_10), 
                             o_rd_en_9_r  & (!i_fifo_empty_9), 
                             o_rd_en_8_r  & (!i_fifo_empty_8), 
                             o_rd_en_7_r  & (!i_fifo_empty_7), 
                             o_rd_en_6_r  & (!i_fifo_empty_6), 
                             o_rd_en_5_r  & (!i_fifo_empty_5), 
                             o_rd_en_4_r  & (!i_fifo_empty_4), 
                             o_rd_en_3_r  & (!i_fifo_empty_3), 
                             o_rd_en_2_r  & (!i_fifo_empty_2),
                             o_rd_en_1_r  & (!i_fifo_empty_1), 
                             o_rd_en_0_r  & (!i_fifo_empty_0)};

    assign fifo_empty_all = !i_fifo_empty_0 &
                            !i_fifo_empty_1 &
                            !i_fifo_empty_2 &
                            !i_fifo_empty_3 &
                            !i_fifo_empty_4 &
                            !i_fifo_empty_5 &
                            !i_fifo_empty_6 &
                            !i_fifo_empty_7 &
                            !i_fifo_empty_8 &
                            !i_fifo_empty_9 &
                            !i_fifo_empty_10 &
                            !i_fifo_empty_11 &
                            !i_fifo_empty_12 &
                            !i_fifo_empty_13 &
                            !i_fifo_empty_14 &
                            !i_fifo_empty_15 &
                            !i_fifo_empty_16 &
                            !i_fifo_empty_17 &
                            !i_fifo_empty_18 &
                            !i_fifo_empty_19 &
                            !i_fifo_empty_20 &
                            !i_fifo_empty_21 &
                            !i_fifo_empty_22 &
                            !i_fifo_empty_23 &
                            !i_fifo_empty_24 &
                            !i_fifo_empty_25 &
                            !i_fifo_empty_26 &
                            !i_fifo_empty_27 &
                            !i_fifo_empty_28 &
                            !i_fifo_empty_29 &
                            !i_fifo_empty_30 &
                            !i_fifo_empty_31 ;

    assign fifo_empty_0_15 = !i_fifo_empty_0 &
                             !i_fifo_empty_1 &
                             !i_fifo_empty_2 &
                             !i_fifo_empty_3 &
                             !i_fifo_empty_4 &
                             !i_fifo_empty_5 &
                             !i_fifo_empty_6 &
                             !i_fifo_empty_7 &
                             !i_fifo_empty_8 &
                             !i_fifo_empty_9 &
                             !i_fifo_empty_10 &
                             !i_fifo_empty_11 &
                             !i_fifo_empty_12 &
                             !i_fifo_empty_13 &
                             !i_fifo_empty_14 &
                             !i_fifo_empty_15 ;
    
    assign fifo_empty_16_31 = !i_fifo_empty_16 &
                              !i_fifo_empty_17 &
                              !i_fifo_empty_18 &
                              !i_fifo_empty_19 &
                              !i_fifo_empty_20 &
                              !i_fifo_empty_21 &
                              !i_fifo_empty_22 &
                              !i_fifo_empty_23 &
                              !i_fifo_empty_24 &
                              !i_fifo_empty_25 &
                              !i_fifo_empty_26 &
                              !i_fifo_empty_27 &
                              !i_fifo_empty_28 &
                              !i_fifo_empty_29 &
                              !i_fifo_empty_30 &
                              !i_fifo_empty_31 ;

    assign fifo_almost_empty_all =  i_fifo_almost_empty_0 |
                                    i_fifo_almost_empty_1 |
                                    i_fifo_almost_empty_2 |
                                    i_fifo_almost_empty_3 |
                                    i_fifo_almost_empty_4 |
                                    i_fifo_almost_empty_5 |
                                    i_fifo_almost_empty_6 |
                                    i_fifo_almost_empty_7 |
                                    i_fifo_almost_empty_8 |
                                    i_fifo_almost_empty_9 |
                                    i_fifo_almost_empty_10 |
                                    i_fifo_almost_empty_11 |
                                    i_fifo_almost_empty_12 |
                                    i_fifo_almost_empty_13 |
                                    i_fifo_almost_empty_14 |
                                    i_fifo_almost_empty_15 |
                                    i_fifo_almost_empty_16 |
                                    i_fifo_almost_empty_17 |
                                    i_fifo_almost_empty_18 |
                                    i_fifo_almost_empty_19 |
                                    i_fifo_almost_empty_10 |
                                    i_fifo_almost_empty_21 |
                                    i_fifo_almost_empty_22 |
                                    i_fifo_almost_empty_23 |
                                    i_fifo_almost_empty_24 |
                                    i_fifo_almost_empty_25 |
                                    i_fifo_almost_empty_26 |
                                    i_fifo_almost_empty_27 |
                                    i_fifo_almost_empty_28 |
                                    i_fifo_almost_empty_29 |
                                    i_fifo_almost_empty_30 |
                                    i_fifo_almost_empty_31 ;
                                     

    // read data channel FSM
    always @(*) begin
        case (r_state_r)
            `IDLE : begin
                if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Embedding) begin
                    r_state_w = `Embedding;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `I_rms) begin
                    r_state_w = `I_rms;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Postatt_rms) begin
                    r_state_w = `Postatt_rms;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Preffn_rms) begin
                    r_state_w = `Preffn_rms;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Postffn_rms) begin
                    r_state_w = `Postffn_rms;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `O_rms) begin
                    r_state_w = `O_rms;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Residual0) begin
                    r_state_w = `Residual0;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Residual1) begin
                    r_state_w = `Residual1;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `K_proj) begin
                    r_state_w = `K_proj;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `V_proj) begin
                    r_state_w = `V_proj;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Q_proj) begin
                    r_state_w = `Q_proj;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `O_proj) begin
                    r_state_w = `O_proj;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Down_proj) begin
                    r_state_w = `Down_proj;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `L_proj) begin
                    r_state_w = `L_proj;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Mlp_proj) begin
                    r_state_w = `Mlp_proj;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Attention_local) begin
                    r_state_w = `Attention_local;
                    o_cpu_cmd_done_w = 1'b0;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Embedding : begin
                if (|fifo_rd_en_all_d3 && o_g1_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `I_rms : begin
                if (intra_w_state_r == 3'd2 && i_vpu_done_data_vald_r && o_g3_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Postatt_rms : begin
                if (intra_w_state_r == 3'd2 && i_vpu_done_data_vald_r && o_g3_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Preffn_rms : begin
                if (intra_w_state_r == 3'd2 && i_vpu_done_data_vald_r && o_g3_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Postffn_rms : begin
                if (intra_w_state_r == 3'd2 && i_vpu_done_data_vald_r && o_g3_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `O_rms : begin
                if (intra_w_state_r == 3'd2 && i_vpu_done_data_vald_r && o_g3_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Residual0 : begin
                if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r && o_g0_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Residual1 : begin
                if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r && o_g1_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `K_proj : begin
                if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r && o_g4_addr_r == `key_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `V_proj : begin
                if (intra_w_state_r == 3'd1 && i_mpu_done_data_vald_r && o_g4_addr_r == `key_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Q_proj : begin
                if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r && o_g4_addr_r == `query_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `O_proj : begin
                if (intra_w_state_r == 3'd1 && i_mpu_done_data_vald_r && o_g0_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Down_proj : begin
                if (intra_w_state_r == 3'd1 && i_mpu_done_data_vald_r && o_g3_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `L_proj : begin
                if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && fifo_dep_cnt_r == 13'd8191 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Mlp_proj : begin
                if (intra_w_state_r == 3'd4 && i_vpu_done_data_vald_r && o_g5_addr_r == `one_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            `Attention_local : begin
                if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r && o_g3_addr_r == `query_group_depth) begin
                    r_state_w = `IDLE;
                    o_cpu_cmd_done_w = 1'b1;
                end
                else begin
                    r_state_w = r_state_r;
                    o_cpu_cmd_done_w = 1'b0;
                end
            end
            default: begin
                r_state_w = `IDLE;
                o_cpu_cmd_done_w = 1'b0;
            end
        endcase
    end

    // the FSM inside each layer's read state
    always @(*) begin
        if (r_state_r == `I_rms || r_state_r == `O_rms) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g1_addr_r == `one_group_depth) begin
                intra_r_state_w = 3'd2;
            end
            else if (intra_r_state_r == 3'd2 && i_vpu_flag == 1'b1) begin
                intra_r_state_w = 3'd3;
            end
            else if (intra_r_state_r == 3'd3 && o_g1_addr_r == `one_group_depth) begin
                intra_r_state_w = 3'd4;
            end
            else if (intra_r_state_r == 3'd4 && intra_w_state_r == 3'd2) begin
                intra_r_state_w = 3'd5;
            end
            else if (intra_r_state_r == 3'd5 && o_g2_addr_r == `one_group_depth && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd6;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `Postatt_rms || r_state_r == `Preffn_rms) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g0_addr_r == `one_group_depth) begin
                intra_r_state_w = 3'd2;
            end
            else if (intra_r_state_r == 3'd2 && i_vpu_flag == 1'b1) begin
                intra_r_state_w = 3'd3;
            end
            else if (intra_r_state_r == 3'd3 && o_g0_addr_r == `one_group_depth) begin
                intra_r_state_w = 3'd4;
            end
            else if (intra_r_state_r == 3'd4 && intra_w_state_r == 3'd2) begin
                intra_r_state_w = 3'd5;
            end
            else if (intra_r_state_r == 3'd5 && o_g2_addr_r == `one_group_depth && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd6;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `Postffn_rms) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth) begin
                intra_r_state_w = 3'd2;
            end
            else if (intra_r_state_r == 3'd2 && i_vpu_flag == 1'b1) begin
                intra_r_state_w = 3'd3;
            end
            else if (intra_r_state_r == 3'd3 && o_g3_addr_r == `one_group_depth) begin
                intra_r_state_w = 3'd4;
            end
            else if (intra_r_state_r == 3'd4 && intra_w_state_r == 3'd2) begin
                intra_r_state_w = 3'd5;
            end
            else if (intra_r_state_r == 3'd5 && o_g2_addr_r == `one_group_depth && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd6;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `Residual0 || r_state_r == `Residual1) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth) begin
                intra_r_state_w = 3'd2;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `K_proj) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && in_head_cnt_r == 1'b1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd2;
            end
            else if (intra_r_state_r == 3'd2 && i_vpu_flag) begin
                intra_r_state_w = 3'd3;
            end
            else if (intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd4;
            end
            else if (intra_r_state_r == 3'd4 && i_vpu_flag) begin
                intra_r_state_w = 3'd5;
            end
            else if (intra_r_state_r == 3'd5 && fifo_dep_cnt_r == 13'd3 && chnl_cnt_r == 4'd7 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd6;
            end
            else if (intra_r_state_r == 3'd5 && chnl_cnt_r == 4'd7 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd1;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `V_proj) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && fifo_dep_cnt_r == 13'd7 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd2;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `Q_proj) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && in_head_cnt_r == 1'b1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd2;
            end
            else if (intra_r_state_r == 3'd2 && i_vpu_flag) begin
                intra_r_state_w = 3'd3;
            end
            else if (intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd4;
            end
            else if (intra_r_state_r == 3'd4 && i_vpu_flag) begin
                intra_r_state_w = 3'd5;
            end
            else if (intra_r_state_r == 3'd5 && fifo_dep_cnt_r == 13'd7 && chnl_cnt_r == 4'd7 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd6;
            end
            else if (intra_r_state_r == 3'd5 && chnl_cnt_r == 4'd7 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd1;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `O_proj) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `query_group_depth && fifo_dep_cnt_r == 13'd19 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd2;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `Down_proj) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g1_addr_r == `one_group_depth && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd2;
            end
            else if (intra_r_state_r == 3'd2 && o_g2_addr_r == `one_group_depth && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd3;
            end
            else if (intra_r_state_r == 3'd3 && o_g4_addr_r == `one_group_depth && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd4;
            end
            else if (intra_r_state_r == 3'd4 && o_g5_addr_r == `one_group_depth && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r && fifo_dep_cnt_r == 13'd19) begin
                intra_r_state_w = 3'd5;
            end
            else if (intra_r_state_r == 3'd4 && o_g5_addr_r == `one_group_depth && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd1;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `L_proj) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && fifo_dep_cnt_r == 13'd8191 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd2;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `Mlp_proj) begin
            if (intra_r_state_r == 3'd0) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && fifo_dep_cnt_r == 13'd159 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                intra_r_state_w = 3'd2;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else if (r_state_r == `Attention_local) begin
            if (intra_r_state_r == 3'd0 && i_vpu_flag && i_token_cnt < 20'd8) begin
                intra_r_state_w = 3'd2;
            end
            else if (intra_r_state_r == 3'd0 && i_vpu_flag) begin
                intra_r_state_w = 3'd1;
            end
            else if (intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_0_15 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd5;
            end
            else if (intra_r_state_r == 3'd2 && chnl_cnt_r == 4'd3 && fifo_empty_0_15 && o_rd_en_0_r) begin
                intra_r_state_w = 3'd6;
            end
            else if (intra_r_state_r == 3'd3 && (fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3])) && chnl_cnt_r == 4'd3 && fifo_empty_16_31 && o_rd_en_16_r && head_cnt_r == 3'd7) begin
                intra_r_state_w = 3'd4;
            end
            else if (intra_r_state_r == 3'd3 && (fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3])) && chnl_cnt_r == 4'd3 && fifo_empty_16_31 && o_rd_en_16_r) begin
                intra_r_state_w = 3'd0;
            end
            else if (intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && fifo_empty_16_31 && o_rd_en_16_r && (fifo_dep_cnt_r == 13'd126 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == (i_token_cnt[9:3] - 1'b1)))) begin
                intra_r_state_w = 3'd6;
            end
            else if (intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && fifo_empty_16_31 && o_rd_en_16_r) begin
                intra_r_state_w = 3'd7;
            end
            else if ((intra_r_state_r == 3'd5 || intra_r_state_r == 3'd7) && i_vpu_flag) begin
                intra_r_state_w = 3'd2;
            end
            else if (intra_r_state_r == 3'd6 && i_vpu_flag) begin
                intra_r_state_w = 3'd3;
            end
            else begin
                intra_r_state_w = intra_r_state_r;
            end
        end
        else begin
            intra_r_state_w = 3'd0;
        end
    end

    // the FSM inside each layer's write state
    always @(*) begin
        if (r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g2_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd2;
            end
            else if (intra_w_state_r == 3'd2 && o_g3_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `Residual0) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g0_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `Residual1) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g1_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `K_proj) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g4_addr_r == `key_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `V_proj) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g4_addr_r == `key_group_depth && i_mpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `Q_proj) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g4_addr_r == `query_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `O_proj) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g0_addr_r == `one_group_depth && i_mpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `Down_proj) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && i_mpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `Mlp_proj) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g1_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd2;
            end
            else if (intra_w_state_r == 3'd2 && o_g2_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd3;
            end
            else if (intra_w_state_r == 3'd3 && o_g4_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd4;
            end
            else if (intra_w_state_r == 3'd4 && o_g5_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else if (r_state_r == `Attention_local) begin
            if (intra_w_state_r == 3'd0) begin
                intra_w_state_w = 3'd1;
            end
            else if (intra_w_state_r == 3'd1 && o_g3_addr_r == `query_group_depth && i_vpu_done_data_vald_r) begin
                intra_w_state_w = 3'd0;
            end
            else begin
                intra_w_state_w = intra_w_state_r;
            end
        end
        else begin
            intra_w_state_w = 3'd0;
        end
    end

    // control how many data have been read from fifo
    always @(*) begin
        if (r_state_r == `Embedding) begin
            if (fifo_dep_cnt_r == `embedding_fifo_dep && chnl_cnt_r == 4'd0 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_16 == 1'b0 && i_fifo_empty_17 == 1'b0 && o_rd_en_0_r) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (chnl_cnt_r == 4'd0 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_16 == 1'b0 && i_fifo_empty_17 == 1'b0 && o_rd_en_0_r) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else if (fifo_dep_cnt_r == `embedding_fifo_dep && chnl_cnt_r == 4'd1 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && i_fifo_empty_18 == 1'b0 && i_fifo_empty_19 == 1'b0 && o_rd_en_2_r) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (chnl_cnt_r == 4'd1 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && i_fifo_empty_18 == 1'b0 && i_fifo_empty_19 == 1'b0 && o_rd_en_2_r) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else if (fifo_dep_cnt_r == `embedding_fifo_dep && chnl_cnt_r == 4'd2 && i_fifo_empty_4 == 1'b0 && i_fifo_empty_5 == 1'b0 && i_fifo_empty_20 == 1'b0 && i_fifo_empty_21 == 1'b0 && o_rd_en_4_r) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (chnl_cnt_r == 4'd2 && i_fifo_empty_4 == 1'b0 && i_fifo_empty_5 == 1'b0 && i_fifo_empty_20 == 1'b0 && i_fifo_empty_21 == 1'b0 && o_rd_en_4_r) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else if (fifo_dep_cnt_r == `embedding_fifo_dep && chnl_cnt_r == 4'd3 && i_fifo_empty_6 == 1'b0 && i_fifo_empty_7 == 1'b0 && i_fifo_empty_22 == 1'b0 && i_fifo_empty_23 == 1'b0 && o_rd_en_6_r) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (chnl_cnt_r == 4'd3 && i_fifo_empty_6 == 1'b0 && i_fifo_empty_7 == 1'b0 && i_fifo_empty_22 == 1'b0 && i_fifo_empty_23 == 1'b0 && o_rd_en_6_r) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else if (fifo_dep_cnt_r == `embedding_fifo_dep && chnl_cnt_r == 4'd4 && i_fifo_empty_8 == 1'b0 && i_fifo_empty_9 == 1'b0 && i_fifo_empty_24 == 1'b0 && i_fifo_empty_25 == 1'b0 && o_rd_en_8_r) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (chnl_cnt_r == 4'd4 && i_fifo_empty_8 == 1'b0 && i_fifo_empty_9 == 1'b0 && i_fifo_empty_24 == 1'b0 && i_fifo_empty_25 == 1'b0 && o_rd_en_8_r) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else if (fifo_dep_cnt_r == `embedding_fifo_dep && chnl_cnt_r == 4'd5 && i_fifo_empty_10 == 1'b0 && i_fifo_empty_11 == 1'b0 && i_fifo_empty_26 == 1'b0 && i_fifo_empty_27 == 1'b0 && o_rd_en_10_r) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (chnl_cnt_r == 4'd5 && i_fifo_empty_10 == 1'b0 && i_fifo_empty_11 == 1'b0 && i_fifo_empty_26 == 1'b0 && i_fifo_empty_27 == 1'b0 && o_rd_en_10_r) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else if (fifo_dep_cnt_r == `embedding_fifo_dep && chnl_cnt_r == 4'd6 && i_fifo_empty_12 == 1'b0 && i_fifo_empty_13 == 1'b0 && i_fifo_empty_28 == 1'b0 && i_fifo_empty_29 == 1'b0 && o_rd_en_12_r) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (chnl_cnt_r == 4'd6 && i_fifo_empty_12 == 1'b0 && i_fifo_empty_13 == 1'b0 && i_fifo_empty_28 == 1'b0 && i_fifo_empty_29 == 1'b0 && o_rd_en_12_r) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else if (fifo_dep_cnt_r == `embedding_fifo_dep && chnl_cnt_r == 4'd7 && i_fifo_empty_14 == 1'b0 && i_fifo_empty_15 == 1'b0 && i_fifo_empty_30 == 1'b0 && i_fifo_empty_31 == 1'b0 && o_rd_en_14_r) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (chnl_cnt_r == 4'd7 && i_fifo_empty_14 == 1'b0 && i_fifo_empty_15 == 1'b0 && i_fifo_empty_30 == 1'b0 && i_fifo_empty_31 == 1'b0 && o_rd_en_14_r) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else if (r_state_r == `K_proj) begin
            if (intra_r_state_r == 3'd5 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd7 && fifo_dep_cnt_r == 13'd3) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (intra_r_state_r == 3'd5 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd7) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else if (r_state_r == `V_proj) begin
            if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == `one_group_depth && fifo_dep_cnt_r == 13'd7) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == `one_group_depth) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else if (r_state_r == `Q_proj) begin
            if (intra_r_state_r == 3'd5 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd7 && fifo_dep_cnt_r == 13'd7) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (intra_r_state_r == 3'd5 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd7) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else if (r_state_r == `O_proj) begin
            if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == `query_group_depth && fifo_dep_cnt_r == 13'd19) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == `query_group_depth) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else if (r_state_r == `Down_proj) begin
            if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g5_addr_r == `one_group_depth && fifo_dep_cnt_r == 13'd19) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g5_addr_r == `one_group_depth) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else if (r_state_r == `L_proj) begin
            if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == `one_group_depth && fifo_dep_cnt_r == 13'd8191) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == `one_group_depth) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else if (r_state_r == `Mlp_proj) begin
            if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == `one_group_depth && fifo_dep_cnt_r == 13'd159) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == `one_group_depth) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else if (r_state_r == `Attention_local) begin
            if (intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3 && (fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3]))) begin
                fifo_dep_cnt_w = 13'd0;
            end
            else if (intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
                fifo_dep_cnt_w = fifo_dep_cnt_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_w = fifo_dep_cnt_r;
            end
        end
        else begin
            fifo_dep_cnt_w = 13'd0;
        end
    end

    always @(*) begin
        if (r_state_r == `Attention_local) begin
            if (intra_r_state_r == 3'd2 && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3 && (fifo_dep_cnt_2_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_2_r[6:0] == i_token_cnt[9:3]))) begin
                fifo_dep_cnt_2_w = 13'd0;
            end
            else if ((intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
                fifo_dep_cnt_2_w = fifo_dep_cnt_2_r + 1'b1;
            end
            else begin
                fifo_dep_cnt_2_w = fifo_dep_cnt_2_r;
            end
        end
        else begin
            fifo_dep_cnt_2_w = 13'd0;
        end
    end

    always @(*) begin
        if (r_state_r == `K_proj) begin
            if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && in_head_cnt_r == 1'd1) begin
                in_head_cnt_w = 1'b0;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
                in_head_cnt_w = 1'b1;
            end
            else begin
                in_head_cnt_w = in_head_cnt_r;
            end
        end
        else if (r_state_r == `Q_proj) begin
            if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && in_head_cnt_r == 1'b1) begin
                in_head_cnt_w = 1'b0;
            end
            else if (intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
                in_head_cnt_w = 1'b1;
            end
            else begin
                in_head_cnt_w = in_head_cnt_r;
            end
        end
        else begin
            in_head_cnt_w = 1'b0;
        end
    end

    always @(*) begin
        if (intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3 && (fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3])) && head_cnt_r == 3'd7) begin
            head_cnt_w = 3'd0;
        end
        else if (intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3 && (fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3]))) begin
            head_cnt_w = head_cnt_r + 1'b1;
        end
        else begin
            head_cnt_w = head_cnt_r;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && fifo_dep_cnt_r == `embedding_fifo_dep) begin
            if (chnl_cnt_r == 4'd0 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_16 == 1'b0 && i_fifo_empty_17 == 1'b0 && o_rd_en_0_r) begin
                chnl_cnt_w = 4'd1;
            end
            else if (chnl_cnt_r == 4'd1 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && i_fifo_empty_18 == 1'b0 && i_fifo_empty_19 == 1'b0 && o_rd_en_2_r) begin
                chnl_cnt_w = 4'd2;
            end
            else if (chnl_cnt_r == 4'd2 && i_fifo_empty_4 == 1'b0 && i_fifo_empty_5 == 1'b0 && i_fifo_empty_20 == 1'b0 && i_fifo_empty_21 == 1'b0 && o_rd_en_4_r) begin
                chnl_cnt_w = 4'd3;
            end
            else if (chnl_cnt_r == 4'd3 && i_fifo_empty_6 == 1'b0 && i_fifo_empty_7 == 1'b0 && i_fifo_empty_22 == 1'b0 && i_fifo_empty_23 == 1'b0 && o_rd_en_6_r) begin
                chnl_cnt_w = 4'd4;
            end
            else if (chnl_cnt_r == 4'd4 && i_fifo_empty_8 == 1'b0 && i_fifo_empty_9 == 1'b0 && i_fifo_empty_24 == 1'b0 && i_fifo_empty_25 == 1'b0 && o_rd_en_8_r) begin
                chnl_cnt_w = 4'd5;
            end
            else if (chnl_cnt_r == 4'd5 && i_fifo_empty_10 == 1'b0 && i_fifo_empty_11 == 1'b0 && i_fifo_empty_26 == 1'b0 && i_fifo_empty_27 == 1'b0 && o_rd_en_10_r) begin
                chnl_cnt_w = 4'd6;
            end
            else if (chnl_cnt_r == 4'd6 && i_fifo_empty_12 == 1'b0 && i_fifo_empty_13 == 1'b0 && i_fifo_empty_28 == 1'b0 && i_fifo_empty_29 == 1'b0 && o_rd_en_12_r) begin
                chnl_cnt_w = 4'd7;
            end
            else if (chnl_cnt_r == 4'd7 && i_fifo_empty_14 == 1'b0 && i_fifo_empty_15 == 1'b0 && i_fifo_empty_30 == 1'b0 && i_fifo_empty_31 == 1'b0 && o_rd_en_14_r) begin
                chnl_cnt_w = 4'd0;
            end
            else begin
                chnl_cnt_w = chnl_cnt_r;
            end
        end
        else if (r_state_r == `Embedding) begin
            chnl_cnt_w = chnl_cnt_r;
        end
        else if (r_state_r == `K_proj || r_state_r == `Q_proj) begin
            if (intra_r_state_r == 3'd1) begin
                if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
                    chnl_cnt_w = 4'd0;
                end
                else if (fifo_empty_all && o_rd_en_0_r) begin
                    chnl_cnt_w = chnl_cnt_r + 1'b1;
                end 
                else begin
                    chnl_cnt_w = chnl_cnt_r;
                end
            end
            else if (intra_r_state_r == 3'd3) begin
                if (i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
                    chnl_cnt_w = 4'd0;
                end
                else if (i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                    chnl_cnt_w = chnl_cnt_r + 1'b1;
                end 
                else begin
                    chnl_cnt_w = chnl_cnt_r;
                end
            end
            else if (intra_r_state_r == 3'd5) begin
                if (i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r && chnl_cnt_r == 4'd7) begin
                    chnl_cnt_w = 4'd0;
                end
                else if (i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                    chnl_cnt_w = chnl_cnt_r + 1'b1;
                end 
                else begin
                    chnl_cnt_w = chnl_cnt_r;
                end
            end
            else begin
                chnl_cnt_w = 4'd0;
            end
        end 
        else if (r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) begin
            if (fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
                chnl_cnt_w = 4'd0;
            end
            else if (fifo_empty_all && o_rd_en_0_r) begin
                chnl_cnt_w = chnl_cnt_r + 1'b1;
            end 
            else begin
                chnl_cnt_w = chnl_cnt_r;
            end
        end 
        else if (r_state_r == `Attention_local) begin
            if (((fifo_empty_0_15 && o_rd_en_0_r) || (fifo_empty_16_31 && o_rd_en_16_r)) && chnl_cnt_r == 4'd3) begin
                chnl_cnt_w = 4'd0;
            end
            else if ((fifo_empty_0_15 && o_rd_en_0_r) || (fifo_empty_16_31 && o_rd_en_16_r)) begin
                chnl_cnt_w = chnl_cnt_r + 1'b1;
            end 
            else begin
                chnl_cnt_w = chnl_cnt_r;
            end
        end 
        else begin
            chnl_cnt_w = 4'd0;
        end
    end

    // control fifo read enable
    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd0 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_16 == 1'b0 && i_fifo_empty_17 == 1'b0) begin
            o_rd_en_0_w = 1'b1;
        end
        else if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_0_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_0_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_0_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_0_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
            o_rd_en_0_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd5 && chnl_cnt_r == 4'd7 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
            o_rd_en_0_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_0_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_0_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_0_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_0_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_0_w = 1'b1;
        end
        else begin 
            o_rd_en_0_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd0 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_16 == 1'b0 && i_fifo_empty_17 == 1'b0) begin
            o_rd_en_1_w = 1'b1;
        end
        else if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_1_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_1_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_1_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_1_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
            o_rd_en_1_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd5 && chnl_cnt_r == 4'd7 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
            o_rd_en_1_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_1_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_1_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_1_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_1_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_1_w = 1'b1;
        end
        else begin 
            o_rd_en_1_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd1 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && i_fifo_empty_18 == 1'b0 && i_fifo_empty_19 == 1'b0) begin
            o_rd_en_2_w = 1'b1;
        end
        else if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_2_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_2_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_2_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_2_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
            o_rd_en_2_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd5 && chnl_cnt_r == 4'd7 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
            o_rd_en_2_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_2_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_2_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_2_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_2_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_2_w = 1'b1;
        end
        else begin 
            o_rd_en_2_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd1 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && i_fifo_empty_18 == 1'b0 && i_fifo_empty_19 == 1'b0) begin
            o_rd_en_3_w = 1'b1;
        end
        else if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_3_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_3_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_3_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_3_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
            o_rd_en_3_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd5 && chnl_cnt_r == 4'd7 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
            o_rd_en_3_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd3 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_3_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_3_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_3_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_3_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_3_w = 1'b1;
        end
        else begin 
            o_rd_en_3_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd2 && i_fifo_empty_4 == 1'b0 && i_fifo_empty_5 == 1'b0 && i_fifo_empty_20 == 1'b0 && i_fifo_empty_21 == 1'b0) begin
            o_rd_en_4_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_4_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_4_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_4_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_4_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_4_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_4_w = 1'b1;
        end
        else begin 
            o_rd_en_4_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd2 && i_fifo_empty_4 == 1'b0 && i_fifo_empty_5 == 1'b0 && i_fifo_empty_20 == 1'b0 && i_fifo_empty_21 == 1'b0) begin
            o_rd_en_5_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_5_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_5_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_5_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_5_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_5_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_5_w = 1'b1;
        end
        else begin 
            o_rd_en_5_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd3 && i_fifo_empty_6 == 1'b0 && i_fifo_empty_7 == 1'b0 && i_fifo_empty_22 == 1'b0 && i_fifo_empty_23 == 1'b0) begin
            o_rd_en_6_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_6_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_6_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_6_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_6_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_6_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_6_w = 1'b1;
        end
        else begin 
            o_rd_en_6_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd3 && i_fifo_empty_6 == 1'b0 && i_fifo_empty_7 == 1'b0 && i_fifo_empty_22 == 1'b0 && i_fifo_empty_23 == 1'b0) begin
            o_rd_en_7_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_7_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_7_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_7_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_7_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_7_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_7_w = 1'b1;
        end
        else begin 
            o_rd_en_7_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd4 && i_fifo_empty_8 == 1'b0 && i_fifo_empty_9 == 1'b0 && i_fifo_empty_24 == 1'b0 && i_fifo_empty_25 == 1'b0) begin
            o_rd_en_8_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_8_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_8_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_8_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_8_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_8_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_8_w = 1'b1;
        end
        else begin 
            o_rd_en_8_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd4 && i_fifo_empty_8 == 1'b0 && i_fifo_empty_9 == 1'b0 && i_fifo_empty_24 == 1'b0 && i_fifo_empty_25 == 1'b0) begin
            o_rd_en_9_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_9_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_9_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_9_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_9_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_9_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_9_w = 1'b1;
        end
        else begin 
            o_rd_en_9_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd5 && i_fifo_empty_10 == 1'b0 && i_fifo_empty_11 == 1'b0 && i_fifo_empty_26 == 1'b0 && i_fifo_empty_27 == 1'b0) begin
            o_rd_en_10_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_10_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_10_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_10_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_10_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_10_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_10_w = 1'b1;
        end
        else begin 
            o_rd_en_10_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd5 && i_fifo_empty_10 == 1'b0 && i_fifo_empty_11 == 1'b0 && i_fifo_empty_26 == 1'b0 && i_fifo_empty_27 == 1'b0) begin
            o_rd_en_11_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_11_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_11_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_11_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_11_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_11_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_11_w = 1'b1;
        end
        else begin 
            o_rd_en_11_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd6 && i_fifo_empty_12 == 1'b0 && i_fifo_empty_13 == 1'b0 && i_fifo_empty_28 == 1'b0 && i_fifo_empty_29 == 1'b0) begin
            o_rd_en_12_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_12_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_12_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_12_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_12_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_12_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_12_w = 1'b1;
        end
        else begin 
            o_rd_en_12_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd6 && i_fifo_empty_12 == 1'b0 && i_fifo_empty_13 == 1'b0 && i_fifo_empty_28 == 1'b0 && i_fifo_empty_29 == 1'b0) begin
            o_rd_en_13_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_13_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_13_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_13_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_13_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_13_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_13_w = 1'b1;
        end
        else begin 
            o_rd_en_13_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd7 && i_fifo_empty_14 == 1'b0 && i_fifo_empty_15 == 1'b0 && i_fifo_empty_30 == 1'b0 && i_fifo_empty_31 == 1'b0) begin
            o_rd_en_14_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_14_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_14_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_14_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_14_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_14_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_14_w = 1'b1;
        end
        else begin 
            o_rd_en_14_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd7 && i_fifo_empty_14 == 1'b0 && i_fifo_empty_15 == 1'b0 && i_fifo_empty_30 == 1'b0 && i_fifo_empty_31 == 1'b0) begin
            o_rd_en_15_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_15_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_15_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_15_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_15_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_15_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15) begin
            o_rd_en_15_w = 1'b1;
        end
        else begin 
            o_rd_en_15_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd0 && i_fifo_empty_16 == 1'b0 && i_fifo_empty_17 == 1'b0 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0) begin
            o_rd_en_16_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_16_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_16_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_16_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_16_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_16_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_16_w = 1'b1;
        end
        else begin 
            o_rd_en_16_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd0 && i_fifo_empty_16 == 1'b0 && i_fifo_empty_17 == 1'b0 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0) begin
            o_rd_en_17_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_17_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_17_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_17_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_17_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_17_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_17_w = 1'b1;
        end
        else begin 
            o_rd_en_17_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd1 && i_fifo_empty_18 == 1'b0 && i_fifo_empty_19 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_18_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_18_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_18_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_18_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_18_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_18_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_18_w = 1'b1;
        end
        else begin 
            o_rd_en_18_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd1 && i_fifo_empty_18 == 1'b0 && i_fifo_empty_19 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0) begin
            o_rd_en_19_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_19_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_19_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_19_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_19_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_19_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_19_w = 1'b1;
        end
        else begin 
            o_rd_en_19_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd2 && i_fifo_empty_20 == 1'b0 && i_fifo_empty_21 == 1'b0 && i_fifo_empty_4 == 1'b0 && i_fifo_empty_5 == 1'b0) begin
            o_rd_en_20_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_20_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_20_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_20_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_20_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_20_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_20_w = 1'b1;
        end
        else begin 
            o_rd_en_20_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd2 && i_fifo_empty_20 == 1'b0 && i_fifo_empty_21 == 1'b0 && i_fifo_empty_4 == 1'b0 && i_fifo_empty_5 == 1'b0) begin
            o_rd_en_21_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_21_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_21_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_21_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_21_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_21_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_21_w = 1'b1;
        end
        else begin 
            o_rd_en_21_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd3 && i_fifo_empty_22 == 1'b0 && i_fifo_empty_23 == 1'b0 && i_fifo_empty_6 == 1'b0 && i_fifo_empty_7 == 1'b0) begin
            o_rd_en_22_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_22_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_22_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_22_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_22_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_22_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_22_w = 1'b1;
        end
        else begin 
            o_rd_en_22_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd3 && i_fifo_empty_22 == 1'b0 && i_fifo_empty_23 == 1'b0 && i_fifo_empty_6 == 1'b0 && i_fifo_empty_7 == 1'b0) begin
            o_rd_en_23_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_23_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_23_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_23_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_23_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_23_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_23_w = 1'b1;
        end
        else begin 
            o_rd_en_23_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd4 && i_fifo_empty_24 == 1'b0 && i_fifo_empty_25 == 1'b0 && i_fifo_empty_8 == 1'b0 && i_fifo_empty_9 == 1'b0) begin
            o_rd_en_24_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_24_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_24_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_24_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_24_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_24_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_24_w = 1'b1;
        end
        else begin 
            o_rd_en_24_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd4 && i_fifo_empty_24 == 1'b0 && i_fifo_empty_25 == 1'b0 && i_fifo_empty_8 == 1'b0 && i_fifo_empty_9 == 1'b0) begin
            o_rd_en_25_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_25_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_25_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_25_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_25_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_25_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_25_w = 1'b1;
        end
        else begin 
            o_rd_en_25_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd5 && i_fifo_empty_26 == 1'b0 && i_fifo_empty_27 == 1'b0 && i_fifo_empty_10 == 1'b0 && i_fifo_empty_11 == 1'b0) begin
            o_rd_en_26_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_26_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_26_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_26_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_26_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_26_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_26_w = 1'b1;
        end
        else begin 
            o_rd_en_26_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd5 && i_fifo_empty_26 == 1'b0 && i_fifo_empty_27 == 1'b0 && i_fifo_empty_10 == 1'b0 && i_fifo_empty_11 == 1'b0) begin
            o_rd_en_27_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_27_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_27_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_27_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_27_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_27_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_27_w = 1'b1;
        end
        else begin 
            o_rd_en_27_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd6 && i_fifo_empty_28 == 1'b0 && i_fifo_empty_29 == 1'b0 && i_fifo_empty_12 == 1'b0 && i_fifo_empty_13 == 1'b0) begin
            o_rd_en_28_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_28_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_28_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_28_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_28_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_28_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_28_w = 1'b1;
        end
        else begin 
            o_rd_en_28_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd6 && i_fifo_empty_28 == 1'b0 && i_fifo_empty_29 == 1'b0 && i_fifo_empty_12 == 1'b0 && i_fifo_empty_13 == 1'b0) begin
            o_rd_en_29_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_29_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_29_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_29_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_29_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_29_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_29_w = 1'b1;
        end
        else begin 
            o_rd_en_29_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd7 && i_fifo_empty_30 == 1'b0 && i_fifo_empty_31 == 1'b0 && i_fifo_empty_14 == 1'b0 && i_fifo_empty_15 == 1'b0) begin
            o_rd_en_30_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_30_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_30_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_30_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_30_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_30_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_30_w = 1'b1;
        end
        else begin 
            o_rd_en_30_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Embedding && chnl_cnt_r == 4'd7 && i_fifo_empty_30 == 1'b0 && i_fifo_empty_31 == 1'b0 && i_fifo_empty_14 == 1'b0 && i_fifo_empty_15 == 1'b0) begin
            o_rd_en_31_w = 1'b1;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && fifo_almost_empty_all && o_rd_en_0_r == 1'b1) begin
            o_rd_en_31_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && in_head_cnt_r == 1'b1 && fifo_empty_all && o_rd_en_0_r && chnl_cnt_r == 4'd3 && o_g3_addr_r == 6'd39) begin
            o_rd_en_31_w = 1'b0;
        end
        else if ((r_state_r == `K_proj || r_state_r == `Q_proj) && intra_r_state_r == 3'd1 && fifo_empty_all) begin
            o_rd_en_31_w = 1'b1;
        end
        else if ((r_state_r == `V_proj || r_state_r == `O_proj || r_state_r == `Down_proj || r_state_r == `L_proj || r_state_r == `Mlp_proj) && fifo_empty_all) begin
            o_rd_en_31_w = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3) begin
            o_rd_en_31_w = 1'b0;
        end
        else if (r_state_r == `Attention_local && intra_r_state_r == 3'd3 && fifo_empty_16_31) begin
            o_rd_en_31_w = 1'b1;
        end
        else begin 
            o_rd_en_31_w = 1'b0;
        end
    end

    // vpu data valid control
    always @(*) begin
        if (r_state_r == `Residual0) begin
            if (intra_r_state_r == 3'd2) begin
                vpu_res0_vald_w = 1'b0;
            end
            else if (intra_r_state_r == 3'd1) begin
                vpu_res0_vald_w = 1'b1;
            end
            else begin
                vpu_res0_vald_w = vpu_res0_vald_r;
            end
        end
        else begin
            vpu_res0_vald_w = 1'b0;
        end
    end

    // vpu data valid control
    always @(*) begin
        if (r_state_r == `Residual1) begin
            if (intra_r_state_r == 3'd2) begin
                vpu_res1_vald_w = 1'b0;
            end
            else if (intra_r_state_r == 3'd1) begin
                vpu_res1_vald_w = 1'b1;
            end
            else begin
                vpu_res1_vald_w = vpu_res1_vald_r;
            end
        end
        else begin
            vpu_res1_vald_w = 1'b0;
        end
    end

    // vpu data valid control
    always @(*) begin
        if (r_state_r == `Postatt_rms || r_state_r == `Preffn_rms) begin
            if (intra_r_state_r == 3'd2 || intra_r_state_r == 3'd4) begin
                vpu_g0_parms_vald_w = 1'b0;
            end
            else if (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) begin
                vpu_g0_parms_vald_w = 1'b1;
            end
            else begin
                vpu_g0_parms_vald_w = vpu_g0_parms_vald_r;
            end
        end
        else begin
            vpu_g0_parms_vald_w = 1'b0;
        end
    end 

    // vpu data valid control
    always @(*) begin
        if (r_state_r == `I_rms) begin
            if (intra_r_state_r == 3'd2 || intra_r_state_r == 3'd4) begin
                vpu_g1_irms_vald_w = 1'b0;
            end
            else if (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) begin
                vpu_g1_irms_vald_w = 1'b1;
            end
            else begin
                vpu_g1_irms_vald_w = vpu_g1_irms_vald_r;
            end
        end
        else begin
            vpu_g1_irms_vald_w = 1'b0;
        end
    end 

    always @(*) begin
        if (r_state_r == `O_rms) begin
            if (intra_r_state_r == 3'd2 || intra_r_state_r == 3'd4) begin
                vpu_g1_orms_vald_w = 1'b0;
            end
            else if (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) begin
                vpu_g1_orms_vald_w = 1'b1;
            end
            else begin
                vpu_g1_orms_vald_w = vpu_g1_orms_vald_r;
            end
        end
        else begin
            vpu_g1_orms_vald_w = 1'b0;
        end
    end 

    // vpu data valid control
    always @(*) begin
        if (r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) begin
            if (intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                vpu_g2_irms_vald_w = 1'b1;
            end
            else begin
                vpu_g2_irms_vald_w = 1'b0;
            end
        end
        else begin
            vpu_g2_irms_vald_w = 1'b0;
        end
    end

    // vpu data valid control
    always @(*) begin
        if (r_state_r == `Postffn_rms) begin
            if (intra_r_state_r == 3'd2 || intra_r_state_r == 3'd4) begin
                vpu_g3_pofrms_vald_w = 1'b0;
            end
            else if (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) begin
                vpu_g3_pofrms_vald_w = 1'b1;
            end
            else begin
                vpu_g3_pofrms_vald_w = vpu_g3_pofrms_vald_r;
            end
        end
        else begin
            vpu_g3_pofrms_vald_w = 1'b0;
        end
    end 

    // vpu data valid control
    always @(*) begin
        if (r_state_r == `K_proj || r_state_r == `Q_proj) begin
            if ((intra_r_state_r == 3'd3 || intra_r_state_r == 3'd5) && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                vpu_qk_fusion_vald_w = 1'b1;
            end
            else begin
                vpu_qk_fusion_vald_w = 1'b0;
            end
        end
        else begin
            vpu_qk_fusion_vald_w = 1'b0;
        end
    end

    // vpu output valid control
    always @(*) begin
        if (vpu_g0_parms_vald_d_r || vpu_g1_irms_vald_d_r || vpu_g1_orms_vald_d_r || vpu_g2_irms_vald_d_r || vpu_g3_pofrms_vald_d_r || vpu_res0_vald_d_r || vpu_res1_vald_d_r || vpu_qk_fusion_vald_d_r) begin
            o_vpu_data_vald_w = 1'b1;
        end
        else begin
            o_vpu_data_vald_w = 1'b0;
        end
    end

    //mpu data valid control
    always @(*) begin
        if (r_state_r == `K_proj || r_state_r == `V_proj || r_state_r == `Q_proj || r_state_r == `O_proj || r_state_r == `Mlp_proj) begin
            if (intra_r_state_r == 3'd1 && fifo_empty_all && o_rd_en_0_r) begin
                mpu_proj_vald_w = 1'b1;
            end
            else begin
                mpu_proj_vald_w = 1'b0;
            end
        end
        else begin
            mpu_proj_vald_w = 1'b0;
        end
    end

    //mpu data valid control
    always @(*) begin
        if (r_state_r == `Down_proj) begin
            if (intra_r_state_r == 3'd1 && fifo_empty_all && o_rd_en_0_r) begin
                mpu_down_vald1_w = 1'b1;
            end
            else begin
                mpu_down_vald1_w = 1'b0;
            end
        end
        else begin
            mpu_down_vald1_w = 1'b0;
        end
    end

    //mpu data valid control
    always @(*) begin
        if (r_state_r == `Down_proj) begin
            if (intra_r_state_r == 3'd2 && fifo_empty_all && o_rd_en_0_r) begin
                mpu_down_vald2_w = 1'b1;
            end
            else begin
                mpu_down_vald2_w = 1'b0;
            end
        end
        else begin
            mpu_down_vald2_w = 1'b0;
        end
    end

    //mpu data valid control
    always @(*) begin
        if (r_state_r == `Down_proj) begin
            if (intra_r_state_r == 3'd3 && fifo_empty_all && o_rd_en_0_r) begin
                mpu_down_vald3_w = 1'b1;
            end
            else begin
                mpu_down_vald3_w = 1'b0;
            end
        end
        else begin
            mpu_down_vald3_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Attention_local) begin
            if (i_token_cnt[9:3] == 7'd0) begin
                last_flag_k_w = 1'b1;
            end
            else if (intra_r_state_r == 3'd2 && fifo_empty_0_15 && o_rd_en_0_r && chnl_cnt_r == 4'd3 && (fifo_dep_cnt_2_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_2_r[6:0] == i_token_cnt[9:3]))) begin
                last_flag_k_w = 1'b0;
            end
            else if ((fifo_dep_cnt_2_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_2_r[6:0] == i_token_cnt[9:3]))) begin
                last_flag_k_w = 1'b1;
            end
            else begin
                last_flag_k_w = last_flag_k_r;
            end
        end
        else begin
            last_flag_k_w = 1'b0;
        end
    end

    always @(*) begin
        if (r_state_r == `Attention_local) begin
            if (i_token_cnt[9:3] == 7'd0) begin
                last_flag_v_w = 1'b1;
            end
            else if (intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3 && (fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3]))) begin
                last_flag_v_w = 1'b0;
            end
            else if ((fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3]))) begin
                last_flag_v_w = 1'b1;
            end
            else begin
                last_flag_v_w = last_flag_v_r;
            end
        end
        else begin
            last_flag_v_w = 1'b0;
        end
    end

    // q*k data valid control
    always @(*) begin
        if (r_state_r == `Attention_local) begin
            if ((intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r) begin
                qk_vald_w = 1'b1;
            end
            else begin
                qk_vald_w = 1'b0;
            end
        end
        else begin
            qk_vald_w = 1'b0;
        end
    end

    // s*v data valid control
    always @(*) begin
        if (r_state_r == `Attention_local) begin
            if (intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r) begin
                sv_vald_w = 1'b1;
            end
            else begin
                sv_vald_w = 1'b0;
            end
        end
        else begin
            sv_vald_w = 1'b0;
        end
    end

    //mpu data valid control
    always @(*) begin
        if (r_state_r == `Down_proj) begin
            if (intra_r_state_r == 3'd4 && fifo_empty_all && o_rd_en_0_r) begin
                mpu_down_vald4_w = 1'b1;
            end
            else begin
                mpu_down_vald4_w = 1'b0;
            end
        end
        else begin
            mpu_down_vald4_w = 1'b0;
        end
    end

    // vpu output data control
    always @(*) begin
        if (vpu_g0_parms_vald_d_r || vpu_res1_vald_d_r) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_vpu_data0_w[32*i +: 32] = {i_g0_rdata[16*i +: 16], 16'b0};
            end
        end
        else if ((vpu_g1_irms_vald_d_r || vpu_res0_vald_d_r) && i_layer_cnt == 6'd0) begin
            o_vpu_data0_w = {i_g1_rdata, i_g5_rdata};
        end
        else if (vpu_g1_orms_vald_d_r || vpu_g1_irms_vald_d_r || vpu_res0_vald_d_r) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_vpu_data0_w[32*i +: 32] = {i_g1_rdata[16*i +: 16], 16'b0};
            end
        end
        else if (vpu_g2_irms_vald_d_r) begin
            o_vpu_data0_w = {i_g4_rdata, i_g2_rdata};
        end
        else if (vpu_g3_pofrms_vald_d_r) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_vpu_data0_w[32*i +: 32] = {i_g3_rdata[16*i +: 16], 16'b0};
            end
        end
        else begin
            o_vpu_data0_w = 2048'd0;
        end
    end

    always @(*) begin
        if (vpu_g0_parms_vald_d_r) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_vpu_data1_w[32*i +: 32] = {i_g0_rdata[16*i +: 16], 16'b0};
            end
        end
        else if (vpu_g1_irms_vald_d_r && i_layer_cnt == 6'd0) begin
            o_vpu_data1_w = {i_g1_rdata, i_g5_rdata};
        end
        else if (vpu_g1_orms_vald_d_r || vpu_g1_irms_vald_d_r) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_vpu_data1_w[32*i +: 32] = {i_g1_rdata[16*i +: 16], 16'b0};
            end
        end
        else if (vpu_g2_irms_vald_d_r || vpu_qk_fusion_vald_d_r) begin
            o_vpu_data1_w = {i_fifo_rd_data_3[511:0], i_fifo_rd_data_2[511:0], i_fifo_rd_data_1[511:0], i_fifo_rd_data_0[511:0]};
        end
        else if (vpu_g3_pofrms_vald_d_r || vpu_res0_vald_d_r || vpu_res1_vald_d_r) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_vpu_data1_w[32*i +: 32] = {i_g3_rdata[16*i +: 16], 16'b0};
            end
        end
        else begin
            o_vpu_data1_w = 2048'd0;
        end
    end

    always @(*) begin
        if (mpu_proj_vald_d_r) begin
            o_mpu_data_vald_w = 1'b1;
        end
        else if (mpu_down_vald1_d_r || mpu_down_vald2_d_r || mpu_down_vald3_d_r || mpu_down_vald4_d_r) begin
            o_mpu_data_vald_w = 1'b1;
        end
        else begin
            o_mpu_data_vald_w = 1'b0;
        end
    end

    always @(*) begin
        if (mpu_proj_vald_d_r) begin
            o_mpu_data0_w = i_g3_rdata;
        end
        else if (mpu_down_vald1_d_r) begin
            o_mpu_data0_w = i_g1_rdata;
        end
        else if (mpu_down_vald2_d_r) begin
            o_mpu_data0_w = i_g2_rdata;
        end
        else if (mpu_down_vald3_d_r) begin
            o_mpu_data0_w = i_g4_rdata;
        end
        else if (mpu_down_vald4_d_r) begin
            o_mpu_data0_w = i_g5_rdata;
        end
        else begin
            o_mpu_data0_w = 1024'b0;
        end
    end

    always @(*) begin
        if (mpu_proj_vald_d_r || mpu_down_vald1_d_r || mpu_down_vald2_d_r || mpu_down_vald3_d_r || mpu_down_vald4_d_r) begin
            o_mpu_data1_w = {i_fifo_rd_data_31[255:0], i_fifo_rd_data_30[255:0], i_fifo_rd_data_29[255:0], i_fifo_rd_data_28[255:0], i_fifo_rd_data_27[255:0], i_fifo_rd_data_26[255:0], i_fifo_rd_data_25[255:0], i_fifo_rd_data_24[255:0], 
                             i_fifo_rd_data_23[255:0], i_fifo_rd_data_22[255:0], i_fifo_rd_data_21[255:0], i_fifo_rd_data_20[255:0], i_fifo_rd_data_19[255:0], i_fifo_rd_data_18[255:0], i_fifo_rd_data_17[255:0], i_fifo_rd_data_16[255:0], 
                             i_fifo_rd_data_15[255:0], i_fifo_rd_data_14[255:0], i_fifo_rd_data_13[255:0], i_fifo_rd_data_12[255:0], i_fifo_rd_data_11[255:0], i_fifo_rd_data_10[255:0], i_fifo_rd_data_9[255:0],  i_fifo_rd_data_8[255:0], 
                             i_fifo_rd_data_7[255:0],  i_fifo_rd_data_6[255:0],  i_fifo_rd_data_5[255:0],  i_fifo_rd_data_4[255:0],  i_fifo_rd_data_3[255:0],  i_fifo_rd_data_2[255:0],  i_fifo_rd_data_1[255:0],  i_fifo_rd_data_0[255:0]};
            
            o_mpu_scale_w = {i_fifo_rd_data_31[287:256], i_fifo_rd_data_30[287:256], i_fifo_rd_data_29[287:256], i_fifo_rd_data_28[287:256], i_fifo_rd_data_27[287:256], i_fifo_rd_data_26[287:256], i_fifo_rd_data_25[287:256], i_fifo_rd_data_24[287:256], 
                             i_fifo_rd_data_23[287:256], i_fifo_rd_data_22[287:256], i_fifo_rd_data_21[287:256], i_fifo_rd_data_20[287:256], i_fifo_rd_data_19[287:256], i_fifo_rd_data_18[287:256], i_fifo_rd_data_17[287:256], i_fifo_rd_data_16[287:256], 
                             i_fifo_rd_data_15[287:256], i_fifo_rd_data_14[287:256], i_fifo_rd_data_13[287:256], i_fifo_rd_data_12[287:256], i_fifo_rd_data_11[287:256], i_fifo_rd_data_10[287:256], i_fifo_rd_data_9[287:256],  i_fifo_rd_data_8[287:256], 
                             i_fifo_rd_data_7[287:256],  i_fifo_rd_data_6[287:256],  i_fifo_rd_data_5[287:256],  i_fifo_rd_data_4[287:256],  i_fifo_rd_data_3[287:256],  i_fifo_rd_data_2[287:256],  i_fifo_rd_data_1[287:256],  i_fifo_rd_data_0[287:256]};
        end
        else begin
            o_mpu_data1_w = 8192'b0;
            o_mpu_scale_w = 1024'b0;
        end
    end

    
    //mpu data valid control
    always @(*) begin
        if (r_state_r == `L_proj) begin
            if (intra_r_state_r == 3'd1 && fifo_empty_all && o_rd_en_0_r) begin
                mpu_l_proj_vald_w = 1'b1;
            end
            else begin
                mpu_l_proj_vald_w = 1'b0;
            end
        end
        else begin
            mpu_l_proj_vald_w = 1'b0;
        end
    end

    always @(*) begin
        if (mpu_l_proj_vald_d_r) begin
            o_mpu_64x8_data_vald_w = {512{1'b1}};
        end
        else if (qk_vald_d_r && last_flag_k_d2_r) begin
            for (i = 0; i < 8; i = i + 1) begin
                if (i <= i_token_cnt[2:0]) begin
                    o_mpu_64x8_data_vald_w[511-i*64 -:64] = 64'hffff_ffff_ffff_ffff;
                end
                else begin
                    o_mpu_64x8_data_vald_w[511-i*64 -:64] = 64'b0;
                end
            end
        end
        else if (qk_vald_d_r) begin
            o_mpu_64x8_data_vald_w = {512{1'b1}};
        end
        else if (sv_vald_d_r && last_flag_v_d2_r) begin
            for (i = 0; i < 8; i = i + 1) begin
                for (j = 0; j < 64; j = j + 1) begin
                    if (i <= i_token_cnt[2:0]) begin
                        o_mpu_64x8_data_vald_w[511-i-j*8] = 1'b1;
                    end
                    else begin
                        o_mpu_64x8_data_vald_w[511-i-j*8] = 1'b0;
                    end
                end
            end
        end
        else if (sv_vald_d_r) begin
            o_mpu_64x8_data_vald_w = {512{1'b1}};
        end
        else begin
            o_mpu_64x8_data_vald_w = 512'b0;
        end
    end

    always @(*) begin
        if (mpu_l_proj_vald_d_r) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_mpu_64x8_data0_w[32*i +: 32] = {i_g3_rdata[16*i +: 16], 16'b0};
            end
        end
        else if (qk_vald_d_r) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_mpu_64x8_data0_w[32*i +: 32] = {i_g4_rdata[16*i +: 16], 16'b0};
            end
        end
        else begin
            o_mpu_64x8_data0_w = 2048'b0;
        end
    end

    always @(*) begin
        if (mpu_l_proj_vald_d_r) begin
            o_mpu_64x8_data1_w = {i_fifo_rd_data_31[511:0], i_fifo_rd_data_30[511:0], i_fifo_rd_data_29[511:0], i_fifo_rd_data_28[511:0], i_fifo_rd_data_27[511:0], i_fifo_rd_data_26[511:0], i_fifo_rd_data_25[511:0], i_fifo_rd_data_24[511:0], 
                             i_fifo_rd_data_23[511:0], i_fifo_rd_data_22[511:0], i_fifo_rd_data_21[511:0], i_fifo_rd_data_20[511:0], i_fifo_rd_data_19[511:0], i_fifo_rd_data_18[511:0], i_fifo_rd_data_17[511:0], i_fifo_rd_data_16[511:0], 
                             i_fifo_rd_data_15[511:0], i_fifo_rd_data_14[511:0], i_fifo_rd_data_13[511:0], i_fifo_rd_data_12[511:0], i_fifo_rd_data_11[511:0], i_fifo_rd_data_10[511:0], i_fifo_rd_data_9[511:0],  i_fifo_rd_data_8[511:0], 
                             i_fifo_rd_data_7[511:0],  i_fifo_rd_data_6[511:0],  i_fifo_rd_data_5[511:0],  i_fifo_rd_data_4[511:0],  i_fifo_rd_data_3[511:0],  i_fifo_rd_data_2[511:0],  i_fifo_rd_data_1[511:0],  i_fifo_rd_data_0[511:0]};
        end
        else if (qk_vald_d_r) begin
            for (i = 0; i < 32; i = i + 1) begin
                o_mpu_64x8_data1_w[i*32 +: 32]       = {i_fifo_rd_data_14[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[1024+i*32 +: 32]  = {i_fifo_rd_data_15[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[2048+i*32 +: 32]  = {i_fifo_rd_data_12[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[3072+i*32 +: 32]  = {i_fifo_rd_data_13[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[4096+i*32 +: 32]  = {i_fifo_rd_data_10[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[5120+i*32 +: 32]  = {i_fifo_rd_data_11[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[6144+i*32 +: 32]  = {i_fifo_rd_data_8[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[7168+i*32 +: 32]  = {i_fifo_rd_data_9[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[8192+i*32 +: 32]  = {i_fifo_rd_data_6[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[9216+i*32 +: 32]  = {i_fifo_rd_data_7[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[10240+i*32 +: 32] = {i_fifo_rd_data_4[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[11264+i*32 +: 32] = {i_fifo_rd_data_5[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[12288+i*32 +: 32] = {i_fifo_rd_data_2[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[13312+i*32 +: 32] = {i_fifo_rd_data_3[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[14336+i*32 +: 32] = {i_fifo_rd_data_0[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[15360+i*32 +: 32] = {i_fifo_rd_data_1[i*16 +: 16], {16'b0}};
            end
        end
        else if (sv_vald_d_r) begin
            for (i = 0; i < 32; i = i + 1) begin
                o_mpu_64x8_data1_w[i*256 +: 256]        = {i_fifo_rd_data_16[i*16 +: 16], {16'b0}, i_fifo_rd_data_18[i*16 +: 16], {16'b0}, i_fifo_rd_data_20[i*16 +: 16], {16'b0}, i_fifo_rd_data_22[i*16 +: 16], {16'b0},
                                                           i_fifo_rd_data_24[i*16 +: 16], {16'b0}, i_fifo_rd_data_26[i*16 +: 16], {16'b0}, i_fifo_rd_data_28[i*16 +: 16], {16'b0}, i_fifo_rd_data_30[i*16 +: 16], {16'b0}};
                o_mpu_64x8_data1_w[8192+i*256 +: 256]   = {i_fifo_rd_data_17[i*16 +: 16], {16'b0}, i_fifo_rd_data_19[i*16 +: 16], {16'b0}, i_fifo_rd_data_21[i*16 +: 16], {16'b0}, i_fifo_rd_data_23[i*16 +: 16], {16'b0},
                                                           i_fifo_rd_data_25[i*16 +: 16], {16'b0}, i_fifo_rd_data_27[i*16 +: 16], {16'b0}, i_fifo_rd_data_29[i*16 +: 16], {16'b0}, i_fifo_rd_data_31[i*16 +: 16], {16'b0}};
            end
        end
        else begin
            o_mpu_64x8_data1_w = 16384'b0;
        end
    end

    // control sram group 0 address
    always @(*) begin
        if ((r_state_r == `Postatt_rms  || r_state_r == `Preffn_rms) && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) && o_g0_addr_r == `one_group_depth) begin
            o_g0_addr_w = 6'd0;
        end
        else if ((r_state_r == `Postatt_rms || r_state_r == `Preffn_rms) && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3)) begin
            o_g0_addr_w = o_g0_addr_r + 1'b1;
        end
        else if (r_state_r == `Residual0 && intra_w_state_r == 3'd1 && o_g0_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
            o_g0_addr_w = 6'd0;
        end
        else if (r_state_r == `Residual0 && intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r) begin
            o_g0_addr_w = o_g0_addr_r + 1'b1;
        end
        else if (r_state_r == `Residual1 && intra_r_state_r == 3'd1 && o_g0_addr_r == `one_group_depth) begin
            o_g0_addr_w = 6'd0;
        end
        else if (r_state_r == `Residual1 && intra_r_state_r == 3'd1) begin
            o_g0_addr_w = o_g0_addr_r + 1'b1;
        end
        else if (r_state_r == `O_proj) begin
            if (intra_w_state_r == 3'd1 && o_g0_addr_r == `one_group_depth && i_mpu_done_data_vald_r) begin
                o_g0_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_mpu_done_data_vald_r) begin
                o_g0_addr_w = o_g0_addr_r + 1'b1;
            end
            else begin
                o_g0_addr_w = o_g0_addr_r;
            end
        end
        else begin
            o_g0_addr_w = o_g0_addr_r;
        end
    end

    // control sram group 0 write enable
    always @(*) begin
        if (r_state_r == `Residual0 && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_g0_wea_w  = 1'b1;
        end
        else if (r_state_r == `O_proj && intra_w_state_r == 3'd1 && i_mpu_done_data_vald) begin
            o_g0_wea_w  = 1'b1;
        end
        else begin
            o_g0_wea_w  = 1'b0;
        end
    end

    // control sram group 0 write data
    always @(*) begin
        if (r_state_r == `Residual0 && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g0_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else if (r_state_r == `O_proj && intra_w_state_r == 3'd1 && i_mpu_done_data_vald) begin
            o_g0_wdata_w = i_mpu_done_data;
        end
        else begin
            o_g0_wdata_w = 1024'b0;
        end
    end

    // control sram group 1 address
    always @(*) begin
        if (r_state_r == `Embedding && fifo_rd_en_all_d3[15] && o_g1_addr_r == `one_group_depth) begin
            o_g1_addr_w = 6'd0;
        end
        else if (r_state_r == `Embedding && |fifo_rd_en_all_d3[15:0]) begin
            o_g1_addr_w = o_g1_addr_r + 1'b1;
        end
        else if ((r_state_r == `I_rms || r_state_r == `O_rms) && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) && o_g1_addr_r == `one_group_depth) begin
            o_g1_addr_w = 6'd0;
        end
        else if ((r_state_r == `I_rms || r_state_r == `O_rms) && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3)) begin
            o_g1_addr_w = o_g1_addr_r + 1'b1;
        end
        else if (r_state_r == `Residual0 && intra_r_state_r == 3'd1 && o_g1_addr_r == `one_group_depth) begin
            o_g1_addr_w = 6'd0;
        end
        else if (r_state_r == `Residual0 && intra_r_state_r == 3'd1) begin
            o_g1_addr_w = o_g1_addr_r + 1'b1;
        end
        else if (r_state_r == `Residual1 && intra_w_state_r == 3'd1 && o_g1_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
            o_g1_addr_w = 6'd0;
        end
        else if (r_state_r == `Residual1 && intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r) begin
            o_g1_addr_w = o_g1_addr_r + 1'b1;
        end
        else if (r_state_r == `Down_proj) begin
            if (o_g1_addr_r == `one_group_depth && intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g1_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g1_addr_w = o_g1_addr_r + 1'b1;
            end
            else begin
                o_g1_addr_w = o_g1_addr_r;
            end
        end
        else if (r_state_r == `Mlp_proj) begin
            if (intra_w_state_r == 3'd1 && o_g1_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                o_g1_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r) begin
                o_g1_addr_w = o_g1_addr_r + 1'b1;
            end
            else begin
                o_g1_addr_w = o_g1_addr_r;
            end
        end
        else begin
            o_g1_addr_w = o_g1_addr_r;
        end
    end

    // control sram group 1 write enable
    always @(*) begin
        if (r_state_r == `Embedding && |(fifo_rd_en_all_d2[15:0])) begin
            o_g1_wea_w  = 1'b1;
        end
        else if (r_state_r == `Residual1 && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_g1_wea_w  = 1'b1;
        end
        else if (r_state_r == `Mlp_proj && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_g1_wea_w  = 1'b1;
        end
        else begin
            o_g1_wea_w  = 1'b0;
        end
    end

    // control sram group 1 write data
    always @(*) begin
        if (r_state_r == `Embedding) begin
            if (fifo_rd_en_all_d2[1:0] == 2'b11) begin
                o_g1_wdata_w = {i_fifo_rd_data_1[511:0], i_fifo_rd_data_0[511:0]};
            end
            else if (fifo_rd_en_all_d2[3:2] == 2'b11) begin
                o_g1_wdata_w = {i_fifo_rd_data_3[511:0], i_fifo_rd_data_2[511:0]};
            end
            else if (fifo_rd_en_all_d2[5:4] == 2'b11) begin
                o_g1_wdata_w = {i_fifo_rd_data_5[511:0], i_fifo_rd_data_4[511:0]};
            end
            else if (fifo_rd_en_all_d2[7:6] == 2'b11) begin
                o_g1_wdata_w = {i_fifo_rd_data_7[511:0], i_fifo_rd_data_6[511:0]};
            end
            else if (fifo_rd_en_all_d2[9:8] == 2'b11) begin
                o_g1_wdata_w = {i_fifo_rd_data_9[511:0], i_fifo_rd_data_8[511:0]};
            end
            else if (fifo_rd_en_all_d2[11:10] == 2'b11) begin
                o_g1_wdata_w = {i_fifo_rd_data_11[511:0], i_fifo_rd_data_10[511:0]};
            end
            else if (fifo_rd_en_all_d2[13:12] == 2'b11) begin
                o_g1_wdata_w = {i_fifo_rd_data_13[511:0], i_fifo_rd_data_12[511:0]};
            end
            else if (fifo_rd_en_all_d2[15:14] == 2'b11) begin
                o_g1_wdata_w = {i_fifo_rd_data_15[511:0], i_fifo_rd_data_14[511:0]};
            end
            else begin
                o_g1_wdata_w = o_g1_wdata_r;
            end
        end
        else if (r_state_r == `Residual1 && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g1_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else if (r_state_r == `Mlp_proj && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g1_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else begin
            o_g1_wdata_w = 1024'b0;
        end
    end

    // control sram group 2 address
    always @(*) begin
        if (r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) begin
            if (intra_w_state_r == 3'd1 && o_g2_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                o_g2_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r) begin
                o_g2_addr_w = o_g2_addr_r + 1'b1;
            end
            else if (intra_r_state_r == 3'd5 && o_g2_addr_r == `one_group_depth && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                o_g2_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                o_g2_addr_w = o_g2_addr_r + 1'b1;
            end
            else begin
                o_g2_addr_w = o_g2_addr_r;
            end
        end
        else if (r_state_r == `Down_proj) begin
            if (o_g2_addr_r == `one_group_depth && intra_r_state_r == 3'd2 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g2_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd2 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g2_addr_w = o_g2_addr_r + 1'b1;
            end
            else begin
                o_g2_addr_w = o_g2_addr_r;
            end
        end
        else if (r_state_r == `Mlp_proj) begin
            if (intra_w_state_r == 3'd2 && o_g2_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                o_g2_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd2 && i_vpu_done_data_vald_r) begin
                o_g2_addr_w = o_g2_addr_r + 1'b1;
            end
            else begin
                o_g2_addr_w = o_g2_addr_r;
            end
        end
        else begin
            o_g2_addr_w = o_g2_addr_r;
        end
    end

    // control sram group 2 write enable
    always @(*) begin
        if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_g2_wea_w  = 1'b1;
        end
        else if (r_state_r == `Mlp_proj && intra_w_state_r == 3'd2 && i_vpu_done_data_vald) begin
            o_g2_wea_w  = 1'b1;
        end
        else begin
            o_g2_wea_w  = 1'b0;
        end
    end

    // control sram group 2 write data
    always @(*) begin
        if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_g2_wdata_w = i_vpu_done_data[1023:0];
        end
        else if (r_state_r == `Mlp_proj && intra_w_state_r == 3'd2 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g2_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else begin
            o_g2_wdata_w = 1024'b0;
        end
    end

    // control sram group 3 address
    always @(*) begin
        if (r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `O_rms) begin
            if (intra_w_state_r == 3'd2 && o_g3_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                o_g3_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd2 && i_vpu_done_data_vald_r) begin
                o_g3_addr_w = o_g3_addr_r + 1'b1;
            end
            else begin
                o_g3_addr_w = o_g3_addr_r;
            end
        end
        else if (r_state_r == `Postffn_rms) begin
            if (intra_w_state_r == 3'd2 && o_g3_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                o_g3_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd2 && i_vpu_done_data_vald_r) begin
                o_g3_addr_w = o_g3_addr_r + 1'b1;
            end
            else if ((intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) && o_g3_addr_r == `one_group_depth) begin
                o_g3_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) begin
                o_g3_addr_w = o_g3_addr_r + 1'b1;
            end
            else begin
                o_g3_addr_w = o_g3_addr_r;
            end
        end
        else if ((r_state_r == `Residual0 || r_state_r == `Residual1) && intra_r_state_r == 3'd1 && o_g3_addr_r == `one_group_depth) begin
            o_g3_addr_w = 6'd0;
        end
        else if ((r_state_r == `Residual0 || r_state_r == `Residual1) && intra_r_state_r == 3'd1) begin
            o_g3_addr_w = o_g3_addr_r + 1'b1;
        end
        else if (r_state_r == `K_proj || r_state_r == `V_proj || r_state_r == `Q_proj || r_state_r == `L_proj) begin
            if (o_g3_addr_r == `one_group_depth && intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g3_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g3_addr_w = o_g3_addr_r + 1'b1;
            end
            else begin
                o_g3_addr_w = o_g3_addr_r;
            end
        end
        else if (r_state_r == `O_proj) begin
            if (o_g3_addr_r == `query_group_depth && intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g3_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g3_addr_w = o_g3_addr_r + 1'b1;
            end
            else begin
                o_g3_addr_w = o_g3_addr_r;
            end
        end
        else if (r_state_r == `Down_proj) begin
            if (intra_w_state_r == 3'd1 && o_g3_addr_r == `one_group_depth && i_mpu_done_data_vald_r) begin
                o_g3_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_mpu_done_data_vald_r) begin
                o_g3_addr_w = o_g3_addr_r + 1'b1;
            end
            else begin
                o_g3_addr_w = o_g3_addr_r;
            end
        end
        else if (r_state_r == `Mlp_proj) begin
            if (o_g3_addr_r == `one_group_depth && intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g3_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd1 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g3_addr_w = o_g3_addr_r + 1'b1;
            end
            else begin
                o_g3_addr_w = o_g3_addr_r;
            end
        end
        else if (r_state_r == `Attention_local) begin
            if (intra_w_state_r == 3'd1 && o_g3_addr_r == `query_group_depth && i_vpu_done_data_vald_r) begin
                o_g3_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r) begin
                o_g3_addr_w = o_g3_addr_r + 1'b1;
            end
            else begin
                o_g3_addr_w = o_g3_addr_r;
            end
        end
        else begin
            o_g3_addr_w = o_g3_addr_r;
        end
    end

    // control sram group 3 write enable
    always @(*) begin
        if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_w_state_r == 3'd2 && i_vpu_done_data_vald) begin
            o_g3_wea_w  = 1'b1;
        end
        else if (r_state_r == `Attention_local && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_g3_wea_w  = 1'b1;
        end
        else if (r_state_r == `Down_proj && intra_w_state_r == 3'd1 && i_mpu_done_data_vald) begin
            o_g3_wea_w  = 1'b1;
        end
        else begin
            o_g3_wea_w  = 1'b0;
        end
    end

    // control sram group 3 write data
    always @(*) begin
        if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_w_state_r == 3'd2 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g3_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else if (r_state_r == `Attention_local && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g3_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else if (r_state_r == `Down_proj && intra_w_state_r == 3'd1 && i_mpu_done_data_vald) begin
            o_g3_wdata_w = i_mpu_done_data;
        end
        else begin
            o_g3_wdata_w = 1024'b0;
        end
    end

    // control sram group 4 address
    always @(*) begin
        if (r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) begin
            if (intra_w_state_r == 3'd1 && o_g4_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                o_g4_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r) begin
                o_g4_addr_w = o_g4_addr_r + 1'b1;
            end
            else if (intra_r_state_r == 3'd5 && o_g4_addr_r == `one_group_depth && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                o_g4_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd5 && i_fifo_empty_0 == 1'b0 && i_fifo_empty_1 == 1'b0 && i_fifo_empty_2 == 1'b0 && i_fifo_empty_3 == 1'b0 && o_rd_en_0_r) begin
                o_g4_addr_w = o_g4_addr_r + 1'b1;
            end
            else begin
                o_g4_addr_w = o_g4_addr_r;
            end
        end
        else if (r_state_r == `K_proj) begin
            if (intra_w_state_r == 3'd1 && o_g4_addr_r == `key_group_depth && i_vpu_done_data_vald_r) begin
                o_g4_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r) begin
                o_g4_addr_w = o_g4_addr_r + 1'b1;
            end
            else begin
                o_g4_addr_w = o_g4_addr_r;
            end
        end
        else if (r_state_r == `V_proj) begin
            if (intra_w_state_r == 3'd1 && o_g4_addr_r == `key_group_depth && i_mpu_done_data_vald_r) begin
                o_g4_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_mpu_done_data_vald_r) begin
                o_g4_addr_w = o_g4_addr_r + 1'b1;
            end
            else begin
                o_g4_addr_w = o_g4_addr_r;
            end
        end
        else if (r_state_r == `Q_proj) begin
            if (intra_w_state_r == 3'd1 && o_g4_addr_r == `query_group_depth && i_vpu_done_data_vald_r) begin
                o_g4_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd1 && i_vpu_done_data_vald_r) begin
                o_g4_addr_w = o_g4_addr_r + 1'b1;
            end
            else begin
                o_g4_addr_w = o_g4_addr_r;
            end
        end
        else if (r_state_r == `Down_proj) begin
            if (o_g4_addr_r == `one_group_depth && intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g4_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd3 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g4_addr_w = o_g4_addr_r + 1'b1;
            end
            else begin
                o_g4_addr_w = o_g4_addr_r;
            end
        end
        else if (r_state_r == `Mlp_proj) begin
            if (intra_w_state_r == 3'd3 && o_g4_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                o_g4_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd3 && i_vpu_done_data_vald_r) begin
                o_g4_addr_w = o_g4_addr_r + 1'b1;
            end
            else begin
                o_g4_addr_w = o_g4_addr_r;
            end
        end
        else if (r_state_r == `Attention_local) begin
            if (intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && head_cnt_r == 3'd7 && chnl_cnt_r == 4'd3 && (fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3]))) begin
                o_g4_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd3 && fifo_empty_16_31 && o_rd_en_16_r && chnl_cnt_r == 4'd3 && (fifo_dep_cnt_r == 13'd127 || (i_token_len_within_1024 && fifo_dep_cnt_r[6:0] == i_token_cnt[9:3]))) begin
                o_g4_addr_w = (head_cnt_r + 1'b1) << 2;
            end
            else if ((intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && chnl_cnt_r == 4'd3 && fifo_empty_0_15 && o_rd_en_0_r) begin
                o_g4_addr_w = o_g4_addr_r - 2'd3;
            end
            else if ((intra_r_state_r == 3'd1 || intra_r_state_r == 3'd2) && fifo_empty_0_15 && o_rd_en_0_r) begin
                o_g4_addr_w = o_g4_addr_r + 1'b1;
            end
            else begin
                o_g4_addr_w = o_g4_addr_r;
            end
        end
        else begin
            o_g4_addr_w = o_g4_addr_r;
        end
    end

    // control sram group 4 write enable
    always @(*) begin
        if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms || r_state_r == `Q_proj) && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_g4_wea_w  = 1'b1;
        end
        else if (r_state_r == `Mlp_proj && intra_w_state_r == 3'd3 && i_vpu_done_data_vald) begin
            o_g4_wea_w  = 1'b1;
        end
        else begin
            o_g4_wea_w  = 1'b0;
        end
    end

    // control sram group 4 write data
    always @(*) begin
        if ((r_state_r == `I_rms || r_state_r == `Postatt_rms || r_state_r == `Preffn_rms || r_state_r == `Postffn_rms || r_state_r == `O_rms) && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_g4_wdata_w = i_vpu_done_data[2047:1024];
        end
        else if (r_state_r == `Q_proj && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g4_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else if (r_state_r == `Mlp_proj && intra_w_state_r == 3'd3 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g4_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else begin
            o_g4_wdata_w = 1024'b0;
        end
    end

    // control sram group 5 address
    always @(*) begin
        if (r_state_r == `Embedding && fifo_rd_en_all_d3[31] && o_g5_addr_r == `one_group_depth) begin
            o_g5_addr_w = 6'd0;
        end
        else if (r_state_r == `Embedding && |fifo_rd_en_all_d3[31:16]) begin
            o_g5_addr_w = o_g5_addr_r + 1'b1;
        end
        else if (r_state_r == `I_rms && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3) && o_g5_addr_r == `one_group_depth) begin
            o_g5_addr_w = 6'd0;
        end
        else if (r_state_r == `I_rms && (intra_r_state_r == 3'd1 || intra_r_state_r == 3'd3)) begin
            o_g5_addr_w = o_g5_addr_r + 1'b1;
        end
        else if (r_state_r == `Residual0 && intra_r_state_r == 3'd1 && o_g5_addr_r == `one_group_depth) begin
            o_g5_addr_w = 6'd0;
        end
        else if (r_state_r == `Residual0 && intra_r_state_r == 3'd1) begin
            o_g5_addr_w = o_g5_addr_r + 1'b1;
        end
        else if (r_state_r == `Down_proj) begin
            if (o_g5_addr_r == `one_group_depth && intra_r_state_r == 3'd4 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g5_addr_w = 6'd0;
            end
            else if (intra_r_state_r == 3'd4 && chnl_cnt_r == 4'd3 && fifo_empty_all && o_rd_en_0_r) begin
                o_g5_addr_w = o_g5_addr_r + 1'b1;
            end
            else begin
                o_g5_addr_w = o_g5_addr_r;
            end
        end
        else if (r_state_r == `Mlp_proj) begin
            if (intra_w_state_r == 3'd4 && o_g5_addr_r == `one_group_depth && i_vpu_done_data_vald_r) begin
                o_g5_addr_w = 6'd0;
            end
            else if (intra_w_state_r == 3'd4 && i_vpu_done_data_vald_r) begin
                o_g5_addr_w = o_g5_addr_r + 1'b1;
            end
            else begin
                o_g5_addr_w = o_g5_addr_r;
            end
        end
        else begin
            o_g5_addr_w = o_g5_addr_r;
        end
    end

    // control sram group 5 write enable
    always @(*) begin
        if (r_state_r == `Embedding && |fifo_rd_en_all_d2[31:16]) begin
            o_g5_wea_w  = 1'b1;
        end
        else if (r_state_r == `Mlp_proj && intra_w_state_r == 3'd4 && i_vpu_done_data_vald) begin
            o_g5_wea_w  = 1'b1;
        end
        else begin
            o_g5_wea_w  = 1'b0;
        end
    end

    // control sram group 5 write data
    always @(*) begin
        if (r_state_r == `Embedding) begin
            if (fifo_rd_en_all_d2[17:16] == 2'b11) begin
                o_g5_wdata_w = {i_fifo_rd_data_17[511:0], i_fifo_rd_data_16[511:0]};
            end
            else if (fifo_rd_en_all_d2[19:18] == 2'b11) begin
                o_g5_wdata_w = {i_fifo_rd_data_19[511:0], i_fifo_rd_data_18[511:0]};
            end
            else if (fifo_rd_en_all_d2[21:20] == 2'b11) begin
                o_g5_wdata_w = {i_fifo_rd_data_21[511:0], i_fifo_rd_data_20[511:0]};
            end
            else if (fifo_rd_en_all_d2[23:22] == 2'b11) begin
                o_g5_wdata_w = {i_fifo_rd_data_23[511:0], i_fifo_rd_data_22[511:0]};
            end
            else if (fifo_rd_en_all_d2[25:24] == 2'b11) begin
                o_g5_wdata_w = {i_fifo_rd_data_25[511:0], i_fifo_rd_data_24[511:0]};
            end
            else if (fifo_rd_en_all_d2[27:26] == 2'b11) begin
                o_g5_wdata_w = {i_fifo_rd_data_27[511:0], i_fifo_rd_data_26[511:0]};
            end
            else if (fifo_rd_en_all_d2[29:28] == 2'b11) begin
                o_g5_wdata_w = {i_fifo_rd_data_29[511:0], i_fifo_rd_data_28[511:0]};
            end
            else if (fifo_rd_en_all_d2[31:30] == 2'b11) begin
                o_g5_wdata_w = {i_fifo_rd_data_31[511:0], i_fifo_rd_data_30[511:0]};
            end
            else begin
                o_g5_wdata_w = o_g1_wdata_r;
            end
        end
        else if (r_state_r == `Mlp_proj && intra_w_state_r == 3'd4 && i_vpu_done_data_vald) begin
            for (i = 0; i < 64; i = i + 1) begin
                o_g5_wdata_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else begin
            o_g5_wdata_w = 1024'b0;
        end
    end

    // control fifo unit 0 write enable
    always @(*) begin
        if (r_state_r == `K_proj && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_fifo_wr_en0_w  = 1'b1;
        end
        else if (r_state_r == `V_proj && intra_w_state_r == 3'd1 && i_mpu_done_data_vald) begin
            o_fifo_wr_en0_w  = 1'b1;
        end
        else begin
            o_fifo_wr_en0_w  = 1'b0;
        end
    end

    // control fifo unit 0 write data
    always @(*) begin
        if (r_state_r == `K_proj && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            for (i = 0; i < 32; i = i + 1) begin
                o_fifo_wdata0_w[16*i +: 16] = i_vpu_done_data[32*(i+1)-1 -: 16];
            end
        end
        else if (r_state_r == `V_proj && intra_w_state_r == 3'd1 && i_mpu_done_data_vald) begin
            o_fifo_wdata0_w = i_mpu_done_data[511:0];
        end
        else begin
            o_fifo_wdata0_w = 512'b0;
        end
    end

    // control fifo unit 1 write enable
    always @(*) begin
        if (r_state_r == `K_proj && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            o_fifo_wr_en1_w  = 1'b1;
        end
        else if (r_state_r == `V_proj && intra_w_state_r == 3'd1 && i_mpu_done_data_vald) begin
            o_fifo_wr_en1_w  = 1'b1;
        end
        else begin
            o_fifo_wr_en1_w  = 1'b0;
        end
    end

    // control fifo unit 1 write data
    always @(*) begin
        if (r_state_r == `K_proj && intra_w_state_r == 3'd1 && i_vpu_done_data_vald) begin
            for (i = 0; i < 32; i = i + 1) begin
                o_fifo_wdata1_w[16*i +: 16] = i_vpu_done_data[1024+32*(i+1)-1 -: 16];
            end
        end
        else if (r_state_r == `V_proj && intra_w_state_r == 3'd1 && i_mpu_done_data_vald) begin
            o_fifo_wdata1_w = i_mpu_done_data[1023:512];
        end
        else begin
            o_fifo_wdata1_w = 512'b0;
        end
    end

    // input D-flip-flop
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            i_cpu_cmd_r             <= 5'b0;
            i_cpu_cmd_vald_r        <= 1'b0;
            i_vpu_done_data_vald_r  <= 1'b0;
            i_mpu_done_data_vald_r  <= 1'b0;
        end
        else begin
            i_cpu_cmd_r             <= i_cpu_cmd;
            i_cpu_cmd_vald_r        <= i_cpu_cmd_vald;
            i_vpu_done_data_vald_r  <= i_vpu_done_data_vald;
            i_mpu_done_data_vald_r  <= i_mpu_done_data_vald;
        end
    end

    // main D-flip-flop
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            r_state_r               <= `IDLE;
            chnl_cnt_r              <= 4'd0;
            fifo_dep_cnt_r          <= 13'd0;
            fifo_dep_cnt_2_r        <= 13'd0;
            head_cnt_r              <= 3'd0;
            intra_r_state_r         <= 3'd0;
            intra_w_state_r         <= 3'd0;

            fifo_rd_en_all_d1       <= 32'd0;
            fifo_rd_en_all_d2       <= 32'd0;
            fifo_rd_en_all_d3       <= 32'd0;

            vpu_g0_parms_vald_r     <= 1'b0;
            vpu_g0_parms_vald_d_r   <= 1'b0;

            vpu_g1_irms_vald_r      <= 1'b0;
            vpu_g1_irms_vald_d_r    <= 1'b0;

            vpu_g1_orms_vald_r      <= 1'b0;
            vpu_g1_orms_vald_d_r    <= 1'b0;
            
            vpu_g2_irms_vald_r      <= 1'b0;
            vpu_g2_irms_vald_d_r    <= 1'b0;

            vpu_g3_pofrms_vald_r    <= 1'b0;
            vpu_g3_pofrms_vald_d_r  <= 1'b0;

            vpu_res0_vald_r         <= 1'b0;
            vpu_res0_vald_d_r       <= 1'b0;

            vpu_res1_vald_r         <= 1'b0;
            vpu_res1_vald_d_r       <= 1'b0;

            vpu_qk_fusion_vald_r    <= 1'b0;
            vpu_qk_fusion_vald_d_r  <= 1'b0;

            mpu_proj_vald_r         <= 1'b0;
            mpu_proj_vald_d_r       <= 1'b0;

            mpu_l_proj_vald_r       <= 1'b0;
            mpu_l_proj_vald_d_r     <= 1'b0;

            mpu_down_vald1_r        <= 1'b0;
            mpu_down_vald1_d_r      <= 1'b0;
            mpu_down_vald2_r        <= 1'b0;
            mpu_down_vald2_d_r      <= 1'b0;
            mpu_down_vald3_r        <= 1'b0;
            mpu_down_vald3_d_r      <= 1'b0;
            mpu_down_vald4_r        <= 1'b0;
            mpu_down_vald4_d_r      <= 1'b0;

            qk_vald_r               <= 1'b0;
            qk_vald_d_r             <= 1'b0;
            sv_vald_r               <= 1'b0;
            sv_vald_d_r             <= 1'b0;

            last_flag_k_r           <= 1'b0;
            last_flag_k_d_r         <= 1'b0;
            last_flag_k_d2_r        <= 1'b0;

            last_flag_v_r           <= 1'b0;
            last_flag_v_d_r         <= 1'b0;
            last_flag_v_d2_r        <= 1'b0;

            in_head_cnt_r           <= 1'b0;
        end
        else begin
            r_state_r               <= r_state_w;
            chnl_cnt_r              <= chnl_cnt_w;
            fifo_dep_cnt_r          <= fifo_dep_cnt_w;
            fifo_dep_cnt_2_r        <= fifo_dep_cnt_2_w;
            head_cnt_r              <= head_cnt_w;
            intra_r_state_r         <= intra_r_state_w;
            intra_w_state_r         <= intra_w_state_w;

            fifo_rd_en_all_d1       <= fifo_rd_en_all;
            fifo_rd_en_all_d2       <= fifo_rd_en_all_d1;
            fifo_rd_en_all_d3       <= fifo_rd_en_all_d2;

            vpu_g0_parms_vald_r     <= vpu_g0_parms_vald_w;
            vpu_g0_parms_vald_d_r   <= vpu_g0_parms_vald_r;

            vpu_g1_irms_vald_r      <= vpu_g1_irms_vald_w;
            vpu_g1_irms_vald_d_r    <= vpu_g1_irms_vald_r;

            vpu_g1_orms_vald_r      <= vpu_g1_orms_vald_w;
            vpu_g1_orms_vald_d_r    <= vpu_g1_orms_vald_r;

            vpu_g2_irms_vald_r      <= vpu_g2_irms_vald_w;
            vpu_g2_irms_vald_d_r    <= vpu_g2_irms_vald_r;

            vpu_g3_pofrms_vald_r    <= vpu_g3_pofrms_vald_w;
            vpu_g3_pofrms_vald_d_r  <= vpu_g3_pofrms_vald_r;

            vpu_res0_vald_r         <= vpu_res0_vald_w;
            vpu_res0_vald_d_r       <= vpu_res0_vald_r;

            vpu_res1_vald_r         <= vpu_res1_vald_w;
            vpu_res1_vald_d_r       <= vpu_res1_vald_r;

            vpu_qk_fusion_vald_r    <= vpu_qk_fusion_vald_w;
            vpu_qk_fusion_vald_d_r  <= vpu_qk_fusion_vald_r;

            mpu_proj_vald_r         <= mpu_proj_vald_w;
            mpu_proj_vald_d_r       <= mpu_proj_vald_r;

            mpu_l_proj_vald_r       <= mpu_l_proj_vald_w;
            mpu_l_proj_vald_d_r     <= mpu_l_proj_vald_r;

            mpu_down_vald1_r        <= mpu_down_vald1_w;
            mpu_down_vald1_d_r      <= mpu_down_vald1_r;
            mpu_down_vald2_r        <= mpu_down_vald2_w;
            mpu_down_vald2_d_r      <= mpu_down_vald2_r;
            mpu_down_vald3_r        <= mpu_down_vald3_w;
            mpu_down_vald3_d_r      <= mpu_down_vald3_r;
            mpu_down_vald4_r        <= mpu_down_vald4_w;
            mpu_down_vald4_d_r      <= mpu_down_vald4_r;

            qk_vald_r               <= qk_vald_w;
            qk_vald_d_r             <= qk_vald_r;
            sv_vald_r               <= sv_vald_w;
            sv_vald_d_r             <= sv_vald_r;

            last_flag_k_r           <= last_flag_k_w;
            last_flag_k_d_r         <= last_flag_k_r;
            last_flag_k_d2_r        <= last_flag_k_d_r;

            last_flag_v_r           <= last_flag_v_w;
            last_flag_v_d_r         <= last_flag_v_r;
            last_flag_v_d2_r        <= last_flag_v_d_r;

            in_head_cnt_r           <= in_head_cnt_w;
        end
    end

    // output D-flip-flop
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            o_cpu_cmd_done_r    <= 1'b0;

            o_rd_en_0_r         <= 1'b0;
            o_rd_en_1_r         <= 1'b0;
            o_rd_en_2_r         <= 1'b0;
            o_rd_en_3_r         <= 1'b0;
            o_rd_en_4_r         <= 1'b0;
            o_rd_en_5_r         <= 1'b0;
            o_rd_en_6_r         <= 1'b0;
            o_rd_en_7_r         <= 1'b0;
            o_rd_en_8_r         <= 1'b0;
            o_rd_en_9_r         <= 1'b0;
            o_rd_en_10_r        <= 1'b0;
            o_rd_en_11_r        <= 1'b0;
            o_rd_en_12_r        <= 1'b0;
            o_rd_en_13_r        <= 1'b0;
            o_rd_en_14_r        <= 1'b0;
            o_rd_en_15_r        <= 1'b0;
            o_rd_en_16_r        <= 1'b0;
            o_rd_en_17_r        <= 1'b0;
            o_rd_en_18_r        <= 1'b0;
            o_rd_en_19_r        <= 1'b0;
            o_rd_en_20_r        <= 1'b0;
            o_rd_en_21_r        <= 1'b0;
            o_rd_en_22_r        <= 1'b0;
            o_rd_en_23_r        <= 1'b0;
            o_rd_en_24_r        <= 1'b0;
            o_rd_en_25_r        <= 1'b0;
            o_rd_en_26_r        <= 1'b0;
            o_rd_en_27_r        <= 1'b0;
            o_rd_en_28_r        <= 1'b0;
            o_rd_en_29_r        <= 1'b0;
            o_rd_en_30_r        <= 1'b0;
            o_rd_en_31_r        <= 1'b0;

            o_g0_addr_r         <= 6'b0;
            o_g0_wea_r          <= 1'b0;
            o_g0_wdata_r        <= 1024'b0;

            o_g1_addr_r         <= 6'b0;
            o_g1_wea_r          <= 1'b0;
            o_g1_wdata_r        <= 1024'b0;

            o_g2_addr_r         <= 6'b0;
            o_g2_wea_r          <= 1'b0;
            o_g2_wdata_r        <= 1024'b0;

            o_g3_addr_r         <= 6'b0;
            o_g3_wea_r          <= 1'b0;
            o_g3_wdata_r        <= 1024'b0;

            o_g4_addr_r         <= 6'b0;
            o_g4_wea_r          <= 1'b0;
            o_g4_wdata_r        <= 1024'b0;

            o_g5_addr_r         <= 6'b0;
            o_g5_wea_r          <= 1'b0;
            o_g5_wdata_r        <= 1024'b0;

            o_vpu_data_vald_r   <= 1'b0;
            o_vpu_data0_r       <= 2048'b0;
            o_vpu_data1_r       <= 2048'b0;

            o_mpu_data_vald_r   <= 1'b0;
            o_mpu_data0_r       <= 1024'b0;
            o_mpu_data1_r       <= 8192'b0;
            o_mpu_scale_r       <= 1024'b0;

            o_mpu_64x8_data_vald_r  <= 512'b0;
            o_mpu_64x8_data0_r      <= 2048'b0;
            o_mpu_64x8_data1_r      <= 16384'b0;

            o_fifo_wr_en0_r         <= 1'b0;
            o_fifo_wdata0_r         <= 512'b0;
            o_fifo_wr_en1_r         <= 1'b0;
            o_fifo_wdata1_r         <= 512'b0;
        end
        else begin
            o_cpu_cmd_done_r    <= o_cpu_cmd_done_w;

            o_rd_en_0_r         <= o_rd_en_0_w;
            o_rd_en_1_r         <= o_rd_en_1_w;
            o_rd_en_2_r         <= o_rd_en_2_w;
            o_rd_en_3_r         <= o_rd_en_3_w;
            o_rd_en_4_r         <= o_rd_en_4_w;
            o_rd_en_5_r         <= o_rd_en_5_w;
            o_rd_en_6_r         <= o_rd_en_6_w;
            o_rd_en_7_r         <= o_rd_en_7_w;
            o_rd_en_8_r         <= o_rd_en_8_w;
            o_rd_en_9_r         <= o_rd_en_9_w;
            o_rd_en_10_r        <= o_rd_en_10_w;
            o_rd_en_11_r        <= o_rd_en_11_w;
            o_rd_en_12_r        <= o_rd_en_12_w;
            o_rd_en_13_r        <= o_rd_en_13_w;
            o_rd_en_14_r        <= o_rd_en_14_w;
            o_rd_en_15_r        <= o_rd_en_15_w;
            o_rd_en_16_r        <= o_rd_en_16_w;
            o_rd_en_17_r        <= o_rd_en_17_w;
            o_rd_en_18_r        <= o_rd_en_18_w;
            o_rd_en_19_r        <= o_rd_en_19_w;
            o_rd_en_20_r        <= o_rd_en_20_w;
            o_rd_en_21_r        <= o_rd_en_21_w;
            o_rd_en_22_r        <= o_rd_en_22_w;
            o_rd_en_23_r        <= o_rd_en_23_w;
            o_rd_en_24_r        <= o_rd_en_24_w;
            o_rd_en_25_r        <= o_rd_en_25_w;
            o_rd_en_26_r        <= o_rd_en_26_w;
            o_rd_en_27_r        <= o_rd_en_27_w;
            o_rd_en_28_r        <= o_rd_en_28_w;
            o_rd_en_29_r        <= o_rd_en_29_w;
            o_rd_en_30_r        <= o_rd_en_30_w;
            o_rd_en_31_r        <= o_rd_en_31_w;

            o_g0_addr_r         <= o_g0_addr_w;
            o_g0_wea_r          <= o_g0_wea_w;
            o_g0_wdata_r        <= o_g0_wdata_w;

            o_g1_addr_r         <= o_g1_addr_w;
            o_g1_wea_r          <= o_g1_wea_w;
            o_g1_wdata_r        <= o_g1_wdata_w;

            o_g2_addr_r         <= o_g2_addr_w;
            o_g2_wea_r          <= o_g2_wea_w;
            o_g2_wdata_r        <= o_g2_wdata_w;

            o_g3_addr_r         <= o_g3_addr_w; 
            o_g3_wea_r          <= o_g3_wea_w;
            o_g3_wdata_r        <= o_g3_wdata_w;

            o_g4_addr_r         <= o_g4_addr_w;
            o_g4_wea_r          <= o_g4_wea_w;
            o_g4_wdata_r        <= o_g4_wdata_w;

            o_g5_addr_r         <= o_g5_addr_w;
            o_g5_wea_r          <= o_g5_wea_w;
            o_g5_wdata_r        <= o_g5_wdata_w;

            o_vpu_data_vald_r   <= o_vpu_data_vald_w;
            o_vpu_data0_r       <= o_vpu_data0_w;
            o_vpu_data1_r       <= o_vpu_data1_w;

            o_mpu_data_vald_r   <= o_mpu_data_vald_w;
            o_mpu_data0_r       <= o_mpu_data0_w;
            o_mpu_data1_r       <= o_mpu_data1_w;
            o_mpu_scale_r       <= o_mpu_scale_w;

            o_mpu_64x8_data_vald_r  <= o_mpu_64x8_data_vald_w;
            o_mpu_64x8_data0_r      <= o_mpu_64x8_data0_w;
            o_mpu_64x8_data1_r      <= o_mpu_64x8_data1_w;

            o_fifo_wr_en0_r         <= o_fifo_wr_en0_w;
            o_fifo_wdata0_r         <= o_fifo_wdata0_w;
            o_fifo_wr_en1_r         <= o_fifo_wr_en1_w;
            o_fifo_wdata1_r         <= o_fifo_wdata1_w;
        end
    end
    
//    ila_3 mux_1 (
//        .clk(i_clk),
//        .probe0(i_fifo_empty_0),
//        .probe1(i_fifo_empty_1),
//        .probe2(i_fifo_empty_2),
//        .probe3(i_fifo_empty_3),
//        .probe4(i_fifo_empty_4),
//        .probe5(i_fifo_empty_5),
//        .probe6(i_fifo_empty_6),
//        .probe7(i_fifo_empty_7),
//        .probe8(i_fifo_empty_8),
//        .probe9(i_fifo_empty_9),
//        .probe10(i_fifo_empty_10),
//        .probe11(i_fifo_empty_11),
//        .probe12(i_fifo_empty_12),
//        .probe13(i_fifo_empty_13),
//        .probe14(i_fifo_empty_14),
//        .probe15(i_fifo_empty_15),
//        .probe16(i_fifo_empty_16),
//        .probe17(i_fifo_empty_17),
//        .probe18(i_fifo_empty_18),
//        .probe19(i_fifo_empty_19),
//        .probe20(i_fifo_empty_20),
//        .probe21(i_fifo_empty_21),
//        .probe22(i_fifo_empty_22),
//        .probe23(i_fifo_empty_23),
//        .probe24(i_fifo_empty_24),
//        .probe25(i_fifo_empty_25),
//        .probe26(i_fifo_empty_26),
//        .probe27(i_fifo_empty_27),
//        .probe28(i_fifo_empty_28),
//        .probe29(i_fifo_empty_29),
//        .probe30(i_fifo_empty_30),
//        .probe31(i_fifo_empty_31),
//        .probe32(chnl_cnt_r),
//        .probe33(fifo_dep_cnt_r),
//        .probe34(fifo_dep_cnt_2_r),
//        .probe35(head_cnt_r),
//        .probe36(in_head_cnt_r),
//        .probe37(r_state_r),
//        .probe38(intra_r_state_r),
//        .probe39(intra_w_state_r),
//        .probe40(o_cpu_cmd_done_r),
//        .probe41(o_vpu_data_vald_r),
//        .probe42(o_mpu_data_vald_r),
//        .probe43(last_flag_k_r),
//        .probe44(last_flag_v_r),
//        .probe45(o_fifo_wr_en0_r),
//        .probe46(o_fifo_wr_en1_r)
        
//    );
    
endmodule