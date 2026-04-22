module axi_ar_handshake_unit_1(
    input           i_clk,
    input           i_rst_n,

    input           i_cpu_cmd_vald,
    input  [4:0]    i_cpu_cmd,
    input  [18:0]   i_cpu_token_id,

    input  [5:0]    i_layer_cnt,
    input  [19:0]   i_token_cnt,
    input  [19:0]   i_start_token,
    input           i_token_len_within_256,
    input           i_token_len_within_1024,

    // axi read address ports
    output [5:0]    o_axi_arid,
    output [1:0]    o_axi_arburst,
    output [7:0]    o_axi_arlen,
    output [2:0]    o_axi_arsize,
    output [63:0]   o_axi_araddr,
    output          o_axi_arvalid,

    input           i_axi_arready
);
   
    // input register
    reg         i_cpu_cmd_vald_r;
    reg [4:0]   i_cpu_cmd_r;
    reg [18:0]  i_cpu_token_id_r, i_cpu_token_id_w;

    // main register
    reg [4:0]   ar_state_r, ar_state_w;
    reg [13:0]  ar_cmd_cnt_r, ar_cmd_cnt_w;
    reg [4:0]   rot_cmd_cnt_r, rot_cmd_cnt_w;
    reg [1:0]   rot_flag_r, rot_flag_w;

    // output register
    reg         o_axi_arvalid_r, o_axi_arvalid_w;
    reg [29:0]  o_axi_araddr_r, o_axi_araddr_w;
    reg [7:0]   o_axi_arlen_r, o_axi_arlen_w;

    // output assignment
    assign o_axi_arid       = 6'b0;
    assign o_axi_arburst    = 2'b01;
    assign o_axi_arsize     = 3'd5;
    assign o_axi_araddr     = {34'd0, o_axi_araddr_r};
    assign o_axi_arvalid    = o_axi_arvalid_r;
    assign o_axi_arlen      = o_axi_arlen_r;

    always @(*) begin
        if (i_cpu_cmd_vald) begin
            i_cpu_token_id_w = i_cpu_token_id;
        end
        else begin
            i_cpu_token_id_w = i_cpu_token_id_r;
        end
    end

    // read address channel FSM
    always @(*) begin
        case (ar_state_r)
            `IDLE : begin
                if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Embedding) begin
                    ar_state_w = `Embedding;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `I_rms) begin
                    ar_state_w = `I_rms;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Postatt_rms) begin
                    ar_state_w = `Postatt_rms;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Preffn_rms) begin
                    ar_state_w = `Preffn_rms;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Postffn_rms) begin
                    ar_state_w = `Postffn_rms;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `O_rms) begin
                    ar_state_w = `O_rms;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `K_proj) begin
                    ar_state_w = `K_proj;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `V_proj) begin
                    ar_state_w = `V_proj;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Q_proj) begin
                    ar_state_w = `Q_proj;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `O_proj) begin
                    ar_state_w = `O_proj;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Down_proj) begin
                    ar_state_w = `Down_proj;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `L_proj) begin
                    ar_state_w = `L_proj;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Mlp_proj) begin
                    ar_state_w = `Mlp_proj;
                end
                else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Attention_local) begin
                    ar_state_w = `Attention_local;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `Embedding : begin
                if (i_axi_arready == 1'b1) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `I_rms : begin
                if (i_axi_arready == 1'b1) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `Postatt_rms : begin
                if (i_axi_arready == 1'b1) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `Preffn_rms : begin
                if (i_axi_arready == 1'b1) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `Postffn_rms : begin
                if (i_axi_arready == 1'b1) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `O_rms : begin
                if (i_axi_arready == 1'b1) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `K_proj : begin
                if (rot_flag_r == 2'd2 && rot_cmd_cnt_r == 5'd3 && i_axi_arready && ar_cmd_cnt_r == 14'd1) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `V_proj : begin
                if (i_axi_arready == 1'b1 && ar_cmd_cnt_r == `k_proj_ar_cnt) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `Q_proj : begin
                if (rot_flag_r == 2'd2 && rot_cmd_cnt_r == 5'd7 && i_axi_arready && ar_cmd_cnt_r == 14'd1) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `O_proj : begin
                if (i_axi_arready == 1'b1 && ar_cmd_cnt_r == `o_proj_ar_cnt) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `Down_proj : begin
                if (i_axi_arready == 1'b1 && ar_cmd_cnt_r == `down_proj_ar_cnt) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `L_proj : begin
                if (i_axi_arready == 1'b1 && ar_cmd_cnt_r == `l_proj_ar_cnt) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `Mlp_proj : begin
                if (i_axi_arready == 1'b1 && ar_cmd_cnt_r == `mlp_proj_ar_cnt) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            `Attention_local : begin
                if (i_axi_arready == 1'b1 && ((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || (ar_cmd_cnt_r == 14'd3)) && rot_cmd_cnt_r == 5'd7) begin
                    ar_state_w = `IDLE;
                end
                else begin
                    ar_state_w = ar_state_r;
                end
            end
            default: begin
                ar_state_w = `IDLE;
            end
        endcase
    end

    // control the kernel fusion state of projection and rotary position embedding
    always @(*) begin
        if (ar_state_r == `K_proj || ar_state_r == `Q_proj) begin
            if (i_axi_arready && rot_flag_r == 2'd2 && ar_cmd_cnt_r == 14'd1) begin
                rot_flag_w = 2'b0;
            end
            else if (i_axi_arready && rot_flag_r == 2'b0 && ar_cmd_cnt_r == 14'd2) begin
                rot_flag_w = 2'b1;
            end
            else if (i_axi_arready && rot_flag_r == 2'b1) begin
                rot_flag_w = 2'd2;
            end
            else begin
                rot_flag_w = rot_flag_r;
            end
        end
        else begin
            rot_flag_w = rot_flag_r;
        end
    end

    // read address command count (for rotary embedding)
    always @(*) begin
        if (ar_state_r == `K_proj && i_axi_arready && rot_flag_r == 2'd2 && rot_cmd_cnt_r == 5'd3 && ar_cmd_cnt_r == 14'd1) begin
            rot_cmd_cnt_w = 5'b0;
        end
        else if (ar_state_r == `Q_proj && i_axi_arready && rot_flag_r == 2'd2 && rot_cmd_cnt_r == 5'd7 && ar_cmd_cnt_r == 14'd1) begin
            rot_cmd_cnt_w = 5'b0;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && i_axi_arready && rot_flag_r == 2'd2 && ar_cmd_cnt_r == 14'd1) begin
            rot_cmd_cnt_w = rot_cmd_cnt_r + 1'b1;
        end
        else if (ar_state_r == `Attention_local) begin
            if (i_axi_arready == 1'b1 && ((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || (ar_cmd_cnt_r == 14'd3)) && rot_cmd_cnt_r == 5'd7) begin
                rot_cmd_cnt_w = 5'b0;
            end
            else if (i_axi_arready == 1'b1 && ((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || (ar_cmd_cnt_r == 14'd3))) begin
                rot_cmd_cnt_w = rot_cmd_cnt_r + 1'b1;
            end
            else begin
                rot_cmd_cnt_w = rot_cmd_cnt_r;
            end
        end
        else begin
            rot_cmd_cnt_w = rot_cmd_cnt_r;
        end
    end

    // read address command count (for projection and others)
    always @(*) begin
        if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && rot_flag_r == 2'd0 && ar_cmd_cnt_r == 14'd2 && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && rot_flag_r == 2'd2 && ar_cmd_cnt_r == 14'd1 && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && rot_flag_r == 2'd1 && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if (ar_state_r == `V_proj && ar_cmd_cnt_r == `k_proj_ar_cnt && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if (ar_state_r == `O_proj && ar_cmd_cnt_r == `o_proj_ar_cnt && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if (ar_state_r == `Down_proj && ar_cmd_cnt_r == `down_proj_ar_cnt && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if (ar_state_r == `L_proj && ar_cmd_cnt_r == `l_proj_ar_cnt && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if (ar_state_r == `Mlp_proj && ar_cmd_cnt_r == `mlp_proj_ar_cnt && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if (ar_state_r == `Attention_local && ((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || ar_cmd_cnt_r == 14'd3) && i_axi_arready) begin
            ar_cmd_cnt_w = 14'b0;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && i_axi_arready) begin
            ar_cmd_cnt_w = ar_cmd_cnt_r + 1'b1;
        end
        else if ((ar_state_r == `V_proj || ar_state_r == `O_proj || ar_state_r == `Down_proj || ar_state_r == `L_proj || ar_state_r == `Mlp_proj || ar_state_r == `Attention_local) && i_axi_arready) begin
            ar_cmd_cnt_w = ar_cmd_cnt_r + 1'b1;
        end
        else begin
            ar_cmd_cnt_w = ar_cmd_cnt_r;
        end
    end

    // read address valid and burst length control
    always @(*) begin
        if ((ar_state_r == `Embedding || ar_state_r == `I_rms || ar_state_r == `Postatt_rms || ar_state_r == `Preffn_rms || ar_state_r == `Postffn_rms || ar_state_r == `O_rms) && i_axi_arready == 1'b1) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Embedding) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = `embedding_ar_bl;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && (i_cpu_cmd_r == `I_rms || i_cpu_cmd_r == `Postatt_rms || i_cpu_cmd_r == `Preffn_rms || i_cpu_cmd_r == `Postffn_rms || i_cpu_cmd_r == `O_rms)) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = `i_rms_ar_bl;
        end
        else if (ar_state_r == `K_proj && i_axi_arready && rot_flag_r == 2'd2 && rot_cmd_cnt_r == 5'd3 && ar_cmd_cnt_r == 14'd1) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if (ar_state_r == `Q_proj && i_axi_arready && rot_flag_r == 2'd2 && rot_cmd_cnt_r == 5'd7 && ar_cmd_cnt_r == 14'd1) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if (ar_state_r == `V_proj && i_axi_arready && ar_cmd_cnt_r == `k_proj_ar_cnt) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if (ar_state_r == `O_proj && i_axi_arready && ar_cmd_cnt_r == `o_proj_ar_cnt) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if (ar_state_r == `Down_proj && i_axi_arready && ar_cmd_cnt_r == `down_proj_ar_cnt) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if (ar_state_r == `L_proj && i_axi_arready && ar_cmd_cnt_r == `l_proj_ar_cnt) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if (ar_state_r == `Mlp_proj && i_axi_arready && ar_cmd_cnt_r == `mlp_proj_ar_cnt) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if (ar_state_r == `Attention_local && i_axi_arready && (((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || ar_cmd_cnt_r == 14'd3)) && rot_cmd_cnt_r == 5'd7) begin
            o_axi_arvalid_w = 1'b0;
            o_axi_arlen_w   = 8'd0;
        end
        else if ((i_cpu_cmd_vald_r == 1'b1 && (i_cpu_cmd_r == `K_proj || i_cpu_cmd_r == `Q_proj)) || ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && i_axi_arready && rot_flag_r == 2'd2 && ar_cmd_cnt_r == 14'd1)) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = `one_ar_bl;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && i_axi_arready && rot_flag_r == 2'b0 && ar_cmd_cnt_r == 14'd1) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = `key_2rnd_ar_bl;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && i_axi_arready && rot_flag_r == 2'b0 && ar_cmd_cnt_r == 14'd2) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = `knorm_ar_bl;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && (i_cpu_cmd_r == `V_proj || i_cpu_cmd_r == `O_proj || i_cpu_cmd_r == `Down_proj || i_cpu_cmd_r == `L_proj || i_cpu_cmd_r == `Mlp_proj)) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = `one_ar_bl;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Attention_local && i_token_len_within_256) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = ((i_token_cnt[7:3] + 1'b1) << 3) - 1'b1;
        end
        else if (ar_state_r == `Attention_local && i_axi_arready && i_token_len_within_256 && (((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || ar_cmd_cnt_r == 14'd3))) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = ((i_token_cnt[7:3] + 1'b1) << 3) - 1'b1;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Attention_local) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = `one_ar_bl;
        end
        else if (ar_state_r == `Attention_local && i_axi_arready && (((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || ar_cmd_cnt_r == 14'd3))) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = `one_ar_bl;
        end
        else if (ar_state_r == `Attention_local && i_axi_arready && i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == (i_token_cnt[9:8] - 1'b1)) begin
            o_axi_arvalid_w = 1'b1;
            o_axi_arlen_w   = ((i_token_cnt[7:3] + 1'b1) << 3) - 1'b1;
        end
        else begin
            o_axi_arvalid_w = o_axi_arvalid_r;
            o_axi_arlen_w   = o_axi_arlen_r;
        end
    end

    // read address control
    always @(*) begin
        if ((ar_state_r == `Embedding || ar_state_r == `I_rms || ar_state_r == `Postatt_rms || ar_state_r == `Preffn_rms || ar_state_r == `Postffn_rms || ar_state_r == `O_rms) && i_axi_arready == 1'b1) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Embedding) begin
            o_axi_araddr_w = i_cpu_token_id * `token_addr_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `I_rms) begin
            o_axi_araddr_w = `I_rms_start_addr + i_layer_cnt * `rms_layer_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Postatt_rms) begin
            o_axi_araddr_w = `Postatt_rms_start_addr + i_layer_cnt * `rms_layer_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Preffn_rms) begin
            o_axi_araddr_w = `Preffn_rms_start_addr + i_layer_cnt * `rms_layer_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Postffn_rms) begin
            o_axi_araddr_w = `Postffn_rms_start_addr + i_layer_cnt * `rms_layer_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `O_rms) begin
            o_axi_araddr_w = `O_rms_start_addr;
        end
        else if (ar_state_r == `K_proj && i_axi_arready && rot_flag_r == 2'd2 && rot_cmd_cnt_r == 5'd3 && ar_cmd_cnt_r == 14'd1) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (ar_state_r == `Q_proj && i_axi_arready && rot_flag_r == 2'd2 && rot_cmd_cnt_r == 5'd7 && ar_cmd_cnt_r == 14'd1) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (ar_state_r == `V_proj && i_axi_arready && ar_cmd_cnt_r == `k_proj_ar_cnt) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (ar_state_r == `O_proj && i_axi_arready && ar_cmd_cnt_r == `o_proj_ar_cnt) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (ar_state_r == `Down_proj && i_axi_arready && ar_cmd_cnt_r == `down_proj_ar_cnt) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (ar_state_r == `L_proj && i_axi_arready && ar_cmd_cnt_r == `l_proj_ar_cnt) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (ar_state_r == `Mlp_proj && i_axi_arready && ar_cmd_cnt_r == `mlp_proj_ar_cnt) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (ar_state_r == `Attention_local && i_axi_arready && (((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || ar_cmd_cnt_r == 14'd3)) && rot_cmd_cnt_r == 5'd7) begin
            o_axi_araddr_w = 30'd0;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Attention_local) begin
            o_axi_araddr_w = `k_cache_start_addr + i_layer_cnt * `k_cache_addr_spacing;
        end
        else if (ar_state_r == `Attention_local && i_axi_arready && (((i_token_len_within_1024 && ar_cmd_cnt_r[1:0] == i_token_cnt[9:8]) || ar_cmd_cnt_r == 14'd3))) begin
            o_axi_araddr_w = `k_cache_start_addr + i_layer_cnt * `k_cache_addr_spacing + ((rot_cmd_cnt_r + 1'b1) >> 1) * `k_head_spacing;
        end
        else if (ar_state_r == `Attention_local && i_axi_arready) begin
            o_axi_araddr_w = o_axi_araddr_r + `bl_256_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `K_proj) begin
            o_axi_araddr_w = `k_proj_start_addr + i_layer_cnt * `k_proj_addr_spacing;
        end
        else if (ar_state_r == `K_proj && i_axi_arready && rot_flag_r == 2'd2 && ar_cmd_cnt_r == 14'd1) begin
            o_axi_araddr_w = `k_proj_start_addr + i_layer_cnt * `k_proj_addr_spacing + (rot_cmd_cnt_r + 1'b1) * `key_slice_spacing_1;
        end
        else if (ar_state_r == `K_proj && i_axi_arready && rot_flag_r == 2'b0 && ar_cmd_cnt_r == 14'd2) begin
            o_axi_araddr_w = `knorm_start_addr + i_layer_cnt * `qk_norm_addr_spacing;
        end
        else if (ar_state_r == `K_proj && i_axi_arready && rot_flag_r == 2'b0) begin
            o_axi_araddr_w = o_axi_araddr_r + `bl_256_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Q_proj) begin
            o_axi_araddr_w = `q_proj_start_addr + i_layer_cnt * `q_proj_addr_spacing;
        end
        else if (ar_state_r == `Q_proj && i_axi_arready && rot_flag_r == 2'd2 && ar_cmd_cnt_r == 14'd1) begin
            o_axi_araddr_w = `q_proj_start_addr + i_layer_cnt * `q_proj_addr_spacing + (rot_cmd_cnt_r + 1'b1) * `key_slice_spacing_1;
        end
        else if (ar_state_r == `Q_proj && i_axi_arready && rot_flag_r == 2'b0 && ar_cmd_cnt_r == 14'd2) begin
            o_axi_araddr_w = `qnorm_start_addr + i_layer_cnt * `qk_norm_addr_spacing;
        end
        else if (ar_state_r == `Q_proj && i_axi_arready && rot_flag_r == 2'b0) begin
            o_axi_araddr_w = o_axi_araddr_r + `bl_256_spacing;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && (i_layer_cnt == 6'd5 || i_layer_cnt == 6'd11 || i_layer_cnt == 6'd17 || i_layer_cnt == 6'd23 || i_layer_cnt == 6'd29) && i_axi_arready && rot_flag_r == 2'b1) begin
            o_axi_araddr_w = `sin_rot_start_addr_glb + i_token_cnt * `rot_addr_spacing;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && (i_layer_cnt == 6'd5 || i_layer_cnt == 6'd11 || i_layer_cnt == 6'd17 || i_layer_cnt == 6'd23 || i_layer_cnt == 6'd29) && i_axi_arready && rot_flag_r == 2'd2 && ar_cmd_cnt_r == 14'd0) begin
            o_axi_araddr_w = `cos_rot_start_addr_glb + i_token_cnt * `rot_addr_spacing;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && i_axi_arready && rot_flag_r == 2'b1) begin
            o_axi_araddr_w = `sin_rot_start_addr + i_token_cnt * `rot_addr_spacing;
        end
        else if ((ar_state_r == `K_proj || ar_state_r == `Q_proj) && i_axi_arready && rot_flag_r == 2'd2 && ar_cmd_cnt_r == 14'd0) begin
            o_axi_araddr_w = `cos_rot_start_addr + i_token_cnt * `rot_addr_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `V_proj) begin
            o_axi_araddr_w = `v_proj_start_addr + i_layer_cnt * `v_proj_addr_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `O_proj) begin
            o_axi_araddr_w = `o_proj_start_addr + i_layer_cnt * `o_proj_addr_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Down_proj) begin
            o_axi_araddr_w = `down_proj_start_addr + i_layer_cnt * `down_proj_addr_spacing;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `L_proj) begin
            o_axi_araddr_w = `l_proj_start_addr;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `Mlp_proj) begin
            o_axi_araddr_w = `mlp_proj_start_addr + i_layer_cnt * `mlp_proj_addr_spacing;
        end
        else if ((ar_state_r == `V_proj || ar_state_r == `O_proj || ar_state_r == `Down_proj || ar_state_r == `L_proj || ar_state_r == `Mlp_proj || ar_state_r == `Attention_local) && i_axi_arready) begin
            o_axi_araddr_w = o_axi_araddr_r + `bl_256_spacing;
        end
        else begin
            o_axi_araddr_w = o_axi_araddr_r;
        end
    end

    // main D-flip-flop
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            ar_state_r      <= 5'b0;
            ar_cmd_cnt_r    <= 14'b0;
            rot_cmd_cnt_r   <= 5'b0;
            rot_flag_r      <= 1'b0;
        end
        else begin
            ar_state_r      <= ar_state_w;
            ar_cmd_cnt_r    <= ar_cmd_cnt_w;
            rot_cmd_cnt_r   <= rot_cmd_cnt_w;
            rot_flag_r      <= rot_flag_w;
        end
    end

    // input D-flip-flop
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            i_cpu_cmd_vald_r <= 1'b0;
            i_cpu_cmd_r      <= 5'b0;
            i_cpu_token_id_r <= 19'b0;
        end
        else begin
            i_cpu_cmd_vald_r <= i_cpu_cmd_vald;
            i_cpu_cmd_r      <= i_cpu_cmd;
            i_cpu_token_id_r <= i_cpu_token_id_w;
        end
    end

    // output D-flip-flop
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            o_axi_arvalid_r <= 1'b0;
            o_axi_araddr_r  <= 30'd0;
            o_axi_arlen_r   <= 8'd0;
        end
        else begin
            o_axi_arvalid_r <= o_axi_arvalid_w;
            o_axi_araddr_r  <= o_axi_araddr_w;
            o_axi_arlen_r   <= o_axi_arlen_w;
        end
    end
    
//    ila_4 ar_1 (
//        .clk(i_clk),
//        .probe0(ar_state_r),
//        .probe1(ar_cmd_cnt_r),
//        .probe2(rot_cmd_cnt_r),
//        .probe3(rot_flag_r),
//        .probe4(o_axi_arvalid_r),
//        .probe5(o_axi_araddr_r),
//        .probe6(o_axi_arlen_r),
//        .probe7(i_axi_arready)
//    );
endmodule