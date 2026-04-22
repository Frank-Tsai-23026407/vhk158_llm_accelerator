module axi_w_handshake_unit (
    input               i_clk_memory,
    input               i_clk_core,
    input               i_rst_n,

    input               i_cpu_cmd_vald,
    input  [4:0]        i_cpu_cmd,
    input  [19:0]       i_token_cnt,
    output              o_cpu_write_done,

    // axi write data ports
    input               i_axi_wready_00,
    output              o_axi_wvalid_00,
    output [255:0]      o_axi_wdata_00,
    output              o_axi_wlast_00,
    output [31:0]       o_axi_wstrb_00,

    input               i_axi_wready_01,
    output              o_axi_wvalid_01,
    output [255:0]      o_axi_wdata_01,
    output              o_axi_wlast_01,
    output [31:0]       o_axi_wstrb_01,

    input               i_axi_wready_02,
    output              o_axi_wvalid_02,
    output [255:0]      o_axi_wdata_02,
    output              o_axi_wlast_02,
    output [31:0]       o_axi_wstrb_02,

    input               i_axi_wready_03,
    output              o_axi_wvalid_03,
    output [255:0]      o_axi_wdata_03,
    output              o_axi_wlast_03,
    output [31:0]       o_axi_wstrb_03,

    input               i_axi_wready_04,
    output              o_axi_wvalid_04,
    output [255:0]      o_axi_wdata_04,
    output              o_axi_wlast_04,
    output [31:0]       o_axi_wstrb_04,

    input               i_axi_wready_05,
    output              o_axi_wvalid_05,
    output [255:0]      o_axi_wdata_05,
    output              o_axi_wlast_05,
    output [31:0]       o_axi_wstrb_05,

    input               i_axi_wready_06,
    output              o_axi_wvalid_06,
    output [255:0]      o_axi_wdata_06,
    output              o_axi_wlast_06,
    output [31:0]       o_axi_wstrb_06,

    input               i_axi_wready_07,
    output              o_axi_wvalid_07,
    output [255:0]      o_axi_wdata_07,
    output              o_axi_wlast_07,
    output [31:0]       o_axi_wstrb_07,

    input               i_axi_wready_08,
    output              o_axi_wvalid_08,
    output [255:0]      o_axi_wdata_08,
    output              o_axi_wlast_08,
    output [31:0]       o_axi_wstrb_08,

    input               i_axi_wready_09,
    output              o_axi_wvalid_09,
    output [255:0]      o_axi_wdata_09,
    output              o_axi_wlast_09,
    output [31:0]       o_axi_wstrb_09,

    input               i_axi_wready_10,
    output              o_axi_wvalid_10,
    output [255:0]      o_axi_wdata_10,
    output              o_axi_wlast_10,
    output [31:0]       o_axi_wstrb_10,

    input               i_axi_wready_11,
    output              o_axi_wvalid_11,
    output [255:0]      o_axi_wdata_11,
    output              o_axi_wlast_11,
    output [31:0]       o_axi_wstrb_11,

    input               i_axi_wready_12,
    output              o_axi_wvalid_12,
    output [255:0]      o_axi_wdata_12,
    output              o_axi_wlast_12,
    output [31:0]       o_axi_wstrb_12,

    input               i_axi_wready_13,
    output              o_axi_wvalid_13,
    output [255:0]      o_axi_wdata_13,
    output              o_axi_wlast_13,
    output [31:0]       o_axi_wstrb_13,

    input               i_axi_wready_14,
    output              o_axi_wvalid_14,
    output [255:0]      o_axi_wdata_14,
    output              o_axi_wlast_14,
    output [31:0]       o_axi_wstrb_14,

    input               i_axi_wready_15,
    output              o_axi_wvalid_15,
    output [255:0]      o_axi_wdata_15,
    output              o_axi_wlast_15,
    output [31:0]       o_axi_wstrb_15,

    // fifo write ports
    input               i_wr_en,
    input   [511:0]     i_wr_data,
    output              o_fifo_full
);

    integer i;

    wire [255:0]     fifo_rd_data;
    wire             fifo_empty_net;

    // input register
    reg         i_cpu_cmd_vald_r;
    reg [4:0]   i_cpu_cmd_r;

    // main register
    reg [1:0]   w_state_r, w_state_w;
    reg [4:0]   w_cmd_cnt_r, w_cmd_cnt_w;
    reg         flag_r, flag_w;
    reg         fifo_rd_en_r, fifo_rd_en_w;
    reg         data_delay_flag_r [0:1], data_delay_flag_w [0:1], data_delay_flag2_r [0:1], data_delay_flag2_w [0:1];
    reg [2:0]   wlast_cnt_r, wlast_cnt_w;

    // output register
    reg         o_axi_wvalid_00_r, o_axi_wvalid_00_w;
    reg         o_axi_wvalid_01_r, o_axi_wvalid_01_w;
    reg         o_axi_wvalid_02_r, o_axi_wvalid_02_w;
    reg         o_axi_wvalid_03_r, o_axi_wvalid_03_w;
    reg         o_axi_wvalid_04_r, o_axi_wvalid_04_w;
    reg         o_axi_wvalid_05_r, o_axi_wvalid_05_w;
    reg         o_axi_wvalid_06_r, o_axi_wvalid_06_w;
    reg         o_axi_wvalid_07_r, o_axi_wvalid_07_w;
    reg         o_axi_wvalid_08_r, o_axi_wvalid_08_w;
    reg         o_axi_wvalid_09_r, o_axi_wvalid_09_w;
    reg         o_axi_wvalid_10_r, o_axi_wvalid_10_w;
    reg         o_axi_wvalid_11_r, o_axi_wvalid_11_w;
    reg         o_axi_wvalid_12_r, o_axi_wvalid_12_w;
    reg         o_axi_wvalid_13_r, o_axi_wvalid_13_w;
    reg         o_axi_wvalid_14_r, o_axi_wvalid_14_w;
    reg         o_axi_wvalid_15_r, o_axi_wvalid_15_w;

    reg         o_axi_wlast_r, o_axi_wlast_w;

    reg [255:0] o_axi_wdata_r, o_axi_wdata_w;

    reg         o_cpu_write_done_r, o_cpu_write_done_w;

    // write fifo instantiation
    // // vcs simulation
    // async_fifo_3 aafifo_u3 (
    //     .wr_clk          (i_clk_core),
    //     .wr_rst_n        (i_rst_n),
    //     .wr_en           (i_wr_en),
    //     .wr_data         (i_wr_data),
    //     .fifo_full       (o_fifo_full),
        
    //     .rd_clk          (i_clk_memory),
    //     .rd_rst_n        (i_rst_n),
    //     .rd_en           (fifo_rd_en_r),
    //     .rd_data         (fifo_rd_data),
    //     .fifo_empty      (fifo_empty_net)
    // );

    // write fifo instantiation
    // vivado simulation
    fifo_3_wrapper aafifo_u3 (
        .wr_clk          (i_clk_core),
        .rst             (~i_rst_n),
        .wr_en           (i_wr_en),
        .wr_data         (i_wr_data),
        .fifo_full       (o_fifo_full),
        
        .rd_clk          (i_clk_memory),
        .rd_en           (fifo_rd_en_r),
        .rd_data         (fifo_rd_data),
        .fifo_empty      (fifo_empty_net)
    );

    // output assignment
    assign o_axi_wdata_00 = o_axi_wdata_r;
    assign o_axi_wdata_01 = o_axi_wdata_r;
    assign o_axi_wdata_02 = o_axi_wdata_r;
    assign o_axi_wdata_03 = o_axi_wdata_r;
    assign o_axi_wdata_04 = o_axi_wdata_r;
    assign o_axi_wdata_05 = o_axi_wdata_r;
    assign o_axi_wdata_06 = o_axi_wdata_r;
    assign o_axi_wdata_07 = o_axi_wdata_r;
    assign o_axi_wdata_08 = o_axi_wdata_r;
    assign o_axi_wdata_09 = o_axi_wdata_r;
    assign o_axi_wdata_10 = o_axi_wdata_r;
    assign o_axi_wdata_11 = o_axi_wdata_r;
    assign o_axi_wdata_12 = o_axi_wdata_r;
    assign o_axi_wdata_13 = o_axi_wdata_r;
    assign o_axi_wdata_14 = o_axi_wdata_r;
    assign o_axi_wdata_15 = o_axi_wdata_r;

    assign o_axi_wvalid_00 = o_axi_wvalid_00_r;
    assign o_axi_wvalid_01 = o_axi_wvalid_01_r;
    assign o_axi_wvalid_02 = o_axi_wvalid_02_r;
    assign o_axi_wvalid_03 = o_axi_wvalid_03_r;
    assign o_axi_wvalid_04 = o_axi_wvalid_04_r;
    assign o_axi_wvalid_05 = o_axi_wvalid_05_r;
    assign o_axi_wvalid_06 = o_axi_wvalid_06_r;
    assign o_axi_wvalid_07 = o_axi_wvalid_07_r;
    assign o_axi_wvalid_08 = o_axi_wvalid_08_r;
    assign o_axi_wvalid_09 = o_axi_wvalid_09_r;
    assign o_axi_wvalid_10 = o_axi_wvalid_10_r;
    assign o_axi_wvalid_11 = o_axi_wvalid_11_r;
    assign o_axi_wvalid_12 = o_axi_wvalid_12_r;
    assign o_axi_wvalid_13 = o_axi_wvalid_13_r;
    assign o_axi_wvalid_14 = o_axi_wvalid_14_r;
    assign o_axi_wvalid_15 = o_axi_wvalid_15_r;

    assign o_axi_wlast_00 = o_axi_wlast_r;
    assign o_axi_wlast_01 = o_axi_wlast_r;
    assign o_axi_wlast_02 = o_axi_wlast_r;
    assign o_axi_wlast_03 = o_axi_wlast_r;
    assign o_axi_wlast_04 = o_axi_wlast_r;
    assign o_axi_wlast_05 = o_axi_wlast_r;
    assign o_axi_wlast_06 = o_axi_wlast_r;
    assign o_axi_wlast_07 = o_axi_wlast_r;
    assign o_axi_wlast_08 = o_axi_wlast_r;
    assign o_axi_wlast_09 = o_axi_wlast_r;
    assign o_axi_wlast_10 = o_axi_wlast_r;
    assign o_axi_wlast_11 = o_axi_wlast_r;
    assign o_axi_wlast_12 = o_axi_wlast_r;
    assign o_axi_wlast_13 = o_axi_wlast_r;
    assign o_axi_wlast_14 = o_axi_wlast_r;
    assign o_axi_wlast_15 = o_axi_wlast_r;

    assign o_axi_wstrb_00 = 32'hffffffff;
    assign o_axi_wstrb_01 = 32'hffffffff;
    assign o_axi_wstrb_02 = 32'hffffffff;
    assign o_axi_wstrb_03 = 32'hffffffff;
    assign o_axi_wstrb_04 = 32'hffffffff;
    assign o_axi_wstrb_05 = 32'hffffffff;
    assign o_axi_wstrb_06 = 32'hffffffff;
    assign o_axi_wstrb_07 = 32'hffffffff;
    assign o_axi_wstrb_08 = 32'hffffffff;
    assign o_axi_wstrb_09 = 32'hffffffff;
    assign o_axi_wstrb_10 = 32'hffffffff;
    assign o_axi_wstrb_11 = 32'hffffffff;
    assign o_axi_wstrb_12 = 32'hffffffff;
    assign o_axi_wstrb_13 = 32'hffffffff;
    assign o_axi_wstrb_14 = 32'hffffffff;
    assign o_axi_wstrb_15 = 32'hffffffff;

    assign o_cpu_write_done = o_cpu_write_done_r;

    // write address channel FSM
    always @(*) begin
        case (w_state_r)
            2'b0 : begin
                if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `K_proj) begin
                    w_state_w = `K_write_state;
                    o_cpu_write_done_w = 1'b0;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `V_proj) begin
                    w_state_w = `V_write_state;
                    o_cpu_write_done_w = 1'b0;
                end
                else begin
                    w_state_w = w_state_r;
                    o_cpu_write_done_w = 1'b0;
                end
            end
            `K_write_state : begin
                if (w_state_r == `K_write_state && fifo_rd_en_r && ~fifo_empty_net && w_cmd_cnt_r == 5'd31) begin
                    w_state_w = 2'b0;
                    o_cpu_write_done_w = 1'b1;
                end
                else begin
                    w_state_w = w_state_r;
                    o_cpu_write_done_w = 1'b0;
                end
            end
            `V_write_state : begin
                if (w_state_r == `V_write_state && fifo_rd_en_r && ~fifo_empty_net && w_cmd_cnt_r == 5'd31) begin
                    w_state_w = 2'b0;
                    o_cpu_write_done_w = 1'b1;
                end
                else begin
                    w_state_w = w_state_r;
                    o_cpu_write_done_w = 1'b0;
                end
            end
            default: begin
                w_state_w = 2'b0;
                o_cpu_write_done_w = 1'b0;
            end
        endcase
    end

    always @(*) begin
        if ((w_state_r == `K_write_state || w_state_r == `V_write_state) && flag_r == 1'b0 && fifo_rd_en_r && !fifo_empty_net) begin
            flag_w = 1'b1;
        end
        else if (w_state_r == `K_write_state && flag_r == 1'b1) begin
            if (i_token_cnt[2:0] == 3'd0 && i_axi_wready_00 && o_axi_wvalid_00_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd1 && i_axi_wready_01 && o_axi_wvalid_01_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd2 && i_axi_wready_02 && o_axi_wvalid_02_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd3 && i_axi_wready_03 && o_axi_wvalid_03_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd4 && i_axi_wready_04 && o_axi_wvalid_04_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd5 && i_axi_wready_05 && o_axi_wvalid_05_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd6 && i_axi_wready_06 && o_axi_wvalid_06_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd7 && i_axi_wready_07 && o_axi_wvalid_07_r) begin
                flag_w = 1'b0;
            end
            else begin
                flag_w = flag_r;
            end
        end
        else if (w_state_r == `V_write_state && flag_r == 1'b1) begin
            if (i_token_cnt[2:0] == 3'd0 && i_axi_wready_08 && o_axi_wvalid_08_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd1 && i_axi_wready_09 && o_axi_wvalid_09_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd2 && i_axi_wready_10 && o_axi_wvalid_10_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd3 && i_axi_wready_11 && o_axi_wvalid_11_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd4 && i_axi_wready_12 && o_axi_wvalid_12_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd5 && i_axi_wready_13 && o_axi_wvalid_13_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd6 && i_axi_wready_14 && o_axi_wvalid_14_r) begin
                flag_w = 1'b0;
            end
            else if (i_token_cnt[2:0] == 3'd7 && i_axi_wready_15 && o_axi_wvalid_15_r) begin
                flag_w = 1'b0;
            end
            else begin
                flag_w = flag_r;
            end
        end
        else if (w_state_r == 1'b0) begin
            flag_w = 1'b0;
        end
        else begin
            flag_w = flag_r;
        end
    end

    always @(*) begin
        if (w_state_r == `K_write_state && fifo_rd_en_r && !fifo_empty_net) begin
            data_delay_flag_w[0] = 1'b1;
        end
        else begin
            data_delay_flag_w[0] = 1'b0;
        end
    end

    always @(*) begin
        if (w_state_r == `V_write_state && fifo_rd_en_r && !fifo_empty_net) begin
            data_delay_flag2_w[0] = 1'b1;
        end
        else begin
            data_delay_flag2_w[0] = 1'b0;
        end
    end

    always @(*) begin
        if ((w_state_r == `K_write_state || w_state_r == `V_write_state) && fifo_rd_en_r && ~fifo_empty_net) begin
            w_cmd_cnt_w = w_cmd_cnt_r + 1'b1;
        end
        else begin
            w_cmd_cnt_w = w_cmd_cnt_r;
        end
    end

    always @(*) begin
        if ((w_state_r == `K_write_state || w_state_r == `V_write_state) && flag_r == 1'b0 && fifo_rd_en_r && !fifo_empty_net) begin
            fifo_rd_en_w = 1'b0;
        end
        else if ((w_state_r == `K_write_state || w_state_r == `V_write_state) && flag_r == 1'b0 && !fifo_empty_net) begin
            fifo_rd_en_w = 1'b1;
        end
        else begin
            fifo_rd_en_w = fifo_rd_en_r;
        end
    end

    always @(*) begin
        if (data_delay_flag_r[1] || data_delay_flag2_r[1]) begin
            o_axi_wdata_w = fifo_rd_data;
        end
        else begin
            o_axi_wdata_w = o_axi_wdata_r;
        end
    end

    always @(*) begin
        if (data_delay_flag_r[1] || data_delay_flag2_r[1]) begin
            wlast_cnt_w = wlast_cnt_r + 1'b1;
        end
        else begin
            wlast_cnt_w = wlast_cnt_r;
        end
    end

    always @(*) begin
        if ((data_delay_flag_r[1] || data_delay_flag2_r[1]) && wlast_cnt_r == 3'd0) begin
            o_axi_wlast_w = 1'b0;
        end
        else if ((data_delay_flag_r[1] || data_delay_flag2_r[1]) && wlast_cnt_r == 3'd7) begin
            o_axi_wlast_w = 1'b1;
        end
        else begin
            o_axi_wlast_w = o_axi_wlast_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd0 && i_axi_wready_00 && o_axi_wvalid_00_r) begin
            o_axi_wvalid_00_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd0 && data_delay_flag_r[1]) begin
            o_axi_wvalid_00_w = 1'b1;
        end
        else begin
            o_axi_wvalid_00_w = o_axi_wvalid_00_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd1 && i_axi_wready_01 && o_axi_wvalid_01_r) begin
            o_axi_wvalid_01_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd1 && data_delay_flag_r[1]) begin
            o_axi_wvalid_01_w = 1'b1;
        end
        else begin
            o_axi_wvalid_01_w = o_axi_wvalid_01_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd2 && i_axi_wready_02 && o_axi_wvalid_02_r) begin
            o_axi_wvalid_02_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd2 && data_delay_flag_r[1]) begin
            o_axi_wvalid_02_w = 1'b1;
        end
        else begin
            o_axi_wvalid_02_w = o_axi_wvalid_02_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd3 && i_axi_wready_03 && o_axi_wvalid_03_r) begin
            o_axi_wvalid_03_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd3 && data_delay_flag_r[1]) begin
            o_axi_wvalid_03_w = 1'b1;
        end
        else begin
            o_axi_wvalid_03_w = o_axi_wvalid_03_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd4 && i_axi_wready_04 && o_axi_wvalid_04_r) begin
            o_axi_wvalid_04_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd4 && data_delay_flag_r[1]) begin
            o_axi_wvalid_04_w = 1'b1;
        end
        else begin
            o_axi_wvalid_04_w = o_axi_wvalid_04_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd5 && i_axi_wready_05 && o_axi_wvalid_05_r) begin
            o_axi_wvalid_05_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd5 && data_delay_flag_r[1]) begin
            o_axi_wvalid_05_w = 1'b1;
        end
        else begin
            o_axi_wvalid_05_w = o_axi_wvalid_05_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd6 && i_axi_wready_06 && o_axi_wvalid_06_r) begin
            o_axi_wvalid_06_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd6 && data_delay_flag_r[1]) begin
            o_axi_wvalid_06_w = 1'b1;
        end
        else begin
            o_axi_wvalid_06_w = o_axi_wvalid_06_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd7 && i_axi_wready_07 && o_axi_wvalid_07_r) begin
            o_axi_wvalid_07_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd7 && data_delay_flag_r[1]) begin
            o_axi_wvalid_07_w = 1'b1;
        end
        else begin
            o_axi_wvalid_07_w = o_axi_wvalid_07_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd0 && i_axi_wready_08 && o_axi_wvalid_08_r) begin
            o_axi_wvalid_08_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd0 && data_delay_flag2_r[1]) begin
            o_axi_wvalid_08_w = 1'b1;
        end
        else begin
            o_axi_wvalid_08_w = o_axi_wvalid_08_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd1 && i_axi_wready_09 && o_axi_wvalid_09_r) begin
            o_axi_wvalid_09_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd1 && data_delay_flag2_r[1]) begin
            o_axi_wvalid_09_w = 1'b1;
        end
        else begin
            o_axi_wvalid_09_w = o_axi_wvalid_09_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd2 && i_axi_wready_10 && o_axi_wvalid_10_r) begin
            o_axi_wvalid_10_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd2 && data_delay_flag2_r[1]) begin
            o_axi_wvalid_10_w = 1'b1;
        end
        else begin
            o_axi_wvalid_10_w = o_axi_wvalid_10_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd3 && i_axi_wready_11 && o_axi_wvalid_11_r) begin
            o_axi_wvalid_11_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd3 && data_delay_flag2_r[1]) begin
            o_axi_wvalid_11_w = 1'b1;
        end
        else begin
            o_axi_wvalid_11_w = o_axi_wvalid_11_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd4 && i_axi_wready_12 && o_axi_wvalid_12_r) begin
            o_axi_wvalid_12_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd4 && data_delay_flag2_r[1]) begin
            o_axi_wvalid_12_w = 1'b1;
        end
        else begin
            o_axi_wvalid_12_w = o_axi_wvalid_12_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd5 && i_axi_wready_13 && o_axi_wvalid_13_r) begin
            o_axi_wvalid_13_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd5 && data_delay_flag2_r[1]) begin
            o_axi_wvalid_13_w = 1'b1;
        end
        else begin
            o_axi_wvalid_13_w = o_axi_wvalid_13_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd6 && i_axi_wready_14 && o_axi_wvalid_14_r) begin
            o_axi_wvalid_14_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd6 && data_delay_flag2_r[1]) begin
            o_axi_wvalid_14_w = 1'b1;
        end
        else begin
            o_axi_wvalid_14_w = o_axi_wvalid_14_r;
        end
    end

    always @(*) begin
        if (i_token_cnt[2:0] == 3'd7 && i_axi_wready_15 && o_axi_wvalid_15_r) begin
            o_axi_wvalid_15_w = 1'b0;
        end
        else if (i_token_cnt[2:0] == 3'd7 && data_delay_flag2_r[1]) begin
            o_axi_wvalid_15_w = 1'b1;
        end
        else begin
            o_axi_wvalid_15_w = o_axi_wvalid_15_r;
        end
    end

    // main D-flip-flop
    always @(posedge i_clk_memory or negedge i_rst_n) begin
        if (~i_rst_n) begin
            w_state_r       <= 2'b0;
            w_cmd_cnt_r     <= 5'b0;
            fifo_rd_en_r    <= 1'b0;
            flag_r          <= 2'b0;
            wlast_cnt_r     <= 3'b0;
            for (i = 0; i < 2; i = i + 1) begin
                data_delay_flag_r[i]    <= 1'b0;
                data_delay_flag2_r[i]   <= 1'b0;
            end
        end
        else begin
            w_state_r       <= w_state_w;
            w_cmd_cnt_r     <= w_cmd_cnt_w;
            fifo_rd_en_r    <= fifo_rd_en_w;
            flag_r          <= flag_w;
            wlast_cnt_r     <= wlast_cnt_w;
            data_delay_flag_r[0]    <= data_delay_flag_w[0];
            data_delay_flag_r[1]    <= data_delay_flag_r[0];
            data_delay_flag2_r[0]   <= data_delay_flag2_w[0];
            data_delay_flag2_r[1]   <= data_delay_flag2_r[0];
        end
    end

    // input D-flip-flop
    always @(posedge i_clk_memory or negedge i_rst_n) begin
        if (~i_rst_n) begin
            i_cpu_cmd_vald_r <= 1'b0;
            i_cpu_cmd_r      <= 5'b0;
        end
        else begin
            i_cpu_cmd_vald_r <= i_cpu_cmd_vald;
            i_cpu_cmd_r      <= i_cpu_cmd;
        end
    end

    // output D-flip-flop
    always @(posedge i_clk_memory or negedge i_rst_n) begin
        if (~i_rst_n) begin
            o_axi_wvalid_00_r   <= 1'b0;
            o_axi_wvalid_01_r   <= 1'b0;
            o_axi_wvalid_02_r   <= 1'b0;
            o_axi_wvalid_03_r   <= 1'b0;
            o_axi_wvalid_04_r   <= 1'b0;
            o_axi_wvalid_05_r   <= 1'b0;
            o_axi_wvalid_06_r   <= 1'b0;
            o_axi_wvalid_07_r   <= 1'b0;
            o_axi_wvalid_08_r   <= 1'b0;
            o_axi_wvalid_09_r   <= 1'b0;
            o_axi_wvalid_10_r   <= 1'b0;
            o_axi_wvalid_11_r   <= 1'b0;
            o_axi_wvalid_12_r   <= 1'b0;
            o_axi_wvalid_13_r   <= 1'b0;
            o_axi_wvalid_14_r   <= 1'b0;
            o_axi_wvalid_15_r   <= 1'b0;
            o_axi_wlast_r       <= 1'b0;

            o_axi_wdata_r       <= 256'b0;
            o_cpu_write_done_r  <= 1'b0;
        end
        else begin
            o_axi_wvalid_00_r   <= o_axi_wvalid_00_w;
            o_axi_wvalid_01_r   <= o_axi_wvalid_01_w;
            o_axi_wvalid_02_r   <= o_axi_wvalid_02_w;
            o_axi_wvalid_03_r   <= o_axi_wvalid_03_w;
            o_axi_wvalid_04_r   <= o_axi_wvalid_04_w;
            o_axi_wvalid_05_r   <= o_axi_wvalid_05_w;
            o_axi_wvalid_06_r   <= o_axi_wvalid_06_w;
            o_axi_wvalid_07_r   <= o_axi_wvalid_07_w;
            o_axi_wvalid_08_r   <= o_axi_wvalid_08_w;
            o_axi_wvalid_09_r   <= o_axi_wvalid_09_w;
            o_axi_wvalid_10_r   <= o_axi_wvalid_10_w;
            o_axi_wvalid_11_r   <= o_axi_wvalid_11_w;
            o_axi_wvalid_12_r   <= o_axi_wvalid_12_w;
            o_axi_wvalid_13_r   <= o_axi_wvalid_13_w;
            o_axi_wvalid_14_r   <= o_axi_wvalid_14_w;
            o_axi_wvalid_15_r   <= o_axi_wvalid_15_w;
            o_axi_wlast_r       <= o_axi_wlast_w;

            o_axi_wdata_r       <= o_axi_wdata_w;
            o_cpu_write_done_r  <= o_cpu_write_done_w;
        end
    end
    
endmodule