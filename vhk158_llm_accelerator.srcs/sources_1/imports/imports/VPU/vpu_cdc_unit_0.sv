module vpu_cdc_unit_0 (
    input           i_clk_wr, 
    input           i_clk_rd,
    input           i_rst_n,
    input  [31:0]   i_wr_data,
    output [31:0]   o_rd_data
);

    logic fifo_empty_net;
    logic [31:0] rd_data_net;
    logic fifo_empty_net_reg;
    reg [31:0] wr_data_r;

    always@(posedge i_clk_rd or negedge i_rst_n) begin
        if(~i_rst_n) begin
            fifo_empty_net_reg <= 0;
        end
        else begin
            fifo_empty_net_reg <= fifo_empty_net;
        end
    end
    assign o_rd_data = fifo_empty_net_reg ? 32'b0 : rd_data_net;
    //assign o_rd_data = fifo_empty_net ? 32'b0 : rd_data_net;
    //assign o_rd_data = rd_data_net[0] ? rd_data_net : 32'b0;
    
    // vivado simulation
    fifo_2_wrapper vpu_aafifo_u0 (
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

    always @(posedge i_clk_wr or negedge i_rst_n) begin
        if (!i_rst_n) begin
            wr_data_r   <= 32'b0;
        end else begin
            wr_data_r   <= i_wr_data;
        end
    end
//    async_fifo_2 aafifo_u2 (
//        .wr_clk          (i_clk_wr),
//        .wr_rst_n        (i_rst_n),
//        .wr_en           (i_wr_data[0]),
//        .wr_data         (i_wr_data),
//        .fifo_full       (),
        
//        .rd_clk          (i_clk_rd),
//        .rd_rst_n        (i_rst_n),
//        .rd_en           (1'b1),
//        .rd_data         (rd_data_net),
//        .fifo_empty      (fifo_empty_net)
//    );

endmodule