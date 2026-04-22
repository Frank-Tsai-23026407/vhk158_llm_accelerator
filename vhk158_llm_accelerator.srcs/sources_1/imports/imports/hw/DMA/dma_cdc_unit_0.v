// used for cpu command -> core (DMA or Computation core)
module dma_cdc_unit_0 (
    input           i_clk_wr, 
    input           i_clk_rd,
    input           i_rst_n,
    input  [31:0]   i_wr_data,
    output [31:0]   o_rd_data
);

    wire fifo_empty_net;
    wire [31:0] rd_data_net;
    reg fifo_empty_r;
    reg [31:0] wr_data_r;

    assign o_rd_data = fifo_empty_r ? 32'b0 : rd_data_net;

    // // vcs simulation
    // async_fifo_2 aafifo_u2 (
    //     .wr_clk          (i_clk_wr),
    //     .wr_rst_n        (i_rst_n),
    //     .wr_en           (i_wr_data[0]),
    //     .wr_data         (i_wr_data),
    //     .fifo_full       (),
        
    //     .rd_clk          (i_clk_rd),
    //     .rd_rst_n        (i_rst_n),
    //     .rd_en           (1'b1),
    //     .rd_data         (rd_data_net),
    //     .fifo_empty      (fifo_empty_net)
    // );

    // vivado simulation
    fifo_2_wrapper aafifo_u2 (
        .wr_clk          (i_clk_wr),
        .rst             (~i_rst_n),
        .wr_en           (wr_data_r[0]),
        .wr_data         (wr_data_r),
        .fifo_full       (),
        
        .rd_clk          (i_clk_rd),
        .rd_en           (1'b1),
        .rd_data         (rd_data_net),
        .fifo_empty      (fifo_empty_net)
    );

    always @(posedge i_clk_rd or negedge i_rst_n) begin
        if (~i_rst_n) begin
            fifo_empty_r <= 1'b0;
        end
        else begin
            fifo_empty_r <= fifo_empty_net;
        end
    end

    always @(posedge i_clk_wr or negedge i_rst_n) begin
        if (~i_rst_n) begin
            wr_data_r <= 32'b0;
        end
        else begin
            wr_data_r <= i_wr_data;
        end
    end

endmodule