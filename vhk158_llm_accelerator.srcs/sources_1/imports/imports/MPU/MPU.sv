`define MFU_TOTAL_DELAY 28
module MPU (
    input i_clk,
	input i_rst_n,

	input [5:0] i_cmd, 
	input [5:0] i_cpu_cmd,
	//input i_vpu_s_is_ready,

	// DMA Interface
	//bf16_int4 mul
	input  i_16x4_MPU_data_valid,
	input  [`PARALLEL_NUM*`BIT_NUM_16-1:0] i_16x4_scale,
	input  [`PARALLEL_NUM*`BIT_NUM_16-1:0] i_16x4_bf16_in, 
	input  [`PARALLEL_NUM*`MUL_16X4_LANE_NUM*4-1:0]  i_16x4_int4_in, 

	//MFU
	//input  [`BIT_NUM-1:0] i_MPU_data [0:`PARALLEL_NUM-1],
	input  [`PARALLEL_NUM*`BIT_NUM-1:0]	   i_mpu_64x8_data0,
	input  [`MFU_LANE_NUM*`PARALLEL_NUM*`BIT_NUM-1:0]    i_mpu_64x8_data1,
	input  [`MFU_LANE_NUM*`PARALLEL_NUM-1:0]    i_mpu_64x8_data_vald,

	input  [`BIT_NUM-1:0] i_prob [0:`PARALLEL_TOKEN_NUM-1],
	input  i_prob_valid,
	input i_one_head_fa_finish,
	//input  		          i_MPU_data_valid [0:`MFU_LANE_NUM-1] [0:`PARALLEL_NUM-1],

	//input  [`BIT_NUM-1:0] i_MPU_weight 	   [0:`MFU_LANE_NUM-1] [0:`PARALLEL_NUM-1],
	
	//SFU
    output [`BIT_NUM-1:0] o_MPU_max,
	output 		          o_MPU_max_valid,

    output [`BIT_NUM-1:0]    o_MPU_VPU_data 		 [0:`PARALLEL_NUM-1],
	
    output   	             o_MPU_VPU_data_valid,
	output o_SV_data_valid,
    
	//output [`BIT_NUM_16-1:0] o_MPU_DMA_data 		 [0:`PARALLEL_NUM-1],
	output [`PARALLEL_NUM*`BIT_NUM_16-1:0] o_mpu_done_data,
    output   	              o_MPU_DMA_data_valid,
	output [`DIC_NUM_LOG-1:0] o_MPU_max_id,
	output                    o_MPU_max_id_valid,
	output 	o_MPU_VPU_flag	  	 
);

	integer k, w;
	localparam IDLE = 4'd0;
	localparam QK_SENT_FLAG   = 4'd1;
	localparam QK   = 4'd2;
	localparam QK_SENT_FLAG_1   = 4'd3;
	localparam QK_1   = 4'd4;
	localparam SV_SENT_FLAG   = 4'd5;
	localparam SV   = 4'd6;
	localparam SV_SENT_FLAG_1   = 4'd7;
	localparam SV_1   = 4'd8;
	localparam LM_PROJ = 4'd9;
	localparam WAIT_FINISH = 4'd10;

	/*MPU->MFU*/
	logic [1:0] i_buffer_select_r, i_buffer_select_w;
	logic [1:0] sub_cnt; 
	logic [7:0] input_cnt;   
	logic [9:0] input_token_len_cnt;
	logic [6:0] flash_attn_cnt;
	//logic [14:0] o_cnt_r;
	logic [1:0] sv_final_out_cnt;
	logic i_final_in [0:`MFU_LANE_NUM-1];
	logic [1:0] i_MPU_MFU_cmd, i_MPU_MFU_cmd_nxt;
	logic [1:0] i_MPU_SFU_cmd, i_MPU_SFU_cmd_nxt;

	/*MPU -> SFU*/
	//logic [1:0] i_MPU_SFU_cmd;
	logic i_new_head;
	logic i_reduce_max_output_ready;

	logic [`BIT_NUM_16-1:0] o_dma_vector [0:`PARALLEL_NUM-1];
	logic o_dma_vector_valid;

	/*DMA->MFU*/
	logic [`BIT_NUM-1:0] i_data [0:`PARALLEL_NUM-1];
	logic [`BIT_NUM-1:0] i_weight [0:`MFU_LANE_NUM-1] [0:`PARALLEL_NUM-1];
	logic i_MPU_data_valid [0:`MFU_LANE_NUM-1] [0:`PARALLEL_NUM-1];
	logic i_mfu_final_in [0:`MFU_LANE_NUM-1];
	logic i_bf16_int4_final_in;

	/*MFU->SFU*/
    logic o_final_out [0:`MFU_LANE_NUM-1];
	logic o_final_out_pre [0:`MFU_LANE_NUM-1];
	logic [`BIT_NUM-1:0] o_mux_data [0:`MFU_LANE_NUM-1];
	logic [`BIT_NUM-1:0] o_sv_ports [0:`MFU_LANE_NUM-1] [0:`PARALLEL_TOKEN_NUM-1];
	logic [`BIT_NUM_16*`MUL_16X4_LANE_NUM-1:0] packed_16x4_bf16_out;
	logic [`BIT_NUM_16-1:0] o_16x4_bf16_out [0:`MUL_16X4_LANE_NUM-1];

	/*SFU->SRAM*/
	logic [`BIT_NUM-1:0] o_max_value;
	logic o_max_valid;
	logic [`DIC_NUM_LOG-1:0] o_max_id;
	logic o_max_id_valid;
	logic [`BIT_NUM-1:0] o_vector [0:`PARALLEL_NUM-1];
	logic o_vector_valid;

	logic [3:0] state, state_nxt;
	logic o_bf16_int4_final_out;

	logic [`BIT_NUM_16-1:0] o_MPU_DMA_data 		 [0:`PARALLEL_NUM-1];
	logic MPU_DMA_data_valid;
	logic MPU_VPU_data_valid;
	logic [`BIT_NUM-1:0]    MPU_VPU_data 		 [0:`PARALLEL_NUM-1];
	
	logic [`BIT_NUM-1:0] i_prob_reg [0:`PARALLEL_TOKEN_NUM-1];

	logic [7:0] proj_cnt;
	logic [1:0] mlp_cnt;
	//logic [14:0] cnt_w, cnt_r;

	logic SV_data_valid, SV_data_valid_reg;

	logic token_len_flag;
	logic o_lm_head_finish;
	
	logic  sfu_m_valid_reset;
    assign sfu_m_valid_reset = (((state == SV) || (state == SV_1)) && o_final_out[0] && sv_final_out_cnt == 2'd3);

	assign o_MPU_VPU_data_valid = MPU_VPU_data_valid;
	assign o_MPU_DMA_data_valid = MPU_DMA_data_valid;
	assign o_MPU_max = o_max_value;
	assign o_MPU_max_valid = o_max_valid;
	assign o_MPU_max_id = o_max_id;
	assign o_MPU_max_id_valid = o_max_id_valid;
	assign o_MPU_VPU_flag = ((state == QK_SENT_FLAG) || (state == QK_SENT_FLAG_1) || (state == SV_SENT_FLAG) || (state == SV_SENT_FLAG_1));

	assign o_SV_data_valid = SV_data_valid_reg;
	//assign o_MPU_max_id = o_max_id;
	//assign o_MPU_max_id_valid = o_max_id_valid;
	//assign o_MPU_data_valid = o_vector_valid;
	//assign o_MPU_top_k_valid = o_top_k_valid;

	always@(*) begin
		if(o_max_id_valid) begin
			$display("MAX_ID = %d", o_max_id);
		end
	end

	genvar i, j;
	generate //[15:0] i_MPU_weight [0:15][0:63] -> [15:0][63:0][15:0] i_weight
    	for (i = 0; i < `MUL_16X4_LANE_NUM; i = i + 1) begin : unpacked_16x4_out
    	    assign o_16x4_bf16_out[i] = packed_16x4_bf16_out[(`MUL_16X4_LANE_NUM-1-i)*`BIT_NUM_16 +: `BIT_NUM_16];  
    	end
	endgenerate

	generate //[15:0] i_MPU_data [0:63] -> [63:0][15:0] i_data
    	for (i = 0; i < `PARALLEL_NUM; i = i + 1) begin : mpu_data_i
			assign i_data[i] = (state == SV || state == SV_1) ? i_prob[i & 7] : i_mpu_64x8_data0[(`PARALLEL_NUM-1-i)*`BIT_NUM +: `BIT_NUM];
    	end
	endgenerate

	generate //[15:0] i_MPU_weight [0:15][0:63] -> [15:0][63:0][15:0] i_weight
    	for (i = 0; i < `MFU_LANE_NUM; i = i + 1) begin : mpu_weight_i
    	    for (j = 0; j < `PARALLEL_NUM; j = j + 1) begin : mpu_weight_j
    	        assign i_weight[i][j] = i_mpu_64x8_data1[((`MFU_LANE_NUM-1-i)*`PARALLEL_NUM*`BIT_NUM+(`PARALLEL_NUM-1-j)*`BIT_NUM) +: `BIT_NUM];  
    	    end
    	end
	endgenerate

	generate //[15:0] i_MPU_weight [0:15][0:63] -> [15:0][63:0][15:0] i_weight
    	for (i = 0; i < `MFU_LANE_NUM; i = i + 1) begin : mpu_valid_i
    	    for (j = 0; j < `PARALLEL_NUM; j = j + 1) begin : mpu_valid_j
    	        assign i_MPU_data_valid[i][j] = i_mpu_64x8_data_vald[(`MFU_LANE_NUM-1-i)*`PARALLEL_NUM+(`PARALLEL_NUM-1-j)];  
    	    end
    	end
	endgenerate
	
	generate
	    for (i = 0; i < `PARALLEL_NUM; i = i + 1) begin : bit_packing
	        assign o_mpu_done_data[i*`BIT_NUM_16 +: `BIT_NUM_16] = o_MPU_DMA_data[ `PARALLEL_NUM-1-i];
	    end
	endgenerate

	generate 
    	for (i = 0; i < `PARALLEL_NUM; i = i + 1) begin : mpu_vpu_data
    	    assign o_MPU_VPU_data[i] = MPU_VPU_data[i];
    	end
	endgenerate

	always@(*) begin
        if((|i_mpu_64x8_data_vald))
			i_buffer_select_w = i_buffer_select_r + 1;
		else
			i_buffer_select_w = i_buffer_select_r;
	end

	assign i_bf16_int4_final_in = ((input_cnt == proj_cnt) && (i_16x4_MPU_data_valid));

	logic final_in_valid_window;
	
	assign final_in_valid_window = ((state == SV  || state == SV_1) || 
                       			   ((state == QK || state == QK_1)   && sub_cnt   == 2'd3) || 
                       			   (state == IDLE && input_cnt == proj_cnt)); 
	generate 
    	for (i = 0; i < `MFU_LANE_NUM; i = i + 1) begin : final_in
    	    assign i_final_in[i] = final_in_valid_window && i_MPU_data_valid[i][0];
    	end
	endgenerate

	assign i_accu_buffer_reset = ((input_cnt == 8'd0) && (i_16x4_MPU_data_valid || (|i_mpu_64x8_data_vald)));

	//i_cmd use ture register, inside MPU make a state keep at that state as long as i_cmd change to another non zero num
	always @(*) begin
        state_nxt = state; 
        case(state)
            IDLE: begin 
                if (i_cmd == 6'd13)      state_nxt = QK_SENT_FLAG;
                
            end
			QK_SENT_FLAG: begin
				state_nxt = QK;
			end
			QK: begin
				if(i_cmd != 6'd13 && i_cmd != 6'd0)
					state_nxt = IDLE;
				else begin
					if(input_token_len_cnt < 10'd8)
						//state_nxt = (i_prob_valid) ? SV_SENT_FLAG : state;
						state_nxt = (i_prob_valid) ? SV_SENT_FLAG_1 : state;
					else
						state_nxt = (o_final_out[0]) ? QK_SENT_FLAG_1 : state;
				end
				// if(o_final_out[0]) begin
				// 	if(input_token_len_cnt < 10'd8)
				// 		state_nxt = (i_vpu_s_is_ready) ? SV_SENT_FLAG : QK;
				// 	else
				// 		state_nxt = QK_SENT_FLAG_1;
				// end
			end
			QK_SENT_FLAG_1: begin
				state_nxt = QK_1;
			end
			QK_1: begin
				if(o_final_out[0]) begin
					state_nxt = SV_SENT_FLAG;
				end
			end
			SV_SENT_FLAG: begin
					state_nxt = SV;
			end
			SV: begin
				if(o_final_out[0] && sv_final_out_cnt == 2'd3) begin
					// if(input_token_len_cnt < 10'd8)
					// 	state_nxt = WAIT_FINISH;
					// else begin
					if(10'(flash_attn_cnt) == (input_token_len_cnt >> 3))
						state_nxt = SV_SENT_FLAG_1;
					else
						state_nxt = QK_SENT_FLAG_1;
					// end
				end
			end
			SV_SENT_FLAG_1: begin
				state_nxt = SV_1;
			end
			SV_1: begin
				if(o_final_out[0] && sv_final_out_cnt == 2'd3) begin
					state_nxt = WAIT_FINISH;
				end
			end
			WAIT_FINISH: begin
				if (i_one_head_fa_finish)
					state_nxt = QK_SENT_FLAG;
				else
					state_nxt = WAIT_FINISH;
			end
            
            default: state_nxt = 4'd0;
        endcase
    end

	always @(*) begin
		if(state == QK_SENT_FLAG || state == QK_SENT_FLAG_1)
			i_MPU_MFU_cmd_nxt = 2'd2;
		else if(state == SV_SENT_FLAG || state == SV_SENT_FLAG_1)
			i_MPU_MFU_cmd_nxt = 2'd3;
		else if(state == IDLE)
			i_MPU_MFU_cmd_nxt = 2'd0;
		else
			i_MPU_MFU_cmd_nxt = i_MPU_MFU_cmd;
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        SV_data_valid_reg <= 0;
	    end 
		else begin
			SV_data_valid_reg <= SV_data_valid;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        i_MPU_MFU_cmd <= 2'd0;
	    end 
		else begin
			i_MPU_MFU_cmd <= i_MPU_MFU_cmd_nxt;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        mlp_cnt <= 2'd0;
	    end 
		else begin
			if(i_cmd == 6'd23 && MPU_VPU_data_valid)
				mlp_cnt <= mlp_cnt+1;
			else
				mlp_cnt <= mlp_cnt;
		end
	end

	always @(*) begin
		if((state == QK || state == QK_1) && o_final_out_pre[0])
			i_MPU_SFU_cmd_nxt = 2'd2;
		else if((state == SV || state == SV_1) && o_final_out_pre[0])
			i_MPU_SFU_cmd_nxt = 2'd3;
		else if(mlp_cnt == 2 || mlp_cnt == 3)
			i_MPU_SFU_cmd_nxt = 2'd1;
		else if(state == IDLE)
			i_MPU_SFU_cmd_nxt = 2'd0;
		else
			i_MPU_SFU_cmd_nxt = i_MPU_SFU_cmd;
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        i_MPU_SFU_cmd <= 2'd0;
	    end 
		else begin
			i_MPU_SFU_cmd <= i_MPU_SFU_cmd_nxt;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        state <= 4'd0;
	    end 
		else begin
			state <= state_nxt;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        i_new_head <= 0;
	    end 
		else begin
			i_new_head <= ((state == QK_SENT_FLAG) || (i_cpu_cmd == 6'd33)) ? 1 : 0;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        i_reduce_max_output_ready <= 0;
	    end 
		else begin
			i_reduce_max_output_ready <= (((state == QK || state == QK_1) && o_final_out_pre[0]) || (o_lm_head_finish && o_final_out_pre[0]))  ? 1 : 0;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        sub_cnt <= 2'd0;
	    end 
		else begin
			if(i_16x4_MPU_data_valid || (|i_mpu_64x8_data_vald))
				sub_cnt <= sub_cnt + 2'b1;
			else
				sub_cnt <= sub_cnt;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        input_cnt     <= 8'd0;
	    end 
		else begin
			if(((state == IDLE && (|i_mpu_64x8_data_vald)) || i_16x4_MPU_data_valid) && sub_cnt == 2'd3) begin
				if(input_cnt == proj_cnt)
					input_cnt <= 8'd0; 
				else
					input_cnt <= input_cnt + 8'd1;
			end
			else
				input_cnt <= input_cnt;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        sv_final_out_cnt     <= 2'd0;
	    end 
		else begin
			if((state == SV || state == SV_1) && o_final_out[0]) begin
				sv_final_out_cnt <= sv_final_out_cnt + 1;
			end
			else
				sv_final_out_cnt <= sv_final_out_cnt;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        token_len_flag     <= 1'd0;
	    end 
		else begin
			if (i_cpu_cmd == 6'd3) begin
				token_len_flag <= 1;
			end
			else
				token_len_flag <= token_len_flag;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        input_token_len_cnt     <= 10'd0;
	    end 
		else begin
			if (i_cpu_cmd == 6'd3 && (token_len_flag == 1)) begin
				input_token_len_cnt <= input_token_len_cnt + 1;
			end
			else
				input_token_len_cnt <= input_token_len_cnt;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        flash_attn_cnt <= 7'd0;
	    end 
		else begin
			if(state == SV_SENT_FLAG)
				flash_attn_cnt <= flash_attn_cnt + 1;
			else if(state == SV_SENT_FLAG_1)
				flash_attn_cnt <= 0;
			else
				flash_attn_cnt <= flash_attn_cnt;
		end
	end

	// always@(*)begin
    //     if(i_cmd == PASS_OPER) begin
    //         if(valid_delay[`SFU_COMP_TOTAL_DELAY-1])
    //             cnt_w = cnt_r + 1;
    //         else
    //             cnt_w = cnt_r;
    //     end
    //     else begin
    //         cnt_w = 0;
    //     end
    // end

	// always @(posedge i_clk or negedge i_rst_n) begin
	// 	if (!i_rst_n) begin
	// 		cnt_r <= 0;
	// 	end
	// 	else begin
	// 		cnt_r <= cnt_w;
	// 	end
	// end

	always@(posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			//reduce_max_output_ready_delay <= 0;
			//qk_start_delay <= 0;
			i_buffer_select_r <= 0;
		end
		else begin
			//reduce_max_output_ready_delay <= reduce_max_output_ready_delay_nxt;
			//qk_start_delay <= qk_start_delay_nxt;
			i_buffer_select_r <= i_buffer_select_w;
		end
	end

	always @(posedge i_clk or negedge i_rst_n) begin
	    if (!i_rst_n) begin
	        proj_cnt <= 8'd39;
	    end 
		else begin
			if(i_cmd == 6'd15)
				proj_cnt <= 8'd31;
			else if(i_cmd == 6'd25)
				proj_cnt <= 8'd159;
			else
				proj_cnt <= 8'd39;
		end
	end

	(* dont_touch = "true" *) logic [63:0] dma_vpu_en_rep;
	logic dma_vpu_cond;
	assign dma_vpu_cond = (i_cmd == 6'd7 || i_cmd == 6'd11 || i_cmd == 6'd13 || i_cmd == 6'd23);

	always_ff @(posedge i_clk) begin
	    // logic dma_vpu_cond;
	    // dma_vpu_cond = (i_cmd == 6'd7 || i_cmd == 6'd11 || i_cmd == 6'd13 || i_cmd == 6'd23);
	    dma_vpu_en_rep <= {64{dma_vpu_cond}};
	end

	// (* dont_touch = "true" *) logic [63:0] vpu_en_rep;

	// always_ff @(posedge i_clk) begin
	//     logic vpu_cond;
	//     vpu_cond = (i_cmd == );
	//     vpu_en_rep <= {64{vpu_cond}};
	// end


	always@(posedge i_clk or negedge i_rst_n) begin //bf16 x int4 o_port
		if(!i_rst_n) begin
			MPU_DMA_data_valid <= 0;
			for (k = 0; k < `PARALLEL_NUM; k++) begin
    		    o_MPU_DMA_data[k] <= '0;
    		end
		end
		else begin
			MPU_DMA_data_valid <= (dma_vpu_en_rep[0]) ? 0: o_dma_vector_valid;
			for (k = 0; k < `PARALLEL_NUM; k++) begin
    		    o_MPU_DMA_data[k] <= dma_vpu_en_rep[k] ? '0: o_dma_vector[k];
    		end
		end
	end

	always@(posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			MPU_VPU_data_valid <= 0;
			for (k = 0; k < `PARALLEL_NUM; k++) begin
    		    MPU_VPU_data[k] <= '0;
    		end
		end
		else begin
			MPU_VPU_data_valid <= (dma_vpu_en_rep[0]) ? o_vector_valid : 0;
			for (k = 0; k < `PARALLEL_NUM; k++) begin
    		    MPU_VPU_data[k] <= dma_vpu_en_rep[k] ? o_vector[k] : '0;
    		end
		end
	end

	
	bf16_int4_mul u_bf16_int4_mul(
    	.clk(i_clk),
    	.rst_n(i_rst_n),
    	.i_accu_buffer_reset(i_accu_buffer_reset),
    	.i_final_in(i_bf16_int4_final_in),
    	.i_MPU_data_valid(i_16x4_MPU_data_valid),  //high fanout
    	.i_scale(i_16x4_scale),
    	.bf16_in(i_16x4_bf16_in), 
    	.int4_in(i_16x4_int4_in), 
    	.bf16_out(packed_16x4_bf16_out),
    	.o_final_out(o_bf16_int4_final_out)
    );

	

	generate
		for (i = 0; i < `MFU_LANE_NUM; i = i + 1) begin: gen_MFU
			MFU u_MFU (
				.i_clk(i_clk),
				.i_rst_n(i_rst_n),
				.i_accu_buffer_reset(i_accu_buffer_reset),
				.i_buffer_select(i_buffer_select_r),
				.i_data(i_data),
				.i_weight(i_weight[i]),
				.i_cmd(i_MPU_MFU_cmd),
				.i_sfu_m_valid_reset(sfu_m_valid_reset),
				.i_final_in(i_final_in[i]),
				.o_final_out(o_final_out[i]),
				.o_final_out_pre(o_final_out_pre[i]),
				.o_sv_ports(o_sv_ports[i]),
				.o_mux_data(o_mux_data[i])
			);
		end
	endgenerate

    SFU_M u_SFU_M (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),

		.i_cmd(i_MPU_SFU_cmd),
		.i_cpu_cmd(i_cmd),
		.i_16x4_bf16_data(o_16x4_bf16_out),
		.i_sv_ports(o_sv_ports),
		.i_mfu_data(o_mux_data),
		.i_bf16_int4_valid(o_bf16_int4_final_out),
		.i_mfu_valid(o_final_out[0]),
		.i_mlp_cnt(mlp_cnt),
		.i_new_head(i_new_head),
		.i_reduce_max_output_ready(i_reduce_max_output_ready),
		//.i_sfu_m_valid_reset(sfu_m_valid_reset),

        .o_max_value(o_max_value),
		.o_max_valid(o_max_valid),
		.o_max_id(o_max_id),
		.o_max_id_valid(o_max_id_valid),
		
        .o_MPU_VPU_data(o_vector),
        .o_MPU_VPU_data_valid(o_vector_valid),
		.o_MPU_DMA_data(o_dma_vector),
		.o_MPU_DMA_data_valid(o_dma_vector_valid),
		//.o_cnt_r(o_cnt_r),
		.o_lm_head_finish(o_lm_head_finish),
		.o_SV_data_valid(SV_data_valid)
    );

	logic [`BIT_NUM-1:0] RAM [0:2047];
	logic [7:0] RAM_cnt;
	logic RAM_flag;

	always@(posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			RAM_flag <= 0;
		end
		else begin
			if(i_cmd == 6'd33 && (o_final_out[0]) && (RAM_cnt == 8'd255))
				RAM_flag <= 1;
			else if(i_cmd != 6'd33)
				RAM_flag <= 0;
			else
				RAM_flag <= RAM_flag;
		end
	end

	always@(posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			RAM_cnt <= 0;
		end
		else begin
			
			if(i_cmd == 6'd33 && (o_final_out[0]) && (RAM_flag == 0))
				RAM_cnt <= RAM_cnt + 1;
			else
				RAM_cnt <= RAM_cnt;
		end
	end

	always@(posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			for (k = 0; k < 2048; k++) begin
    		    RAM[k] <= '0;
    		end
		end
		else begin
			for (k = 0; k < 2048; k++) begin
    		    RAM[k] <= RAM[k];
    		end
			if((RAM_flag == 0) && (o_final_out[0]) && i_cmd == 6'd33) begin
				for (k = 0; k < 8; k++) begin
    			    RAM[RAM_cnt*8+k] <= o_mux_data[k];
    			end
			end
		end
	end
    
//    ila_8 mpu_inner (
//        .clk(i_clk),
//        .probe0(state), //4
//        .probe1(flash_attn_cnt), //7
//        .probe2(i_one_head_fa_finish), //1
//        .probe3(i_cpu_cmd), //6
//        .probe4(i_cmd), //6
//        .probe5(sv_final_out_cnt), //2
//        .probe6(i_MPU_MFU_cmd), //2
//        .probe7(i_MPU_SFU_cmd), //2
//        .probe8(i_mfu_final_in[0]), //1
//        .probe9(i_bf16_int4_final_in), //1
//        .probe10(o_MPU_max), //32
//        .probe11(o_MPU_max_valid), //1
//        .probe12(o_final_out[0]), //1
//        .probe13(o_bf16_int4_final_out), //1
//        .probe14(MPU_DMA_data_valid), //1
//        .probe15(MPU_VPU_data_valid), //1
//        .probe16(proj_cnt), //8
//        .probe17(mlp_cnt), //2
//        .probe18(SV_data_valid), //1
//        .probe19(token_len_flag), //1
//	    .probe20(o_lm_head_finish), //1
//	    .probe21(i_prob_valid), //1
//	    .probe22(i_one_head_fa_finish), //1
//	    .probe23(o_MPU_VPU_flag), //1
//	    .probe24(o_MPU_VPU_data[0]), //32
//	    .probe25(o_MPU_VPU_data[`PARALLEL_NUM-1]), //32
//	    .probe26(o_mpu_done_data[`BIT_NUM_16-1:0]), //16
//	    .probe27(o_mpu_done_data[`BIT_NUM_16*`PARALLEL_NUM-1 -:`BIT_NUM_16]) //16
//    );
endmodule



/*reduce_max_output_ready_delay combinational logic*/
// 	always@(*)begin
// 		reduce_max_output_ready_delay_nxt [0] = i_reduce_max_output_ready;
// 		for(k=1; k<`MFU_TOTAL_DELAY; k=k+1)begin
// 			reduce_max_output_ready_delay_nxt[k] = reduce_max_output_ready_delay[k-1];
// 		end
// 	end

// 	always@(*)begin
// 		qk_start_delay_nxt [0] = i_qk_start;
// 		for(k=1; k<`MFU_TOTAL_DELAY; k=k+1)begin
// 			qk_start_delay_nxt[k] = qk_start_delay[k-1];
// 		end
// 	end

// /************************************************************************control***************************************************************/    
//     logic state, state_nxt;
	
// 	logic [`BIT_NUM-1:0] accum_out [0:`MUL_16X4_LANE_NUM-1];
// 	logic [`BIT_NUM-1:0] accumulator [0:`MUL_16X4_LANE_NUM-1];
// 	logic [`BIT_NUM-1:0] input_acc [0:`MUL_16X4_LANE_NUM-1];

//     generate
//         for (i = 0; i < `MUL_16X4_LANE_NUM; i = i + 1) begin 
//             BF32_ADDER u_BF32_ADDER (
// 	        	  .i_data_1(input_acc[i]),              // input wire [15 : 0] s_axis_a_tdata
// 	        	  .i_data_2(accumulator[i]),              // input wire [15 : 0] s_axis_b_tdata
// 	        	  .o_add(accum_out[i]) ,   // output wire [15 : 0] m_axis_result_tdata
// 	        	  .i_clk(i_clk),
// 	        	  .i_rst_n(i_rst_n)
// 	        );
//         end
//     endgenerate

// 	/*reset_accu_buffer_delay combinational logic*/
// 	logic [`MFU_RESET_ACCU_BUFFER_DELAY-1:0] reset_accu_buffer_delay ;
// 	logic [`MFU_RESET_ACCU_BUFFER_DELAY-1:0] reset_accu_buffer_delay_nxt ;
	
// 	logic [`MFU_FINAL_IN_DELAY-1:0]  final_in_delay ;
// 	logic [`MFU_FINAL_IN_DELAY-1:0]  final_in_delay_nxt ;

// 	logic [`MFU_BUFFER_SELECT_DELAY-1:0][1:0]  buffer_select_delay ;
// 	logic [`MFU_BUFFER_SELECT_DELAY-1:0][1:0]  buffer_select_delay_nxt ;
	
// 	logic [1:0] i_buffer_select_r, i_buffer_select_w;
	
// 	logic [`BIT_NUM-1:0] accu_buffer [0:`MUL_16X4_LANE_NUM-1][0:3];
//     logic [`BIT_NUM-1:0] accu_buffer_nxt [0:`MUL_16X4_LANE_NUM-1][0:3];

// 	logic [`BIT_NUM-1:0] accu_buffer_result1 [0:`MFU_LANE_NUM-1];
//     logic [`BIT_NUM-1:0] accu_buffer_result2 [0:`MFU_LANE_NUM-1];
// 	logic [`BIT_NUM-1:0] accu_buffer_result  [0:`MFU_LANE_NUM-1];

// 	logic i_accu_buffer_reset;
// 	logic i_final_in;

// 	logic [1:0] sub_cnt; 
// 	logic [5:0] input_cnt;    

// 	assign i_final_in = ((input_cnt == 6'd39) && (i_16x4_MPU_data_valid || (|i_MPU_data_valid))) || 
// 						((state == `SV) && (|i_MPU_data_valid)) ||
// 						((state == `QK && (sub_cnt == 2'd3)) && (|i_MPU_data_valid));
// 	assign i_accu_buffer_reset = (input_cnt == 6'd0) && (i_16x4_MPU_data_valid || (|i_MPU_data_valid));

// 	always @(posedge i_clk or negedge i_rst_n) begin
// 	    if (!i_rst_n) begin
// 	        sub_cnt <= 2'd0;
// 	    end 
// 		else begin
// 			if(i_16x4_MPU_data_valid || (|i_MPU_data_valid))
// 				sub_cnt <= sub_cnt + 2'b1;
// 			else
// 				sub_cnt <= sub_cnt;
// 		end
// 	end

// 	always @(posedge i_clk or negedge i_rst_n) begin
// 	    if (!i_rst_n) begin
// 	        input_cnt     <= 6'd0;
// 	    end 
// 		else begin
// 			if(((state == `LM_PROJ && (|i_MPU_data_valid)) || i_16x4_MPU_data_valid) && sub_cnt == 2'd3) begin
// 				if(input_cnt == 6'd39)
// 					input_cnt <= 6'd0; 
// 				else
// 					input_cnt <= input_cnt + 1'b1;
// 			end
// 			else
// 				input_cnt <= input_cnt;
// 		end
// 	end


// 	always@(*)begin
// 		reset_accu_buffer_delay_nxt [0] = i_accu_buffer_reset;
// 		for(k=1; k<`MFU_RESET_ACCU_BUFFER_DELAY; k=k+1)begin
// 			reset_accu_buffer_delay_nxt[k] = reset_accu_buffer_delay[k-1];
// 		end
// 	end
	
// 	/*final_in_delay combinational logic*/
// 	always@(*)begin
// 		final_in_delay_nxt [0] = i_final_in;
// 		for(k=1; k<`MFU_FINAL_IN_DELAY; k=k+1)begin
// 			final_in_delay_nxt[k] = final_in_delay[k-1];
// 		end
// 	end
	
// 	/*buffer_select_delay combinational logic*/
// 	always@(*)begin
// 		buffer_select_delay_nxt [0] = i_buffer_select_r;
// 		for(k=1; k<`MFU_BUFFER_SELECT_DELAY; k=k+1)begin
// 			buffer_select_delay_nxt[k] = buffer_select_delay[k-1];
// 		end
// 	end
	
// 	always@(*) begin
//         if(i_16x4_MPU_data_valid || (|i_MPU_data_valid))
// 			i_buffer_select_w = i_buffer_select_r + 1;
// 		else
// 			i_buffer_select_w = i_buffer_select_r;
// 	end
	
// 	always@(posedge clk or negedge rst_n)begin 
// 		if(!rst_n)begin
// 			reset_accu_buffer_delay <= 0;
// 			final_in_delay <= 0;
// 			buffer_select_delay <= 0;
// 			i_buffer_select_r <= 0;
// 			for (k = 0; k < `MUL_16X4_LANE_NUM; k = k + 1) begin
// 			 for (w = 0; w < 4; w = w + 1) begin
// 			     accu_buffer[k][w] <= 0;
// 			 end
// 			end
// 		end else begin 
// 			reset_accu_buffer_delay <= reset_accu_buffer_delay_nxt;
// 			final_in_delay <= final_in_delay_nxt;
// 			buffer_select_delay <= buffer_select_delay_nxt;
// 			i_buffer_select_r <= i_buffer_select_w;
// 			for (k = 0; k < `MUL_16X4_LANE_NUM; k = k + 1) begin
// 			 for (w = 0; w < 4; w = w + 1) begin
// 			     accu_buffer[k][w] <= accu_buffer_nxt[k][w];
// 			 end
// 			end
// 		end
// 	end

    
//     always @(*) begin
//         if (reset_accu_buffer_delay[`MFU_RESET_ACCU_BUFFER_DELAY-1]) begin
//             for (k = 0; k < `MUL_16X4_LANE_NUM; k = k + 1) accumulator[k] = '0;
//         end else begin
//             for (k = 0; k < `MUL_16X4_LANE_NUM; k = k + 1) begin
//                 accumulator[k] = accu_buffer[k][buffer_select_delay[`MFU_BUFFER_SELECT_DELAY-5]];
//             end
//         end
//     end

//     always @(*) begin
//         for (k = 0; k < `MUL_16X4_LANE_NUM; k = k + 1) begin
//             for (w = 0; w < 4; w = w + 1) begin
//                 accu_buffer_nxt[k][w] = accu_buffer[k][w];
//             end
//         end
//         for (k = 0; k < `MUL_16X4_LANE_NUM; k = k + 1) begin
//             accu_buffer_nxt[k][buffer_select_delay[`MFU_BUFFER_SELECT_DELAY-2]] = accum_out[k];
//         end
//     end
    
// 	generate
// 		for (i = 0; i < `MFU_LANE_NUM; i = i + 1) begin : accu_buffer_QK
//     		BF32_ADDER u_BF32_ACCU_ADDER1 (
// 				  .i_data_1(accu_buffer[i][0]),              // input wire [15 : 0] s_axis_a_tdata
// 				  .i_data_2(accu_buffer[i][1]),              // input wire [15 : 0] s_axis_b_tdata
// 				  .o_add(accu_buffer_result1[i]) ,   // output wire [15 : 0] m_axis_result_tdata
// 				  .i_clk(i_clk),
// 				  .i_rst_n(i_rst_n)
// 			);
// 			BF32_ADDER u_BF32_ACCU_ADDER2 (
// 				  .i_data_1(accu_buffer[i][2]),              // input wire [15 : 0] s_axis_a_tdata
// 				  .i_data_2(accu_buffer[i][3]),              // input wire [15 : 0] s_axis_b_tdata
// 				  .o_add(accu_buffer_result2[i]) ,   // output wire [15 : 0] m_axis_result_tdata
// 				  .i_clk(i_clk),
// 				  .i_rst_n(i_rst_n)
// 			);
// 			BF32_ADDER u_BF32_ACCU_ADDER3 (
// 				  .i_data_1(accu_buffer_result1[i]),              // input wire [15 : 0] s_axis_a_tdata
// 				  .i_data_2(accu_buffer_result2[i]),              // input wire [15 : 0] s_axis_b_tdata
// 				  .o_add(accu_buffer_result[i]) ,   // output wire [15 : 0] m_axis_result_tdata
// 				  .i_clk(i_clk),
// 				  .i_rst_n(i_rst_n)
// 			);
// 		end
// 	endgenerate
       

//     logic [511:0] bf16_out_wire;
//     generate
//         for (j = 0; j < `MUL_16X4_LANE_NUM; j = j + 1) begin : gen_bf16_out
//             assign bf16_out_wire[j*16 +: 16] = accu_buffer[31-j][buffer_select_delay[`MFU_BUFFER_SELECT_DELAY-1]][31:16];
//         end
//     endgenerate
//     assign bf16_out = (final_in_delay[`MFU_FINAL_IN_DELAY-1] == 1'b1) ? bf16_out_wire : 512'd0;
    
// //    always@(*)begin
// //		bf16_out = 0; 
// //		if(final_in_delay[`MFU_FINAL_IN_DELAY-1] ==  1'b1)begin
// //		  for (k = 0; k < 32; k = k + 1) begin
// //			bf16_out[k*16 +: 16] = accu_buffer[31-k][buffer_select_delay[`MFU_BUFFER_SELECT_DELAY-1]][31:16];	
// //		  end	
// //		end
// //	end
	
	
// 	assign o_final_out = final_in_delay[`MFU_FINAL_IN_DELAY-1];
// //*****************************************************************end*********************************************************//