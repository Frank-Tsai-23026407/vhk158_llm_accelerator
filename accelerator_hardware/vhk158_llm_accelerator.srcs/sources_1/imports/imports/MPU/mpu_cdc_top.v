module mpu_cdc_top (
    input           i_clk_cpu,
    input           i_clk_core,
    input           i_rst_n,

    input  [31:0]   i_C_REG_mfu_mode_config,
    input  [31:0]   i_C_REG_output_id_receive_flag,

    input  [31:0]   i_S_REG_output_id,
    input  [31:0]   i_S_REG_output_id_done,

    input           i_write_enable,

    output [31:0]   o_C_REG_mfu_mode_config,
    //output [31:0]   o_C_REG_output_id_receive_flag,

    output [31:0]   o_S_REG_output_id,
    output [31:0]   o_S_REG_output_id_done
);
    
    mpu_cdc_unit_0 mpu_cdc_unit_0_u0(
        .i_clk_wr   (i_clk_cpu), 
        .i_clk_rd   (i_clk_core),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_C_REG_mfu_mode_config),
        .o_rd_data  (o_C_REG_mfu_mode_config)
    );

    // dma_cdc_unit_0 dma_cdc_unit_0_u1(
    //     .i_clk_wr   (i_clk_cpu), 
    //     .i_clk_rd   (i_clk_core),
    //     .i_rst_n    (i_rst_n),
    //     .i_wr_data  (i_C_REG_output_id_receive_flag),
    //     .o_rd_data  (o_C_REG_output_id_receive_flag)
    // );

    mpu_cdc_unit_2 mpu_cdc_unit_2_u0(
        .i_clk_wr   (i_clk_core), 
        .i_clk_rd   (i_clk_cpu),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_S_REG_output_id),
        .i_flag     (i_C_REG_output_id_receive_flag[0]),
        .write_enable(i_write_enable),
        .o_rd_data  (o_S_REG_output_id)
    );

    mpu_cdc_unit_1 mpu_cdc_unit_1_u1(
        .i_clk_wr   (i_clk_core), 
        .i_clk_rd   (i_clk_cpu),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_S_REG_output_id_done),
        .i_flag     (i_C_REG_output_id_receive_flag[0]),
        .o_rd_data  (o_S_REG_output_id_done)
    );


endmodule