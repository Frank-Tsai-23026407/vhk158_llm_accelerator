module main_ctrl (
    input           i_clk_memory,
    input           i_clk_core,
    input           i_rst_n,

    // memory input ports
    input           i_cpu_cmd_vald_memory,
    input  [4:0]    i_cpu_cmd_memory,

    input           i_mpu_token_id_vald,
    input  [18:0]   i_mpu_token_id,
    input           i_uart_token_id_vald,
    input  [18:0]   i_uart_token_id,
    input           i_uart_input_token_len_vald,
    input  [18:0]   i_uart_input_token_len,

    // core input ports
    input           i_cpu_cmd_vald_core,
    input  [4:0]    i_cpu_cmd_core,

    // memory output ports
    output          o_cpu_prepare_finish_m,
    output [18:0]   o_cpu_input_token_len,

    output [19:0]   o_token_cnt_m,
    output [5:0]    o_layer_cnt_m,
    output [19:0]   o_start_token_m,
    output          o_token_len_within_256_m,
    output          o_token_len_within_1024_m,
    output [18:0]   o_embedding_token_id_m,

    // core output ports
    output [19:0]   o_token_cnt_c,
    output [5:0]    o_layer_cnt_c,
    output          o_token_len_within_1024_c
);
    integer i;

    // input register for memory control parts
    reg [4:0]   i_cpu_cmd_memory_r;

    // output register for memory control parts
    reg [5:0]   o_layer_cnt_m_r, o_layer_cnt_m_w;
    reg [19:0]  o_start_token_m_r, o_start_token_m_w;
    reg         o_token_len_within_256_m_r, o_token_len_within_256_m_w;
    reg         o_token_len_within_1024_m_r, o_token_len_within_1024_m_w;
    reg [18:0]  o_embedding_token_id_m_r, o_embedding_token_id_m_w;
    reg         o_cpu_prepare_finish_m_r, o_cpu_prepare_finish_m_w;

    // main register for memory control parts
    reg [19:0]  token_cnt_m_r, token_cnt_m_w;
    reg [18:0]  token_id_record_m_r[0:1023], token_id_record_m_w[0:1023];
    reg [9:0]   token_id_cnt_m_r, token_id_cnt_m_w;
    reg [18:0]  input_token_len_record_m_r, input_token_len_record_m_w;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // input register for core control parts
    reg [4:0]   i_cpu_cmd_core_r;

    // output register for core control parts
    reg [5:0]   o_layer_cnt_c_r, o_layer_cnt_c_w;
    reg         o_token_len_within_1024_c_r, o_token_len_within_1024_c_w;

    // main register for core control parts
    reg [19:0]  token_cnt_c_r, token_cnt_c_w;

    assign o_token_cnt_c = token_cnt_c_r - 1'b1;
    assign o_layer_cnt_c = o_layer_cnt_c_r - 1'b1;
    assign o_token_len_within_1024_c = o_token_len_within_1024_c_r;

    assign o_token_cnt_m = token_cnt_m_r - 1'b1;
    assign o_layer_cnt_m = o_layer_cnt_m_r - 1'b1;
    assign o_embedding_token_id_m = o_embedding_token_id_m_r;
    assign o_cpu_prepare_finish_m = o_cpu_prepare_finish_m_r;

    assign o_start_token_m = o_start_token_m_r;
    assign o_token_len_within_1024_m = o_token_len_within_1024_m_r;
    assign o_token_len_within_256_m = o_token_len_within_256_m_r;
    assign o_cpu_input_token_len = input_token_len_record_m_r;

    always @(*) begin
        if (i_cpu_cmd_core_r == `Embedding) begin
            token_cnt_c_w = token_cnt_c_r + 1'b1;
        end
        else begin
            token_cnt_c_w = token_cnt_c_r;
        end
    end

    always @(*) begin
        if (i_cpu_cmd_core == `I_rms && o_layer_cnt_c_r == 6'd34) begin
            o_layer_cnt_c_w = 6'd1;
        end
        else if (i_cpu_cmd_core == `I_rms) begin
            o_layer_cnt_c_w = o_layer_cnt_c_r + 1'b1;
        end
        else begin
            o_layer_cnt_c_w = o_layer_cnt_c_r;
        end
    end

    always @(*) begin
        if (i_cpu_cmd_core == `I_rms && o_token_cnt_c < 20'd1024) begin
            o_token_len_within_1024_c_w = 1'b1;
        end
        else if (i_cpu_cmd_core == `I_rms) begin
            o_token_len_within_1024_c_w = 1'b0;
        end
        else begin
            o_token_len_within_1024_c_w = o_token_len_within_1024_c_r;
        end
    end

    // memory main D-flip-flop
    always @(posedge i_clk_core or negedge i_rst_n) begin
        if (~i_rst_n) begin
            token_cnt_c_r               <= 20'd0;
        end
        else begin
            token_cnt_c_r               <= token_cnt_c_w;
        end
    end

    // core input D-flip-flop
    always @(posedge i_clk_core or negedge i_rst_n) begin
        if (~i_rst_n) begin
            i_cpu_cmd_core_r          <= 5'b0;
        end
        else begin
            i_cpu_cmd_core_r          <= i_cpu_cmd_core;
        end
    end

    // core output D-flip-flop
    always @(posedge i_clk_core or negedge i_rst_n) begin
        if (~i_rst_n) begin
            o_layer_cnt_c_r             <= 6'd0;
            o_token_len_within_1024_c_r <= 1'b0;
        end
        else begin
            o_layer_cnt_c_r             <= o_layer_cnt_c_w;
            o_token_len_within_1024_c_r <= o_token_len_within_1024_c_w;
        end
    end


    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // control when to start running machine code
    always @(*) begin
        if (i_uart_input_token_len_vald) begin
            o_cpu_prepare_finish_m_w = 1'b1;
        end
        else begin
            //o_cpu_prepare_finish_m_w = 1'b0;
            o_cpu_prepare_finish_m_w = 1'b1;
        end
    end

    // record the token length so far
    always @(*) begin
        if (i_cpu_cmd_memory_r == `Embedding) begin
            token_cnt_m_w = token_cnt_m_r + 1'b1;
        end
        else begin
            token_cnt_m_w = token_cnt_m_r;
        end
    end

    // control the counter of token id register files
    always @(*) begin
        if (i_uart_token_id_vald || i_mpu_token_id_vald) begin
            token_id_cnt_m_w = token_id_cnt_m_r + 1'b1;
        end
        else begin
            token_id_cnt_m_w = token_id_cnt_m_r;
        end
    end

    // control the token id register files
    always @(*) begin
        for (i = 0; i < 1024; i = i + 1) begin
            if (i == token_id_cnt_m_r && i_uart_token_id_vald) begin
                token_id_record_m_w[i] = i_uart_token_id;
            end
            else if (i == token_id_cnt_m_r && i_mpu_token_id_vald) begin
                token_id_record_m_w[i] = i_mpu_token_id;
            end
            else begin
                token_id_record_m_w[i] = token_id_record_m_r[i];
            end
        end
    end

    always @(*) begin
        if (i_uart_input_token_len_vald) begin
            input_token_len_record_m_w = i_uart_input_token_len;
        end
        else begin
            //input_token_len_record_m_w = 19'b0;
            input_token_len_record_m_w = 19'b1;
        end
    end

    // control output which token id for embedding stage
    always @(*) begin
        if (i_cpu_cmd_memory == `Embedding) begin
            o_embedding_token_id_m_w = token_id_record_m_r[token_cnt_m_r[9:0]];
        end
        else begin
            o_embedding_token_id_m_w = o_embedding_token_id_m_r;
        end
    end

    always @(*) begin
        if (i_cpu_cmd_memory == `I_rms && o_layer_cnt_m_r == 6'd34) begin
            o_layer_cnt_m_w = 6'd1;
        end
        else if (i_cpu_cmd_memory == `I_rms) begin
            o_layer_cnt_m_w = o_layer_cnt_m_r + 1'b1;
        end
        else begin
            o_layer_cnt_m_w = o_layer_cnt_m_r;
        end
    end

    always @(*) begin
        if (i_cpu_cmd_memory == `I_rms && o_token_cnt_m < 20'd256) begin
            o_token_len_within_256_m_w = 1'b1;
        end
        else if (i_cpu_cmd_memory == `I_rms) begin
            o_token_len_within_256_m_w = 1'b0;
        end
        else begin
            o_token_len_within_256_m_w = o_token_len_within_256_m_r;
        end
    end

    always @(*) begin
        if (i_cpu_cmd_memory == `I_rms && o_token_cnt_m < 20'd1024) begin
            o_token_len_within_1024_m_w = 1'b1;
        end
        else if (i_cpu_cmd_memory == `I_rms) begin
            o_token_len_within_1024_m_w = 1'b0;
        end
        else begin
            o_token_len_within_1024_m_w = o_token_len_within_1024_m_r;
        end
    end

    always @(*) begin
        if (i_cpu_cmd_memory == `I_rms && o_token_cnt_m < 20'd1024) begin
            o_start_token_m_w = 20'd0;
        end
        else if (i_cpu_cmd_memory == `I_rms) begin
            o_start_token_m_w = o_token_cnt_m - 10'd1023;
        end
        else begin
            o_start_token_m_w = o_start_token_m_r;
        end
    end

    // memory input D-flip-flop
    always @(posedge i_clk_memory or negedge i_rst_n) begin
        if (~i_rst_n) begin
            i_cpu_cmd_memory_r          <= 5'b0;
        end
        else begin
            i_cpu_cmd_memory_r          <= i_cpu_cmd_memory;
        end
    end

    // memory main D-flip-flop
    always @(posedge i_clk_memory or negedge i_rst_n) begin
        if (~i_rst_n) begin
            token_cnt_m_r               <= 20'd0;
            token_id_cnt_m_r            <= 10'b0;
            //input_token_len_record_m_r  <= 19'b0;
            input_token_len_record_m_r  <= 19'b1;
            for (i = 0; i < 1024; i = i + 1) begin
                token_id_record_m_r[i]  <= 19'd2; 
            end
        end
        else begin
            token_cnt_m_r               <= token_cnt_m_w;
            token_id_cnt_m_r            <= token_id_cnt_m_w;
            input_token_len_record_m_r  <= input_token_len_record_m_w;
            for (i = 0; i < 1024; i = i + 1) begin
                token_id_record_m_r[i]  <= token_id_record_m_w[i];
            end
        end
    end

    // memory output D-flip-flop
    always @(posedge i_clk_memory or negedge i_rst_n) begin
        if (~i_rst_n) begin
            o_layer_cnt_m_r             <= 6'd0;
            o_token_len_within_1024_m_r <= 1'b0;
            o_token_len_within_256_m_r  <= 1'b0;
            o_start_token_m_r           <= 20'b0;
            o_embedding_token_id_m_r    <= 19'b0;
            //o_cpu_prepare_finish_m_r    <= 1'b0;
            o_cpu_prepare_finish_m_r    <= 1'b1;
        end
        else begin
            o_layer_cnt_m_r             <= o_layer_cnt_m_w;
            o_token_len_within_1024_m_r <= o_token_len_within_1024_m_w;
            o_token_len_within_256_m_r  <= o_token_len_within_256_m_w;
            o_start_token_m_r           <= o_start_token_m_w;
            o_embedding_token_id_m_r    <= o_embedding_token_id_m_w;
            o_cpu_prepare_finish_m_r    <= o_cpu_prepare_finish_m_w;
        end
    end
    
//    ila_1 ctrl_1 (
//        .clk(i_clk_memory),
//        .probe0(token_cnt_m_r),
//        .probe1(o_layer_cnt_m_r),
//        .probe2(o_cpu_prepare_finish_m_r),
//        .probe3(o_embedding_token_id_m_r),
//        .probe4(input_token_len_record_m_r)
//    );
    
//    ila_2 ctrl_2 (
//        .clk(i_clk_core),
//        .probe0(token_cnt_c_r),
//        .probe1(o_layer_cnt_c_r)
//    );
endmodule