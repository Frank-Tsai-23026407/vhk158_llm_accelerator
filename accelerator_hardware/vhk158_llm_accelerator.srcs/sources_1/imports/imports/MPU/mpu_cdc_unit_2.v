module mpu_cdc_unit_2 (
    input           i_clk_wr, 
    input           i_clk_rd,
    input           i_rst_n,
    input  [31:0]   i_wr_data,
    input           i_flag,
    input           write_enable,
    output [31:0]   o_rd_data
);

    reg  [31:0] rd_data_r, rd_data_w;
    wire [31:0] rd_data;
    reg [31:0] wr_data_r;
    reg write_enable_r;
    //reg [31:0] data_out_r;
    //reg fifo_empty_d1;
    //wire fifo_empty;
    assign o_rd_data = rd_data_r;
    //assign o_rd_data = data_out_r;

//    async_fifo_2 aafifo_u2 (
//        .wr_clk          (i_clk_wr),
//        .wr_rst_n        (i_rst_n),
//        .wr_en           (write_enable),
//        .wr_data         (i_wr_data),
//        .fifo_full       (),
        
//        .rd_clk          (i_clk_rd),
//        .rd_rst_n        (i_rst_n),
//        .rd_en           (1'b1),
//        .rd_data         (rd_data),
//        .fifo_empty      ()
//    );
    
    // vivado simulation
    fifo_2_wrapper mpu_aafifo_u2 (
        .wr_clk          (i_clk_wr),
        .rst             (~i_rst_n),
        .wr_en           (write_enable_r),
        .wr_data         (wr_data_r),
        .fifo_full       (),
        
        .rd_clk          (i_clk_rd),
        .rd_en           (1'b1),
        .rd_data         (rd_data),
        .fifo_empty      ()
    );
    
    always @(*) begin
        if (rd_data != 32'b0) begin
            rd_data_w = rd_data;
        end
        else if (i_flag) begin
            rd_data_w = 32'b0;
        end
        else begin
            rd_data_w = rd_data_r;
        end
    end

    always @(posedge i_clk_rd or negedge i_rst_n) begin
        if (!i_rst_n) begin
            rd_data_r   <= 32'b0;
        end else begin
            rd_data_r   <= rd_data_w;
        end
    end

    always @(posedge i_clk_wr or negedge i_rst_n) begin
        if (!i_rst_n) begin
            wr_data_r   <= 32'b0;
            write_enable_r <= 0;
        end else begin
            wr_data_r   <= i_wr_data;
            write_enable_r <= write_enable; 
        end
    end
    // always @(posedge i_clk_rd or negedge i_rst_n) begin
    //     if (!i_rst_n) begin
    //         data_out_r <= 32'b0;
    //         fifo_empty_d1 <= 1'b1;
    //     end 
    //     else begin
    //         fifo_empty_d1 <= fifo_empty;
    //         if (!fifo_empty_d1) begin
    //             data_out_r <= rd_data;
    //         end 
    //         else if (i_flag) begin
    //             data_out_r <= 32'b0;
    //         end
    //         else begin
    //             data_out_r <= data_out_r;
    //         end
    //     end
    // end
endmodule