module kv_cache_top (
    input           i_cpu_cmd_vald,
    input  [4:0]    i_cpu_cmd,

    input  [19:0]   i_token_cnt,

    output          o_cpu_cmd_vald_0,
    output          o_cpu_cmd_vald_1,
    output          o_cpu_cmd_vald_2,
    output          o_cpu_cmd_vald_3,
    output          o_cpu_cmd_vald_4,
    output          o_cpu_cmd_vald_5,
    output          o_cpu_cmd_vald_6,
    output          o_cpu_cmd_vald_7,
    output          o_cpu_cmd_vald_8,
    output          o_cpu_cmd_vald_9,
    output          o_cpu_cmd_vald_10,
    output          o_cpu_cmd_vald_11,
    output          o_cpu_cmd_vald_12,
    output          o_cpu_cmd_vald_13,
    output          o_cpu_cmd_vald_14,
    output          o_cpu_cmd_vald_15,
    output          o_cpu_cmd_vald_16,
    output          o_cpu_cmd_vald_17,
    output          o_cpu_cmd_vald_18,
    output          o_cpu_cmd_vald_19,
    output          o_cpu_cmd_vald_20,
    output          o_cpu_cmd_vald_21,
    output          o_cpu_cmd_vald_22,
    output          o_cpu_cmd_vald_23,
    output          o_cpu_cmd_vald_24,
    output          o_cpu_cmd_vald_25,
    output          o_cpu_cmd_vald_26,
    output          o_cpu_cmd_vald_27,
    output          o_cpu_cmd_vald_28,
    output          o_cpu_cmd_vald_29,
    output          o_cpu_cmd_vald_30,
    output          o_cpu_cmd_vald_31
);

    assign o_cpu_cmd_vald_0  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd0 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_1  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd0 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_2  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd1 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_3  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd1 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_4  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd2 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_5  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd2 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_6  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd3 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_7  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd3 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_8  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd4 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_9  = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd4 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_10 = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd5 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_11 = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd5 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_12 = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd6 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_13 = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd6 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_14 = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd7 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_15 = i_cpu_cmd_vald && i_cpu_cmd == `K_proj && i_token_cnt[2:0] == 3'd7 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_16 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd0 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_17 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd0 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_18 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd1 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_19 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd1 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_20 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd2 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_21 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd2 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_22 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd3 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_23 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd3 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_24 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd4 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_25 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd4 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_26 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd5 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_27 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd5 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_28 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd6 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_29 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd6 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_30 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd7 ? 1'b1 : 1'b0;
    assign o_cpu_cmd_vald_31 = i_cpu_cmd_vald && i_cpu_cmd == `V_proj && i_token_cnt[2:0] == 3'd7 ? 1'b1 : 1'b0;

endmodule