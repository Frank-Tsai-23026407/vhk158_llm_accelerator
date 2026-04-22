`define BYPASS 2'b00
`define TREE_BYPASS 2'b01
`define TREE_RECIP 2'b10
`define TREE_RECIP_SQRT 2'b11

`define ADDER_TREE_DELAY 18
`define ADDER_TREE_ACCU_DELAY 21
`define SOFTMAX_RECIPROCAL_DELAY 34
`define RMSNORM_RECIPROCAL_DELAY 49 //45 //divide2048 occupy 1 cycle
`define OLD_L_SCALE 6
`define L_UPDATE 12
`define ROW_SUM_P 9
`define L_UPDATE_RECIP 20 //18
// `define PARALLEL_NUM 64
// `define BIT_NUM 32

module SFU_V (
    input  i_clk,
    input  i_rst_n,

    // CPU Ctrl Register
    input [5:0] rmsnorm_cnt_num,
    input  [1:0] i_cfg_cmd,
    //input        i_recip_valid,
    input i_sfu_v_valid_reset,
	// input logic i_cfg_valid,
	// output logic i_cfg_ready,

    // VFU -> SFU
    input i_valid,
    input [`PARALLEL_NUM*`BIT_NUM-1:0] i_data,
    input [`BIT_NUM-1:0] div_in,
    // SFU -> DMA
    output  o_scale_valid,
    output  [`BIT_NUM-1:0] o_scale,
    output o_vpu_flag,
    output o_data_valid,
    output [`PARALLEL_NUM*`BIT_NUM-1:0] o_data
);
    integer k;
    //logic [63:0][15:0] data, data_nxt;
    //logic [31:0] cmd, cmd_nxt;

    logic [`BIT_NUM-1:0] scale_out, scale_out_nxt;

    //logic busy, busy_nxt;
    //logic [1:0] delay, delay_nxt;

    logic [`BIT_NUM-1:0] adder_out, adder_tree_buffer, BF_16_add_buftotal_out, BF_16_add_buf12_out, BF_16_add_buf34_out;
    logic [`BIT_NUM-1:0] recip_out, invsqrt_out, add_eps_out;

    logic [`RMSNORM_RECIPROCAL_DELAY-1:0] valid_delay_nxt, valid_delay;
    //logic [29:0] o_valid_r;

    logic [`BIT_NUM-1:0] o_sv_ports [0:`PARALLEL_TOKEN_NUM-1];

    logic o_scale_valid_w;
    logic o_scale_valid_r;

    logic [1:0] buffer_select_cnt_r;
    logic [1:0] buffer_select_cnt_w;
    logic [1:0] buffer_cnt_r;
    logic [1:0] buffer_cnt_w;
    logic [5:0] cnt_r;
    logic [5:0] cnt_w;

    logic [`BIT_NUM-1:0] l_update;

    logic [`BIT_NUM-1:0] adder_tree_buffer_r [0:3];
    logic [`BIT_NUM-1:0] adder_tree_buffer_w [0:3];

    logic [`BIT_NUM-1:0] BF_16_add_out, BF_16_div2048_out, BF_16_div2048_out_r;
    //logic [`SOFTMAX_RECIPROCAL_DELAY-1:0] recip_valid_delay_nxt, recip_valid_delay;
    //logic recip_record_r;
    //logic recip_record_w;
    logic vpu_flag, vpu_flag_nxt;
    logic [`BIT_NUM-1:0] i_data_unpacked [0:`PARALLEL_NUM-1];
    //logic rmsnorm_state_nxt, rmsnorm_state;

    integer i_comb;
    integer i_seq;
    // assign o_scale = scale_out;
    // assign o_scale_valid = delay == 3;
    assign o_scale = scale_out;
    assign o_scale_valid = o_scale_valid_r;
    assign o_data = i_data;
    //assign o_data_valid = (i_cfg_cmd == `TREE_RECIP_SQRT && rmsnorm_state == 0)? 0 : i_valid;
    assign o_data_valid = (i_cfg_cmd == `TREE_RECIP_SQRT || i_cfg_cmd == `TREE_RECIP)? 0 : i_valid;
    assign o_vpu_flag = vpu_flag;

    genvar i;
    generate
        for(i=0; i< `PARALLEL_NUM; i++) begin
            assign i_data_unpacked[i] = i_data[i*`BIT_NUM +: `BIT_NUM];
        end 
    endgenerate
    
    FPGA_FP32_MULTIPLIER u_BF32_MULTIPLIER (
	  
	           .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	           //.s_axis_a_tdata           ({final1, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
	           .s_axis_a_tdata           (i_data[`PARALLEL_TOKEN_NUM*`BIT_NUM +: `BIT_NUM]),
	           .s_axis_b_tvalid          (1'b1),            // input wire s_axis_b_tvalid
	           .s_axis_b_tdata           (adder_tree_buffer_r[0]),              // input wire [15 : 0] s_axis_b_tdata
	           .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	           .m_axis_result_tdata      (l_update) ,   // output wire [15 : 0] m_axis_result_tdata
	           .aclk   					(i_clk),
	           .aresetn					(i_rst_n)
	       );
	 
	 FPGA_FP32_DIVIDER  u_div (
	           .s_axis_a_tvalid          (1'b1 ),            // input wire s_axis_a_tvalid
	           //.s_axis_a_tdata           ({final1, 16'd0}),              // input wire [15 : 0] s_axis_a_tdata
	           .s_axis_a_tdata           (BF_16_add_buftotal_out),
	           .s_axis_b_tvalid          (1'b1),            // input wire s_axis_b_tvalid
	           .s_axis_b_tdata           (div_in),              // input wire [15 : 0] s_axis_b_tdata
	           .m_axis_result_tvalid     (),  // output wire m_axis_result_tvalid
	           .m_axis_result_tdata      (BF_16_div2048_out) ,   // output wire [15 : 0] m_axis_result_tdata
	           .aclk   					(i_clk),
	           .aresetn					(i_rst_n)
	 );     
//    BF32_MULTIPLIER u_BF32_MULTIPLIER (
//		.i_clk(i_clk),
//		.i_rst_n(i_rst_n),
//	 	.i_data_1(i_data[`PARALLEL_TOKEN_NUM*`BIT_NUM +: `BIT_NUM]),
//	 	.i_data_2(adder_tree_buffer_r[0]),
//	 	.o_mul  (l_update)
//	);

//    bf32_div2560 u_div (
//        .i_clk(i_clk),
//        .i_rst_n(i_rst_n),
//        .div_in(div_in),
//        .bf16_in  (BF_16_add_buftotal_out),
//        .bf16_out (BF_16_div2048_out)
//    );

    BF32_ADDER_TREE u_ADDER_TREE(
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
		.i_data (i_data_unpacked),
        .o_sv_ports(o_sv_ports),
		.o_sum (adder_out)
	);
    
    FPGA_FP32_ADDER  add_eps(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(BF_16_div2048_out),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(32'h358637bd),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(add_eps_out) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	         
//    BF32_ADDER add_eps (
//        .i_clk(i_clk),
//        .i_rst_n(i_rst_n),
//        .i_data_1(BF_16_div2048_out),
//        .i_data_2(32'h358637bd),
//        .o_add(add_eps_out)
//    );
    FPGA_FP32_RECIP u_BF16_RECIP(
	           .aclk(i_clk),
	           .aresetn(i_rst_n),
	           .s_axis_a_tvalid(1'b1),
	           .s_axis_a_tdata(BF_16_add_out),
	           .m_axis_result_tvalid( ),
	           .m_axis_result_tdata(recip_out)
	       );
	       
	  FPGA_FP32_INVSQRT u_BF16_INVSQRT(
	           .aclk(i_clk),
	           .aresetn(i_rst_n),
	           .s_axis_a_tvalid(1'b1),
	           .s_axis_a_tdata(add_eps_out),
	           .m_axis_result_tvalid( ),
	           .m_axis_result_tdata(invsqrt_out)
	       );
//    BF32_RECIP u_BF16_RECIP(
//        .i_clk(i_clk),
//        .i_rst_n(i_rst_n),
//        .i_data  	(BF_16_add_out),
//        .o_recip 	(recip_out)
//    );
    
//    BF32_INVSQRT u_BF16_INVSQRT(
//        .i_clk(i_clk),
//        .i_rst_n(i_rst_n),
//        .i_data    	(add_eps_out),
//        .o_invsqrt 	(invsqrt_out)
//    );
    
    FPGA_FP32_ADDER  u_BF16_ADDER(
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata((i_cfg_cmd == `TREE_RECIP) ? o_sv_ports[0] : adder_out),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(adder_tree_buffer),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(BF_16_add_out) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	         
	  FPGA_FP32_ADDER  u_BF16_BUF12_ADDER (
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(adder_tree_buffer_r[0]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(adder_tree_buffer_r[1]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(BF_16_add_buf12_out) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	         
	  FPGA_FP32_ADDER  u_BF16_BUF34_ADDER (
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(adder_tree_buffer_r[2]),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(adder_tree_buffer_r[3]),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(BF_16_add_buf34_out) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
	         
	  FPGA_FP32_ADDER  u_BF16_BUFTOTAL_ADDER (
	         	  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
	         	  .s_axis_a_tdata(BF_16_add_buf12_out),              // input wire [15 : 0] s_axis_a_tdata
	         	  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
	         	  .s_axis_b_tdata(BF_16_add_buf34_out),              // input wire [15 : 0] s_axis_b_tdata
	         	  .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
	         	  .m_axis_result_tdata(BF_16_add_buftotal_out) ,   // output wire [15 : 0] m_axis_result_tdata
	         	  .aclk(i_clk),
	         	  .aresetn(i_rst_n)
	         );
//    BF32_ADDER u_BF16_ADDER (
//        .i_clk(i_clk),
//        .i_rst_n(i_rst_n),
//		.i_data_1((i_cfg_cmd == `TREE_RECIP) ? o_sv_ports[0] : adder_out),
//	 	.i_data_2(adder_tree_buffer),
//		.o_add  (BF_16_add_out)
//	);

//    BF32_ADDER u_BF16_BUF12_ADDER (
//        .i_clk(i_clk),
//        .i_rst_n(i_rst_n),
//		.i_data_1(adder_tree_buffer_r[0]),
//	 	.i_data_2(adder_tree_buffer_r[1]),
//		.o_add  (BF_16_add_buf12_out)
//	);

//    BF32_ADDER u_BF16_BUF34_ADDER (
//        .i_clk(i_clk),
//        .i_rst_n(i_rst_n),
//		.i_data_1(adder_tree_buffer_r[2]),
//	 	.i_data_2(adder_tree_buffer_r[3]),
//		.o_add  (BF_16_add_buf34_out)
//	);

//    BF32_ADDER u_BF16_BUFTOTAL_ADDER (
//        .i_clk(i_clk),
//        .i_rst_n(i_rst_n),
//		.i_data_1(BF_16_add_buf12_out),
//	 	.i_data_2(BF_16_add_buf34_out),
//		.o_add  (BF_16_add_buftotal_out)
//	);
    /*
    always_comb begin
		data_nxt = i_valid ? i_data : data;
	end
    */
    // always_comb begin
	// 	cmd_nxt = (i_cfg_valid && i_cfg_ready) ? i_cfg_cmd : cmd;
	// end
    /*
    always_comb begin
		cmd_nxt = i_cfg_cmd;
	end
    */
    // always@(*) begin
    //     if(i_cfg_cmd == `TREE_RECIP_SQRT && vpu_flag)
    //         rmsnorm_state_nxt = 1;
    //     else if(i_cfg_cmd == `TREE_RECIP_SQRT && rmsnorm_state == 1)
    //         rmsnorm_state_nxt = 1;
    //     else
    //         rmsnorm_state_nxt = 0;
    // end

    always@(*) begin
        if(i_cfg_cmd == `TREE_RECIP_SQRT && cnt_r == rmsnorm_cnt_num)
            vpu_flag_nxt =  valid_delay[`RMSNORM_RECIPROCAL_DELAY-1];
        else
            vpu_flag_nxt = 0;
    end

    always@(*) begin
        valid_delay_nxt [0] = i_valid;
		for(k=1; k<`RMSNORM_RECIPROCAL_DELAY; k=k+1)begin
			valid_delay_nxt[k] = valid_delay[k-1];
		end
    end

    // always@(*) begin
    //     recip_valid_delay_nxt [0] = i_recip_valid;
	// 	for(k=1; k<`SOFTMAX_RECIPROCAL_DELAY; k=k+1)begin
	// 		recip_valid_delay_nxt[k] = recip_valid_delay[k-1];
	// 	end
    // end

    always_comb begin
        if (i_cfg_cmd == `TREE_RECIP_SQRT) begin
            // if(recip_valid_delay[`ADDER_TREE_ACCU_DELAY]) begin
            //     for(i_comb=0; i_comb<4; i_comb=i_comb+1)
            //         adder_tree_buffer_w[i_comb] = 0;
            // end
            // else begin
            for(i_comb=0; i_comb<4; i_comb=i_comb+1)
                adder_tree_buffer_w[i_comb] = adder_tree_buffer_r[i_comb];
            if(valid_delay[`ADDER_TREE_ACCU_DELAY-1]) begin
                case(buffer_select_cnt_r[1:0])
                    2'd0: adder_tree_buffer_w[0] = BF_16_add_out;
                    2'd1: adder_tree_buffer_w[1] = BF_16_add_out;
                    2'd2: adder_tree_buffer_w[2] = BF_16_add_out;
                    2'd3: adder_tree_buffer_w[3] = BF_16_add_out; 
                endcase    
            end
            // end
        end
        else if(i_cfg_cmd == `TREE_RECIP) begin
            for(i_comb=0; i_comb<4; i_comb=i_comb+1)
                adder_tree_buffer_w[i_comb] = adder_tree_buffer_r[i_comb];
            if(valid_delay[`OLD_L_SCALE-1]) begin
                adder_tree_buffer_w[0] = l_update;
            end
            else if(valid_delay[`L_UPDATE-1]) begin
                adder_tree_buffer_w[0] = BF_16_add_out;
            end
        end
        else begin
            for(i_comb=0; i_comb<4; i_comb=i_comb+1)
                adder_tree_buffer_w[i_comb] = 0;
        end
    end

    always_comb begin
        if (i_cfg_cmd == `TREE_RECIP_SQRT) begin
            if(valid_delay[`ADDER_TREE_DELAY-1])
                case(buffer_cnt_r[1:0])
                    2'd0: adder_tree_buffer = adder_tree_buffer_r[0];
                    2'd1: adder_tree_buffer = adder_tree_buffer_r[1];
                    2'd2: adder_tree_buffer = adder_tree_buffer_r[2];
                    2'd3: adder_tree_buffer = adder_tree_buffer_r[3];
                endcase
            else
                adder_tree_buffer = 0;
        end
        else if(i_cfg_cmd == `TREE_RECIP) begin
            if(valid_delay[`ROW_SUM_P-1])
                adder_tree_buffer = adder_tree_buffer_r[0];
            else
                adder_tree_buffer = 0;
        end
        else begin
            adder_tree_buffer = 0;
        end
    end
    /*
    always_comb begin
        if ((cmd == `TREE_BYPASS || cmd == `TREE_RECIP || cmd == `TREE_RECIP_SQRT) && o_valid_r[22]) begin
            adder_tree_buffer_w = BF_16_add_out;
        end
        else begin
            adder_tree_buffer_w = adder_tree_buffer_r;
        end
    end
    */

    always_comb begin
        if (i_cfg_cmd == `TREE_RECIP_SQRT) begin
            if(valid_delay[`ADDER_TREE_ACCU_DELAY-1])
                buffer_select_cnt_w = buffer_select_cnt_r + 1'b1;
            else
                buffer_select_cnt_w = buffer_select_cnt_r;
        end
        else begin
            buffer_select_cnt_w = 0; 
        end
    end

    always_comb begin
        if (i_cfg_cmd == `TREE_RECIP_SQRT) begin
            if(valid_delay[`ADDER_TREE_DELAY-1])
                buffer_cnt_w = buffer_cnt_r + 1'b1;
            else
                buffer_cnt_w = buffer_cnt_r;
        end
        else begin
            buffer_cnt_w = 0; 
        end
    end

    
    always_comb begin
        if (i_cfg_cmd == `TREE_RECIP_SQRT) begin
            //if(valid_delay[`RMSNORM_RECIPROCAL_DELAY-1] && rmsnorm_state == 0) begin
            if(valid_delay[`RMSNORM_RECIPROCAL_DELAY-1]) begin
                if(cnt_r == rmsnorm_cnt_num)
                    cnt_w = 0;
                else
                    cnt_w = cnt_r + 1'b1;
            end
            else
                cnt_w = cnt_r;
        end
        else begin
            cnt_w = 0; 
        end
    end
    /*
    always_comb begin
        if ((cmd == `TREE_BYPASS || cmd == `TREE_RECIP || cmd == `TREE_RECIP_SQRT) && o_scale_valid_r) begin
            cnt_w = 6'b0;
        end
        else if ((cmd == `TREE_BYPASS || cmd == `TREE_RECIP || cmd == `TREE_RECIP_SQRT) && i_valid) begin
            cnt_w = cnt_r + 1'b1;
        end
        else begin
            cnt_w = cnt_r; 
        end
    end
    */
    /*
    always_comb begin
        recip_record_w = 0;
        if (i_recip_valid) begin
            recip_record_w = 1'b1;
        end
        else if (o_valid_r[25]) begin
            recip_record_w = 1'b0;
        end
        else begin
            recip_record_w = recip_record_r;
        end
    end
    */
    always_comb begin
        o_scale_valid_w = 0;
        if (i_cfg_cmd == `TREE_BYPASS) begin
            o_scale_valid_w = valid_delay[`ADDER_TREE_DELAY-1];
        end
        // else if (i_cfg_cmd == `TREE_RECIP) begin
        //     o_scale_valid_w = recip_valid_delay[`SOFTMAX_RECIPROCAL_DELAY-1];
        // end
        else if (i_cfg_cmd == `TREE_RECIP_SQRT && cnt_r == rmsnorm_cnt_num) begin
            o_scale_valid_w = valid_delay[`RMSNORM_RECIPROCAL_DELAY-1];
        end
    end

    // always_comb begin
    //     busy_nxt = busy;
    //     if (i_valid & (cmd != `BYPASS)) begin
    //         busy_nxt = 1'b1;
    //     end else if (delay == 3) begin
    //         busy_nxt = 1'b0;
    //     end
    // end
    
    // always_comb begin
    //     delay_nxt = delay;
    //     if (busy) begin
    //         delay_nxt = delay + 1'b1;
    //     end else if (delay == 3) begin
    //         delay_nxt = 0;
    //     end
    // end

    always_comb begin
        case(i_cfg_cmd)
            `TREE_BYPASS: scale_out_nxt = (valid_delay[`ADDER_TREE_DELAY-1]) ? adder_out : scale_out;
            `TREE_RECIP: scale_out_nxt = (valid_delay[`L_UPDATE_RECIP-1]) ? recip_out : scale_out;
            `TREE_RECIP_SQRT: scale_out_nxt = (valid_delay[`RMSNORM_RECIPROCAL_DELAY-1]) ? invsqrt_out : scale_out;
            default: scale_out_nxt = scale_out;
        endcase
    end

    always_ff @(posedge i_clk or negedge i_rst_n) begin
        if (~i_rst_n) begin
            //data <= 0;
            //cmd <= 0;
            scale_out <= 0;
            //adder_out <= 0;
            // busy <= 0;
            // delay <= 0;
           
            //BF_16_div2048_out_r <= 0;
            buffer_cnt_r <= 0;
            buffer_select_cnt_r <= 0;
            cnt_r <= 0;
            o_scale_valid_r <= 0;
            valid_delay <= 0;
            //recip_valid_delay <= 0;
            vpu_flag <= 0;
            //rmsnorm_state <= 0;
            /*
            for (i = 0; i < 30; i = i + 1) begin
                o_valid_r[i] <= 0;
            end
            */
            for(i_seq=0; i_seq<4; i_seq=i_seq+1)
                adder_tree_buffer_r[i_seq] <= 0;
            //recip_record_r <= 0;
        end else begin
            //data <= data_nxt;
            //cmd <= cmd_nxt;
            
            scale_out <= scale_out_nxt;
            //rmsnorm_state <= rmsnorm_state_nxt;
            //adder_out <= adder_out_nxt;
            // busy <= busy_nxt;
            // delay <= delay_nxt;
            //BF_16_div2048_out_r <= BF_16_div2048_out;
            buffer_cnt_r <= buffer_cnt_w;
            buffer_select_cnt_r <= buffer_select_cnt_w;
            cnt_r <= cnt_w;
            //o_valid_r[0] <= i_valid;
            o_scale_valid_r <= o_scale_valid_w;
            if (i_sfu_v_valid_reset)
                valid_delay <= '0;
            else
                valid_delay <= valid_delay_nxt;
            //recip_valid_delay <= recip_valid_delay_nxt;
            vpu_flag <= vpu_flag_nxt;
            /*
            for (i = 1; i < 30; i = i + 1) begin
                o_valid[i] <= o_valid[i - 1];
            end
            */
            for(i_seq=0; i_seq<4; i_seq=i_seq+1)
                adder_tree_buffer_r[i_seq] <= adder_tree_buffer_w[i_seq];
            //recip_record_r <= recip_record_w;
        end
    end

endmodule


// module bf32_div2560 (
//     input i_clk,
//     input i_rst_n,
//     input  [`BIT_NUM-1:0] bf16_in,
//     input  [`BIT_NUM-1:0] div_in,
//     output  [`BIT_NUM-1:0] bf16_out
// );

//     BF32_DIV_2560 bf32_div_2560 (
//         .i_clk(i_clk),
//         .i_rst_n(i_rst_n),
//         .i_data_1(bf16_in),
// 	    .i_data_2(div_in),
// 	    .o_div(bf16_out)
//     );
// endmodule


// module bf16_div2048 (
//     input logic [`BIT_NUM-1:0] bf16_in,
//     output logic [`BIT_NUM-1:0] bf16_out
// );
//     logic sign;
//     logic [7:0] exp;
//     logic [6:0] mantissa;
//     logic [7:0] expand_mantissa;
//     logic [7:0] new_exp;
//     logic [6:0] new_mantissa;

//     always@(*) begin
//         sign = bf16_in[15];
//         exp = bf16_in[14:7];
//         mantissa = bf16_in[6:0];

//         new_exp = exp;
//         new_mantissa = mantissa;
//         expand_mantissa = 0;

//         if(exp == 8'hFF) begin
//             new_exp = exp;
//             new_mantissa = mantissa;
//         end
//         else begin
//             if(exp > 8'd11) begin
//                 new_exp = exp - 8'd11;
//             end
//             else begin
//                 if(exp == 8'd0) begin
//                     new_exp = 0;
//                     new_mantissa = mantissa >> 11;
//                 end
//                 else begin
//                    new_exp = 0;
//                    expand_mantissa = {1'b1, mantissa} >> (12-exp);
//                    new_mantissa = expand_mantissa[6:0]; 
//                 end
//             end
//         end
//         bf16_out = {sign, new_exp, new_mantissa};
//     end
// endmodule