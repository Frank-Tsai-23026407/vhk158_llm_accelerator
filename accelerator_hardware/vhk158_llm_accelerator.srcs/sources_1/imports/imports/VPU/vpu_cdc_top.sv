module vpu_cdc_top (
    input           i_clk_cpu,
    input           i_clk_core,
    input           i_rst_n,

    input  [31:0]   i_C_REG_VFU_MODE_CONFIG,

    output [31:0]   o_C_REG_VFU_MODE_CONFIG
);

vpu_cdc_unit_0 vpu_cdc_unit_0_u0(
        .i_clk_wr   (i_clk_cpu), 
        .i_clk_rd   (i_clk_core),
        .i_rst_n    (i_rst_n),
        .i_wr_data  (i_C_REG_VFU_MODE_CONFIG),
        .o_rd_data  (o_C_REG_VFU_MODE_CONFIG)
    );

endmodule