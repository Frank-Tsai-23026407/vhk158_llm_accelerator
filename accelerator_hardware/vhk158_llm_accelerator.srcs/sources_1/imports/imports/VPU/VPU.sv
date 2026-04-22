`define VFU_SUBEXP_LATENCY 8
// `define IDLE 4'd0
// `define RMSNORM 4'd1
// `define QK_NORM 4'd2
// `define QK_NORM_1 4'd3
// `define QK_NORM_2 4'd4
// `define QK_SIN 4'd5
// `define QK_COS 4'd6
// `define QK_ADD 4'd7
// `define RESIDUAL 4'd8
// `define QK_ATTN_SCALE 4'd9
// `define SM_RECIP 4'd10

// `define PARALLEL_NUM 64
// `define BIT_NUM 32
//`define VFU_BYPASS_LATENCY 1
//`define VFU_ADD_LATENCY 4
//`define VFU_MUL_LATENCY 7
module VPU (
	input                  i_clk,
	input                  i_rst_n,

    input  [5:0]    i_cmd,
    //notice softmax reciprocal accu end
    //input           i_recip_valid,

    // CPU Ctrl Signal
    // VFU
    // input  logic         i_VPU_start,
	// input   [1:0]   i_VPU_VFU_cmd,
    // output logic         o_VPU_done,    

    // SFU
    // input   [1:0]   i_VPU_SFU_cmd,

    //MPU
    input  [`BIT_NUM-1:0] i_mpu_data [0:`PARALLEL_NUM-1],
    input  i_mpu_valid,
    input  i_SV_data_valid,
    input  [`BIT_NUM-1:0] i_MPU_max,
    input  i_MPU_max_valid,
    // DMA Interface
    // VFU
	input   [`BIT_NUM-1:0]  i_VPU_data_1       [0:`PARALLEL_NUM-1],
	input   [`BIT_NUM-1:0]  i_VPU_data_2       [0:`PARALLEL_NUM-1],
    input           i_VPU_data_valid   [0:`PARALLEL_NUM-1],

    // SFU
    output  [`BIT_NUM-1:0] o_VPU_scale,
    output  o_VPU_flag,
    output         o_VPU_scale_valid,
    output  [`BIT_NUM-1:0] o_VPU_data          [0:`PARALLEL_NUM-1],
    output         o_VPU_data_valid,
    //output  o_qk_rope_fusion_done,
    //output  o_vpu_s_is_ready,
    output  [`BIT_NUM-1:0] o_prob [0:`PARALLEL_TOKEN_NUM-1],
    output  o_prob_valid,
    output  o_one_head_fa_finish
);
    
    localparam IDLE=4'd0;
    localparam RMSNORM=4'd1;
    localparam QK_NORM=4'd2;
    localparam QK_NORM_1 = 4'd3;
    localparam QK_NORM_2 = 4'd4;
    localparam QK_SIN_COS = 4'd5;
    //localparam QK_COS = 4'd6;
    localparam QK_ADD = 4'd6;
    localparam INI_PROB = 4'd7;
    localparam PROB = 4'd8;
    localparam SV = 4'd9;
    localparam UPDATE_O = 4'd10;
    localparam SV_FINISH = 4'd11;
    localparam L_RECIP = 4'd12;
    localparam MLP_UP = 4'd13;
    localparam MLP_DOWN = 4'd14;
    localparam DICISION = 4'd15;
    // localparam RESIDUAL = 4'd7;
    // localparam QK_ATTN_SCALE = 4'd8;
    // localparam SM_RECIP = 4'd9;




    logic [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] i_data_1;
    logic [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] i_data_2;
    logic [`PARALLEL_NUM-1:0] o_VFU_valid;
    logic [`PARALLEL_NUM-1:0] i_valid;
	logic [`PARALLEL_NUM-1:0][`BIT_NUM-1:0] o_VFU_data;
    logic [`PARALLEL_NUM*`BIT_NUM-1:0] o_data;
    //logic [`VFU_SUBEXP_LATENCY-1:0] recip_valid_delay_nxt, recip_valid_delay;
    logic wait_input;
    logic [5:0] rmsnorm_cnt;

    // logic   [1:0]   i_VPU_VFU_cmd;
    // logic   [1:0]   i_VPU_SFU_cmd;

    integer k,j;
    genvar i;
    
    logic [1:0]   i_VPU_VFU_cmd;
    logic [1:0]   i_VPU_SFU_cmd;

    logic [3:0] compute_state_nxt, compute_state;
    logic [1:0] valid_4_cnt;
    logic [2:0] valid_8_output_cnt;
    logic [2:0] valid_8_input_cnt;
    logic [31:0] div_in;
    logic valid_2_cnt;

    logic i_mpu_valid_d;
    logic valid_pulse_nxt, valid_pulse;

    logic VPU_data_valid;
    logic VPU_flag;
    
    logic [`BIT_NUM-1:0] QKT_input [0:`PARALLEL_TOKEN_NUM-1];
    logic [`BIT_NUM-1:0] S_output [0:`PARALLEL_TOKEN_NUM-1];
    logic S_output_valid;

    logic [5:0] rmsnorm_cnt_num;

    logic [`BIT_NUM-1:0] old_max;
    logic [`BIT_NUM-1:0] exp_max_diff;

    logic i_sfu_valid;
    
    
    
//    ila_9 vpu_core_clk (
//        .clk(i_clk),
//        .probe0(i_cmd), //6
//        .probe1(i_mpu_valid), //1
//        .probe2(i_SV_data_valid), //1
//        .probe3(i_VPU_data_valid[0]), //1
//        .probe4(o_VPU_scale), //32
//        .probe5(o_VPU_flag), //1
//        .probe6(o_VPU_scale_valid), //1
//        .probe7(o_VPU_data_valid), //1
//        .probe8(o_VPU_data[0]), //32
//        .probe9(o_VPU_data[`PARALLEL_NUM-1]), //32
//        .probe10(o_prob[0]), //32
//        .probe11(o_prob[`PARALLEL_NUM-1]), //32
//        .probe12(o_prob_valid), //1
//        .probe13(o_one_head_fa_finish), //1
//        .probe14(wait_input), //1
//        .probe15(o_VFU_data[`BIT_NUM-1:0]), //32
//        .probe16(o_VFU_valid[(`PARALLEL_NUM * `BIT_NUM) - 1 : (`PARALLEL_NUM - 1) * `BIT_NUM]), //32
//        .probe17(o_VFU_valid[0]), //1
//        .probe18(wait_input), //1
//        .probe19(rmsnorm_cnt), //6
//        .probe20(i_VPU_VFU_cmd), //2
//        .probe21(i_VPU_SFU_cmd), //2
//        .probe22(compute_state), //4
//        .probe23(valid_4_cnt), //2
//        .probe24(valid_8_output_cnt), //3
//        .probe25(valid_8_input_cnt), //3
//        .probe26(div_in), //32
//        .probe27(valid_2_cnt), //1
//        .probe28(valid_pulse), //1
//        .probe29(S_output_valid), //1
//        .probe30(rmsnorm_cnt_num), //6
//        .probe31(old_max), //32
//        .probe32(exp_max_diff) //32
//    );
    //assign o_qk_rope_fusion_done = (compute_state == QK_ADD && valid_4_cnt == 2'd3 && VPU_data_valid);
    assign o_VPU_data_valid = (compute_state == QK_NORM_1 || compute_state == QK_NORM_2 || compute_state == QK_SIN_COS) ? 0 : VPU_data_valid;
    assign o_VPU_flag = (compute_state != IDLE && compute_state != QK_NORM_1 && compute_state != QK_NORM_2 && compute_state != RMSNORM) ? 0 :
                        (valid_4_cnt == 2'd3 && VPU_data_valid) ? 1 :
                        VPU_flag;
    
    // (compute_state == QK_NORM || compute_state == QK_ADD || compute_state == QK_SIN_COS || ) ? 0 : 
    //                     (valid_4_cnt == 2'd3 && VPU_data_valid) ? 1 :
    //                     VPU_flag;

    assign o_prob_valid = S_output_valid;
    assign i_sfu_valid = (compute_state == SV || compute_state == SV_FINISH || compute_state == UPDATE_O) ? 0 : o_VFU_valid[0];

    //assign o_one_head_fa_finish = (compute_state == SV_FINISH && valid_4_cnt == 2'd3 && (|o_VFU_valid)) ? 1 : 0;
     assign o_one_head_fa_finish = (compute_state == L_RECIP && valid_4_cnt == 2'd3 && VPU_data_valid) ? 1 : 0;
//*********************************************************************************************************************************//
    always@(*) begin
        if(compute_state == QK_NORM_1 || compute_state == QK_ADD || compute_state == UPDATE_O || compute_state == L_RECIP) begin
            if(valid_4_cnt == 2'd3)
                valid_pulse_nxt = 1;
            else
                valid_pulse_nxt = valid_pulse;
        end
        else begin
            valid_pulse_nxt = 0;
        end
    end

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			valid_pulse <= 0;
		end
        else begin
            valid_pulse <= valid_pulse_nxt;
        end
    end
//*********************************************************************************************************************************//

//*******************************************************ROPE SIN/COS**************************************************************//
    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			valid_8_input_cnt <= 0;
		end
        else begin
            if(compute_state == QK_SIN_COS)
                valid_8_input_cnt <= (i_VPU_data_valid[0]) ? valid_8_input_cnt+1 : valid_8_input_cnt;
            else
                valid_8_input_cnt <= 0;
        end
    end

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			valid_8_output_cnt <= 0;
		end
        else begin
            if(compute_state == QK_SIN_COS)
                valid_8_output_cnt <= (VPU_data_valid) ? valid_8_output_cnt+1 : valid_8_output_cnt;
            else
                valid_8_output_cnt <= 0;
        end
    end
//*********************************************************************************************************************************//

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			valid_4_cnt <= 0;
		end
        else begin
            if(compute_state == QK_NORM_1 || compute_state == QK_ADD || compute_state == L_RECIP)
                valid_4_cnt <= (!valid_pulse || VPU_data_valid) ? valid_4_cnt+1 : valid_4_cnt;
            else if(compute_state == UPDATE_O)
                valid_4_cnt <= (!valid_pulse || (|o_VFU_valid)) ? valid_4_cnt+1 : valid_4_cnt;
            else if(compute_state == SV || compute_state == SV_FINISH)
                valid_4_cnt <= (|o_VFU_valid) ? valid_4_cnt+1 : valid_4_cnt;
            else if(compute_state == QK_NORM_2)
                valid_4_cnt <= (VPU_data_valid) ? valid_4_cnt+1 : valid_4_cnt;
            else
                valid_4_cnt <= 0;
        end
    end

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			valid_2_cnt <= 0;
		end
        else begin
            if((compute_state == MLP_UP || compute_state == MLP_DOWN) && i_mpu_valid_d)
                valid_2_cnt <= valid_2_cnt + 1;
            else
                valid_2_cnt <= valid_2_cnt;
        end
    end

    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			compute_state <= 0;
		end
        else begin
            compute_state <= compute_state_nxt;
        end
    end

    // always@(posedge i_clk or negedge i_rst_n) begin
	// 	if(!i_rst_n) begin
	// 		recip_valid_delay <= 0;
	// 	end
	// 	else begin
	// 		recip_valid_delay <= recip_valid_delay_nxt;
	// 	end
	// end

    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			i_VPU_SFU_cmd <= 2'b00;
		end
        else begin
            if(compute_state == RMSNORM || compute_state == QK_NORM)
                i_VPU_SFU_cmd <= 2'b11;
            else if(compute_state == INI_PROB || compute_state == PROB || compute_state == SV || compute_state == SV_FINISH || compute_state == UPDATE_O || compute_state == DICISION)
                i_VPU_SFU_cmd <= 2'b10;
            else
                i_VPU_SFU_cmd <= 2'b00;
        end
    end

    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			i_VPU_VFU_cmd <= 2'b00;
		end
        else begin
            //if(compute_state == QK_ADD || (compute_state == QK_SIN_COS && valid_8_output_cnt == 3'd7 && VPU_data_valid))
            if(compute_state == QK_ADD || compute_state == SV || compute_state == SV_FINISH)
                i_VPU_VFU_cmd <= 2'b01;
            else if(compute_state == INI_PROB || compute_state == PROB)
                i_VPU_VFU_cmd <= 2'b10;
            else if(i_cmd == 6'd19)
                i_VPU_VFU_cmd <= 2'b01;
            else
                i_VPU_VFU_cmd <= 2'b11;
        end
    end

    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			div_in <= 32'h3f800000;
		end
        else begin
            if(compute_state == RMSNORM)
                div_in <= 32'h45200000;
            else if(compute_state == QK_NORM)
                div_in <= 32'h43800000;
            else 
                div_in <= 32'h3f800000;
        end
    end

    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			rmsnorm_cnt_num <= 0;
		end
        else begin
            if(compute_state == RMSNORM)
                rmsnorm_cnt_num <= 6'd39;
            else if(compute_state == QK_NORM)
                rmsnorm_cnt_num <= 6'd3;
            else 
                rmsnorm_cnt_num <= rmsnorm_cnt_num;
        end
    end

    logic  vfu_v_valid_reset;
    //assign vfu_v_valid_reset = (((compute_state == IDLE) && (i_cmd == 6'd7 || i_cmd == 6'd11)) || ((compute_state == SV_FINISH) && valid_4_cnt == 2'd3));
    assign vfu_v_valid_reset = (((compute_state == IDLE) && (i_cmd == 6'd7 || i_cmd == 6'd11)) || ((compute_state == SV_FINISH) && valid_4_cnt == 2'd3) || ((compute_state == L_RECIP) && valid_4_cnt == 2'd3 && VPU_data_valid)); 
    logic  sfu_v_valid_reset;
    assign sfu_v_valid_reset = (((compute_state == IDLE) && (i_cmd == 6'd7 || i_cmd == 6'd11)) || ((compute_state == SV_FINISH) && valid_4_cnt == 2'd3) || ((compute_state == L_RECIP) && valid_4_cnt == 2'd3 && VPU_data_valid) || (i_cmd == 6'd19));

    always @(*) begin
        compute_state_nxt = compute_state; 

        case(compute_state)
            IDLE: begin 
                if (i_cmd == 6'd5)      compute_state_nxt = RMSNORM;
                else if (i_cmd == 6'd7 || i_cmd == 6'd11) compute_state_nxt = QK_NORM;
                else if (i_cmd == 6'd13) compute_state_nxt = INI_PROB;
                else if (i_cmd == 6'd23) compute_state_nxt = MLP_UP;
                else                    compute_state_nxt = 4'd0;
            end

            QK_NORM: begin //invsqrt
                if (VPU_flag) compute_state_nxt = QK_NORM_1;
                else if(i_cmd != 6'd7 && i_cmd != 6'd11) compute_state_nxt = IDLE;
            end

            QK_NORM_1: begin //input x inverse
                if (valid_4_cnt == 2'd3 && VPU_data_valid) compute_state_nxt = QK_NORM_2;
            end

            QK_NORM_2: begin //result x weight
                if (valid_4_cnt == 2'd3 && VPU_data_valid) compute_state_nxt = QK_SIN_COS;
            end

            QK_SIN_COS: begin
                if (valid_8_output_cnt == 3'd7 && VPU_data_valid) compute_state_nxt = QK_ADD;
            end

            QK_ADD: begin
                if (valid_4_cnt == 2'd3 && VPU_data_valid) compute_state_nxt = 4'd0; 
            end

            RMSNORM: begin
                if (VPU_flag) compute_state_nxt = 4'd0;
            end

            INI_PROB: begin
                if(|o_VFU_valid)
                    compute_state_nxt = UPDATE_O;
                else if(i_cmd != 6'd13) compute_state_nxt = IDLE;
            end

            PROB: begin
                if(|o_VFU_valid)
                    compute_state_nxt = SV;
            end
            SV: begin
                if(valid_4_cnt == 2'd3 && |o_VFU_valid)
                    compute_state_nxt = UPDATE_O;
            end
            UPDATE_O: begin
                if(valid_4_cnt == 2'd3 && |o_VFU_valid)
                    compute_state_nxt = DICISION;
                // if(i_mpu_valid)
                //     compute_state_nxt = PROB;
                // else if(i_SV_data_valid)
                //     compute_state_nxt = SV_FINISH;
            end
            DICISION: begin
                if(i_mpu_valid)
                    compute_state_nxt = PROB;
                else if(i_SV_data_valid)
                    compute_state_nxt = SV_FINISH;
            end
            SV_FINISH: begin
                if(valid_4_cnt == 2'd3 && |o_VFU_valid)
                    compute_state_nxt = L_RECIP;
            end
            L_RECIP: begin
                if(valid_4_cnt == 2'd3 && VPU_data_valid)
                    compute_state_nxt = INI_PROB;
            end
            MLP_UP: begin
                if(valid_2_cnt == 1 && i_mpu_valid_d) compute_state_nxt = MLP_DOWN;
                else if(i_cmd != 6'd23) compute_state_nxt = IDLE;
            end
            MLP_DOWN: begin
                if(valid_2_cnt == 1 && i_mpu_valid_d) compute_state_nxt = MLP_UP;
                else if(i_cmd != 6'd23) compute_state_nxt = IDLE;
            end
            default: compute_state_nxt = 4'd0;
        endcase
    end
    
    
    //read and write to rope_sin happen at same time
    wire [3:0] shift_mask_sv;  
    wire [3:0] shift_mask_vfu; 
    wire [3:0] final_shift_mask;
    wire [3:0] final_load_mask;

    assign shift_mask_sv  = (i_SV_data_valid) ? (4'b1111 >> (valid_4_cnt + 2'd1)) : 4'b0000;

    assign shift_mask_vfu = (|o_VFU_valid)    ? (4'b1111 << (2'd3 - valid_4_cnt)) : 4'b0000;

    assign final_shift_mask = shift_mask_sv | (shift_mask_vfu & 4'b0111); 
    assign final_load_mask  = (|o_VFU_valid) ? 4'b1000 : 4'b0000;      

    //RoPE sin register
    logic [`BIT_NUM-1:0] rope_sin [0:3] [0:`PARALLEL_NUM-1];
    
    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
            for(k = 0; k<4; k=k+1) begin
                for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                    rope_sin[k][j] <= 0;
                end
            end
		end 
        else begin
            if(compute_state == QK_NORM && i_mpu_valid) begin
                for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                    rope_sin[0][j] <= i_mpu_data[j];
                end
                for(k = 1; k<4; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[k-1][j];
                    end
                end
            end
            else if(compute_state == QK_NORM && VPU_flag) begin
                for(k = 0; k<4; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[3-k][j];
                    end
                end
            end
            else if(compute_state == QK_NORM_1) begin
                for(k = 0; k<3; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[k+1][j];
                    end
                end
                for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                    rope_sin[3][j] <= o_VPU_data[j];
                end
            end
            else if(compute_state == QK_NORM_2 && (i_VPU_data_valid[0] || VPU_data_valid)) begin
                if(valid_4_cnt == 2'd3 && VPU_data_valid) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[0][j] <= {!rope_sin[3][j][`BIT_NUM-1], rope_sin[3][j][`BIT_NUM-2:`BIT_NUM_16], rope_sin[1][j][`BIT_NUM_16-1:0]};
                        //rope_sin[0][j] <= {!rope_sin[3][j][31], rope_sin[3][j][30:0]};
                    end
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[1][j] <= {!o_VPU_data[j][`BIT_NUM-1], o_VPU_data[j][`BIT_NUM-2:`BIT_NUM_16], rope_sin[2][j][`BIT_NUM_16-1:0]};
                        //rope_sin[1][j] <= {!o_VPU_data[j][31], o_VPU_data[j][30:16], 16'd0};
                    end
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[2][j] <= {rope_sin[1][j][`BIT_NUM-1:`BIT_NUM_16], rope_sin[3][j][`BIT_NUM_16-1:0]};
                        //rope_sin[2][j] <= rope_sin[1][j];
                    end
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[3][j] <= {rope_sin[2][j][`BIT_NUM-1:`BIT_NUM_16], o_VPU_data[j][`BIT_NUM-1:`BIT_NUM_16]};
                        //rope_sin[3][j] <= rope_sin[2][j];
                    end
                end
                else begin
                    for(k = 0; k<3; k=k+1) begin
                        for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                            rope_sin[k][j] <= rope_sin[k+1][j];
                        end
                    end
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[3][j] <= {o_VPU_data[j][`BIT_NUM-1:`BIT_NUM_16], o_VPU_data[j][`BIT_NUM-1:`BIT_NUM_16]};
                    end
                end
            end
            else if(compute_state == QK_SIN_COS && (i_VPU_data_valid[0] || VPU_data_valid)) begin
                for(k = 0; k<4; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[k][j];
                    end
                end
                if(valid_8_input_cnt < 3'd4 && i_VPU_data_valid[0]) begin
                    for(k = 0; k<3; k=k+1) begin
                        for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                            rope_sin[k][j][`BIT_NUM-1:`BIT_NUM_16] <= rope_sin[k+1][j][`BIT_NUM-1:`BIT_NUM_16];
                        end
                    end
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[3][j][`BIT_NUM-1:`BIT_NUM_16] <= '0;
                    end
                end
                if(valid_8_input_cnt >= 3'd4 && i_VPU_data_valid[0]) begin
                    for(k = 0; k<3; k=k+1) begin
                        for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                            rope_sin[k][j][`BIT_NUM_16-1:0] <= rope_sin[k+1][j][`BIT_NUM_16-1:0];
                        end
                    end
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[3][j][`BIT_NUM_16-1:0] <= '0;
                    end
                end
                if(valid_8_output_cnt < 3'd4 && VPU_data_valid) begin
                    for(k = 0; k<3; k=k+1) begin
                        for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                            rope_sin[k][j][`BIT_NUM-1:`BIT_NUM_16] <= rope_sin[k+1][j][`BIT_NUM-1:`BIT_NUM_16];
                        end
                    end
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[3][j][`BIT_NUM-1:`BIT_NUM_16] <= o_VPU_data[j][`BIT_NUM-1:`BIT_NUM_16];
                    end
                end
                if(valid_8_output_cnt >= 3'd4 && VPU_data_valid) begin
                    for(k = 0; k<3; k=k+1) begin
                        for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                            rope_sin[k][j][`BIT_NUM_16-1:0] <= rope_sin[k+1][j][`BIT_NUM_16-1:0];
                        end
                    end
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[3][j][`BIT_NUM_16-1:0] <= o_VPU_data[j][`BIT_NUM-1:`BIT_NUM_16];
                    end
                end
            end
            else if(compute_state == QK_ADD || compute_state == L_RECIP) begin
                for(k = 0; k<3; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[k+1][j];
                    end
                end
                for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                    rope_sin[3][j] <= 0;
                end
            end
            // else if(compute_state == INI_PROB) begin
            //     for(k = 0; k<4; k=k+1) begin
            //         for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
            //             rope_sin[k][j] <= 0;
            //         end
            //     end
            // end
            else if(compute_state == UPDATE_O && (!valid_pulse || (|o_VFU_valid))) begin
                for(k = 0; k<3; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[k+1][j];
                    end
                end
                for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                    if(!valid_pulse)
                        rope_sin[3][j] <= 0;
                    else
                        rope_sin[3][j] <= o_VFU_data[j];
                end
            end
            else if((compute_state == SV || compute_state == SV_FINISH || compute_state == DICISION)) begin
                for(k = 0; k<4; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        if (final_load_mask[k]) begin
                            rope_sin[k][j] <= o_VFU_data[j];
                        end
                        else if (final_shift_mask[k]) begin
                            rope_sin[k][j] <= rope_sin[k+1][j];
                        end
                        else begin
                            rope_sin[k][j] <= rope_sin[k][j];
                        end
                    end
                end
            end
            else if(compute_state == MLP_UP && i_mpu_valid) begin
                for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                    rope_sin[0][j] <= rope_sin[1][j];
                end
                for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                    rope_sin[1][j] <= i_mpu_data[j];
                end
                for(k = 2; k<4; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[k][j];
                    end
                end
            end
            else if(compute_state == MLP_DOWN && (i_mpu_valid || i_mpu_valid_d)) begin
                for(k = 0; k<4; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[k][j];
                    end
                end
                if(i_mpu_valid) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[0][j][`BIT_NUM_16-1:0] <= i_mpu_data[j][`BIT_NUM-1:`BIT_NUM_16];
                    end
                end
                if(i_mpu_valid_d) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[0][j][`BIT_NUM-1:`BIT_NUM_16] <= rope_sin[1][j][`BIT_NUM-1:`BIT_NUM_16];
                    end
                end
            end
            // else if (i_SV_data_valid || ((compute_state == SV || compute_state == SV_FINISH) && (|o_VFU_valid))) begin
            //     for (k = 0; k < 3; k = k + 1) begin
            //         for (j = 0; j < `PARALLEL_NUM; j = j + 1) begin
            //             if (i_SV_data_valid && k < (3 - valid_4_cnt)) begin
            //                 rope_sin[k][j] <= rope_sin[k+1][j];
            //             end
            //             else if ((|o_VFU_valid) && k >= (3 - valid_4_cnt)) begin
            //                 rope_sin[k][j] <= rope_sin[k+1][j];
            //             end
            //         end
            //     end
            //     if (|o_VFU_valid) begin
            //         for (j = 0; j < `PARALLEL_NUM; j = j + 1) begin
            //             rope_sin[3][j] <= o_VFU_data[j];
            //         end
            //     end
            // end
            // else if((compute_state == SV || compute_state == SV_FINISH)  && i_mpu_valid) begin
            //     for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
            //         rope_sin[0][j] <= i_mpu_data[j];
            //     end
            // end
            else begin
                for(k = 0; k<4; k=k+1) begin
                    for(j = 0; j<`PARALLEL_NUM; j=j+1) begin
                        rope_sin[k][j] <= rope_sin[k][j];
                    end
                end
            end
        end
    end

    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
            for(k = 0; k<`PARALLEL_TOKEN_NUM; k=k+1) begin
                QKT_input[k] <= 0;
            end
        end
        else begin
            if((compute_state == INI_PROB || compute_state == PROB || compute_state == DICISION) && i_mpu_valid) begin
                for(k = 0; k<`PARALLEL_TOKEN_NUM; k=k+1) begin
                    QKT_input[k] <= i_mpu_data[k];
                end
            end
            else begin
                for(k = 0; k<`PARALLEL_TOKEN_NUM; k=k+1) begin
                    QKT_input[k] <= QKT_input[k];
                end
            end
        end
    end

    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
            for(k = 0; k<`PARALLEL_TOKEN_NUM; k=k+1) begin
                S_output[k] <= 0;
            end
        end
        else begin
            if((compute_state == INI_PROB || compute_state == PROB) && (|o_VFU_valid)) begin
                for(k = 0; k<`PARALLEL_TOKEN_NUM; k=k+1) begin
                    S_output[k] <= o_VFU_data[k];
                end
            end
            else begin
                for(k = 0; k<`PARALLEL_TOKEN_NUM; k=k+1) begin
                    S_output[k] <= S_output[k];
                end
            end
        end
    end

    always @(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
            S_output_valid <= 0;
        end
        else begin
            if((compute_state == INI_PROB || compute_state == PROB) && (|o_VFU_valid)) begin
                S_output_valid <= 1;
            end
            else begin
                S_output_valid <= 0;
            end
        end
    end

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			old_max <= 32'hff800000;
		end
        else begin
            if((compute_state == INI_PROB || compute_state == PROB) && i_MPU_max_valid)
                old_max <= i_MPU_max;
            else if(compute_state == L_RECIP)
                old_max <= 32'hff800000;
            else
                old_max <= old_max;
        end
    end

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			exp_max_diff <= 0;
		end
        else begin
            if((compute_state == INI_PROB || compute_state == PROB) && (|o_VFU_valid))
                exp_max_diff <= o_VFU_data[`PARALLEL_TOKEN_NUM];
            else
                exp_max_diff <= exp_max_diff;
        end
    end

    generate //i_VPU_data_valid [0:63] -> [63:0] i_valid
    	for (i = 0; i < `PARALLEL_NUM; i = i + 1) begin : data_valid
    	    assign i_valid[i] = (compute_state == QK_NORM || compute_state == MLP_DOWN)? i_mpu_valid_d : 
                                (compute_state == QK_NORM_1 || compute_state == QK_ADD || compute_state == L_RECIP)? !valid_pulse :
                                (compute_state == INI_PROB || compute_state == PROB)? i_MPU_max_valid :
                                (compute_state == UPDATE_O) ? (!valid_pulse) :
                                (i_VPU_data_valid[i] || i_SV_data_valid);
    	end
	endgenerate

    generate //[64*16-1:0] o_data -> [15:0] o_VPU_data [0:63]
    	for (i = 0; i < `PARALLEL_NUM; i = i + 1) begin : output_data
    	    assign o_VPU_data[i] = o_data[i*`BIT_NUM +: `BIT_NUM];
    	end
	endgenerate

    generate //[64*16-1:0] o_data -> [15:0] o_VPU_data [0:63]
    	for (i = 0; i < `PARALLEL_TOKEN_NUM; i = i + 1) begin : s_output_data
    	    assign o_prob[i] = S_output[i];
    	end
	endgenerate

    logic is_direct_rope;
    logic is_padded_rope;
    logic is_padded_rope1;
    assign is_direct_rope = ((compute_state == QK_NORM) || (compute_state == QK_NORM_1) || (compute_state == QK_NORM_2) || (compute_state == UPDATE_O) || (compute_state == L_RECIP));
    assign is_padded_rope = ((compute_state == QK_SIN_COS) && (valid_8_input_cnt < 3'd4) || (compute_state == QK_ADD) || (compute_state == MLP_DOWN));
    assign is_padded_rope1 = ((compute_state == QK_SIN_COS) && (valid_8_input_cnt >= 3'd4));

    generate //[15:0] i_VPU_data_1 [0:63] -> [63:0][15:0] i_data_1
    	for (i = 0; i < `PARALLEL_TOKEN_NUM; i = i + 1) begin : data1_first8
    	    assign i_data_1[i] = is_direct_rope ? rope_sin[0][i] : 
                                 is_padded_rope ? {rope_sin[0][i][31:16], 16'd0} : 
                                 is_padded_rope1? {rope_sin[0][i][15:0], 16'd0} : 
                                 (compute_state == INI_PROB || compute_state == PROB)? QKT_input[i] : 
                                 (i_SV_data_valid) ? i_mpu_data[i] :
                                 i_VPU_data_1[i];
    	end
        assign i_data_1[`PARALLEL_TOKEN_NUM] = is_direct_rope ? rope_sin[0][`PARALLEL_TOKEN_NUM] : 
                                               is_padded_rope ? {rope_sin[0][`PARALLEL_TOKEN_NUM][31:16], 16'd0} : 
                                               is_padded_rope1? {rope_sin[0][`PARALLEL_TOKEN_NUM][15:0], 16'd0} : 
                                               (compute_state == INI_PROB || compute_state == PROB)? old_max :
                                               (i_SV_data_valid) ? i_mpu_data[`PARALLEL_TOKEN_NUM] :
                                               i_VPU_data_1[`PARALLEL_TOKEN_NUM];

        for (i = `PARALLEL_TOKEN_NUM+1; i < `PARALLEL_NUM; i = i + 1) begin : data1_last56
    	    assign i_data_1[i] = is_direct_rope ? rope_sin[0][i] : 
                                 is_padded_rope ? {rope_sin[0][i][31:16], 16'd0} : 
                                 is_padded_rope1? {rope_sin[0][i][15:0], 16'd0} : 
                                 (i_SV_data_valid) ? i_mpu_data[i] :
                                 i_VPU_data_1[i];
    	end
	endgenerate

    generate //[15:0] i_VPU_data_2 [0:63] -> [63:0][15:0] i_data_2
    	for (i = 0; i < `PARALLEL_TOKEN_NUM+1; i = i + 1) begin : data2_first8
    	    assign i_data_2[i] = (compute_state == QK_NORM || i_SV_data_valid) ? rope_sin[0][i] : 
                                 (compute_state == QK_ADD || compute_state == MLP_DOWN) ? {rope_sin[0][i][15:0], 16'd0} : 
                                 (wait_input || compute_state == L_RECIP) ? o_VPU_scale : 
                                 (compute_state == INI_PROB || compute_state == PROB)? i_MPU_max :
                                 (compute_state == UPDATE_O)? exp_max_diff :
                                 i_VPU_data_2[i];
    	end
        for (i = `PARALLEL_TOKEN_NUM+1; i < `PARALLEL_NUM; i = i + 1) begin : data2_last56
    	    assign i_data_2[i] = (compute_state == QK_NORM || i_SV_data_valid) ? rope_sin[0][i] : 
                                 (compute_state == QK_ADD || compute_state == MLP_DOWN) ? {rope_sin[0][i][15:0], 16'd0} : 
                                 (wait_input || compute_state == L_RECIP) ? o_VPU_scale : 
                                 (compute_state == UPDATE_O)? exp_max_diff :
                                 i_VPU_data_2[i];
    	end
	endgenerate

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			rmsnorm_cnt <= 0;
		end
        else begin
            if(wait_input && i_valid[0]) begin
                if(rmsnorm_cnt == rmsnorm_cnt_num)
                    rmsnorm_cnt <= 0;
                else
                    rmsnorm_cnt <= rmsnorm_cnt+1;
            end
            else
                rmsnorm_cnt <= rmsnorm_cnt;
        end
    end

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n) begin
			wait_input <= 0;
		end
        else begin
            if(VPU_flag)
                wait_input <= 1;
            else if(rmsnorm_cnt == rmsnorm_cnt_num)
                wait_input <= 0;
            else
                wait_input <= wait_input;
        end
    end

    // always@(*)begin
	// 	recip_valid_delay_nxt [0] = i_recip_valid;
	// 	for(k=1; k<`VFU_SUBEXP_LATENCY; k=k+1)begin
	// 		recip_valid_delay_nxt[k] = recip_valid_delay[k-1];
	// 	end
	// end

    // always@(posedge i_clk or negedge i_rst_n) begin
	// 	if(!i_rst_n) begin
	// 		recip_valid_delay <= 0;
	// 	end
	// 	else begin
	// 		recip_valid_delay <= recip_valid_delay_nxt;
	// 	end
	// end

    always@(posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			i_mpu_valid_d <= 0;
		end
		else begin
			i_mpu_valid_d <= i_mpu_valid;
		end
	end

    VFU VFU_U0 (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        
		.i_cfg_cmd(i_VPU_VFU_cmd),
        .i_sfu_v_valid_reset(vfu_v_valid_reset),
        // .i_cfg_valid(i_VFU_cfg_valid),
        // .i_cfg_ready(i_VFU_cfg_ready),

		.i_valid(i_valid),
		.i_data_1(i_data_1),
		.i_data_2(i_data_2),

		.o_valid(o_VFU_valid),
		.o_data(o_VFU_data)
    );

    SFU_V SFU_V_U0 (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),

        .rmsnorm_cnt_num(rmsnorm_cnt_num),
        .i_cfg_cmd(i_VPU_SFU_cmd),
        //.i_recip_valid(recip_valid_delay[`VFU_SUBEXP_LATENCY-1]),
        .i_sfu_v_valid_reset(sfu_v_valid_reset),
        .div_in(div_in),
        // .i_cfg_valid(i_SFU_cfg_valid),
        // .i_cfg_ready(i_SFU_cfg_ready),

        .i_valid(i_sfu_valid),
		.i_data(o_VFU_data),
        
        .o_scale_valid(o_VPU_scale_valid),
		.o_scale(o_VPU_scale),
        .o_vpu_flag(VPU_flag),
        .o_data_valid(VPU_data_valid),
        .o_data(o_data)
    );

endmodule