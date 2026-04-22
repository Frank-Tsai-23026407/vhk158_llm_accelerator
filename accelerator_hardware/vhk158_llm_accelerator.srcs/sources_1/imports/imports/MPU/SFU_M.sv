
`define SFU_COMP_TOTAL_DELAY 12 //one comp latency is 2
//`define SFU_DIV8_COMP_TOTAL_DELAY 16 //plus div8 one latency
`define SFU_REDUCE_MAX_TOTAL_DELAY 12 //plus (div8 one latency + one output register delay)
`define SFU_GELU_DELAY 10 // exp(4) + add(3) + div(8)
//`define SFU_REDUCE_MAX_REG_CLEAN_DELAY 8 //div8(1) + 4 comp latency(8) - preload(1) 
`define SFU_DIV16_DELAY 2
`define SFU_LM_PROJ_COMP_MAX_REG_DELAY 8
`define SFU_LM_PROJ_COMP_DELAY 6
`define B_DELAY 7

module SFU_M (
    input i_clk,
    input i_rst_n,

    input [1:0] i_cmd,
    input [5:0] i_cpu_cmd,
    input [`BIT_NUM_16-1:0] i_16x4_bf16_data [0:`MUL_16X4_LANE_NUM-1],
    input [`BIT_NUM-1:0] i_sv_ports [0:`MFU_LANE_NUM-1] [0:`PARALLEL_TOKEN_NUM-1],
    input [`BIT_NUM-1:0] i_mfu_data [0:`MFU_LANE_NUM-1],
    input i_bf16_int4_valid,
    input i_mfu_valid,
    input i_new_head,
    input i_reduce_max_output_ready, //MPU give
    input [1:0] i_mlp_cnt,

    output [`BIT_NUM-1:0] o_max_value,
    output o_max_valid,

    output [`DIC_NUM_LOG-1:0] o_max_id,
    output o_max_id_valid,

    output [`BIT_NUM-1:0]  o_MPU_VPU_data [0:`PARALLEL_NUM-1],
    output o_MPU_VPU_data_valid,
    output [`BIT_NUM_16-1:0] o_MPU_DMA_data [0:`PARALLEL_NUM-1],
    output o_MPU_DMA_data_valid,

    //output [14:0] o_cnt_r,
    output o_lm_head_finish,
    output o_SV_data_valid
);
    
    genvar i;
    integer j, k;

    localparam ACTI_OPER = 2'd1;
    localparam MASK_OPER = 2'd2;
    localparam PASS_OPER = 2'd0;
    localparam SV_OPER = 2'd3;

    logic [1:0] cnt; //bf16 x int4 gather 64 data
    logic [`BIT_NUM_16-1:0] bf16_storage [0:`MUL_16X4_LANE_NUM-1]; //bf16 x int4 gather 64 data

    /*id input buffer*/
    logic [`DIC_NUM_LOG-1:0] id_buffer [0:`MFU_LANE_NUM-1]; //comp input id 

    //reduce_max register
    logic [1:0] buffer_select_read_cnt_r;
    logic [1:0] buffer_select_read_cnt_w;
    logic [1:0] buffer_select_write_cnt_r;
    logic [1:0] buffer_select_write_cnt_w;
    logic [`BIT_NUM-1:0] max_value_temp_r [0:3];
    logic [`BIT_NUM-1:0] max_value_temp_w [0:3];
    logic [`DIC_NUM_LOG-1:0] max_value_id_temp_r [0:3]; 
    logic [`DIC_NUM_LOG-1:0] max_value_id_temp_w [0:3]; 

    //lm head 262144/8 cnt
    logic [14:0] cnt_w;
    logic [14:0] cnt_r;
    //assign o_cnt_r = cnt_r;
    /*output register*/
    logic [`BIT_NUM-1:0] vector_out [0:`PARALLEL_NUM-1]; // to VPU 64*32 bits vector
    logic [`BIT_NUM-1:0] vector_out_nxt [0:`PARALLEL_NUM-1];
    logic [`BIT_NUM-1:0] max_value_out, max_value_out_nxt; // to VPU 32 bits max
    logic [`DIC_NUM_LOG-1:0] max_id_out, max_id_out_nxt; //LM head max token
    logic valid_vector_out, valid_vector_out_nxt; //vector_out valid
    logic max_valid_out, max_valid_out_nxt; //max_value_out valid
    logic max_id_valid, max_id_valid_nxt; //max_id_out valid in LM head

    /*delay register*/
    logic [`SFU_COMP_TOTAL_DELAY-1:0] valid_delay_nxt, valid_delay; // mfu lm head through comp output valid
    logic [`SFU_DIV16_DELAY-1:0] div16_valid_delay_nxt, div16_valid_delay; // mfu lm head through comp output valid
    logic [`SFU_GELU_DELAY-1:0] bf16_int4_valid_delay, bf16_int4_valid_delay_nxt; // bf16 x int4 output valid
    logic [`SFU_REDUCE_MAX_TOTAL_DELAY-1:0] max_valid_delay_nxt, max_valid_delay; // i_reduce_max_output_ready, represent qk max output and lm head max id output

    logic [`BIT_NUM-1:0] comp_out1 [0:`MFU_LANE_NUM/2-1];
    logic [`BIT_NUM-1:0] comp_out2 [0:`MFU_LANE_NUM/4-1];
    logic [`BIT_NUM-1:0] comp_out3 ;
    logic [`BIT_NUM-1:0] comp_out1_div16 [0:`MFU_LANE_NUM/2-1];
    logic [`BIT_NUM-1:0] comp_result;

    logic [`DIC_NUM_LOG-1:0] comp_idout1 [0:`MFU_LANE_NUM/2-1];
    logic [`DIC_NUM_LOG-1:0] comp_idout2 [0:`MFU_LANE_NUM/4-1];
    logic [`DIC_NUM_LOG-1:0] comp_idout3 ;
    logic [`DIC_NUM_LOG-1:0] comp_idresult;

    logic [`BIT_NUM-1:0] comp_result12;
    logic [`BIT_NUM-1:0] comp_result34;
    logic [`BIT_NUM-1:0] comp_result_final;
    logic [`DIC_NUM_LOG-1:0] comp_idresult12;
    logic [`DIC_NUM_LOG-1:0] comp_idresult34;
    logic [`DIC_NUM_LOG-1:0] comp_idresult_final;

    logic [`BIT_NUM_16-1:0] gelu_out [0:`MUL_16X4_LANE_NUM-1];

    logic [`BIT_NUM-1:0] div16_out [0:`MFU_LANE_NUM-1];
    
    logic SV_data_valid, SV_data_valid_nxt;

    assign o_max_value = max_value_out;
    assign o_max_id = max_id_out;
    assign o_max_valid = max_valid_out;
    assign o_max_id_valid = max_id_valid;
    assign o_SV_data_valid = SV_data_valid;
    assign o_lm_head_finish = (cnt_r == 15'd32766) ? 1: 0;
//**************************************************************bf16 x int4 -> DMA data*****************************************************************// (direct pass1 to DMA)
    //cnt can change to 1bit
    assign o_MPU_DMA_data_valid = (i_bf16_int4_valid && (cnt == 2'd1 || cnt == 2'd3));
    generate
        for (i = 0; i < `MUL_16X4_LANE_NUM; i = i + 1) begin: o_MPU_DMA_data_collect1
            assign o_MPU_DMA_data[i] = bf16_storage[i];
        end
        for (i = `MUL_16X4_LANE_NUM; i < `PARALLEL_NUM; i = i + 1) begin: o_MPU_DMA_data_collect2
            assign o_MPU_DMA_data[i] = i_16x4_bf16_data[i-`MUL_16X4_LANE_NUM];
        end
    endgenerate

//**************************************************************bf16 x int4 or MPU -> VPU data*****************************************************************// (4 function to VPU)
    assign o_MPU_VPU_data_valid = valid_vector_out;
    generate
        for (i = 0; i < `PARALLEL_NUM; i = i + 1) begin: o_MPU_VPU_data_collect
            assign o_MPU_VPU_data[i] = vector_out[i];
        end
    endgenerate

    //assign o_MPU_DMA_data = o_final_out ? {bf16_storage, bf16_out_half} : '0;
//**************************************************************bf16 x int4 gather 64 data in two cycle*****************************************************************//    
    logic bf16_int4_valid_judge;
    assign bf16_int4_valid_judge = ((i_cmd == PASS_OPER && i_bf16_int4_valid) || (i_cmd == ACTI_OPER && bf16_int4_valid_delay[`SFU_GELU_DELAY-1]));
    
    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            cnt <= 2'd0;
        end 
        else begin
            if (bf16_int4_valid_judge)
                cnt <= cnt + 1'b1;
            else
                cnt <= cnt;    
        end 
    end

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            for (j = 0; j<`MUL_16X4_LANE_NUM; j++)
                bf16_storage[j] <= '0;
        end 
        else begin
            if(bf16_int4_valid_judge && (cnt == 2'd0 || cnt == 2'd2)) begin
                if(i_cmd == ACTI_OPER) begin
                    for (j = 0; j<`MUL_16X4_LANE_NUM; j++)
                        bf16_storage[j] <= gelu_out[j];
                end
                else begin
                    for (j = 0; j<`MUL_16X4_LANE_NUM; j++)
                        bf16_storage[j] <= i_16x4_bf16_data[j];
                end
            end
            else begin
                for (j = 0; j<`MUL_16X4_LANE_NUM; j++)
                    bf16_storage[j] <= bf16_storage[j];
            end
        end
    end

//**************************************************************bf16 x int4 -> Gelu data*****************************************************************// (1st function)
    generate
        for (i = 0; i < `MUL_16X4_LANE_NUM; i = i + 1) begin: gelu
            GeLU u_GeLU(
                .i_clk(i_clk),
                .i_rst_n(i_rst_n),
                .x(i_16x4_bf16_data[i]),
                .y(gelu_out[i])
            );
        end  
    endgenerate

//**************************************************************mfu -> div 16 / comp tree*****************************************************************// (2nd function)
    generate
        for (i = 0; i < `MFU_LANE_NUM; i = i + 1) begin: gen_div16
          bf32_div16 u_div (
            .i_clk(i_clk),
            .i_rst_n(i_rst_n),
            .bf32_in  (i_mfu_data[i]),
            .bf32_out (div16_out[i])
          );
        end
    endgenerate

    generate
        for (i = 0; i < `MFU_LANE_NUM/2; i = i + 1) begin: comp_tree_div16_input
            assign comp_out1_div16[i] = (i_cmd == PASS_OPER) ? comp_out1[i] : div16_out[comp_idout1[i][2:0]];
        end
    endgenerate

    generate
        for (i = 0; i < `MFU_LANE_NUM; i = i + 1) begin: id_buffer_assign
          //assign id_buffer[i] = (i_cmd == PASS_OPER) ? (cnt_r << 3) + i : i;
          assign id_buffer[i] = (cnt_r << 3) + i;
        end
    endgenerate

    generate
        for (i = 0; i < `MFU_LANE_NUM/2; i = i + 1) begin: max_comp1
            BF32_COMP u_BF32_COMP(
                .i_clk(i_clk),
                .i_rst_n(i_rst_n),
                .i_id_1(id_buffer[2*i]),
                .i_id_2(id_buffer[2*i+1]),
                .i_data_1(i_mfu_data[2*i]),
                .i_data_2(i_mfu_data[2*i+1]),
                .o_comp(comp_out1[i]),
                .o_comp_id(comp_idout1[i])
            );
        end

        for (i = 0; i < `MFU_LANE_NUM/4; i = i + 1) begin: max_comp2
            BF32_COMP u_BF32_COMP(
                .i_clk(i_clk),
                .i_rst_n(i_rst_n),
                .i_id_1(comp_idout1[2*i]),
                .i_id_2(comp_idout1[2*i+1]),
                .i_data_1(comp_out1_div16[2*i]),
                .i_data_2(comp_out1_div16[2*i+1]),
                .o_comp(comp_out2[i]),
                .o_comp_id(comp_idout2[i])
            );
        end

        BF32_COMP u_BF32_COMP(
            .i_clk(i_clk),
            .i_rst_n(i_rst_n),
            .i_id_1(comp_idout2[0]),
            .i_id_2(comp_idout2[1]),
            .i_data_1(comp_out2[0]),
            .i_data_2(comp_out2[1]),
            .o_comp(comp_out3),
            .o_comp_id(comp_idout3)
        );
        

        BF32_COMP u_BF32_COMP_MAX_REG(
            .i_clk(i_clk),
            .i_rst_n(i_rst_n),
            .i_id_1(comp_idout3),
            .i_id_2(max_value_id_temp_r[buffer_select_read_cnt_r]),
            .i_data_1(comp_out3),
            .i_data_2(max_value_temp_r[buffer_select_read_cnt_r]),
            .o_comp(comp_result),
            .o_comp_id(comp_idresult)
        );
    endgenerate 

    generate
        begin : GEN_MAX_COMPARATOR
            BF32_COMP u_BF32_COMP_MAX_REG12(
                .i_clk(i_clk),
                .i_rst_n(i_rst_n),
                .i_id_1(max_value_id_temp_r[0]),
                .i_id_2(max_value_id_temp_r[1]),
                .i_data_1(max_value_temp_r[0]),
                .i_data_2(max_value_temp_r[1]),
                .o_comp(comp_result12),
                .o_comp_id(comp_idresult12)
            );
    
            BF32_COMP u_BF32_COMP_MAX_REG34(
                .i_clk(i_clk),
                .i_rst_n(i_rst_n),
                .i_id_1(max_value_id_temp_r[2]),
                .i_id_2(max_value_id_temp_r[3]),
                .i_data_1(max_value_temp_r[2]),
                .i_data_2(max_value_temp_r[3]),
                .o_comp(comp_result34),
                .o_comp_id(comp_idresult34)
            );
    
            BF32_COMP u_BF32_COMP_MAX_REGFINAL(
                .i_clk(i_clk),
                .i_rst_n(i_rst_n),
                .i_id_1(comp_idresult12),
                .i_id_2(comp_idresult34),
                .i_data_1(comp_result12),
                .i_data_2(comp_result34),
                .o_comp(comp_result_final),
                .o_comp_id(comp_idresult_final)
            );
        end
    endgenerate

    always@(*)begin
        if(i_cpu_cmd == 6'd33) begin
            //if(valid_delay[`SFU_COMP_TOTAL_DELAY-1])
            if(i_mfu_valid)
                cnt_w = cnt_r + 1;
            else
                cnt_w = cnt_r;
        end
        else begin
            cnt_w = 0;
        end
    end

    always@(*)begin
		valid_delay_nxt [0] = i_mfu_valid;
		for(k=1; k<`SFU_COMP_TOTAL_DELAY; k=k+1)begin
			valid_delay_nxt[k] = valid_delay[k-1];
		end
	end

    always@(*)begin
		div16_valid_delay_nxt [0] = i_mfu_valid;
		for(k=1; k<`SFU_DIV16_DELAY; k=k+1)begin
			div16_valid_delay_nxt[k] = div16_valid_delay[k-1];
		end
	end

    always@(*)begin
		bf16_int4_valid_delay_nxt [0] = (i_mlp_cnt == 2'd2 || i_mlp_cnt == 2'd3) && i_bf16_int4_valid;
		for(k=1; k<`SFU_GELU_DELAY; k=k+1)begin
			bf16_int4_valid_delay_nxt[k] = bf16_int4_valid_delay[k-1];
		end
	end

    always@(*)begin
		max_valid_delay_nxt [0] = i_reduce_max_output_ready;
		for(k=1; k<`SFU_REDUCE_MAX_TOTAL_DELAY; k=k+1)begin
			max_valid_delay_nxt[k] = max_valid_delay[k-1];
		end
	end

    always @(*) begin
        if (i_cmd == MASK_OPER || i_cmd == PASS_OPER) begin
            for(j=0; j<4; j=j+1)
                max_value_id_temp_w[j] = max_value_id_temp_r[j];
            
            // max_value_temp_w[buffer_select_write_cnt_r] = comp_result;
            if(valid_delay[`SFU_LM_PROJ_COMP_MAX_REG_DELAY-1])
                max_value_id_temp_w[buffer_select_write_cnt_r] = comp_idresult;
        end
        else begin
            for(j=0; j<4; j=j+1)
                max_value_id_temp_w[j] = 0;
        end
    end

    always @(*) begin
        if(i_new_head == 1) begin
            for(j=0; j<4; j=j+1)
                max_value_temp_w[j] = 32'hFF800000;
        end
        else if ((i_cmd == PASS_OPER) || (i_cmd == MASK_OPER)) begin
            for(j=0; j<4; j=j+1)
                max_value_temp_w[j] = max_value_temp_r[j];
            
            // max_value_temp_w[buffer_select_write_cnt_r] = comp_result;
            if(valid_delay[`SFU_LM_PROJ_COMP_MAX_REG_DELAY-1])
                max_value_temp_w[buffer_select_write_cnt_r] = comp_result;
        end
        else begin
            for(j=0; j<4; j=j+1)
                max_value_temp_w[j] = max_value_temp_r[j];
        end
        // else if(i_cmd == SV_OPER) begin
        //     for(j=0; j<4; j=j+1)
        //         max_value_temp_w[j] = max_value_temp_r[j];
        // end
        // else begin
        //     for(j=0; j<4; j=j+1)
        //         max_value_temp_w[j] = 32'hFF800000;
        // end
    end
    // always @(*) begin
    //     for(j=0; j<4; j=j+1) 
    //         max_value_temp_w[j] = 32'hFF800000;

    //     if ((i_cmd == PASS_OPER) || (i_cmd == MASK_OPER) || (i_cmd == SV_OPER)) begin
    //         for(j=0; j<4; j=j+1) 
    //             max_value_temp_w[j] = max_value_temp_r[j];

    //         if ((i_cmd != SV_OPER) && valid_delay[`SFU_LM_PROJ_COMP_MAX_REG_DELAY-1])
    //             max_value_temp_w[buffer_select_write_cnt_r] = comp_result;
    //     end
    // end

    always @(*) begin
        if(i_cmd == PASS_OPER) begin
            if(max_valid_delay[`SFU_REDUCE_MAX_TOTAL_DELAY-1])
                max_value_out_nxt = comp_result_final;
            else 
                max_value_out_nxt = 0;
        end
        else begin
            if(max_valid_delay[`SFU_REDUCE_MAX_TOTAL_DELAY-5])
                max_value_out_nxt = comp_result;
            else 
                max_value_out_nxt = 0;
        end
        
    end

    always @(*) begin
        if(i_cmd == PASS_OPER) begin
            max_valid_out_nxt = 0;
        end
        else begin
            if(max_valid_delay[`SFU_REDUCE_MAX_TOTAL_DELAY-5])
                max_valid_out_nxt = 1;
            else 
                max_valid_out_nxt = 0;
        end
        
    end

    always @(*) begin
        if(i_cmd == PASS_OPER && max_valid_delay[`SFU_REDUCE_MAX_TOTAL_DELAY-1])
            max_id_out_nxt = comp_idresult_final;
        else 
            max_id_out_nxt = 0;
    end

    always @(*) begin
        if(i_cmd == PASS_OPER && max_valid_delay[`SFU_REDUCE_MAX_TOTAL_DELAY-1])
            max_id_valid_nxt = 1;
        else 
            max_id_valid_nxt = 0;
    end

    always @(*) begin
        if (i_cmd == PASS_OPER) begin
            if(valid_delay[`SFU_LM_PROJ_COMP_DELAY-1])
                buffer_select_read_cnt_w = buffer_select_read_cnt_r + 1'b1;
            else 
                buffer_select_read_cnt_w = buffer_select_read_cnt_r; 
        end
        else begin
            buffer_select_read_cnt_w = 0;
        end
    end

    always @(*) begin
        if (i_cmd == PASS_OPER) begin
            if(valid_delay[`SFU_LM_PROJ_COMP_MAX_REG_DELAY-1])
                buffer_select_write_cnt_w = buffer_select_write_cnt_r + 1'b1;
            else
                buffer_select_write_cnt_w = buffer_select_write_cnt_r;
        end
        else begin
            buffer_select_write_cnt_w = 0;
        end
    end

    always @(*) begin
        for (j = 0; j < `PARALLEL_NUM; j = j + 1) begin
            vector_out_nxt[j] = '0;
        end
        case(i_cmd)
            ACTI_OPER: begin
                if((bf16_int4_valid_delay[`SFU_GELU_DELAY-1] && (cnt == 2'd1 || cnt == 2'd3))) begin
                    for (j = 0; j < `MUL_16X4_LANE_NUM; j = j + 1) begin
                        vector_out_nxt[j] = {bf16_storage[j], 16'd0};
                    end
                    for (j = `MUL_16X4_LANE_NUM; j < `PARALLEL_NUM; j = j + 1) begin
                        vector_out_nxt[j] = {gelu_out[j - `MUL_16X4_LANE_NUM], 16'd0};
                    end
                end
            end
            MASK_OPER: begin
                if((div16_valid_delay[`SFU_DIV16_DELAY-1])) begin
                    for(j = 0; j<`MFU_LANE_NUM; j++)
                        vector_out_nxt[j] = div16_out[j];
                end
            end
            PASS_OPER: begin
                if(i_mfu_valid) begin
                    for(j = 0; j<`MFU_LANE_NUM; j++)
                        vector_out_nxt[j] = i_mfu_data[j];
                end
                else if((i_bf16_int4_valid && (cnt == 2'd1 || cnt == 2'd3))) begin
                    for (j = 0; j < `MUL_16X4_LANE_NUM; j = j + 1) begin
                        vector_out_nxt[j] = {bf16_storage[j], 16'd0};
                    end
                    for (j = `MUL_16X4_LANE_NUM; j < `PARALLEL_NUM; j = j + 1) begin
                        vector_out_nxt[j] = {i_16x4_bf16_data[j - `MUL_16X4_LANE_NUM], 16'd0};
                    end
                end
            end
            SV_OPER: begin
                if(i_mfu_valid) begin
                    for(j = 0; j<`MFU_LANE_NUM; j++) begin
                        for(k = 0; k<`PARALLEL_TOKEN_NUM; k++)
                            vector_out_nxt[`PARALLEL_TOKEN_NUM*j + k] = i_sv_ports[j][k];
                    end
                end
            end
            default: begin
                for (j = 0; j < `PARALLEL_NUM; j = j + 1) begin
                    vector_out_nxt[j] = '0;
                end
            end
        endcase
    end

    always @(*) begin
        //valid_vector_out_nxt = (i_reduce_max_output_ready) ? 1 : 0;
        valid_vector_out_nxt = 0;
        case(i_cmd)
            ACTI_OPER: begin
                if(bf16_int4_valid_delay[`SFU_GELU_DELAY-1] && (cnt == 2'd1 || cnt == 2'd3)) begin
                    valid_vector_out_nxt = 1;
                end
            end
            MASK_OPER: begin
                if((div16_valid_delay[`SFU_DIV16_DELAY-1])) begin
                    valid_vector_out_nxt = 1;
                end
            end
            PASS_OPER: begin
                if((i_bf16_int4_valid && (cnt == 2'd1 || cnt == 2'd3))) begin
                    valid_vector_out_nxt = 1;
                end
            end
            // SV_OPER: begin
            //     if (i_mfu_valid)
            //         valid_vector_out_nxt = 1;
            // end
        endcase  
    end

    always@(*) begin
        SV_data_valid_nxt = (i_cmd == SV_OPER) && i_mfu_valid;
    end

    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            valid_delay <= 0;
            div16_valid_delay <= 0;
            bf16_int4_valid_delay <= 0;
            max_valid_delay <= 0;
            for(j = 0; j<`PARALLEL_NUM; j++)
                vector_out[j] <= 0;
            max_value_out <= 0;
            max_id_out <= 0;
            for(j=0; j<4; j=j+1) begin
                max_value_temp_r[j] <= 32'hFF800000; 
                max_value_id_temp_r[j] <= 0;
            end
            cnt_r <= 0;
            valid_vector_out <= 0;
            buffer_select_read_cnt_r <= 0;
            buffer_select_write_cnt_r <= 0;
            max_valid_out <= 0;    
            max_id_valid <= 0;
            SV_data_valid <= 0;
        end else begin
            if(i_cmd == SV_OPER)
                valid_delay <= 0;
            else
                valid_delay <= valid_delay_nxt;
            // if(i_cmd == SV_OPER)
            //     div16_valid_delay <= 0;
            // else
            div16_valid_delay <= div16_valid_delay_nxt;
            bf16_int4_valid_delay <= bf16_int4_valid_delay_nxt;
            max_valid_delay <= max_valid_delay_nxt;
            for(j = 0; j<`PARALLEL_NUM; j++)
                vector_out[j] <= vector_out_nxt[j];
            max_value_out <= max_value_out_nxt;
            max_id_out <= max_id_out_nxt;
            for(j=0; j<4; j=j+1) begin
                max_value_temp_r[j] <= max_value_temp_w[j]; 
                max_value_id_temp_r[j] <= max_value_id_temp_w[j];
            end
            cnt_r <= cnt_w;
            valid_vector_out <= valid_vector_out_nxt;
            buffer_select_read_cnt_r <= buffer_select_read_cnt_w;
            buffer_select_write_cnt_r <= buffer_select_write_cnt_w;
            max_valid_out <= max_valid_out_nxt; 
            max_id_valid <= max_id_valid_nxt;
            SV_data_valid <=  SV_data_valid_nxt;
        end
    end

endmodule

module bf32_div16 (
    input                       i_clk,    
    input                       i_rst_n,  
    input      [`BIT_NUM-1:0]   bf32_in,
    output  [`BIT_NUM-1:0]   bf32_out
);
    
    logic        sign_r;
    logic [7:0]  exp_r;
    logic [22:0] mant_r;
    logic [1:0]  case_sel;
    logic [`BIT_NUM-1:0]   bf32_out_reg;
    assign bf32_out = bf32_out_reg;
    // --- Stage 1: Decode & Decision ---
    always_ff @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            sign_r   <= 1'b0;
            exp_r    <= 8'h0;
            mant_r   <= 23'h0;
            case_sel <= 2'd0;
        end else begin
            sign_r <= bf32_in[31];
            exp_r  <= bf32_in[30:23];
            mant_r <= bf32_in[22:0];
            
            if (bf32_in[30:23] == 8'hFF) 
                case_sel <= 2'd2; // Special (NaN/Inf)
            else if (bf32_in[30:23] > 8'd4) 
                case_sel <= 2'd1; // Normal reduction
            else if (bf32_in[30:23] == 8'd0) 
                case_sel <= 2'd0; // Subnormal
            else 
                case_sel <= 2'd3; // Transition to subnormal
        end
    end

    // --- Stage 2: Calculate & Reassemble ---
    logic [7:0]  next_exp;
    logic [22:0] next_mant;
    logic [23:0] shifted_mant;

    always_comb begin
        next_exp  = exp_r;
        next_mant = mant_r;
        shifted_mant = 0;

        case (case_sel)
            2'd2: begin // NaN/Inf: Keep as is
                next_exp  = exp_r;
                next_mant = mant_r;
            end
            2'd1: begin // Normal: exp - 4
                next_exp  = exp_r - 8'd4;
                next_mant = mant_r;
            end
            2'd0: begin // Subnormal: mant >> 4
                next_exp  = 8'd0;
                next_mant = mant_r >> 4;
            end
            2'd3: begin // Transition: shift hidden bit
                next_exp  = 8'd0;
                shifted_mant = {1'b1, mant_r} >> (8'd5 - exp_r);
                next_mant = shifted_mant[22:0];
            end
        endcase
    end

    always_ff @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n)
            bf32_out_reg <= `BIT_NUM'h0;
        else
            bf32_out_reg <= {sign_r, next_exp, next_mant};
    end

endmodule

module GeLU (
    input i_clk,
    input i_rst_n,
    input [`BIT_NUM_16-1:0] x,
    output [`BIT_NUM_16-1:0] y
);

    // y = mx+b
    integer k;
    // y = 0 for x <= -4.0
    parameter m1 = 16'h0000;
    parameter b1 = 16'h0000;
    
    // y = -0.018433x - 0.065430 for -4.0 < x <= -2.0
    parameter m2 = 16'hBC97;
    parameter b2 = 16'hBD86;
    
    // y = -0.118652x - 0.279297 for -2.0 < x <= -1.0
    parameter m3 = 16'hBDF3;
    parameter b3 = 16'hBE8F;
    
    // y = 0.005585x - 0.161133 for -1.0 < x <= -0.5
    parameter m4 = 16'h3BB7;
    parameter b4 = 16'hBE25;
    
    // y = 0.306641x - 0.015747 for -0.5 < x <= 0.0
    parameter m5 = 16'h3E9D;
    parameter b5 = 16'hBC81;
    
    // y = 0.691406x - 0.015747 for 0.0 <= x < 0.5
    parameter m6 = 16'h3F31;
    parameter b6 = 16'hBC81;
    
    // y = 0.996094x - 0.161133 for 0.5 <= x < 1.0
    parameter m7 = 16'h3F7F;
    parameter b7 = 16'hBE25;
    
    // y = 1.117188x - 0.279297 for 1.0 <= x < 2.0
    parameter m8 = 16'h3F8F;
    parameter b8 = 16'hBE8F;
    
    // y = 1.039062x - 0.118652 for 2.0 <= x < 3.0
    parameter m9 = 16'h3F85;
    parameter b9 = 16'hBDF3;
    
    // y = x for x >= 3.0
    parameter m10 = 16'h3F80;
    parameter b10 = 16'h0000;

    logic  sign_x;
    logic  [`BIT_NUM_16-2:0] abs_x;

    logic zero;
    logic bypass;

    logic [`BIT_NUM_16-1:0] m;
    logic [`BIT_NUM_16-1:0] b;

    assign sign_x = x[`BIT_NUM_16-1];
    assign abs_x  = x[`BIT_NUM_16-2:0];

    // Segment selection based on sign and magnitude
    always @(*) begin
        zero = 0;
        bypass = 0;
        if (sign_x) begin
            // Negative x ranges
            if (abs_x >= 15'h4080) begin       // x <= -4.0
                m = m1; 
                b = b1;
                zero = 1;
            end else if (abs_x >= 15'h4000) begin // -4.0 < x <= -2.0
                m = m2; 
                b = b2;
            end else if (abs_x >= 15'h3F80) begin // -2.0 < x <= -1.0
                m = m3; 
                b = b3;
            end else if (abs_x >= 15'h3F00) begin // -1.0 < x <= -0.5
                m = m4; 
                b = b4;
            end else begin                        // -0.5 < x <= 0.0
                m = m5; 
                b = b5;
            end
        end else begin
            // Positive x ranges
            if (abs_x < 15'h3F00) begin        // 0.0 <= x < 0.5
                m = m6; 
                b = b6;
            end else if (abs_x < 15'h3F80) begin  // 0.5 <= x < 1.0
                m = m7; 
                b = b7;
            end else if (abs_x < 15'h4000) begin  // 1.0 <= x < 2.0
                m = m8; 
                b = b8;
            end else if (abs_x < 15'h4040) begin  // 2.0 <= x < 3.0
                m = m9; 
                b = b9;
            end else begin                        // x >= 3.0
                m = m10; 
                b = b10;
                bypass = 1;
            end
        end
    end

    // Compute y = m * x + b
    logic [`BIT_NUM_16-1:0] mul_out;
    logic [`BIT_NUM_16-1:0] y_out;

    logic [`BIT_NUM_16-1:0] x_reg;
    logic [`BIT_NUM_16-1:0] m_reg;

    logic [`BIT_NUM_16-1:0] b_delay_nxt [0:`B_DELAY-1];
    logic [`BIT_NUM_16-1:0] b_delay [0:`B_DELAY-1];

    logic [`BIT_NUM_16-1:0] x_delay_nxt [0:`SFU_GELU_DELAY-1];
    logic [`BIT_NUM_16-1:0] x_delay [0:`SFU_GELU_DELAY-1];

    logic [`SFU_GELU_DELAY-1:0] bypass_delay_nxt;
    logic [`SFU_GELU_DELAY-1:0] bypass_delay;

    logic [`SFU_GELU_DELAY-1:0] zero_delay_nxt;
    logic [`SFU_GELU_DELAY-1:0] zero_delay;

    always@(*)begin
		b_delay_nxt [0] = b;
		for(k=1; k<`B_DELAY; k=k+1)begin
			b_delay_nxt[k] = b_delay[k-1];
		end
	end

    always@(*)begin
		x_delay_nxt [0] = x;
		for(k=1; k<`SFU_GELU_DELAY; k=k+1)begin
			x_delay_nxt[k] = x_delay[k-1];
		end
	end

    always@(*)begin
		bypass_delay_nxt [0] = bypass;
		for(k=1; k<`SFU_GELU_DELAY; k=k+1)begin
			bypass_delay_nxt[k] = bypass_delay[k-1];
		end
	end

    always@(*)begin
		zero_delay_nxt [0] = zero;
		for(k=1; k<`SFU_GELU_DELAY; k=k+1)begin
			zero_delay_nxt[k] = zero_delay[k-1];
		end
	end

    always @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            m_reg <= 0;
            x_reg <= 0;
            for(k=0; k<`B_DELAY; k=k+1)
                b_delay[k] <= 0;
            for(k=0; k<`SFU_GELU_DELAY; k=k+1)
                x_delay[k] <= 0;
            bypass_delay <= 0;
            zero_delay <= 0;
        end
        else begin
            m_reg <= m;
            x_reg <= x;
            for(k=0; k<`B_DELAY; k=k+1)
                b_delay[k] <= b_delay_nxt[k];
            for(k=0; k<`SFU_GELU_DELAY; k=k+1)
                x_delay[k] <= x_delay_nxt[k];
            bypass_delay <= bypass_delay_nxt;
            zero_delay <= zero_delay_nxt;
        end
    end
            FPGA_BF16_MULTIPLIER u_mul (
	  
	           .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	           //.s_axis_a_tdata           ({final1, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
	           .s_axis_a_tdata           (m_reg),
	           .s_axis_b_tvalid          (1'b1),            // input wire s_axis_b_tvalid
	           .s_axis_b_tdata           (x_reg),              // input wire [15 : 0] s_axis_b_tdata
	           .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	           .m_axis_result_tdata      (mul_out) ,   // output wire [15 : 0] m_axis_result_tdata
	           .aclk   					(i_clk),
	           .aresetn					(i_rst_n)
	       );
            
            
            FPGA_BF16_ADDER  u_add(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(mul_out),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(b_delay[`B_DELAY-1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(y_out) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//    BF16_MULTIPLIER u_mul (
//        .i_clk(i_clk),
//	    .i_rst_n(i_rst_n),
//	    .i_data_1(m_reg),
//	    .i_data_2(x_reg),
//	    .o_mul(mul_out)
//    );
//    BF16_ADDER u_add (
//        .i_clk(i_clk),
//	    .i_rst_n(i_rst_n),
//	    .i_data_1(mul_out),
//	    .i_data_2(b_delay[`B_DELAY-1]),
//	    .o_add(y_out)
//    );
    // BF16_MUL u_mul (
    //     .op1(m),
    //     .op2(x),
    //     .result(mul_out)
    // );

    // BF16_ADD u_add (
    //     .op1(mul_out),
    //     .op2(b),
    //     .result(y_out)
    // );

    assign y = zero_delay[`SFU_GELU_DELAY-1] ? 16'h0000 : (bypass_delay[`SFU_GELU_DELAY-1] ? x_delay[`SFU_GELU_DELAY-1] : y_out);
endmodule