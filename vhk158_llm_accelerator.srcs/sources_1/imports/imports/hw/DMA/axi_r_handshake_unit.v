module axi_r_handshake_unit (
    input           i_clk_memory,
    input           i_clk_core,
    input           i_rst_n,

    // axi read data ports
    output          o_axi_rready,
    input           i_axi_rvalid,
    input   [255:0] i_axi_rdata,

    // fifo read ports
    input           i_rd_en,
    output  [511:0] o_rd_data,
    output          o_fifo_empty,
    output          o_fifo_almost_empty
);

    wire            fifo_full_net;
    wire            wr_en_net;
    wire [255:0]    wr_data1_net;
    wire [63:0]     wr_data2_net;

    // output assignment
    assign      o_axi_rready     = ~fifo_full_net;

    // instantiation connection
    assign      wr_en_net       = i_axi_rvalid;
    assign      wr_data1_net    = i_axi_rdata;
    // assign      wr_data2_net    = i_axi_rdata[159:128];

    // // vcs simulation
    // async_fifo_1 aafifo_u1 (
    //     .wr_clk             (i_clk_memory),
    //     .wr_rst_n           (i_rst_n),
    //     .wr_en              (wr_en_net),
    //     .wr_data            (wr_data1_net),
    //     .fifo_full          (fifo_full_net),

    //     .rd_clk             (i_clk_core),
    //     .rd_rst_n           (i_rst_n),
    //     .rd_en              (i_rd_en),
    //     .rd_data            (o_rd_data),
    //     .fifo_empty         (o_fifo_empty),
    //     .fifo_almost_empty  (o_fifo_almost_empty)
    // );

    // vivado simulation
    fifo_1_wrapper aafifo_u1 (
        .wr_clk             (i_clk_memory),
        .rst                (~i_rst_n),
        .wr_en              (wr_en_net),
        .wr_data            (wr_data1_net),
        .fifo_full          (fifo_full_net),

        .rd_clk             (i_clk_core),
        .rd_en              (i_rd_en),
        .rd_data            (o_rd_data),
        .fifo_empty         (o_fifo_empty),
        .fifo_almost_empty  (o_fifo_almost_empty)
    );
    
endmodule