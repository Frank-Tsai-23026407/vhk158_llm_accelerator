`timescale 1ns / 1ps
// CPU command for dma
`define IDLE                    5'b00000
`define Embedding               5'b00001
`define I_rms                   5'b00010
`define K_proj                  5'b00011
`define V_proj                  5'b00100
`define Q_proj                  5'b00101
`define Attention_local         5'b00110
`define Attention_global        5'b10001
`define O_proj                  5'b00111
`define Postatt_rms             5'b01000
`define Residual0               5'b01001
`define Preffn_rms              5'b01010
`define Mlp_proj                5'b01011
`define Down_proj               5'b01100
`define Postffn_rms             5'b01101
`define Residual1               5'b01110
`define O_rms                   5'b01111
`define L_proj                  5'b10000

`define K_write                 1'b1
`define V_write                 1'b1

`define K_write_state           2'd1
`define V_write_state           2'd2

// HBM channel start address (for pre-sim)
`define chnl_0_start_addr       64'h0_0000_0000
`define chnl_1_start_addr       64'h0_4000_0000
`define chnl_2_start_addr       64'h0_8000_0000
`define chnl_3_start_addr       64'h0_c000_0000
`define chnl_4_start_addr       64'h1_0000_0000
`define chnl_5_start_addr       64'h1_4000_0000
`define chnl_6_start_addr       64'h1_8000_0000
`define chnl_7_start_addr       64'h1_c000_0000
`define chnl_8_start_addr       64'h2_0000_0000
`define chnl_9_start_addr       64'h2_4000_0000
`define chnl_10_start_addr      64'h2_8000_0000
`define chnl_11_start_addr      64'h2_c000_0000
`define chnl_12_start_addr      64'h3_0000_0000
`define chnl_13_start_addr      64'h3_4000_0000
`define chnl_14_start_addr      64'h3_8000_0000
`define chnl_15_start_addr      64'h3_c000_0000
`define chnl_16_start_addr      64'h4_0000_0000
`define chnl_17_start_addr      64'h4_4000_0000
`define chnl_18_start_addr      64'h4_8000_0000
`define chnl_19_start_addr      64'h4_c000_0000
`define chnl_20_start_addr      64'h5_0000_0000
`define chnl_21_start_addr      64'h5_4000_0000
`define chnl_22_start_addr      64'h5_8000_0000
`define chnl_23_start_addr      64'h5_c000_0000
`define chnl_24_start_addr      64'h6_0000_0000
`define chnl_25_start_addr      64'h6_4000_0000
`define chnl_26_start_addr      64'h6_8000_0000
`define chnl_27_start_addr      64'h6_c000_0000
`define chnl_28_start_addr      64'h7_0000_0000
`define chnl_29_start_addr      64'h7_4000_0000
`define chnl_30_start_addr      64'h7_8000_0000
`define chnl_31_start_addr      64'h7_c000_0000

// // HBM channel start address (for FPGA)
// `define chnl_0_start_addr       64'h40_0000_0000
// `define chnl_1_start_addr       64'h40_4000_0000
// `define chnl_2_start_addr       64'h40_8000_0000
// `define chnl_3_start_addr       64'h40_c000_0000
// `define chnl_4_start_addr       64'h41_0000_0000
// `define chnl_5_start_addr       64'h41_4000_0000
// `define chnl_6_start_addr       64'h41_8000_0000
// `define chnl_7_start_addr       64'h41_c000_0000
// `define chnl_8_start_addr       64'h42_0000_0000
// `define chnl_9_start_addr       64'h42_4000_0000
// `define chnl_10_start_addr      64'h42_8000_0000
// `define chnl_11_start_addr      64'h42_c000_0000
// `define chnl_12_start_addr      64'h43_0000_0000
// `define chnl_13_start_addr      64'h43_4000_0000
// `define chnl_14_start_addr      64'h43_8000_0000
// `define chnl_15_start_addr      64'h43_c000_0000
// `define chnl_16_start_addr      64'h44_0000_0000
// `define chnl_17_start_addr      64'h44_4000_0000
// `define chnl_18_start_addr      64'h44_8000_0000
// `define chnl_19_start_addr      64'h44_c000_0000
// `define chnl_20_start_addr      64'h45_0000_0000
// `define chnl_21_start_addr      64'h45_4000_0000
// `define chnl_22_start_addr      64'h45_8000_0000
// `define chnl_23_start_addr      64'h45_c000_0000
// `define chnl_24_start_addr      64'h46_0000_0000
// `define chnl_25_start_addr      64'h46_4000_0000
// `define chnl_26_start_addr      64'h46_8000_0000
// `define chnl_27_start_addr      64'h46_c000_0000
// `define chnl_28_start_addr      64'h47_0000_0000
// `define chnl_29_start_addr      64'h47_4000_0000
// `define chnl_30_start_addr      64'h47_8000_0000
// `define chnl_31_start_addr      64'h47_c000_0000

// read address information (one layer, but for rotary, it is one token)
`define bl_256_spacing          15'd8192
`define token_addr_spacing      9'd320
// `define rms_layer_spacing       13'd2560
`define rms_layer_spacing       15'd10240
`define qk_norm_addr_spacing    10'd512
`define k_proj_addr_spacing     17'd81920
`define v_proj_addr_spacing     17'd81920
`define q_proj_addr_spacing     18'd163840
`define rot_addr_spacing        10'd256
`define key_slice_spacing_1     17'd20480 // for ar handshake unit 1 (need to wait k norm and rotary embedding pretrained weight)
`define key_slice_spacing_2     17'd4096  // for ar handshake unit 2
`define o_proj_addr_spacing     18'd163840
`define mlp_proj_addr_spacing   30'd1638400
`define down_proj_addr_spacing  20'd819200

// write address information
`define k_cache_addr_spacing    30'd131072
`define k_head_spacing          30'd32768
`define v_cache_addr_spacing    30'd131072
`define v_head_spacing          30'd32768
`define k_token_addr_spacing    11'd256
`define v_token_addr_spacing    11'd256

// layer parameter start address 
`define l_proj_start_addr       30'd83886080
`define k_proj_start_addr       30'd167772160
`define v_proj_start_addr       30'd170557440
`define q_proj_start_addr       30'd173342720
`define o_proj_start_addr       30'd178913280
`define mlp_proj_start_addr     30'd184483840
`define down_proj_start_addr    30'd240189440
`define I_rms_start_addr        30'd268042240
// `define Postatt_rms_start_addr  30'd268129280
// `define Preffn_rms_start_addr   30'd268216320
// `define Postffn_rms_start_addr  30'd268303360
`define Postatt_rms_start_addr  30'd268044800
`define Preffn_rms_start_addr   30'd268047360
`define Postffn_rms_start_addr  30'd268049920
`define O_rms_start_addr        30'd268390400
`define knorm_start_addr        30'd268392960
// `define qnorm_start_addr        30'd268401664
`define qnorm_start_addr        30'd268393216
`define sin_rot_start_addr      30'd268410368
`define cos_rot_start_addr      30'd268672512
`define sin_rot_start_addr_glb  30'd268934656
`define cos_rot_start_addr_glb  30'd269196800

`define k_cache_start_addr      30'd269458944
`define v_cache_start_addr      30'd269458944
// `define k_cache_start_addr      30'd402629096
// `define v_cache_start_addr      30'd402629096
// `define v_cache_start_addr      30'd419406312

// read address counts
`define embedding_ar_cnt        14'd0
`define i_rms_ar_cnt            14'd0   
`define k_proj_ar_cnt           14'd9
`define o_proj_ar_cnt           14'd19
`define mlp_proj_ar_cnt         14'd199
`define down_proj_ar_cnt        14'd99
`define l_proj_ar_cnt           14'd10239

// read address burst length    
`define one_ar_bl               8'd255
`define embedding_ar_bl         8'd9
`define i_rms_ar_bl             8'd79
`define key_2rnd_ar_bl          8'd127
`define knorm_ar_bl             8'd7
`define qnorm_ar_bl             8'd7
`define rot_ar_bl               8'd7

// write address counts
`define k_cache_aw_cnt          2'd3
`define v_cache_aw_cnt          2'd3      

// write address burst length
`define key_aw_bl               8'd7
`define value_aw_bl             8'd7

// write data count
`define k_write_data_cnt        4'd15
`define v_write_data_cnt        4'd15

// fifo depth counter   
`define embedding_fifo_dep      13'd4

// ram group depth  
`define one_group_depth         6'd39
`define key_group_depth         6'd15
`define query_group_depth       6'd31