module axi_aw_handshake_unit_2 (
    input           i_clk,
    input           i_rst_n,

    input           i_cpu_cmd_vald,
    input  [4:0]    i_cpu_cmd,

    input  [5:0]    i_layer_cnt,
    input  [19:0]   i_token_cnt,

    output [63:0]   o_axi_aw_addr,
    output [1:0]    o_axi_awburst,
    output [5:0]    o_axi_awid,
    output [7:0]    o_axi_awlen,
    output [2:0]    o_axi_awsize,
    output          o_axi_awvalid,

    input           i_axi_awready
);

    // input register
    reg         i_cpu_cmd_vald_r;
    reg [4:0]   i_cpu_cmd_r;

    // main register
    reg         aw_state_r, aw_state_w;
    reg [1:0]   aw_cmd_cnt_r, aw_cmd_cnt_w;

    // output register
    reg         o_axi_awvalid_r, o_axi_awvalid_w;
    reg [29:0]  o_axi_awaddr_r, o_axi_awaddr_w;

    // output assignment
    assign o_axi_awid       = 6'b0;
    assign o_axi_awburst    = 2'b01;
    assign o_axi_awsize     = 3'd5;
    assign o_axi_aw_addr    = {34'd0, o_axi_awaddr_r};
    assign o_axi_awvalid    = o_axi_awvalid_r;
    assign o_axi_awlen      = `value_aw_bl;

    // write address channel FSM
    always @(*) begin
        case (aw_state_r)
            1'b0 : begin
                if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `V_proj) begin
                    aw_state_w = `V_write;
                end
                else begin
                    aw_state_w = aw_state_r;
                end
            end
            `V_write : begin
                if (i_axi_awready && aw_cmd_cnt_r == `v_cache_aw_cnt) begin
                    aw_state_w = 1'b0;
                end
                else begin
                    aw_state_w = aw_state_r;
                end
            end
            default: begin
                aw_state_w = 1'b0;
            end
        endcase
    end

    // write address command count
    always @(*) begin
        if (aw_state_r == `V_write && aw_cmd_cnt_r == `v_cache_aw_cnt && i_axi_awready) begin
            aw_cmd_cnt_w = 2'b0;
        end
        else if (aw_state_r == `V_write && i_axi_awready) begin
            aw_cmd_cnt_w = aw_cmd_cnt_r + 1'b1;
        end
        else begin
            aw_cmd_cnt_w = aw_cmd_cnt_r;
        end
    end

    // read address valid and burst length control
    always @(*) begin
        if (aw_state_r == `V_write && i_axi_awready && aw_cmd_cnt_r == `v_cache_aw_cnt) begin
            o_axi_awvalid_w = 1'b0;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `V_proj) begin
            o_axi_awvalid_w = 1'b1;
        end
        else begin
            o_axi_awvalid_w = o_axi_awvalid_r;
        end
    end

    // read address control
    always @(*) begin
        if (aw_state_r == `V_write && i_axi_awready && aw_cmd_cnt_r == `v_cache_aw_cnt) begin
            o_axi_awaddr_w = 30'd0;
        end
        else if (i_cpu_cmd_vald_r == 1'b1 && i_cpu_cmd_r == `V_proj) begin
            o_axi_awaddr_w = `v_cache_start_addr + i_token_cnt[19:3] * `v_token_addr_spacing + i_layer_cnt * `v_cache_addr_spacing;
        end
        else if (aw_state_r == `V_write && i_axi_awready) begin
            o_axi_awaddr_w = o_axi_awaddr_r + `v_head_spacing;
        end
        else begin
            o_axi_awaddr_w = o_axi_awaddr_r;
        end
    end

    // main D-flip-flop
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            aw_state_r      <= 1'b0;
            aw_cmd_cnt_r    <= 2'b0;
        end
        else begin
            aw_state_r      <= aw_state_w;
            aw_cmd_cnt_r    <= aw_cmd_cnt_w;
        end
    end

    // input D-flip-flop
    always @(posedge i_clk or negedge i_rst_n) begin
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
    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            o_axi_awvalid_r <= 1'b0;
            o_axi_awaddr_r  <= 30'd0;
        end
        else begin
            o_axi_awvalid_r <= o_axi_awvalid_w;
            o_axi_awaddr_r  <= o_axi_awaddr_w;
        end
    end
    
endmodule