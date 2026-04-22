module dma_cdc_top (
    input           i_clk_cpu,
    input           i_clk_memory,
    input           i_clk_core,
    input           i_rst_n,

    input  [31:0]   i_C_REG_cpu_cmd,
    input  [31:0]   i_C_REG_cpu_receive_flag,

    input  [31:0]   i_S_REG_cpu_cmd_done,
    input  [31:0]   i_S_REG_cpu_write_done,
    input  [31:0]   i_S_REG_cpu_prepare_finish,
    input  [31:0]   i_S_REG_cpu_input_token_length,

    output [31:0]   o_C_REG_cpu_cmd_memory,
    output [31:0]   o_C_REG_cpu_cmd_core,

    output [31:0]   o_S_REG_cpu_cmd_done,
    output [31:0]   o_S_REG_cpu_write_done,
    output [31:0]   o_S_REG_cpu_prepare_finish,
    output [31:0]   o_S_REG_cpu_input_token_length
);
    
    dma_cdc_unit_0 dma_cdc_unit_0_u0(
        .i_clk_wr   (i_clk_cpu), 
        .i_clk_rd   (i_clk_memory),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_C_REG_cpu_cmd),
        .o_rd_data  (o_C_REG_cpu_cmd_memory)
    );

    dma_cdc_unit_0 dma_cdc_unit_0_u1(
        .i_clk_wr   (i_clk_cpu), 
        .i_clk_rd   (i_clk_core),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_C_REG_cpu_cmd),
        .o_rd_data  (o_C_REG_cpu_cmd_core)
    );

    dma_cdc_unit_1 dma_cdc_unit_1_u0(
        .i_clk_wr   (i_clk_core), 
        .i_clk_rd   (i_clk_cpu),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_S_REG_cpu_cmd_done),
        .i_flag     (i_C_REG_cpu_receive_flag[0]),
        .o_rd_data  (o_S_REG_cpu_cmd_done)
    );

    dma_cdc_unit_1 dma_cdc_unit_1_u1(
        .i_clk_wr   (i_clk_memory), 
        .i_clk_rd   (i_clk_cpu),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_S_REG_cpu_write_done),
        .i_flag     (i_C_REG_cpu_receive_flag[0]),
        .o_rd_data  (o_S_REG_cpu_write_done)
    );

    dma_cdc_unit_1 dma_cdc_unit_1_u2(
        .i_clk_wr   (i_clk_memory), 
        .i_clk_rd   (i_clk_cpu),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_S_REG_cpu_prepare_finish),
        .i_flag     (i_C_REG_cpu_receive_flag[0]),
        .o_rd_data  (o_S_REG_cpu_prepare_finish)
    );

    dma_cdc_unit_1 dma_cdc_unit_1_u3(
        .i_clk_wr   (i_clk_memory), 
        .i_clk_rd   (i_clk_cpu),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_S_REG_cpu_input_token_length),
        .i_flag     (i_C_REG_cpu_receive_flag[0]),
        .o_rd_data  (o_S_REG_cpu_input_token_length)
    );

endmodule