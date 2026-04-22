module dma_cdc_unit_1 (
    input           i_clk_wr, 
    input           i_clk_rd,
    input           i_rst_n,
    input  [31:0]   i_wr_data,
    input           i_flag,
    output [31:0]   o_rd_data
);

    reg rd_data_r, rd_data_w;
    wire [31:0] rd_data;
    reg [31:0] wr_data_r;

    assign o_rd_data = {31'b0, rd_data_r};

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
    //     .rd_data         (rd_data),
    //     .fifo_empty      ()
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
        .rd_data         (rd_data),
        .fifo_empty      ()
    );
    
    always @(*) begin
        if (rd_data[0]) begin
            rd_data_w = 1'b1;
        end
        else if (i_flag) begin
            rd_data_w = 1'b0;
        end
        else begin
            rd_data_w = rd_data_r;
        end
    end

    always @(posedge i_clk_rd or negedge i_rst_n) begin
        if (!i_rst_n) begin
            rd_data_r   <= 1'b0;
        end else begin
            rd_data_r   <= rd_data_w;
        end
    end

    always @(posedge i_clk_wr or negedge i_rst_n) begin
        if (!i_rst_n) begin
            wr_data_r   <= 32'b0;
        end else begin
            wr_data_r   <= i_wr_data;
        end
    end
endmodule