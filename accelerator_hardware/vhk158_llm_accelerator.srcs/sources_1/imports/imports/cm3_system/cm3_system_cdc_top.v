module cm3_system_cdc_top (
    input           i_clk_memory,
    input           i_clk_core,
    input           i_rst_n,

    input  [`DIC_NUM_LOG-1:0]   i_MPU_DMA_max_id,
    input     i_MPU_DMA_max_id_valid,

    output [`DIC_NUM_LOG:0]   o_MPU_DMA_max_id,
    output    o_MPU_DMA_max_id_valid
);
    wire [31:0] o_rd_data;
    wire [31:0] o_rd_data1;

    assign o_MPU_DMA_max_id = o_rd_data[`DIC_NUM_LOG:0];
    assign o_MPU_DMA_max_id_valid = o_rd_data1[0];

    cm3_system_cdc_unit_0 u_cm3_system_cdc_unit_0 (
        .i_clk_wr(i_clk_core), 
        .i_clk_rd(i_clk_memory),
        .i_rst_n(i_rst_n),
        .i_wr_data({14'd0, i_MPU_DMA_max_id}),
        .write_enable(i_MPU_DMA_max_id_valid),
        .o_rd_data(o_rd_data)
    );

    cm3_system_cdc_unit_0 u1_cm3_system_cdc_unit_0 (
        .i_clk_wr(i_clk_core), 
        .i_clk_rd(i_clk_memory),
        .i_rst_n(i_rst_n),
        .i_wr_data({31'd0, i_MPU_DMA_max_id_valid}),
        .write_enable(i_MPU_DMA_max_id_valid),
        .o_rd_data(o_rd_data1)
    );


endmodule