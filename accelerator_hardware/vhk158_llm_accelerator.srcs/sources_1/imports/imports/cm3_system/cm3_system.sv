
module cm3_system (
    input [(8 - 1) : 0]  PCIE1_GT_0_grx_p,
    input [(8 - 1) : 0]  PCIE1_GT_0_grx_n,
    output [(8 - 1) : 0] PCIE1_GT_0_gtx_p,
    output [(8 - 1) : 0] PCIE1_GT_0_gtx_n,
    input 					  gt_refclk1_0_clk_n,
    input 					  gt_refclk1_0_clk_p,
    
    output ddr4_dimm0_act_n,
    output [16:0]ddr4_dimm0_adr,
    input ddr4_dimm0_alert_n,
    output [1:0]ddr4_dimm0_ba,
    output [1:0]ddr4_dimm0_bg,
    output ddr4_dimm0_ck_c,
    output ddr4_dimm0_ck_t,
    output ddr4_dimm0_cke,
    output ddr4_dimm0_cs_n,
    inout [71:0]ddr4_dimm0_dq,
    inout [8:0]ddr4_dimm0_dqs_c,
    inout [8:0]ddr4_dimm0_dqs_t,
    output ddr4_dimm0_odt,
    output ddr4_dimm0_par,
    output ddr4_dimm0_reset_n,
    input ddr4_dimm0_sma_clk_clk_n,
    input ddr4_dimm0_sma_clk_clk_p,
    output ddr4_dimm1_act_n,
    output [16:0]ddr4_dimm1_adr,
    input ddr4_dimm1_alert_n,
    output [1:0]ddr4_dimm1_ba,
    output [1:0]ddr4_dimm1_bg,
    output ddr4_dimm1_ck_c,
    output ddr4_dimm1_ck_t,
    output ddr4_dimm1_cke,
    output ddr4_dimm1_cs_n,
    inout [71:0]ddr4_dimm1_dq,
    inout [8:0]ddr4_dimm1_dqs_c,
    inout [8:0]ddr4_dimm1_dqs_t,
    output ddr4_dimm1_odt,
    output ddr4_dimm1_par,
    output ddr4_dimm1_reset_n,
    input ddr4_dimm1_sma_clk_clk_n,
    input ddr4_dimm1_sma_clk_clk_p,

//    input CLK_IN1_D_0_clk_n,
//    input CLK_IN1_D_0_clk_p,
    input reset_0

    // input  logic        HCLK,
    // input  logic        HCLK_200M,
    // input  logic        HCLK_250M,
    // input  logic        HRESETn,

    // input  logic        IO_PROG_LOAD,
    // input  logic        IO_PROG_VALID,
    // output logic        IO_PROG_READY,
    // input  logic [31:0] IO_PROG_DATA,

//    input  logic        IO_IN_VALID,
//    output logic        IO_IN_READY,
//    input  logic [ 3:0] IO_IN_TAG,
//    input  logic [31:0] IO_IN_DATA,

//    output logic        IO_OUT_VALID,
//    input  logic        IO_OUT_READY,
//    output logic [ 3:0] IO_OUT_TAG,
//    output logic [31:0] IO_OUT_DATA,
    //input i_uart_input_token_len_vald_memory_test,
    //input [18:0] i_uart_input_token_len_memory_test
);


//--------------------------------
// CM3 declaration
// ROM interface
logic        HSEL_CPUID;
logic [31:0] HADDR_CPUID;
logic  [1:0] HTRANS_CPUID;
logic  [2:0] HSIZE_CPUID;
logic        HREADY_CPUID;
logic        HWRITE_CPUID;
logic [31:0] HWDATA_CPUID;
logic        HREADYOUT_CPUID;
logic        HRESP_CPUID;
logic [31:0] HRDATA_CPUID;
logic        HEXCL_CPUID;
logic        HEXOKAY_CPUID;

// CPU System interface
logic        HSEL_CPUS;
logic [31:0] HADDR_CPUS;
logic  [1:0] HTRANS_CPUS;
logic  [2:0] HSIZE_CPUS;
logic        HREADY_CPUS;
logic        HWRITE_CPUS;
logic        HEXCL_CPUS;
logic        HRESP_CPUS;
logic [31:0] HRDATA_CPUS;
logic [31:0] HWDATA_CPUS;

// SRAM interface
logic        HSEL_RAM;
logic [31:0] HADDR_RAM;
logic  [1:0] HTRANS_RAM;
logic  [2:0] HSIZE_RAM;
logic        HWRITE_RAM;
logic [31:0] HWDATA_RAM;
logic        HREADYOUT_RAM;
logic        HRESP_RAM;
logic [31:0] HRDATA_RAM;
logic        HEXOKAY_RAM;

// Prog load
logic        prog_ivalid;
logic        prog_iready;
logic [31:0] prog_idata;

// Interrupts
logic [239:0] IRQs;

logic        clk_out1_0, clk_out2_0, clk_out3_0, clk_out4_0, clk_out5_0;

logic HRESETn;
logic locked_0;

logic [7:0]dest_out_0;
logic IO_PROG_LOAD;

assign HRESETn = locked_0;
assign IO_PROG_LOAD = dest_out_0[0];
//--------------------------------
// CPU - CM3
cm3_processor_subsystem u_cm3_processor_subsystem (
    .*,
    .HCLK          (clk_out2_0         ),
    .HRESETn       (HRESETn & ~IO_PROG_LOAD),
    .FCLK          (clk_out2_0         ),
    .HEXOKAY_CPUS  (1'b0),
    .IRQ           (IRQs   )
);

//--------------------------------
// Program IO
progio u_progio (
    .HCLK          (clk_out2_0),
    .HRESETn       (HRESETn),
    .IO_PROG_VALID (IO_PROG_VALID),
    .IO_PROG_READY (IO_PROG_READY),
    .IO_PROG_DATA  (IO_PROG_DATA ),
    .prog_ivalid   (prog_ivalid  ),
    .prog_iready   (prog_iready  ),
    .prog_idata    (prog_idata   )
);

//--------------------------------
// 16384x4B Program RAM
ahb_rom u_ahb_rom (
    .*,
    .HCLK(clk_out2_0),
    .prog_load(IO_PROG_LOAD)
);

//-------------------------------- 
// 16384x4B Data RAM
ahb_ram u_ahb_ram (
    .*,
    .HCLK(clk_out2_0),
    .HMASTER_RAM    (4'b0000),
    .HEXCL_RAM      (1'b0),
    .HREADY_RAM     (1'b1)
);


//-------------------------------- 
// MPU Declaration
logic HSEL_MPUS;
logic [31:0] HADDR_MPUS;
logic [1:0] HTRANS_MPUS;
logic HWRITE_MPUS;
logic [2:0] HSIZE_MPUS;
logic [31:0] HWDATA_MPUS;
logic [31:0] HRDATA_MPUS;
logic HREADYOUT_MPUS;
logic HRESP_MPUS;
logic FR_FULL_MPU;
logic FR_WRITE_MPU;
logic [31:0] FR_WDATA_MPU;
logic IRQ_MPU;

//logic i_MPU_data_valid;
//logic i_vpu_s_is_ready;
logic i_16x4_MPU_data_valid;
logic  [`PARALLEL_NUM*`BIT_NUM_16-1:0] i_16x4_scale;
logic  [`PARALLEL_NUM*`BIT_NUM_16-1:0] i_16x4_bf16_in;
logic  [`PARALLEL_NUM*`MUL_16X4_LANE_NUM*4-1:0]  i_16x4_int4_in; 
logic  [`PARALLEL_NUM*`BIT_NUM-1:0]	   i_mpu_64x8_data0;
logic  [`MFU_LANE_NUM*`PARALLEL_NUM*`BIT_NUM-1:0]    i_mpu_64x8_data1;
logic  [`MFU_LANE_NUM*`PARALLEL_NUM-1:0]    i_mpu_64x8_data_vald;

//SFU
logic [`BIT_NUM-1:0] o_MPU_max;
logic 		          o_MPU_max_valid;
logic [`BIT_NUM-1:0]    o_MPU_VPU_data 		 [0:`PARALLEL_NUM-1];
logic   	             o_MPU_VPU_data_valid;

logic [`PARALLEL_NUM*`BIT_NUM_16-1:0] o_mpu_done_data;
logic   	              o_MPU_DMA_data_valid;
logic [`DIC_NUM_LOG-1:0] o_MPU_DMA_max_id;
logic                    o_MPU_DMA_max_id_valid;
logic                    o_SV_data_valid	;
logic o_MPU_VPU_flag;
logic  [`BIT_NUM-1:0] i_prob [0:`PARALLEL_TOKEN_NUM-1];
logic  i_prob_valid;
logic i_one_head_fa_finish;
// logic [64*16-1:0] i_scale;
// logic [64*16-1:0] bf16_in; 
// logic [64*32*4-1:0]  int4_in; 
// logic [64*16-1:0] bf16_out;
// logic o_final_out; 
//-------------------------------- 
// MPU Wrapper
MPU_wrapper u_MPU_wrapper (
    .*,
    .HCLK_CORE(clk_out3_0),
    .HCLK(clk_out2_0)
);

//-------------------------------- 
// VPU Declaration
logic HSEL_VPUS;
logic [31:0] HADDR_VPUS;
logic [1:0] HTRANS_VPUS;
logic HWRITE_VPUS;
logic [2:0] HSIZE_VPUS;
logic [31:0] HWDATA_VPUS;
logic [31:0] HRDATA_VPUS;
logic HREADYOUT_VPUS;
logic HRESP_VPUS;
logic FR_FULL_VPU;
logic FR_WRITE_VPU;
logic [31:0] FR_WDATA_VPU;
logic IRQ_VPU;
logic i_SV_data_valid;
logic  [`BIT_NUM-1:0] i_MPU_VPU_data [0:`PARALLEL_NUM-1];
logic                  i_MPU_VPU_valid;
logic  [`BIT_NUM-1:0]  i_VPU_data_1       [0:`PARALLEL_NUM-1];
logic  [`BIT_NUM-1:0]  i_VPU_data_2       [0:`PARALLEL_NUM-1];
logic                  i_VPU_data_valid   [0:`PARALLEL_NUM-1];
logic  [`BIT_NUM-1:0]  i_MPU_max;
logic                  i_MPU_max_valid;
logic  [`BIT_NUM-1:0]  o_VPU_scale;
logic                  o_VPU_flag;
logic                  o_VPU_scale_valid;
logic  [`BIT_NUM-1:0]  o_VPU_data         [0:`PARALLEL_NUM-1];
logic                  o_VPU_data_valid;
//logic  o_vpu_s_is_ready;
logic  [`BIT_NUM-1:0] o_prob [0:`PARALLEL_TOKEN_NUM-1];
logic  o_prob_valid;
logic o_one_head_fa_finish;
// /*********/
// logic [5:0] o_cmd;
// /*********/
//-------------------------------- 
// VPU Wrapper
VPU_wrapper u_VPU_wrapper (
    .*,
    .HCLK_CORE(clk_out3_0),
    .HCLK(clk_out2_0)
);

//-------------------------------- 
// DMA Declaration
logic HSEL_DMAS;
logic [31:0] HADDR_DMAS;
logic [1:0] HTRANS_DMAS;
logic HWRITE_DMAS;
logic [2:0] HSIZE_DMAS;
logic [31:0] HWDATA_DMAS;
logic [31:0] HRDATA_DMAS;
logic HREADYOUT_DMAS;
logic HRESP_DMAS;
logic FW_EMPTY_DMA;
logic FW_READ_DMA;
logic [31:0] FW_RDATA_DMA;
logic FR_FULL_DMA;
logic FR_WRITE_DMA;
logic [31:0] FR_WDATA_DMA;
logic IRQ_DMA;
logic          i_mpu_token_id_vald_memory;
logic [18:0]   i_mpu_token_id_memory;
logic          i_uart_token_id_vald_memory;
logic [18:0]   i_uart_token_id_memory;
//logic          i_uart_input_token_len_vald_memory;
//logic [18:0]   i_uart_input_token_len_memory;
//assign i_uart_input_token_len_vald_memory = i_uart_input_token_len_vald_memory_test;
//assign i_uart_input_token_len_memory = i_uart_input_token_len_memory_test;

logic           o_vpu_data_vald;
logic [2047:0]  o_vpu_data0;
logic [2047:0]  o_vpu_data1;
logic           i_vpu_done_data_vald;
logic [2047:0]  i_vpu_done_data;
logic           i_vpu_flag;

logic           o_mpu_data_vald;
logic [1023:0]  o_mpu_data0;
logic [8191:0]  o_mpu_data1;
logic [1023:0]  o_mpu_scale;
logic [511:0]   o_mpu_64x8_data_vald;
logic [2047:0]  o_mpu_64x8_data0;
logic [16383:0] o_mpu_64x8_data1;
logic           i_mpu_done_data_vald;
logic [1023:0]  i_mpu_done_data;


logic HBM00_AXI_araddr_0;
logic [1:0]HBM00_AXI_arburst_0;
logic HBM00_AXI_arid_0;
logic HBM00_AXI_arlen_0;
logic  [0:0]HBM00_AXI_arready_0;
logic [2:0]HBM00_AXI_arsize_0;
logic [0:0]HBM00_AXI_arvalid_0;
logic HBM00_AXI_awaddr_0;
logic [1:0]HBM00_AXI_awburst_0;
logic HBM00_AXI_awid_0;
logic HBM00_AXI_awlen_0;
logic  [0:0]HBM00_AXI_awready_0;
logic [2:0]HBM00_AXI_awsize_0;
logic [0:0]HBM00_AXI_awvalid_0;
logic [0:0]HBM00_AXI_bready_0;
logic  [1:0]HBM00_AXI_bresp_0;
logic  [0:0]HBM00_AXI_bvalid_0;
logic  [31:0]HBM00_AXI_rdata_0;
logic  [0:0]HBM00_AXI_rlast_0;
logic [0:0]HBM00_AXI_rready_0;
logic  [0:0]HBM00_AXI_rvalid_0;
logic HBM00_AXI_wdata_0;
logic [0:0]HBM00_AXI_wlast_0;
logic  [0:0]HBM00_AXI_wready_0;
logic HBM00_AXI_wstrb_0;
logic [0:0]HBM00_AXI_wvalid_0;
logic HBM01_AXI_araddr_0;
logic [1:0]HBM01_AXI_arburst_0;
logic HBM01_AXI_arid_0;
logic HBM01_AXI_arlen_0;
logic  [0:0]HBM01_AXI_arready_0;
logic [2:0]HBM01_AXI_arsize_0;
logic [0:0]HBM01_AXI_arvalid_0;
logic HBM01_AXI_awaddr_0;
logic [1:0]HBM01_AXI_awburst_0;
logic HBM01_AXI_awid_0;
logic HBM01_AXI_awlen_0;
logic  [0:0]HBM01_AXI_awready_0;
logic [2:0]HBM01_AXI_awsize_0;
logic [0:0]HBM01_AXI_awvalid_0;
logic [0:0]HBM01_AXI_bready_0;
logic  [1:0]HBM01_AXI_bresp_0;
logic  [0:0]HBM01_AXI_bvalid_0;
logic  [31:0]HBM01_AXI_rdata_0;
logic  [0:0]HBM01_AXI_rlast_0;
logic [0:0]HBM01_AXI_rready_0;
logic  [0:0]HBM01_AXI_rvalid_0;
logic HBM01_AXI_wdata_0;
logic [0:0]HBM01_AXI_wlast_0;
logic  [0:0]HBM01_AXI_wready_0;
logic HBM01_AXI_wstrb_0;
logic [0:0]HBM01_AXI_wvalid_0;
logic HBM02_AXI_araddr_0;
logic [1:0]HBM02_AXI_arburst_0;
logic HBM02_AXI_arid_0;
logic HBM02_AXI_arlen_0;
logic  [0:0]HBM02_AXI_arready_0;
logic [2:0]HBM02_AXI_arsize_0;
logic [0:0]HBM02_AXI_arvalid_0;
logic HBM02_AXI_awaddr_0;
logic [1:0]HBM02_AXI_awburst_0;
logic HBM02_AXI_awid_0;
logic HBM02_AXI_awlen_0;
logic  [0:0]HBM02_AXI_awready_0;
logic [2:0]HBM02_AXI_awsize_0;
logic [0:0]HBM02_AXI_awvalid_0;
logic [0:0]HBM02_AXI_bready_0;
logic  [1:0]HBM02_AXI_bresp_0;
logic  [0:0]HBM02_AXI_bvalid_0;
logic  [31:0]HBM02_AXI_rdata_0;
logic  [0:0]HBM02_AXI_rlast_0;
logic [0:0]HBM02_AXI_rready_0;
logic  [0:0]HBM02_AXI_rvalid_0;
logic HBM02_AXI_wdata_0;
logic [0:0]HBM02_AXI_wlast_0;
logic  [0:0]HBM02_AXI_wready_0;
logic HBM02_AXI_wstrb_0;
logic [0:0]HBM02_AXI_wvalid_0;
logic HBM03_AXI_araddr_0;
logic [1:0]HBM03_AXI_arburst_0;
logic HBM03_AXI_arid_0;
logic HBM03_AXI_arlen_0;
logic  [0:0]HBM03_AXI_arready_0;
logic [2:0]HBM03_AXI_arsize_0;
logic [0:0]HBM03_AXI_arvalid_0;
logic HBM03_AXI_awaddr_0;
logic [1:0]HBM03_AXI_awburst_0;
logic HBM03_AXI_awid_0;
logic HBM03_AXI_awlen_0;
logic  [0:0]HBM03_AXI_awready_0;
logic [2:0]HBM03_AXI_awsize_0;
logic [0:0]HBM03_AXI_awvalid_0;
logic [0:0]HBM03_AXI_bready_0;
logic  [1:0]HBM03_AXI_bresp_0;
logic  [0:0]HBM03_AXI_bvalid_0;
logic  [31:0]HBM03_AXI_rdata_0;
logic  [0:0]HBM03_AXI_rlast_0;
logic [0:0]HBM03_AXI_rready_0;
logic  [0:0]HBM03_AXI_rvalid_0;
logic HBM03_AXI_wdata_0;
logic [0:0]HBM03_AXI_wlast_0;
logic  [0:0]HBM03_AXI_wready_0;
logic HBM03_AXI_wstrb_0;
logic [0:0]HBM03_AXI_wvalid_0;
logic HBM04_AXI_araddr_0;
logic [1:0]HBM04_AXI_arburst_0;
logic HBM04_AXI_arid_0;
logic HBM04_AXI_arlen_0;
logic  [0:0]HBM04_AXI_arready_0;
logic [2:0]HBM04_AXI_arsize_0;
logic [0:0]HBM04_AXI_arvalid_0;
logic HBM04_AXI_awaddr_0;
logic [1:0]HBM04_AXI_awburst_0;
logic HBM04_AXI_awid_0;
logic HBM04_AXI_awlen_0;
logic  [0:0]HBM04_AXI_awready_0;
logic [2:0]HBM04_AXI_awsize_0;
logic [0:0]HBM04_AXI_awvalid_0;
logic [0:0]HBM04_AXI_bready_0;
logic  [1:0]HBM04_AXI_bresp_0;
logic  [0:0]HBM04_AXI_bvalid_0;
logic  [31:0]HBM04_AXI_rdata_0;
logic  [0:0]HBM04_AXI_rlast_0;
logic [0:0]HBM04_AXI_rready_0;
logic  [0:0]HBM04_AXI_rvalid_0;
logic HBM04_AXI_wdata_0;
logic [0:0]HBM04_AXI_wlast_0;
logic  [0:0]HBM04_AXI_wready_0;
logic HBM04_AXI_wstrb_0;
logic [0:0]HBM04_AXI_wvalid_0;
logic HBM05_AXI_araddr_0;
logic [1:0]HBM05_AXI_arburst_0;
logic HBM05_AXI_arid_0;
logic HBM05_AXI_arlen_0;
logic  [0:0]HBM05_AXI_arready_0;
logic [2:0]HBM05_AXI_arsize_0;
logic [0:0]HBM05_AXI_arvalid_0;
logic HBM05_AXI_awaddr_0;
logic [1:0]HBM05_AXI_awburst_0;
logic HBM05_AXI_awid_0;
logic HBM05_AXI_awlen_0;
logic  [0:0]HBM05_AXI_awready_0;
logic [2:0]HBM05_AXI_awsize_0;
logic [0:0]HBM05_AXI_awvalid_0;
logic [0:0]HBM05_AXI_bready_0;
logic  [1:0]HBM05_AXI_bresp_0;
logic  [0:0]HBM05_AXI_bvalid_0;
logic  [31:0]HBM05_AXI_rdata_0;
logic  [0:0]HBM05_AXI_rlast_0;
logic [0:0]HBM05_AXI_rready_0;
logic  [0:0]HBM05_AXI_rvalid_0;
logic HBM05_AXI_wdata_0;
logic [0:0]HBM05_AXI_wlast_0;
logic  [0:0]HBM05_AXI_wready_0;
logic HBM05_AXI_wstrb_0;
logic [0:0]HBM05_AXI_wvalid_0;
logic HBM06_AXI_araddr_0;
logic [1:0]HBM06_AXI_arburst_0;
logic HBM06_AXI_arid_0;
logic HBM06_AXI_arlen_0;
logic  [0:0]HBM06_AXI_arready_0;
logic [2:0]HBM06_AXI_arsize_0;
logic [0:0]HBM06_AXI_arvalid_0;
logic HBM06_AXI_awaddr_0;
logic [1:0]HBM06_AXI_awburst_0;
logic HBM06_AXI_awid_0;
logic HBM06_AXI_awlen_0;
logic  [0:0]HBM06_AXI_awready_0;
logic [2:0]HBM06_AXI_awsize_0;
logic [0:0]HBM06_AXI_awvalid_0;
logic [0:0]HBM06_AXI_bready_0;
logic  [1:0]HBM06_AXI_bresp_0;
logic  [0:0]HBM06_AXI_bvalid_0;
logic  [31:0]HBM06_AXI_rdata_0;
logic  [0:0]HBM06_AXI_rlast_0;
logic [0:0]HBM06_AXI_rready_0;
logic  [0:0]HBM06_AXI_rvalid_0;
logic HBM06_AXI_wdata_0;
logic [0:0]HBM06_AXI_wlast_0;
logic  [0:0]HBM06_AXI_wready_0;
logic HBM06_AXI_wstrb_0;
logic [0:0]HBM06_AXI_wvalid_0;
logic HBM07_AXI_araddr_0;
logic [1:0]HBM07_AXI_arburst_0;
logic HBM07_AXI_arid_0;
logic HBM07_AXI_arlen_0;
logic  [0:0]HBM07_AXI_arready_0;
logic [2:0]HBM07_AXI_arsize_0;
logic [0:0]HBM07_AXI_arvalid_0;
logic HBM07_AXI_awaddr_0;
logic [1:0]HBM07_AXI_awburst_0;
logic HBM07_AXI_awid_0;
logic HBM07_AXI_awlen_0;
logic  [0:0]HBM07_AXI_awready_0;
logic [2:0]HBM07_AXI_awsize_0;
logic [0:0]HBM07_AXI_awvalid_0;
logic [0:0]HBM07_AXI_bready_0;
logic  [1:0]HBM07_AXI_bresp_0;
logic  [0:0]HBM07_AXI_bvalid_0;
logic  [31:0]HBM07_AXI_rdata_0;
logic  [0:0]HBM07_AXI_rlast_0;
logic [0:0]HBM07_AXI_rready_0;
logic  [0:0]HBM07_AXI_rvalid_0;
logic HBM07_AXI_wdata_0;
logic [0:0]HBM07_AXI_wlast_0;
logic  [0:0]HBM07_AXI_wready_0;
logic HBM07_AXI_wstrb_0;
logic [0:0]HBM07_AXI_wvalid_0;
logic HBM08_AXI_araddr_0;
logic [1:0]HBM08_AXI_arburst_0;
logic HBM08_AXI_arid_0;
logic HBM08_AXI_arlen_0;
logic  [0:0]HBM08_AXI_arready_0;
logic [2:0]HBM08_AXI_arsize_0;
logic [0:0]HBM08_AXI_arvalid_0;
logic HBM08_AXI_awaddr_0;
logic [1:0]HBM08_AXI_awburst_0;
logic HBM08_AXI_awid_0;
logic HBM08_AXI_awlen_0;
logic  [0:0]HBM08_AXI_awready_0;
logic [2:0]HBM08_AXI_awsize_0;
logic [0:0]HBM08_AXI_awvalid_0;
logic [0:0]HBM08_AXI_bready_0;
logic  [1:0]HBM08_AXI_bresp_0;
logic  [0:0]HBM08_AXI_bvalid_0;
logic  [31:0]HBM08_AXI_rdata_0;
logic  [0:0]HBM08_AXI_rlast_0;
logic [0:0]HBM08_AXI_rready_0;
logic  [0:0]HBM08_AXI_rvalid_0;
logic HBM08_AXI_wdata_0;
logic [0:0]HBM08_AXI_wlast_0;
logic  [0:0]HBM08_AXI_wready_0;
logic HBM08_AXI_wstrb_0;
logic [0:0]HBM08_AXI_wvalid_0;
logic HBM09_AXI_araddr_0;
logic [1:0]HBM09_AXI_arburst_0;
logic HBM09_AXI_arid_0;
logic HBM09_AXI_arlen_0;
logic  [0:0]HBM09_AXI_arready_0;
logic [2:0]HBM09_AXI_arsize_0;
logic [0:0]HBM09_AXI_arvalid_0;
logic HBM09_AXI_awaddr_0;
logic [1:0]HBM09_AXI_awburst_0;
logic HBM09_AXI_awid_0;
logic HBM09_AXI_awlen_0;
logic  [0:0]HBM09_AXI_awready_0;
logic [2:0]HBM09_AXI_awsize_0;
logic [0:0]HBM09_AXI_awvalid_0;
logic [0:0]HBM09_AXI_bready_0;
logic  [1:0]HBM09_AXI_bresp_0;
logic  [0:0]HBM09_AXI_bvalid_0;
logic  [31:0]HBM09_AXI_rdata_0;
logic  [0:0]HBM09_AXI_rlast_0;
logic [0:0]HBM09_AXI_rready_0;
logic  [0:0]HBM09_AXI_rvalid_0;
logic HBM09_AXI_wdata_0;
logic [0:0]HBM09_AXI_wlast_0;
logic  [0:0]HBM09_AXI_wready_0;
logic HBM09_AXI_wstrb_0;
logic [0:0]HBM09_AXI_wvalid_0;
logic HBM10_AXI_araddr_0;
logic [1:0]HBM10_AXI_arburst_0;
logic HBM10_AXI_arid_0;
logic HBM10_AXI_arlen_0;
logic  [0:0]HBM10_AXI_arready_0;
logic [2:0]HBM10_AXI_arsize_0;
logic [0:0]HBM10_AXI_arvalid_0;
logic HBM10_AXI_awaddr_0;
logic [1:0]HBM10_AXI_awburst_0;
logic HBM10_AXI_awid_0;
logic HBM10_AXI_awlen_0;
logic  [0:0]HBM10_AXI_awready_0;
logic [2:0]HBM10_AXI_awsize_0;
logic [0:0]HBM10_AXI_awvalid_0;
logic [0:0]HBM10_AXI_bready_0;
logic  [1:0]HBM10_AXI_bresp_0;
logic  [0:0]HBM10_AXI_bvalid_0;
logic  [31:0]HBM10_AXI_rdata_0;
logic  [0:0]HBM10_AXI_rlast_0;
logic [0:0]HBM10_AXI_rready_0;
logic  [0:0]HBM10_AXI_rvalid_0;
logic HBM10_AXI_wdata_0;
logic [0:0]HBM10_AXI_wlast_0;
logic  [0:0]HBM10_AXI_wready_0;
logic HBM10_AXI_wstrb_0;
logic [0:0]HBM10_AXI_wvalid_0;
logic HBM11_AXI_araddr_0;
logic [1:0]HBM11_AXI_arburst_0;
logic HBM11_AXI_arid_0;
logic HBM11_AXI_arlen_0;
logic  [0:0]HBM11_AXI_arready_0;
logic [2:0]HBM11_AXI_arsize_0;
logic [0:0]HBM11_AXI_arvalid_0;
logic HBM11_AXI_awaddr_0;
logic [1:0]HBM11_AXI_awburst_0;
logic HBM11_AXI_awid_0;
logic HBM11_AXI_awlen_0;
logic  [0:0]HBM11_AXI_awready_0;
logic [2:0]HBM11_AXI_awsize_0;
logic [0:0]HBM11_AXI_awvalid_0;
logic [0:0]HBM11_AXI_bready_0;
logic  [1:0]HBM11_AXI_bresp_0;
logic  [0:0]HBM11_AXI_bvalid_0;
logic  [31:0]HBM11_AXI_rdata_0;
logic  [0:0]HBM11_AXI_rlast_0;
logic [0:0]HBM11_AXI_rready_0;
logic  [0:0]HBM11_AXI_rvalid_0;
logic HBM11_AXI_wdata_0;
logic [0:0]HBM11_AXI_wlast_0;
logic  [0:0]HBM11_AXI_wready_0;
logic HBM11_AXI_wstrb_0;
logic [0:0]HBM11_AXI_wvalid_0;
logic HBM12_AXI_araddr_0;
logic [1:0]HBM12_AXI_arburst_0;
logic HBM12_AXI_arid_0;
logic HBM12_AXI_arlen_0;
logic  [0:0]HBM12_AXI_arready_0;
logic [2:0]HBM12_AXI_arsize_0;
logic [0:0]HBM12_AXI_arvalid_0;
logic HBM12_AXI_awaddr_0;
logic [1:0]HBM12_AXI_awburst_0;
logic HBM12_AXI_awid_0;
logic HBM12_AXI_awlen_0;
logic  [0:0]HBM12_AXI_awready_0;
logic [2:0]HBM12_AXI_awsize_0;
logic [0:0]HBM12_AXI_awvalid_0;
logic [0:0]HBM12_AXI_bready_0;
logic  [1:0]HBM12_AXI_bresp_0;
logic  [0:0]HBM12_AXI_bvalid_0;
logic  [31:0]HBM12_AXI_rdata_0;
logic  [0:0]HBM12_AXI_rlast_0;
logic [0:0]HBM12_AXI_rready_0;
logic  [0:0]HBM12_AXI_rvalid_0;
logic HBM12_AXI_wdata_0;
logic [0:0]HBM12_AXI_wlast_0;
logic  [0:0]HBM12_AXI_wready_0;
logic HBM12_AXI_wstrb_0;
logic [0:0]HBM12_AXI_wvalid_0;
logic HBM13_AXI_araddr_0;
logic [1:0]HBM13_AXI_arburst_0;
logic HBM13_AXI_arid_0;
logic HBM13_AXI_arlen_0;
logic  [0:0]HBM13_AXI_arready_0;
logic [2:0]HBM13_AXI_arsize_0;
logic [0:0]HBM13_AXI_arvalid_0;
logic HBM13_AXI_awaddr_0;
logic [1:0]HBM13_AXI_awburst_0;
logic HBM13_AXI_awid_0;
logic HBM13_AXI_awlen_0;
logic  [0:0]HBM13_AXI_awready_0;
logic [2:0]HBM13_AXI_awsize_0;
logic [0:0]HBM13_AXI_awvalid_0;
logic [0:0]HBM13_AXI_bready_0;
logic  [1:0]HBM13_AXI_bresp_0;
logic  [0:0]HBM13_AXI_bvalid_0;
logic  [31:0]HBM13_AXI_rdata_0;
logic  [0:0]HBM13_AXI_rlast_0;
logic [0:0]HBM13_AXI_rready_0;
logic  [0:0]HBM13_AXI_rvalid_0;
logic HBM13_AXI_wdata_0;
logic [0:0]HBM13_AXI_wlast_0;
logic  [0:0]HBM13_AXI_wready_0;
logic HBM13_AXI_wstrb_0;
logic [0:0]HBM13_AXI_wvalid_0;
logic HBM14_AXI_araddr_0;
logic [1:0]HBM14_AXI_arburst_0;
logic HBM14_AXI_arid_0;
logic HBM14_AXI_arlen_0;
logic  [0:0]HBM14_AXI_arready_0;
logic [2:0]HBM14_AXI_arsize_0;
logic [0:0]HBM14_AXI_arvalid_0;
logic HBM14_AXI_awaddr_0;
logic [1:0]HBM14_AXI_awburst_0;
logic HBM14_AXI_awid_0;
logic HBM14_AXI_awlen_0;
logic  [0:0]HBM14_AXI_awready_0;
logic [2:0]HBM14_AXI_awsize_0;
logic [0:0]HBM14_AXI_awvalid_0;
logic [0:0]HBM14_AXI_bready_0;
logic  [1:0]HBM14_AXI_bresp_0;
logic  [0:0]HBM14_AXI_bvalid_0;
logic  [31:0]HBM14_AXI_rdata_0;
logic  [0:0]HBM14_AXI_rlast_0;
logic [0:0]HBM14_AXI_rready_0;
logic  [0:0]HBM14_AXI_rvalid_0;
logic HBM14_AXI_wdata_0;
logic [0:0]HBM14_AXI_wlast_0;
logic  [0:0]HBM14_AXI_wready_0;
logic HBM14_AXI_wstrb_0;
logic [0:0]HBM14_AXI_wvalid_0;
logic HBM15_AXI_araddr_0;
logic [1:0]HBM15_AXI_arburst_0;
logic HBM15_AXI_arid_0;
logic HBM15_AXI_arlen_0;
logic  [0:0]HBM15_AXI_arready_0;
logic [2:0]HBM15_AXI_arsize_0;
logic [0:0]HBM15_AXI_arvalid_0;
logic HBM15_AXI_awaddr_0;
logic [1:0]HBM15_AXI_awburst_0;
logic HBM15_AXI_awid_0;
logic HBM15_AXI_awlen_0;
logic  [0:0]HBM15_AXI_awready_0;
logic [2:0]HBM15_AXI_awsize_0;
logic [0:0]HBM15_AXI_awvalid_0;
logic [0:0]HBM15_AXI_bready_0;
logic  [1:0]HBM15_AXI_bresp_0;
logic  [0:0]HBM15_AXI_bvalid_0;
logic  [31:0]HBM15_AXI_rdata_0;
logic  [0:0]HBM15_AXI_rlast_0;
logic [0:0]HBM15_AXI_rready_0;
logic  [0:0]HBM15_AXI_rvalid_0;
logic HBM15_AXI_wdata_0;
logic [0:0]HBM15_AXI_wlast_0;
logic  [0:0]HBM15_AXI_wready_0;
logic HBM15_AXI_wstrb_0;
logic [0:0]HBM15_AXI_wvalid_0;
logic HBM16_AXI_araddr_0;
logic [1:0]HBM16_AXI_arburst_0;
logic HBM16_AXI_arid_0;
logic HBM16_AXI_arlen_0;
logic  [0:0]HBM16_AXI_arready_0;
logic [2:0]HBM16_AXI_arsize_0;
logic [0:0]HBM16_AXI_arvalid_0;
logic HBM16_AXI_awaddr_0;
logic [1:0]HBM16_AXI_awburst_0;
logic HBM16_AXI_awid_0;
logic HBM16_AXI_awlen_0;
logic  [0:0]HBM16_AXI_awready_0;
logic [2:0]HBM16_AXI_awsize_0;
logic [0:0]HBM16_AXI_awvalid_0;
logic [0:0]HBM16_AXI_bready_0;
logic  [1:0]HBM16_AXI_bresp_0;
logic  [0:0]HBM16_AXI_bvalid_0;
logic  [31:0]HBM16_AXI_rdata_0;
logic  [0:0]HBM16_AXI_rlast_0;
logic [0:0]HBM16_AXI_rready_0;
logic  [0:0]HBM16_AXI_rvalid_0;
logic HBM16_AXI_wdata_0;
logic [0:0]HBM16_AXI_wlast_0;
logic  [0:0]HBM16_AXI_wready_0;
logic HBM16_AXI_wstrb_0;
logic [0:0]HBM16_AXI_wvalid_0;
logic HBM17_AXI_araddr_0;
logic [1:0]HBM17_AXI_arburst_0;
logic HBM17_AXI_arid_0;
logic HBM17_AXI_arlen_0;
logic  [0:0]HBM17_AXI_arready_0;
logic [2:0]HBM17_AXI_arsize_0;
logic [0:0]HBM17_AXI_arvalid_0;
logic HBM17_AXI_awaddr_0;
logic [1:0]HBM17_AXI_awburst_0;
logic HBM17_AXI_awid_0;
logic HBM17_AXI_awlen_0;
logic  [0:0]HBM17_AXI_awready_0;
logic [2:0]HBM17_AXI_awsize_0;
logic [0:0]HBM17_AXI_awvalid_0;
logic [0:0]HBM17_AXI_bready_0;
logic  [1:0]HBM17_AXI_bresp_0;
logic  [0:0]HBM17_AXI_bvalid_0;
logic  [31:0]HBM17_AXI_rdata_0;
logic  [0:0]HBM17_AXI_rlast_0;
logic [0:0]HBM17_AXI_rready_0;
logic  [0:0]HBM17_AXI_rvalid_0;
logic HBM17_AXI_wdata_0;
logic [0:0]HBM17_AXI_wlast_0;
logic  [0:0]HBM17_AXI_wready_0;
logic HBM17_AXI_wstrb_0;
logic [0:0]HBM17_AXI_wvalid_0;
logic HBM18_AXI_araddr_0;
logic [1:0]HBM18_AXI_arburst_0;
logic HBM18_AXI_arid_0;
logic HBM18_AXI_arlen_0;
logic  [0:0]HBM18_AXI_arready_0;
logic [2:0]HBM18_AXI_arsize_0;
logic [0:0]HBM18_AXI_arvalid_0;
logic HBM18_AXI_awaddr_0;
logic [1:0]HBM18_AXI_awburst_0;
logic HBM18_AXI_awid_0;
logic HBM18_AXI_awlen_0;
logic  [0:0]HBM18_AXI_awready_0;
logic [2:0]HBM18_AXI_awsize_0;
logic [0:0]HBM18_AXI_awvalid_0;
logic [0:0]HBM18_AXI_bready_0;
logic  [1:0]HBM18_AXI_bresp_0;
logic  [0:0]HBM18_AXI_bvalid_0;
logic  [31:0]HBM18_AXI_rdata_0;
logic  [0:0]HBM18_AXI_rlast_0;
logic [0:0]HBM18_AXI_rready_0;
logic  [0:0]HBM18_AXI_rvalid_0;
logic HBM18_AXI_wdata_0;
logic [0:0]HBM18_AXI_wlast_0;
logic  [0:0]HBM18_AXI_wready_0;
logic HBM18_AXI_wstrb_0;
logic [0:0]HBM18_AXI_wvalid_0;
logic HBM19_AXI_araddr_0;
logic [1:0]HBM19_AXI_arburst_0;
logic HBM19_AXI_arid_0;
logic HBM19_AXI_arlen_0;
logic  [0:0]HBM19_AXI_arready_0;
logic [2:0]HBM19_AXI_arsize_0;
logic [0:0]HBM19_AXI_arvalid_0;
logic HBM19_AXI_awaddr_0;
logic [1:0]HBM19_AXI_awburst_0;
logic HBM19_AXI_awid_0;
logic HBM19_AXI_awlen_0;
logic  [0:0]HBM19_AXI_awready_0;
logic [2:0]HBM19_AXI_awsize_0;
logic [0:0]HBM19_AXI_awvalid_0;
logic [0:0]HBM19_AXI_bready_0;
logic  [1:0]HBM19_AXI_bresp_0;
logic  [0:0]HBM19_AXI_bvalid_0;
logic  [31:0]HBM19_AXI_rdata_0;
logic  [0:0]HBM19_AXI_rlast_0;
logic [0:0]HBM19_AXI_rready_0;
logic  [0:0]HBM19_AXI_rvalid_0;
logic HBM19_AXI_wdata_0;
logic [0:0]HBM19_AXI_wlast_0;
logic  [0:0]HBM19_AXI_wready_0;
logic HBM19_AXI_wstrb_0;
logic [0:0]HBM19_AXI_wvalid_0;
logic HBM20_AXI_araddr_0;
logic [1:0]HBM20_AXI_arburst_0;
logic HBM20_AXI_arid_0;
logic HBM20_AXI_arlen_0;
logic  [0:0]HBM20_AXI_arready_0;
logic [2:0]HBM20_AXI_arsize_0;
logic [0:0]HBM20_AXI_arvalid_0;
logic HBM20_AXI_awaddr_0;
logic [1:0]HBM20_AXI_awburst_0;
logic HBM20_AXI_awid_0;
logic HBM20_AXI_awlen_0;
logic  [0:0]HBM20_AXI_awready_0;
logic [2:0]HBM20_AXI_awsize_0;
logic [0:0]HBM20_AXI_awvalid_0;
logic [0:0]HBM20_AXI_bready_0;
logic  [1:0]HBM20_AXI_bresp_0;
logic  [0:0]HBM20_AXI_bvalid_0;
logic  [31:0]HBM20_AXI_rdata_0;
logic  [0:0]HBM20_AXI_rlast_0;
logic [0:0]HBM20_AXI_rready_0;
logic  [0:0]HBM20_AXI_rvalid_0;
logic HBM20_AXI_wdata_0;
logic [0:0]HBM20_AXI_wlast_0;
logic  [0:0]HBM20_AXI_wready_0;
logic HBM20_AXI_wstrb_0;
logic [0:0]HBM20_AXI_wvalid_0;
logic HBM21_AXI_araddr_0;
logic [1:0]HBM21_AXI_arburst_0;
logic HBM21_AXI_arid_0;
logic HBM21_AXI_arlen_0;
logic  [0:0]HBM21_AXI_arready_0;
logic [2:0]HBM21_AXI_arsize_0;
logic [0:0]HBM21_AXI_arvalid_0;
logic HBM21_AXI_awaddr_0;
logic [1:0]HBM21_AXI_awburst_0;
logic HBM21_AXI_awid_0;
logic HBM21_AXI_awlen_0;
logic  [0:0]HBM21_AXI_awready_0;
logic [2:0]HBM21_AXI_awsize_0;
logic [0:0]HBM21_AXI_awvalid_0;
logic [0:0]HBM21_AXI_bready_0;
logic  [1:0]HBM21_AXI_bresp_0;
logic  [0:0]HBM21_AXI_bvalid_0;
logic  [31:0]HBM21_AXI_rdata_0;
logic  [0:0]HBM21_AXI_rlast_0;
logic [0:0]HBM21_AXI_rready_0;
logic  [0:0]HBM21_AXI_rvalid_0;
logic HBM21_AXI_wdata_0;
logic [0:0]HBM21_AXI_wlast_0;
logic  [0:0]HBM21_AXI_wready_0;
logic HBM21_AXI_wstrb_0;
logic [0:0]HBM21_AXI_wvalid_0;
logic HBM22_AXI_araddr_0;
logic [1:0]HBM22_AXI_arburst_0;
logic HBM22_AXI_arid_0;
logic HBM22_AXI_arlen_0;
logic  [0:0]HBM22_AXI_arready_0;
logic [2:0]HBM22_AXI_arsize_0;
logic [0:0]HBM22_AXI_arvalid_0;
logic HBM22_AXI_awaddr_0;
logic [1:0]HBM22_AXI_awburst_0;
logic HBM22_AXI_awid_0;
logic HBM22_AXI_awlen_0;
logic  [0:0]HBM22_AXI_awready_0;
logic [2:0]HBM22_AXI_awsize_0;
logic [0:0]HBM22_AXI_awvalid_0;
logic [0:0]HBM22_AXI_bready_0;
logic  [1:0]HBM22_AXI_bresp_0;
logic  [0:0]HBM22_AXI_bvalid_0;
logic  [31:0]HBM22_AXI_rdata_0;
logic  [0:0]HBM22_AXI_rlast_0;
logic [0:0]HBM22_AXI_rready_0;
logic  [0:0]HBM22_AXI_rvalid_0;
logic HBM22_AXI_wdata_0;
logic [0:0]HBM22_AXI_wlast_0;
logic  [0:0]HBM22_AXI_wready_0;
logic HBM22_AXI_wstrb_0;
logic [0:0]HBM22_AXI_wvalid_0;
logic HBM23_AXI_araddr_0;
logic [1:0]HBM23_AXI_arburst_0;
logic HBM23_AXI_arid_0;
logic HBM23_AXI_arlen_0;
logic  [0:0]HBM23_AXI_arready_0;
logic [2:0]HBM23_AXI_arsize_0;
logic [0:0]HBM23_AXI_arvalid_0;
logic HBM23_AXI_awaddr_0;
logic [1:0]HBM23_AXI_awburst_0;
logic HBM23_AXI_awid_0;
logic HBM23_AXI_awlen_0;
logic  [0:0]HBM23_AXI_awready_0;
logic [2:0]HBM23_AXI_awsize_0;
logic [0:0]HBM23_AXI_awvalid_0;
logic [0:0]HBM23_AXI_bready_0;
logic  [1:0]HBM23_AXI_bresp_0;
logic  [0:0]HBM23_AXI_bvalid_0;
logic  [31:0]HBM23_AXI_rdata_0;
logic  [0:0]HBM23_AXI_rlast_0;
logic [0:0]HBM23_AXI_rready_0;
logic  [0:0]HBM23_AXI_rvalid_0;
logic HBM23_AXI_wdata_0;
logic [0:0]HBM23_AXI_wlast_0;
logic  [0:0]HBM23_AXI_wready_0;
logic HBM23_AXI_wstrb_0;
logic [0:0]HBM23_AXI_wvalid_0;
logic HBM24_AXI_araddr_0;
logic [1:0]HBM24_AXI_arburst_0;
logic HBM24_AXI_arid_0;
logic HBM24_AXI_arlen_0;
logic  [0:0]HBM24_AXI_arready_0;
logic [2:0]HBM24_AXI_arsize_0;
logic [0:0]HBM24_AXI_arvalid_0;
logic HBM24_AXI_awaddr_0;
logic [1:0]HBM24_AXI_awburst_0;
logic HBM24_AXI_awid_0;
logic HBM24_AXI_awlen_0;
logic  [0:0]HBM24_AXI_awready_0;
logic [2:0]HBM24_AXI_awsize_0;
logic [0:0]HBM24_AXI_awvalid_0;
logic [0:0]HBM24_AXI_bready_0;
logic  [1:0]HBM24_AXI_bresp_0;
logic  [0:0]HBM24_AXI_bvalid_0;
logic  [31:0]HBM24_AXI_rdata_0;
logic  [0:0]HBM24_AXI_rlast_0;
logic [0:0]HBM24_AXI_rready_0;
logic  [0:0]HBM24_AXI_rvalid_0;
logic HBM24_AXI_wdata_0;
logic [0:0]HBM24_AXI_wlast_0;
logic  [0:0]HBM24_AXI_wready_0;
logic HBM24_AXI_wstrb_0;
logic [0:0]HBM24_AXI_wvalid_0;
logic HBM25_AXI_araddr_0;
logic [1:0]HBM25_AXI_arburst_0;
logic HBM25_AXI_arid_0;
logic HBM25_AXI_arlen_0;
logic  [0:0]HBM25_AXI_arready_0;
logic [2:0]HBM25_AXI_arsize_0;
logic [0:0]HBM25_AXI_arvalid_0;
logic HBM25_AXI_awaddr_0;
logic [1:0]HBM25_AXI_awburst_0;
logic HBM25_AXI_awid_0;
logic HBM25_AXI_awlen_0;
logic  [0:0]HBM25_AXI_awready_0;
logic [2:0]HBM25_AXI_awsize_0;
logic [0:0]HBM25_AXI_awvalid_0;
logic [0:0]HBM25_AXI_bready_0;
logic  [1:0]HBM25_AXI_bresp_0;
logic  [0:0]HBM25_AXI_bvalid_0;
logic  [31:0]HBM25_AXI_rdata_0;
logic  [0:0]HBM25_AXI_rlast_0;
logic [0:0]HBM25_AXI_rready_0;
logic  [0:0]HBM25_AXI_rvalid_0;
logic HBM25_AXI_wdata_0;
logic [0:0]HBM25_AXI_wlast_0;
logic  [0:0]HBM25_AXI_wready_0;
logic HBM25_AXI_wstrb_0;
logic [0:0]HBM25_AXI_wvalid_0;
logic HBM26_AXI_araddr_0;
logic [1:0]HBM26_AXI_arburst_0;
logic HBM26_AXI_arid_0;
logic HBM26_AXI_arlen_0;
logic  [0:0]HBM26_AXI_arready_0;
logic [2:0]HBM26_AXI_arsize_0;
logic [0:0]HBM26_AXI_arvalid_0;
logic HBM26_AXI_awaddr_0;
logic [1:0]HBM26_AXI_awburst_0;
logic HBM26_AXI_awid_0;
logic HBM26_AXI_awlen_0;
logic  [0:0]HBM26_AXI_awready_0;
logic [2:0]HBM26_AXI_awsize_0;
logic [0:0]HBM26_AXI_awvalid_0;
logic [0:0]HBM26_AXI_bready_0;
logic  [1:0]HBM26_AXI_bresp_0;
logic  [0:0]HBM26_AXI_bvalid_0;
logic  [31:0]HBM26_AXI_rdata_0;
logic  [0:0]HBM26_AXI_rlast_0;
logic [0:0]HBM26_AXI_rready_0;
logic  [0:0]HBM26_AXI_rvalid_0;
logic HBM26_AXI_wdata_0;
logic [0:0]HBM26_AXI_wlast_0;
logic  [0:0]HBM26_AXI_wready_0;
logic HBM26_AXI_wstrb_0;
logic [0:0]HBM26_AXI_wvalid_0;
logic HBM27_AXI_araddr_0;
logic [1:0]HBM27_AXI_arburst_0;
logic HBM27_AXI_arid_0;
logic HBM27_AXI_arlen_0;
logic  [0:0]HBM27_AXI_arready_0;
logic [2:0]HBM27_AXI_arsize_0;
logic [0:0]HBM27_AXI_arvalid_0;
logic HBM27_AXI_awaddr_0;
logic [1:0]HBM27_AXI_awburst_0;
logic HBM27_AXI_awid_0;
logic HBM27_AXI_awlen_0;
logic  [0:0]HBM27_AXI_awready_0;
logic [2:0]HBM27_AXI_awsize_0;
logic [0:0]HBM27_AXI_awvalid_0;
logic [0:0]HBM27_AXI_bready_0;
logic  [1:0]HBM27_AXI_bresp_0;
logic  [0:0]HBM27_AXI_bvalid_0;
logic  [31:0]HBM27_AXI_rdata_0;
logic  [0:0]HBM27_AXI_rlast_0;
logic [0:0]HBM27_AXI_rready_0;
logic  [0:0]HBM27_AXI_rvalid_0;
logic HBM27_AXI_wdata_0;
logic [0:0]HBM27_AXI_wlast_0;
logic  [0:0]HBM27_AXI_wready_0;
logic HBM27_AXI_wstrb_0;
logic [0:0]HBM27_AXI_wvalid_0;
logic HBM28_AXI_araddr_0;
logic [1:0]HBM28_AXI_arburst_0;
logic HBM28_AXI_arid_0;
logic HBM28_AXI_arlen_0;
logic  [0:0]HBM28_AXI_arready_0;
logic [2:0]HBM28_AXI_arsize_0;
logic [0:0]HBM28_AXI_arvalid_0;
logic HBM28_AXI_awaddr_0;
logic [1:0]HBM28_AXI_awburst_0;
logic HBM28_AXI_awid_0;
logic HBM28_AXI_awlen_0;
logic  [0:0]HBM28_AXI_awready_0;
logic [2:0]HBM28_AXI_awsize_0;
logic [0:0]HBM28_AXI_awvalid_0;
logic [0:0]HBM28_AXI_bready_0;
logic  [1:0]HBM28_AXI_bresp_0;
logic  [0:0]HBM28_AXI_bvalid_0;
logic  [31:0]HBM28_AXI_rdata_0;
logic  [0:0]HBM28_AXI_rlast_0;
logic [0:0]HBM28_AXI_rready_0;
logic  [0:0]HBM28_AXI_rvalid_0;
logic HBM28_AXI_wdata_0;
logic [0:0]HBM28_AXI_wlast_0;
logic  [0:0]HBM28_AXI_wready_0;
logic HBM28_AXI_wstrb_0;
logic [0:0]HBM28_AXI_wvalid_0;
logic HBM29_AXI_araddr_0;
logic [1:0]HBM29_AXI_arburst_0;
logic HBM29_AXI_arid_0;
logic HBM29_AXI_arlen_0;
logic  [0:0]HBM29_AXI_arready_0;
logic [2:0]HBM29_AXI_arsize_0;
logic [0:0]HBM29_AXI_arvalid_0;
logic HBM29_AXI_awaddr_0;
logic [1:0]HBM29_AXI_awburst_0;
logic HBM29_AXI_awid_0;
logic HBM29_AXI_awlen_0;
logic  [0:0]HBM29_AXI_awready_0;
logic [2:0]HBM29_AXI_awsize_0;
logic [0:0]HBM29_AXI_awvalid_0;
logic [0:0]HBM29_AXI_bready_0;
logic  [1:0]HBM29_AXI_bresp_0;
logic  [0:0]HBM29_AXI_bvalid_0;
logic  [31:0]HBM29_AXI_rdata_0;
logic  [0:0]HBM29_AXI_rlast_0;
logic [0:0]HBM29_AXI_rready_0;
logic  [0:0]HBM29_AXI_rvalid_0;
logic HBM29_AXI_wdata_0;
logic [0:0]HBM29_AXI_wlast_0;
logic  [0:0]HBM29_AXI_wready_0;
logic HBM29_AXI_wstrb_0;
logic [0:0]HBM29_AXI_wvalid_0;
logic HBM30_AXI_araddr_0;
logic [1:0]HBM30_AXI_arburst_0;
logic HBM30_AXI_arid_0;
logic HBM30_AXI_arlen_0;
logic  [0:0]HBM30_AXI_arready_0;
logic [2:0]HBM30_AXI_arsize_0;
logic [0:0]HBM30_AXI_arvalid_0;
logic HBM30_AXI_awaddr_0;
logic [1:0]HBM30_AXI_awburst_0;
logic HBM30_AXI_awid_0;
logic HBM30_AXI_awlen_0;
logic  [0:0]HBM30_AXI_awready_0;
logic [2:0]HBM30_AXI_awsize_0;
logic [0:0]HBM30_AXI_awvalid_0;
logic [0:0]HBM30_AXI_bready_0;
logic  [1:0]HBM30_AXI_bresp_0;
logic  [0:0]HBM30_AXI_bvalid_0;
logic  [31:0]HBM30_AXI_rdata_0;
logic  [0:0]HBM30_AXI_rlast_0;
logic [0:0]HBM30_AXI_rready_0;
logic  [0:0]HBM30_AXI_rvalid_0;
logic HBM30_AXI_wdata_0;
logic [0:0]HBM30_AXI_wlast_0;
logic  [0:0]HBM30_AXI_wready_0;
logic HBM30_AXI_wstrb_0;
logic [0:0]HBM30_AXI_wvalid_0;
logic HBM31_AXI_araddr_0;
logic [1:0]HBM31_AXI_arburst_0;
logic HBM31_AXI_arid_0;
logic HBM31_AXI_arlen_0;
logic  [0:0]HBM31_AXI_arready_0;
logic [2:0]HBM31_AXI_arsize_0;
logic [0:0]HBM31_AXI_arvalid_0;
logic HBM31_AXI_awaddr_0;
logic [1:0]HBM31_AXI_awburst_0;
logic HBM31_AXI_awid_0;
logic HBM31_AXI_awlen_0;
logic  [0:0]HBM31_AXI_awready_0;
logic [2:0]HBM31_AXI_awsize_0;
logic [0:0]HBM31_AXI_awvalid_0;
logic [0:0]HBM31_AXI_bready_0;
logic  [1:0]HBM31_AXI_bresp_0;
logic  [0:0]HBM31_AXI_bvalid_0;
logic  [31:0]HBM31_AXI_rdata_0;
logic  [0:0]HBM31_AXI_rlast_0;
logic [0:0]HBM31_AXI_rready_0;
logic  [0:0]HBM31_AXI_rvalid_0;
logic HBM31_AXI_wdata_0;
logic [0:0]HBM31_AXI_wlast_0;
logic  [0:0]HBM31_AXI_wready_0;
logic HBM31_AXI_wstrb_0;
logic [0:0]HBM31_AXI_wvalid_0;
//-------------------------------- 
// DMA Wrapper
DMA_wrapper u_DMA_wrapper (
    .*,
    .HCLK(clk_out2_0),
    .HCLK_MEMORY(clk_out4_0),
    .HCLK_CORE(clk_out3_0),
    .i_uart_input_token_len_vald_memory(1'b0),
    .i_uart_input_token_len_memory(19'b0),
    .AXI_00_ARADDR (HBM00_AXI_araddr_0),
    .AXI_00_ARBURST(HBM00_AXI_arburst_0),
    .AXI_00_ARID   (HBM00_AXI_arid_0),
    .AXI_00_ARLEN  (HBM00_AXI_arlen_0),
    .AXI_00_ARSIZE (HBM00_AXI_arsize_0),
    .AXI_00_ARVALID(HBM00_AXI_arvalid_0),
    .AXI_00_ARREADY(HBM00_AXI_arready_0),
    .AXI_00_AWADDR (HBM00_AXI_awaddr_0),
    .AXI_00_AWBURST(HBM00_AXI_awburst_0),
    .AXI_00_AWID   (HBM00_AXI_awid_0),
    .AXI_00_AWLEN  (HBM00_AXI_awlen_0),
    .AXI_00_AWSIZE (HBM00_AXI_awsize_0),
    .AXI_00_AWVALID(HBM00_AXI_awvalid_0),
    .AXI_00_AWREADY(HBM00_AXI_awready_0),
    .AXI_00_RREADY (HBM00_AXI_rready_0),
    .AXI_00_RVALID (HBM00_AXI_rvalid_0),
    .AXI_00_RLAST  (HBM00_AXI_rlast_0),
    .AXI_00_RDATA  (HBM00_AXI_rdata_0),
    .AXI_00_BREADY (HBM00_AXI_bready_0),
    .AXI_00_BRESP  (HBM00_AXI_bresp_0),
    .AXI_00_BVALID (HBM00_AXI_bvalid_0),
    .AXI_00_WDATA  (HBM00_AXI_wdata_0),
    .AXI_00_WDATA_PARITY_i(),
    .AXI_00_WLAST  (HBM00_AXI_wlast_0),
    .AXI_00_WSTRB  (HBM00_AXI_wstrb_0),
    .AXI_00_WVALID (HBM00_AXI_wvalid_0),
    .AXI_00_WREADY (HBM00_AXI_wready_0),
    .AXI_01_ARADDR (HBM01_AXI_araddr_0),
    .AXI_01_ARBURST(HBM01_AXI_arburst_0),
    .AXI_01_ARID   (HBM01_AXI_arid_0),
    .AXI_01_ARLEN  (HBM01_AXI_arlen_0),
    .AXI_01_ARSIZE (HBM01_AXI_arsize_0),
    .AXI_01_ARVALID(HBM01_AXI_arvalid_0),
    .AXI_01_ARREADY(HBM01_AXI_arready_0),
    .AXI_01_AWADDR (HBM01_AXI_awaddr_0),
    .AXI_01_AWBURST(HBM01_AXI_awburst_0),
    .AXI_01_AWID   (HBM01_AXI_awid_0),
    .AXI_01_AWLEN  (HBM01_AXI_awlen_0),
    .AXI_01_AWSIZE (HBM01_AXI_awsize_0),
    .AXI_01_AWVALID(HBM01_AXI_awvalid_0),
    .AXI_01_AWREADY(HBM01_AXI_awready_0),
    .AXI_01_RREADY (HBM01_AXI_rready_0),
    .AXI_01_RVALID (HBM01_AXI_rvalid_0),
    .AXI_01_RLAST  (HBM01_AXI_rlast_0),
    .AXI_01_RDATA  (HBM01_AXI_rdata_0),
    .AXI_01_BREADY (HBM01_AXI_bready_0),
    .AXI_01_BRESP  (HBM01_AXI_bresp_0),
    .AXI_01_BVALID (HBM01_AXI_bvalid_0),
    .AXI_01_WDATA  (HBM01_AXI_wdata_0),
    .AXI_01_WDATA_PARITY_i(),
    .AXI_01_WLAST  (HBM01_AXI_wlast_0),
    .AXI_01_WSTRB  (HBM01_AXI_wstrb_0),
    .AXI_01_WVALID (HBM01_AXI_wvalid_0),
    .AXI_01_WREADY (HBM01_AXI_wready_0),
    .AXI_02_ARADDR (HBM02_AXI_araddr_0),
    .AXI_02_ARBURST(HBM02_AXI_arburst_0),
    .AXI_02_ARID   (HBM02_AXI_arid_0),
    .AXI_02_ARLEN  (HBM02_AXI_arlen_0),
    .AXI_02_ARSIZE (HBM02_AXI_arsize_0),
    .AXI_02_ARVALID(HBM02_AXI_arvalid_0),
    .AXI_02_ARREADY(HBM02_AXI_arready_0),
    .AXI_02_AWADDR (HBM02_AXI_awaddr_0),
    .AXI_02_AWBURST(HBM02_AXI_awburst_0),
    .AXI_02_AWID   (HBM02_AXI_awid_0),
    .AXI_02_AWLEN  (HBM02_AXI_awlen_0),
    .AXI_02_AWSIZE (HBM02_AXI_awsize_0),
    .AXI_02_AWVALID(HBM02_AXI_awvalid_0),
    .AXI_02_AWREADY(HBM02_AXI_awready_0),
    .AXI_02_RREADY (HBM02_AXI_rready_0),
    .AXI_02_RVALID (HBM02_AXI_rvalid_0),
    .AXI_02_RLAST  (HBM02_AXI_rlast_0),
    .AXI_02_RDATA  (HBM02_AXI_rdata_0),
    .AXI_02_BREADY (HBM02_AXI_bready_0),
    .AXI_02_BRESP  (HBM02_AXI_bresp_0),
    .AXI_02_BVALID (HBM02_AXI_bvalid_0),
    .AXI_02_WDATA  (HBM02_AXI_wdata_0),
    .AXI_02_WDATA_PARITY_i(),
    .AXI_02_WLAST  (HBM02_AXI_wlast_0),
    .AXI_02_WSTRB  (HBM02_AXI_wstrb_0),
    .AXI_02_WVALID (HBM02_AXI_wvalid_0),
    .AXI_02_WREADY (HBM02_AXI_wready_0),
    .AXI_03_ARADDR (HBM03_AXI_araddr_0),
    .AXI_03_ARBURST(HBM03_AXI_arburst_0),
    .AXI_03_ARID   (HBM03_AXI_arid_0),
    .AXI_03_ARLEN  (HBM03_AXI_arlen_0),
    .AXI_03_ARSIZE (HBM03_AXI_arsize_0),
    .AXI_03_ARVALID(HBM03_AXI_arvalid_0),
    .AXI_03_ARREADY(HBM03_AXI_arready_0),
    .AXI_03_AWADDR (HBM03_AXI_awaddr_0),
    .AXI_03_AWBURST(HBM03_AXI_awburst_0),
    .AXI_03_AWID   (HBM03_AXI_awid_0),
    .AXI_03_AWLEN  (HBM03_AXI_awlen_0),
    .AXI_03_AWSIZE (HBM03_AXI_awsize_0),
    .AXI_03_AWVALID(HBM03_AXI_awvalid_0),
    .AXI_03_AWREADY(HBM03_AXI_awready_0),
    .AXI_03_RREADY (HBM03_AXI_rready_0),
    .AXI_03_RVALID (HBM03_AXI_rvalid_0),
    .AXI_03_RLAST  (HBM03_AXI_rlast_0),
    .AXI_03_RDATA  (HBM03_AXI_rdata_0),
    .AXI_03_BREADY (HBM03_AXI_bready_0),
    .AXI_03_BRESP  (HBM03_AXI_bresp_0),
    .AXI_03_BVALID (HBM03_AXI_bvalid_0),
    .AXI_03_WDATA  (HBM03_AXI_wdata_0),
    .AXI_03_WDATA_PARITY_i(),
    .AXI_03_WLAST  (HBM03_AXI_wlast_0),
    .AXI_03_WSTRB  (HBM03_AXI_wstrb_0),
    .AXI_03_WVALID (HBM03_AXI_wvalid_0),
    .AXI_03_WREADY (HBM03_AXI_wready_0),
    .AXI_04_ARADDR (HBM04_AXI_araddr_0),
    .AXI_04_ARBURST(HBM04_AXI_arburst_0),
    .AXI_04_ARID   (HBM04_AXI_arid_0),
    .AXI_04_ARLEN  (HBM04_AXI_arlen_0),
    .AXI_04_ARSIZE (HBM04_AXI_arsize_0),
    .AXI_04_ARVALID(HBM04_AXI_arvalid_0),
    .AXI_04_ARREADY(HBM04_AXI_arready_0),
    .AXI_04_AWADDR (HBM04_AXI_awaddr_0),
    .AXI_04_AWBURST(HBM04_AXI_awburst_0),
    .AXI_04_AWID   (HBM04_AXI_awid_0),
    .AXI_04_AWLEN  (HBM04_AXI_awlen_0),
    .AXI_04_AWSIZE (HBM04_AXI_awsize_0),
    .AXI_04_AWVALID(HBM04_AXI_awvalid_0),
    .AXI_04_AWREADY(HBM04_AXI_awready_0),
    .AXI_04_RREADY (HBM04_AXI_rready_0),
    .AXI_04_RVALID (HBM04_AXI_rvalid_0),
    .AXI_04_RLAST  (HBM04_AXI_rlast_0),
    .AXI_04_RDATA  (HBM04_AXI_rdata_0),
    .AXI_04_BREADY (HBM04_AXI_bready_0),
    .AXI_04_BRESP  (HBM04_AXI_bresp_0),
    .AXI_04_BVALID (HBM04_AXI_bvalid_0),
    .AXI_04_WDATA  (HBM04_AXI_wdata_0),
    .AXI_04_WDATA_PARITY_i(),
    .AXI_04_WLAST  (HBM04_AXI_wlast_0),
    .AXI_04_WSTRB  (HBM04_AXI_wstrb_0),
    .AXI_04_WVALID (HBM04_AXI_wvalid_0),
    .AXI_04_WREADY (HBM04_AXI_wready_0),
    .AXI_05_ARADDR (HBM05_AXI_araddr_0),
    .AXI_05_ARBURST(HBM05_AXI_arburst_0),
    .AXI_05_ARID   (HBM05_AXI_arid_0),
    .AXI_05_ARLEN  (HBM05_AXI_arlen_0),
    .AXI_05_ARSIZE (HBM05_AXI_arsize_0),
    .AXI_05_ARVALID(HBM05_AXI_arvalid_0),
    .AXI_05_ARREADY(HBM05_AXI_arready_0),
    .AXI_05_AWADDR (HBM05_AXI_awaddr_0),
    .AXI_05_AWBURST(HBM05_AXI_awburst_0),
    .AXI_05_AWID   (HBM05_AXI_awid_0),
    .AXI_05_AWLEN  (HBM05_AXI_awlen_0),
    .AXI_05_AWSIZE (HBM05_AXI_awsize_0),
    .AXI_05_AWVALID(HBM05_AXI_awvalid_0),
    .AXI_05_AWREADY(HBM05_AXI_awready_0),
    .AXI_05_RREADY (HBM05_AXI_rready_0),
    .AXI_05_RVALID (HBM05_AXI_rvalid_0),
    .AXI_05_RLAST  (HBM05_AXI_rlast_0),
    .AXI_05_RDATA  (HBM05_AXI_rdata_0),
    .AXI_05_BREADY (HBM05_AXI_bready_0),
    .AXI_05_BRESP  (HBM05_AXI_bresp_0),
    .AXI_05_BVALID (HBM05_AXI_bvalid_0),
    .AXI_05_WDATA  (HBM05_AXI_wdata_0),
    .AXI_05_WDATA_PARITY_i(),
    .AXI_05_WLAST  (HBM05_AXI_wlast_0),
    .AXI_05_WSTRB  (HBM05_AXI_wstrb_0),
    .AXI_05_WVALID (HBM05_AXI_wvalid_0),
    .AXI_05_WREADY (HBM05_AXI_wready_0),
    .AXI_06_ARADDR (HBM06_AXI_araddr_0),
    .AXI_06_ARBURST(HBM06_AXI_arburst_0),
    .AXI_06_ARID   (HBM06_AXI_arid_0),
    .AXI_06_ARLEN  (HBM06_AXI_arlen_0),
    .AXI_06_ARSIZE (HBM06_AXI_arsize_0),
    .AXI_06_ARVALID(HBM06_AXI_arvalid_0),
    .AXI_06_ARREADY(HBM06_AXI_arready_0),
    .AXI_06_AWADDR (HBM06_AXI_awaddr_0),
    .AXI_06_AWBURST(HBM06_AXI_awburst_0),
    .AXI_06_AWID   (HBM06_AXI_awid_0),
    .AXI_06_AWLEN  (HBM06_AXI_awlen_0),
    .AXI_06_AWSIZE (HBM06_AXI_awsize_0),
    .AXI_06_AWVALID(HBM06_AXI_awvalid_0),
    .AXI_06_AWREADY(HBM06_AXI_awready_0),
    .AXI_06_RREADY (HBM06_AXI_rready_0),
    .AXI_06_RVALID (HBM06_AXI_rvalid_0),
    .AXI_06_RLAST  (HBM06_AXI_rlast_0),
    .AXI_06_RDATA  (HBM06_AXI_rdata_0),
    .AXI_06_BREADY (HBM06_AXI_bready_0),
    .AXI_06_BRESP  (HBM06_AXI_bresp_0),
    .AXI_06_BVALID (HBM06_AXI_bvalid_0),
    .AXI_06_WDATA  (HBM06_AXI_wdata_0),
    .AXI_06_WDATA_PARITY_i(),
    .AXI_06_WLAST  (HBM06_AXI_wlast_0),
    .AXI_06_WSTRB  (HBM06_AXI_wstrb_0),
    .AXI_06_WVALID (HBM06_AXI_wvalid_0),
    .AXI_06_WREADY (HBM06_AXI_wready_0),
    .AXI_07_ARADDR (HBM07_AXI_araddr_0),
    .AXI_07_ARBURST(HBM07_AXI_arburst_0),
    .AXI_07_ARID   (HBM07_AXI_arid_0),
    .AXI_07_ARLEN  (HBM07_AXI_arlen_0),
    .AXI_07_ARSIZE (HBM07_AXI_arsize_0),
    .AXI_07_ARVALID(HBM07_AXI_arvalid_0),
    .AXI_07_ARREADY(HBM07_AXI_arready_0),
    .AXI_07_AWADDR (HBM07_AXI_awaddr_0),
    .AXI_07_AWBURST(HBM07_AXI_awburst_0),
    .AXI_07_AWID   (HBM07_AXI_awid_0),
    .AXI_07_AWLEN  (HBM07_AXI_awlen_0),
    .AXI_07_AWSIZE (HBM07_AXI_awsize_0),
    .AXI_07_AWVALID(HBM07_AXI_awvalid_0),
    .AXI_07_AWREADY(HBM07_AXI_awready_0),
    .AXI_07_RREADY (HBM07_AXI_rready_0),
    .AXI_07_RVALID (HBM07_AXI_rvalid_0),
    .AXI_07_RLAST  (HBM07_AXI_rlast_0),
    .AXI_07_RDATA  (HBM07_AXI_rdata_0),
    .AXI_07_BREADY (HBM07_AXI_bready_0),
    .AXI_07_BRESP  (HBM07_AXI_bresp_0),
    .AXI_07_BVALID (HBM07_AXI_bvalid_0),
    .AXI_07_WDATA  (HBM07_AXI_wdata_0),
    .AXI_07_WDATA_PARITY_i(),
    .AXI_07_WLAST  (HBM07_AXI_wlast_0),
    .AXI_07_WSTRB  (HBM07_AXI_wstrb_0),
    .AXI_07_WVALID (HBM07_AXI_wvalid_0),
    .AXI_07_WREADY (HBM07_AXI_wready_0),
    .AXI_08_ARADDR (HBM08_AXI_araddr_0),
    .AXI_08_ARBURST(HBM08_AXI_arburst_0),
    .AXI_08_ARID   (HBM08_AXI_arid_0),
    .AXI_08_ARLEN  (HBM08_AXI_arlen_0),
    .AXI_08_ARSIZE (HBM08_AXI_arsize_0),
    .AXI_08_ARVALID(HBM08_AXI_arvalid_0),
    .AXI_08_ARREADY(HBM08_AXI_arready_0),
    .AXI_08_AWADDR (HBM08_AXI_awaddr_0),
    .AXI_08_AWBURST(HBM08_AXI_awburst_0),
    .AXI_08_AWID   (HBM08_AXI_awid_0),
    .AXI_08_AWLEN  (HBM08_AXI_awlen_0),
    .AXI_08_AWSIZE (HBM08_AXI_awsize_0),
    .AXI_08_AWVALID(HBM08_AXI_awvalid_0),
    .AXI_08_AWREADY(HBM08_AXI_awready_0),
    .AXI_08_RREADY (HBM08_AXI_rready_0),
    .AXI_08_RVALID (HBM08_AXI_rvalid_0),
    .AXI_08_RLAST  (HBM08_AXI_rlast_0),
    .AXI_08_RDATA  (HBM08_AXI_rdata_0),
    .AXI_08_BREADY (HBM08_AXI_bready_0),
    .AXI_08_BRESP  (HBM08_AXI_bresp_0),
    .AXI_08_BVALID (HBM08_AXI_bvalid_0),
    .AXI_08_WDATA  (HBM08_AXI_wdata_0),
    .AXI_08_WDATA_PARITY_i(),
    .AXI_08_WLAST  (HBM08_AXI_wlast_0),
    .AXI_08_WSTRB  (HBM08_AXI_wstrb_0),
    .AXI_08_WVALID (HBM08_AXI_wvalid_0),
    .AXI_08_WREADY (HBM08_AXI_wready_0),
    .AXI_09_ARADDR (HBM09_AXI_araddr_0),
    .AXI_09_ARBURST(HBM09_AXI_arburst_0),
    .AXI_09_ARID   (HBM09_AXI_arid_0),
    .AXI_09_ARLEN  (HBM09_AXI_arlen_0),
    .AXI_09_ARSIZE (HBM09_AXI_arsize_0),
    .AXI_09_ARVALID(HBM09_AXI_arvalid_0),
    .AXI_09_ARREADY(HBM09_AXI_arready_0),
    .AXI_09_AWADDR (HBM09_AXI_awaddr_0),
    .AXI_09_AWBURST(HBM09_AXI_awburst_0),
    .AXI_09_AWID   (HBM09_AXI_awid_0),
    .AXI_09_AWLEN  (HBM09_AXI_awlen_0),
    .AXI_09_AWSIZE (HBM09_AXI_awsize_0),
    .AXI_09_AWVALID(HBM09_AXI_awvalid_0),
    .AXI_09_AWREADY(HBM09_AXI_awready_0),
    .AXI_09_RREADY (HBM09_AXI_rready_0),
    .AXI_09_RVALID (HBM09_AXI_rvalid_0),
    .AXI_09_RLAST  (HBM09_AXI_rlast_0),
    .AXI_09_RDATA  (HBM09_AXI_rdata_0),
    .AXI_09_BREADY (HBM09_AXI_bready_0),
    .AXI_09_BRESP  (HBM09_AXI_bresp_0),
    .AXI_09_BVALID (HBM09_AXI_bvalid_0),
    .AXI_09_WDATA  (HBM09_AXI_wdata_0),
    .AXI_09_WDATA_PARITY_i(),
    .AXI_09_WLAST  (HBM09_AXI_wlast_0),
    .AXI_09_WSTRB  (HBM09_AXI_wstrb_0),
    .AXI_09_WVALID (HBM09_AXI_wvalid_0),
    .AXI_09_WREADY (HBM09_AXI_wready_0),
    .AXI_10_ARADDR (HBM10_AXI_araddr_0),
    .AXI_10_ARBURST(HBM10_AXI_arburst_0),
    .AXI_10_ARID   (HBM10_AXI_arid_0),
    .AXI_10_ARLEN  (HBM10_AXI_arlen_0),
    .AXI_10_ARSIZE (HBM10_AXI_arsize_0),
    .AXI_10_ARVALID(HBM10_AXI_arvalid_0),
    .AXI_10_ARREADY(HBM10_AXI_arready_0),
    .AXI_10_AWADDR (HBM10_AXI_awaddr_0),
    .AXI_10_AWBURST(HBM10_AXI_awburst_0),
    .AXI_10_AWID   (HBM10_AXI_awid_0),
    .AXI_10_AWLEN  (HBM10_AXI_awlen_0),
    .AXI_10_AWSIZE (HBM10_AXI_awsize_0),
    .AXI_10_AWVALID(HBM10_AXI_awvalid_0),
    .AXI_10_AWREADY(HBM10_AXI_awready_0),
    .AXI_10_RREADY (HBM10_AXI_rready_0),
    .AXI_10_RVALID (HBM10_AXI_rvalid_0),
    .AXI_10_RLAST  (HBM10_AXI_rlast_0),
    .AXI_10_RDATA  (HBM10_AXI_rdata_0),
    .AXI_10_BREADY (HBM10_AXI_bready_0),
    .AXI_10_BRESP  (HBM10_AXI_bresp_0),
    .AXI_10_BVALID (HBM10_AXI_bvalid_0),
    .AXI_10_WDATA  (HBM10_AXI_wdata_0),
    .AXI_10_WDATA_PARITY_i(),
    .AXI_10_WLAST  (HBM10_AXI_wlast_0),
    .AXI_10_WSTRB  (HBM10_AXI_wstrb_0),
    .AXI_10_WVALID (HBM10_AXI_wvalid_0),
    .AXI_10_WREADY (HBM10_AXI_wready_0),
    .AXI_11_ARADDR (HBM11_AXI_araddr_0),
    .AXI_11_ARBURST(HBM11_AXI_arburst_0),
    .AXI_11_ARID   (HBM11_AXI_arid_0),
    .AXI_11_ARLEN  (HBM11_AXI_arlen_0),
    .AXI_11_ARSIZE (HBM11_AXI_arsize_0),
    .AXI_11_ARVALID(HBM11_AXI_arvalid_0),
    .AXI_11_ARREADY(HBM11_AXI_arready_0),
    .AXI_11_AWADDR (HBM11_AXI_awaddr_0),
    .AXI_11_AWBURST(HBM11_AXI_awburst_0),
    .AXI_11_AWID   (HBM11_AXI_awid_0),
    .AXI_11_AWLEN  (HBM11_AXI_awlen_0),
    .AXI_11_AWSIZE (HBM11_AXI_awsize_0),
    .AXI_11_AWVALID(HBM11_AXI_awvalid_0),
    .AXI_11_AWREADY(HBM11_AXI_awready_0),
    .AXI_11_RREADY (HBM11_AXI_rready_0),
    .AXI_11_RVALID (HBM11_AXI_rvalid_0),
    .AXI_11_RLAST  (HBM11_AXI_rlast_0),
    .AXI_11_RDATA  (HBM11_AXI_rdata_0),
    .AXI_11_BREADY (HBM11_AXI_bready_0),
    .AXI_11_BRESP  (HBM11_AXI_bresp_0),
    .AXI_11_BVALID (HBM11_AXI_bvalid_0),
    .AXI_11_WDATA  (HBM11_AXI_wdata_0),
    .AXI_11_WDATA_PARITY_i(),
    .AXI_11_WLAST  (HBM11_AXI_wlast_0),
    .AXI_11_WSTRB  (HBM11_AXI_wstrb_0),
    .AXI_11_WVALID (HBM11_AXI_wvalid_0),
    .AXI_11_WREADY (HBM11_AXI_wready_0),
    .AXI_12_ARADDR (HBM12_AXI_araddr_0),
    .AXI_12_ARBURST(HBM12_AXI_arburst_0),
    .AXI_12_ARID   (HBM12_AXI_arid_0),
    .AXI_12_ARLEN  (HBM12_AXI_arlen_0),
    .AXI_12_ARSIZE (HBM12_AXI_arsize_0),
    .AXI_12_ARVALID(HBM12_AXI_arvalid_0),
    .AXI_12_ARREADY(HBM12_AXI_arready_0),
    .AXI_12_AWADDR (HBM12_AXI_awaddr_0),
    .AXI_12_AWBURST(HBM12_AXI_awburst_0),
    .AXI_12_AWID   (HBM12_AXI_awid_0),
    .AXI_12_AWLEN  (HBM12_AXI_awlen_0),
    .AXI_12_AWSIZE (HBM12_AXI_awsize_0),
    .AXI_12_AWVALID(HBM12_AXI_awvalid_0),
    .AXI_12_AWREADY(HBM12_AXI_awready_0),
    .AXI_12_RREADY (HBM12_AXI_rready_0),
    .AXI_12_RVALID (HBM12_AXI_rvalid_0),
    .AXI_12_RLAST  (HBM12_AXI_rlast_0),
    .AXI_12_RDATA  (HBM12_AXI_rdata_0),
    .AXI_12_BREADY (HBM12_AXI_bready_0),
    .AXI_12_BRESP  (HBM12_AXI_bresp_0),
    .AXI_12_BVALID (HBM12_AXI_bvalid_0),
    .AXI_12_WDATA  (HBM12_AXI_wdata_0),
    .AXI_12_WDATA_PARITY_i(),
    .AXI_12_WLAST  (HBM12_AXI_wlast_0),
    .AXI_12_WSTRB  (HBM12_AXI_wstrb_0),
    .AXI_12_WVALID (HBM12_AXI_wvalid_0),
    .AXI_12_WREADY (HBM12_AXI_wready_0),
    .AXI_13_ARADDR (HBM13_AXI_araddr_0),
    .AXI_13_ARBURST(HBM13_AXI_arburst_0),
    .AXI_13_ARID   (HBM13_AXI_arid_0),
    .AXI_13_ARLEN  (HBM13_AXI_arlen_0),
    .AXI_13_ARSIZE (HBM13_AXI_arsize_0),
    .AXI_13_ARVALID(HBM13_AXI_arvalid_0),
    .AXI_13_ARREADY(HBM13_AXI_arready_0),
    .AXI_13_AWADDR (HBM13_AXI_awaddr_0),
    .AXI_13_AWBURST(HBM13_AXI_awburst_0),
    .AXI_13_AWID   (HBM13_AXI_awid_0),
    .AXI_13_AWLEN  (HBM13_AXI_awlen_0),
    .AXI_13_AWSIZE (HBM13_AXI_awsize_0),
    .AXI_13_AWVALID(HBM13_AXI_awvalid_0),
    .AXI_13_AWREADY(HBM13_AXI_awready_0),
    .AXI_13_RREADY (HBM13_AXI_rready_0),
    .AXI_13_RVALID (HBM13_AXI_rvalid_0),
    .AXI_13_RLAST  (HBM13_AXI_rlast_0),
    .AXI_13_RDATA  (HBM13_AXI_rdata_0),
    .AXI_13_BREADY (HBM13_AXI_bready_0),
    .AXI_13_BRESP  (HBM13_AXI_bresp_0),
    .AXI_13_BVALID (HBM13_AXI_bvalid_0),
    .AXI_13_WDATA  (HBM13_AXI_wdata_0),
    .AXI_13_WDATA_PARITY_i(),
    .AXI_13_WLAST  (HBM13_AXI_wlast_0),
    .AXI_13_WSTRB  (HBM13_AXI_wstrb_0),
    .AXI_13_WVALID (HBM13_AXI_wvalid_0),
    .AXI_13_WREADY (HBM13_AXI_wready_0),
    .AXI_14_ARADDR (HBM14_AXI_araddr_0),
    .AXI_14_ARBURST(HBM14_AXI_arburst_0),
    .AXI_14_ARID   (HBM14_AXI_arid_0),
    .AXI_14_ARLEN  (HBM14_AXI_arlen_0),
    .AXI_14_ARSIZE (HBM14_AXI_arsize_0),
    .AXI_14_ARVALID(HBM14_AXI_arvalid_0),
    .AXI_14_ARREADY(HBM14_AXI_arready_0),
    .AXI_14_AWADDR (HBM14_AXI_awaddr_0),
    .AXI_14_AWBURST(HBM14_AXI_awburst_0),
    .AXI_14_AWID   (HBM14_AXI_awid_0),
    .AXI_14_AWLEN  (HBM14_AXI_awlen_0),
    .AXI_14_AWSIZE (HBM14_AXI_awsize_0),
    .AXI_14_AWVALID(HBM14_AXI_awvalid_0),
    .AXI_14_AWREADY(HBM14_AXI_awready_0),
    .AXI_14_RREADY (HBM14_AXI_rready_0),
    .AXI_14_RVALID (HBM14_AXI_rvalid_0),
    .AXI_14_RLAST  (HBM14_AXI_rlast_0),
    .AXI_14_RDATA  (HBM14_AXI_rdata_0),
    .AXI_14_BREADY (HBM14_AXI_bready_0),
    .AXI_14_BRESP  (HBM14_AXI_bresp_0),
    .AXI_14_BVALID (HBM14_AXI_bvalid_0),
    .AXI_14_WDATA  (HBM14_AXI_wdata_0),
    .AXI_14_WDATA_PARITY_i(),
    .AXI_14_WLAST  (HBM14_AXI_wlast_0),
    .AXI_14_WSTRB  (HBM14_AXI_wstrb_0),
    .AXI_14_WVALID (HBM14_AXI_wvalid_0),
    .AXI_14_WREADY (HBM14_AXI_wready_0),
    .AXI_15_ARADDR (HBM15_AXI_araddr_0),
    .AXI_15_ARBURST(HBM15_AXI_arburst_0),
    .AXI_15_ARID   (HBM15_AXI_arid_0),
    .AXI_15_ARLEN  (HBM15_AXI_arlen_0),
    .AXI_15_ARSIZE (HBM15_AXI_arsize_0),
    .AXI_15_ARVALID(HBM15_AXI_arvalid_0),
    .AXI_15_ARREADY(HBM15_AXI_arready_0),
    .AXI_15_AWADDR (HBM15_AXI_awaddr_0),
    .AXI_15_AWBURST(HBM15_AXI_awburst_0),
    .AXI_15_AWID   (HBM15_AXI_awid_0),
    .AXI_15_AWLEN  (HBM15_AXI_awlen_0),
    .AXI_15_AWSIZE (HBM15_AXI_awsize_0),
    .AXI_15_AWVALID(HBM15_AXI_awvalid_0),
    .AXI_15_AWREADY(HBM15_AXI_awready_0),
    .AXI_15_RREADY (HBM15_AXI_rready_0),
    .AXI_15_RVALID (HBM15_AXI_rvalid_0),
    .AXI_15_RLAST  (HBM15_AXI_rlast_0),
    .AXI_15_RDATA  (HBM15_AXI_rdata_0),
    .AXI_15_BREADY (HBM15_AXI_bready_0),
    .AXI_15_BRESP  (HBM15_AXI_bresp_0),
    .AXI_15_BVALID (HBM15_AXI_bvalid_0),
    .AXI_15_WDATA  (HBM15_AXI_wdata_0),
    .AXI_15_WDATA_PARITY_i(),
    .AXI_15_WLAST  (HBM15_AXI_wlast_0),
    .AXI_15_WSTRB  (HBM15_AXI_wstrb_0),
    .AXI_15_WVALID (HBM15_AXI_wvalid_0),
    .AXI_15_WREADY (HBM15_AXI_wready_0),
    .AXI_16_ARADDR (HBM16_AXI_araddr_0),
    .AXI_16_ARBURST(HBM16_AXI_arburst_0),
    .AXI_16_ARID   (HBM16_AXI_arid_0),
    .AXI_16_ARLEN  (HBM16_AXI_arlen_0),
    .AXI_16_ARSIZE (HBM16_AXI_arsize_0),
    .AXI_16_ARVALID(HBM16_AXI_arvalid_0),
    .AXI_16_ARREADY(HBM16_AXI_arready_0),
    .AXI_16_AWADDR (HBM16_AXI_awaddr_0),
    .AXI_16_AWBURST(HBM16_AXI_awburst_0),
    .AXI_16_AWID   (HBM16_AXI_awid_0),
    .AXI_16_AWLEN  (HBM16_AXI_awlen_0),
    .AXI_16_AWSIZE (HBM16_AXI_awsize_0),
    .AXI_16_AWVALID(HBM16_AXI_awvalid_0),
    .AXI_16_AWREADY(HBM16_AXI_awready_0),
    .AXI_16_RREADY (HBM16_AXI_rready_0),
    .AXI_16_RVALID (HBM16_AXI_rvalid_0),
    .AXI_16_RLAST  (HBM16_AXI_rlast_0),
    .AXI_16_RDATA  (HBM16_AXI_rdata_0),
    .AXI_16_BREADY (HBM16_AXI_bready_0),
    .AXI_16_BRESP  (HBM16_AXI_bresp_0),
    .AXI_16_BVALID (HBM16_AXI_bvalid_0),
    .AXI_16_WDATA  (HBM16_AXI_wdata_0),
    .AXI_16_WDATA_PARITY_i(),
    .AXI_16_WLAST  (HBM16_AXI_wlast_0),
    .AXI_16_WSTRB  (HBM16_AXI_wstrb_0),
    .AXI_16_WVALID (HBM16_AXI_wvalid_0),
    .AXI_16_WREADY (HBM16_AXI_wready_0),
    .AXI_17_ARADDR (HBM17_AXI_araddr_0),
    .AXI_17_ARBURST(HBM17_AXI_arburst_0),
    .AXI_17_ARID   (HBM17_AXI_arid_0),
    .AXI_17_ARLEN  (HBM17_AXI_arlen_0),
    .AXI_17_ARSIZE (HBM17_AXI_arsize_0),
    .AXI_17_ARVALID(HBM17_AXI_arvalid_0),
    .AXI_17_ARREADY(HBM17_AXI_arready_0),
    .AXI_17_AWADDR (HBM17_AXI_awaddr_0),
    .AXI_17_AWBURST(HBM17_AXI_awburst_0),
    .AXI_17_AWID   (HBM17_AXI_awid_0),
    .AXI_17_AWLEN  (HBM17_AXI_awlen_0),
    .AXI_17_AWSIZE (HBM17_AXI_awsize_0),
    .AXI_17_AWVALID(HBM17_AXI_awvalid_0),
    .AXI_17_AWREADY(HBM17_AXI_awready_0),
    .AXI_17_RREADY (HBM17_AXI_rready_0),
    .AXI_17_RVALID (HBM17_AXI_rvalid_0),
    .AXI_17_RLAST  (HBM17_AXI_rlast_0),
    .AXI_17_RDATA  (HBM17_AXI_rdata_0),
    .AXI_17_BREADY (HBM17_AXI_bready_0),
    .AXI_17_BRESP  (HBM17_AXI_bresp_0),
    .AXI_17_BVALID (HBM17_AXI_bvalid_0),
    .AXI_17_WDATA  (HBM17_AXI_wdata_0),
    .AXI_17_WDATA_PARITY_i(),
    .AXI_17_WLAST  (HBM17_AXI_wlast_0),
    .AXI_17_WSTRB  (HBM17_AXI_wstrb_0),
    .AXI_17_WVALID (HBM17_AXI_wvalid_0),
    .AXI_17_WREADY (HBM17_AXI_wready_0),
    .AXI_18_ARADDR (HBM18_AXI_araddr_0),
    .AXI_18_ARBURST(HBM18_AXI_arburst_0),
    .AXI_18_ARID   (HBM18_AXI_arid_0),
    .AXI_18_ARLEN  (HBM18_AXI_arlen_0),
    .AXI_18_ARSIZE (HBM18_AXI_arsize_0),
    .AXI_18_ARVALID(HBM18_AXI_arvalid_0),
    .AXI_18_ARREADY(HBM18_AXI_arready_0),
    .AXI_18_AWADDR (HBM18_AXI_awaddr_0),
    .AXI_18_AWBURST(HBM18_AXI_awburst_0),
    .AXI_18_AWID   (HBM18_AXI_awid_0),
    .AXI_18_AWLEN  (HBM18_AXI_awlen_0),
    .AXI_18_AWSIZE (HBM18_AXI_awsize_0),
    .AXI_18_AWVALID(HBM18_AXI_awvalid_0),
    .AXI_18_AWREADY(HBM18_AXI_awready_0),
    .AXI_18_RREADY (HBM18_AXI_rready_0),
    .AXI_18_RVALID (HBM18_AXI_rvalid_0),
    .AXI_18_RLAST  (HBM18_AXI_rlast_0),
    .AXI_18_RDATA  (HBM18_AXI_rdata_0),
    .AXI_18_BREADY (HBM18_AXI_bready_0),
    .AXI_18_BRESP  (HBM18_AXI_bresp_0),
    .AXI_18_BVALID (HBM18_AXI_bvalid_0),
    .AXI_18_WDATA  (HBM18_AXI_wdata_0),
    .AXI_18_WDATA_PARITY_i(),
    .AXI_18_WLAST  (HBM18_AXI_wlast_0),
    .AXI_18_WSTRB  (HBM18_AXI_wstrb_0),
    .AXI_18_WVALID (HBM18_AXI_wvalid_0),
    .AXI_18_WREADY (HBM18_AXI_wready_0),
    .AXI_19_ARADDR (HBM19_AXI_araddr_0),
    .AXI_19_ARBURST(HBM19_AXI_arburst_0),
    .AXI_19_ARID   (HBM19_AXI_arid_0),
    .AXI_19_ARLEN  (HBM19_AXI_arlen_0),
    .AXI_19_ARSIZE (HBM19_AXI_arsize_0),
    .AXI_19_ARVALID(HBM19_AXI_arvalid_0),
    .AXI_19_ARREADY(HBM19_AXI_arready_0),
    .AXI_19_AWADDR (HBM19_AXI_awaddr_0),
    .AXI_19_AWBURST(HBM19_AXI_awburst_0),
    .AXI_19_AWID   (HBM19_AXI_awid_0),
    .AXI_19_AWLEN  (HBM19_AXI_awlen_0),
    .AXI_19_AWSIZE (HBM19_AXI_awsize_0),
    .AXI_19_AWVALID(HBM19_AXI_awvalid_0),
    .AXI_19_AWREADY(HBM19_AXI_awready_0),
    .AXI_19_RREADY (HBM19_AXI_rready_0),
    .AXI_19_RVALID (HBM19_AXI_rvalid_0),
    .AXI_19_RLAST  (HBM19_AXI_rlast_0),
    .AXI_19_RDATA  (HBM19_AXI_rdata_0),
    .AXI_19_BREADY (HBM19_AXI_bready_0),
    .AXI_19_BRESP  (HBM19_AXI_bresp_0),
    .AXI_19_BVALID (HBM19_AXI_bvalid_0),
    .AXI_19_WDATA  (HBM19_AXI_wdata_0),
    .AXI_19_WDATA_PARITY_i(),
    .AXI_19_WLAST  (HBM19_AXI_wlast_0),
    .AXI_19_WSTRB  (HBM19_AXI_wstrb_0),
    .AXI_19_WVALID (HBM19_AXI_wvalid_0),
    .AXI_19_WREADY (HBM19_AXI_wready_0),
    .AXI_20_ARADDR (HBM20_AXI_araddr_0),
    .AXI_20_ARBURST(HBM20_AXI_arburst_0),
    .AXI_20_ARID   (HBM20_AXI_arid_0),
    .AXI_20_ARLEN  (HBM20_AXI_arlen_0),
    .AXI_20_ARSIZE (HBM20_AXI_arsize_0),
    .AXI_20_ARVALID(HBM20_AXI_arvalid_0),
    .AXI_20_ARREADY(HBM20_AXI_arready_0),
    .AXI_20_AWADDR (HBM20_AXI_awaddr_0),
    .AXI_20_AWBURST(HBM20_AXI_awburst_0),
    .AXI_20_AWID   (HBM20_AXI_awid_0),
    .AXI_20_AWLEN  (HBM20_AXI_awlen_0),
    .AXI_20_AWSIZE (HBM20_AXI_awsize_0),
    .AXI_20_AWVALID(HBM20_AXI_awvalid_0),
    .AXI_20_AWREADY(HBM20_AXI_awready_0),
    .AXI_20_RREADY (HBM20_AXI_rready_0),
    .AXI_20_RVALID (HBM20_AXI_rvalid_0),
    .AXI_20_RLAST  (HBM20_AXI_rlast_0),
    .AXI_20_RDATA  (HBM20_AXI_rdata_0),
    .AXI_20_BREADY (HBM20_AXI_bready_0),
    .AXI_20_BRESP  (HBM20_AXI_bresp_0),
    .AXI_20_BVALID (HBM20_AXI_bvalid_0),
    .AXI_20_WDATA  (HBM20_AXI_wdata_0),
    .AXI_20_WDATA_PARITY_i(),
    .AXI_20_WLAST  (HBM20_AXI_wlast_0),
    .AXI_20_WSTRB  (HBM20_AXI_wstrb_0),
    .AXI_20_WVALID (HBM20_AXI_wvalid_0),
    .AXI_20_WREADY (HBM20_AXI_wready_0),
    .AXI_21_ARADDR (HBM21_AXI_araddr_0),
    .AXI_21_ARBURST(HBM21_AXI_arburst_0),
    .AXI_21_ARID   (HBM21_AXI_arid_0),
    .AXI_21_ARLEN  (HBM21_AXI_arlen_0),
    .AXI_21_ARSIZE (HBM21_AXI_arsize_0),
    .AXI_21_ARVALID(HBM21_AXI_arvalid_0),
    .AXI_21_ARREADY(HBM21_AXI_arready_0),
    .AXI_21_AWADDR (HBM21_AXI_awaddr_0),
    .AXI_21_AWBURST(HBM21_AXI_awburst_0),
    .AXI_21_AWID   (HBM21_AXI_awid_0),
    .AXI_21_AWLEN  (HBM21_AXI_awlen_0),
    .AXI_21_AWSIZE (HBM21_AXI_awsize_0),
    .AXI_21_AWVALID(HBM21_AXI_awvalid_0),
    .AXI_21_AWREADY(HBM21_AXI_awready_0),
    .AXI_21_RREADY (HBM21_AXI_rready_0),
    .AXI_21_RVALID (HBM21_AXI_rvalid_0),
    .AXI_21_RLAST  (HBM21_AXI_rlast_0),
    .AXI_21_RDATA  (HBM21_AXI_rdata_0),
    .AXI_21_BREADY (HBM21_AXI_bready_0),
    .AXI_21_BRESP  (HBM21_AXI_bresp_0),
    .AXI_21_BVALID (HBM21_AXI_bvalid_0),
    .AXI_21_WDATA  (HBM21_AXI_wdata_0),
    .AXI_21_WDATA_PARITY_i(),
    .AXI_21_WLAST  (HBM21_AXI_wlast_0),
    .AXI_21_WSTRB  (HBM21_AXI_wstrb_0),
    .AXI_21_WVALID (HBM21_AXI_wvalid_0),
    .AXI_21_WREADY (HBM21_AXI_wready_0),
    .AXI_22_ARADDR (HBM22_AXI_araddr_0),
    .AXI_22_ARBURST(HBM22_AXI_arburst_0),
    .AXI_22_ARID   (HBM22_AXI_arid_0),
    .AXI_22_ARLEN  (HBM22_AXI_arlen_0),
    .AXI_22_ARSIZE (HBM22_AXI_arsize_0),
    .AXI_22_ARVALID(HBM22_AXI_arvalid_0),
    .AXI_22_ARREADY(HBM22_AXI_arready_0),
    .AXI_22_AWADDR (HBM22_AXI_awaddr_0),
    .AXI_22_AWBURST(HBM22_AXI_awburst_0),
    .AXI_22_AWID   (HBM22_AXI_awid_0),
    .AXI_22_AWLEN  (HBM22_AXI_awlen_0),
    .AXI_22_AWSIZE (HBM22_AXI_awsize_0),
    .AXI_22_AWVALID(HBM22_AXI_awvalid_0),
    .AXI_22_AWREADY(HBM22_AXI_awready_0),
    .AXI_22_RREADY (HBM22_AXI_rready_0),
    .AXI_22_RVALID (HBM22_AXI_rvalid_0),
    .AXI_22_RLAST  (HBM22_AXI_rlast_0),
    .AXI_22_RDATA  (HBM22_AXI_rdata_0),
    .AXI_22_BREADY (HBM22_AXI_bready_0),
    .AXI_22_BRESP  (HBM22_AXI_bresp_0),
    .AXI_22_BVALID (HBM22_AXI_bvalid_0),
    .AXI_22_WDATA  (HBM22_AXI_wdata_0),
    .AXI_22_WDATA_PARITY_i(),
    .AXI_22_WLAST  (HBM22_AXI_wlast_0),
    .AXI_22_WSTRB  (HBM22_AXI_wstrb_0),
    .AXI_22_WVALID (HBM22_AXI_wvalid_0),
    .AXI_22_WREADY (HBM22_AXI_wready_0),
    .AXI_23_ARADDR (HBM23_AXI_araddr_0),
    .AXI_23_ARBURST(HBM23_AXI_arburst_0),
    .AXI_23_ARID   (HBM23_AXI_arid_0),
    .AXI_23_ARLEN  (HBM23_AXI_arlen_0),
    .AXI_23_ARSIZE (HBM23_AXI_arsize_0),
    .AXI_23_ARVALID(HBM23_AXI_arvalid_0),
    .AXI_23_ARREADY(HBM23_AXI_arready_0),
    .AXI_23_AWADDR (HBM23_AXI_awaddr_0),
    .AXI_23_AWBURST(HBM23_AXI_awburst_0),
    .AXI_23_AWID   (HBM23_AXI_awid_0),
    .AXI_23_AWLEN  (HBM23_AXI_awlen_0),
    .AXI_23_AWSIZE (HBM23_AXI_awsize_0),
    .AXI_23_AWVALID(HBM23_AXI_awvalid_0),
    .AXI_23_AWREADY(HBM23_AXI_awready_0),
    .AXI_23_RREADY (HBM23_AXI_rready_0),
    .AXI_23_RVALID (HBM23_AXI_rvalid_0),
    .AXI_23_RLAST  (HBM23_AXI_rlast_0),
    .AXI_23_RDATA  (HBM23_AXI_rdata_0),
    .AXI_23_BREADY (HBM23_AXI_bready_0),
    .AXI_23_BRESP  (HBM23_AXI_bresp_0),
    .AXI_23_BVALID (HBM23_AXI_bvalid_0),
    .AXI_23_WDATA  (HBM23_AXI_wdata_0),
    .AXI_23_WDATA_PARITY_i(),
    .AXI_23_WLAST  (HBM23_AXI_wlast_0),
    .AXI_23_WSTRB  (HBM23_AXI_wstrb_0),
    .AXI_23_WVALID (HBM23_AXI_wvalid_0),
    .AXI_23_WREADY (HBM23_AXI_wready_0),
    .AXI_24_ARADDR (HBM24_AXI_araddr_0),
    .AXI_24_ARBURST(HBM24_AXI_arburst_0),
    .AXI_24_ARID   (HBM24_AXI_arid_0),
    .AXI_24_ARLEN  (HBM24_AXI_arlen_0),
    .AXI_24_ARSIZE (HBM24_AXI_arsize_0),
    .AXI_24_ARVALID(HBM24_AXI_arvalid_0),
    .AXI_24_ARREADY(HBM24_AXI_arready_0),
    .AXI_24_AWADDR (HBM24_AXI_awaddr_0),
    .AXI_24_AWBURST(HBM24_AXI_awburst_0),
    .AXI_24_AWID   (HBM24_AXI_awid_0),
    .AXI_24_AWLEN  (HBM24_AXI_awlen_0),
    .AXI_24_AWSIZE (HBM24_AXI_awsize_0),
    .AXI_24_AWVALID(HBM24_AXI_awvalid_0),
    .AXI_24_AWREADY(HBM24_AXI_awready_0),
    .AXI_24_RREADY (HBM24_AXI_rready_0),
    .AXI_24_RVALID (HBM24_AXI_rvalid_0),
    .AXI_24_RLAST  (HBM24_AXI_rlast_0),
    .AXI_24_RDATA  (HBM24_AXI_rdata_0),
    .AXI_24_BREADY (HBM24_AXI_bready_0),
    .AXI_24_BRESP  (HBM24_AXI_bresp_0),
    .AXI_24_BVALID (HBM24_AXI_bvalid_0),
    .AXI_24_WDATA  (HBM24_AXI_wdata_0),
    .AXI_24_WDATA_PARITY_i(),
    .AXI_24_WLAST  (HBM24_AXI_wlast_0),
    .AXI_24_WSTRB  (HBM24_AXI_wstrb_0),
    .AXI_24_WVALID (HBM24_AXI_wvalid_0),
    .AXI_24_WREADY (HBM24_AXI_wready_0),
    .AXI_25_ARADDR (HBM25_AXI_araddr_0),
    .AXI_25_ARBURST(HBM25_AXI_arburst_0),
    .AXI_25_ARID   (HBM25_AXI_arid_0),
    .AXI_25_ARLEN  (HBM25_AXI_arlen_0),
    .AXI_25_ARSIZE (HBM25_AXI_arsize_0),
    .AXI_25_ARVALID(HBM25_AXI_arvalid_0),
    .AXI_25_ARREADY(HBM25_AXI_arready_0),
    .AXI_25_AWADDR (HBM25_AXI_awaddr_0),
    .AXI_25_AWBURST(HBM25_AXI_awburst_0),
    .AXI_25_AWID   (HBM25_AXI_awid_0),
    .AXI_25_AWLEN  (HBM25_AXI_awlen_0),
    .AXI_25_AWSIZE (HBM25_AXI_awsize_0),
    .AXI_25_AWVALID(HBM25_AXI_awvalid_0),
    .AXI_25_AWREADY(HBM25_AXI_awready_0),
    .AXI_25_RREADY (HBM25_AXI_rready_0),
    .AXI_25_RVALID (HBM25_AXI_rvalid_0),
    .AXI_25_RLAST  (HBM25_AXI_rlast_0),
    .AXI_25_RDATA  (HBM25_AXI_rdata_0),
    .AXI_25_BREADY (HBM25_AXI_bready_0),
    .AXI_25_BRESP  (HBM25_AXI_bresp_0),
    .AXI_25_BVALID (HBM25_AXI_bvalid_0),
    .AXI_25_WDATA  (HBM25_AXI_wdata_0),
    .AXI_25_WDATA_PARITY_i(),
    .AXI_25_WLAST  (HBM25_AXI_wlast_0),
    .AXI_25_WSTRB  (HBM25_AXI_wstrb_0),
    .AXI_25_WVALID (HBM25_AXI_wvalid_0),
    .AXI_25_WREADY (HBM25_AXI_wready_0),
    .AXI_26_ARADDR (HBM26_AXI_araddr_0),
    .AXI_26_ARBURST(HBM26_AXI_arburst_0),
    .AXI_26_ARID   (HBM26_AXI_arid_0),
    .AXI_26_ARLEN  (HBM26_AXI_arlen_0),
    .AXI_26_ARSIZE (HBM26_AXI_arsize_0),
    .AXI_26_ARVALID(HBM26_AXI_arvalid_0),
    .AXI_26_ARREADY(HBM26_AXI_arready_0),
    .AXI_26_AWADDR (HBM26_AXI_awaddr_0),
    .AXI_26_AWBURST(HBM26_AXI_awburst_0),
    .AXI_26_AWID   (HBM26_AXI_awid_0),
    .AXI_26_AWLEN  (HBM26_AXI_awlen_0),
    .AXI_26_AWSIZE (HBM26_AXI_awsize_0),
    .AXI_26_AWVALID(HBM26_AXI_awvalid_0),
    .AXI_26_AWREADY(HBM26_AXI_awready_0),
    .AXI_26_RREADY (HBM26_AXI_rready_0),
    .AXI_26_RVALID (HBM26_AXI_rvalid_0),
    .AXI_26_RLAST  (HBM26_AXI_rlast_0),
    .AXI_26_RDATA  (HBM26_AXI_rdata_0),
    .AXI_26_BREADY (HBM26_AXI_bready_0),
    .AXI_26_BRESP  (HBM26_AXI_bresp_0),
    .AXI_26_BVALID (HBM26_AXI_bvalid_0),
    .AXI_26_WDATA  (HBM26_AXI_wdata_0),
    .AXI_26_WDATA_PARITY_i(),
    .AXI_26_WLAST  (HBM26_AXI_wlast_0),
    .AXI_26_WSTRB  (HBM26_AXI_wstrb_0),
    .AXI_26_WVALID (HBM26_AXI_wvalid_0),
    .AXI_26_WREADY (HBM26_AXI_wready_0),
    .AXI_27_ARADDR (HBM27_AXI_araddr_0),
    .AXI_27_ARBURST(HBM27_AXI_arburst_0),
    .AXI_27_ARID   (HBM27_AXI_arid_0),
    .AXI_27_ARLEN  (HBM27_AXI_arlen_0),
    .AXI_27_ARSIZE (HBM27_AXI_arsize_0),
    .AXI_27_ARVALID(HBM27_AXI_arvalid_0),
    .AXI_27_ARREADY(HBM27_AXI_arready_0),
    .AXI_27_AWADDR (HBM27_AXI_awaddr_0),
    .AXI_27_AWBURST(HBM27_AXI_awburst_0),
    .AXI_27_AWID   (HBM27_AXI_awid_0),
    .AXI_27_AWLEN  (HBM27_AXI_awlen_0),
    .AXI_27_AWSIZE (HBM27_AXI_awsize_0),
    .AXI_27_AWVALID(HBM27_AXI_awvalid_0),
    .AXI_27_AWREADY(HBM27_AXI_awready_0),
    .AXI_27_RREADY (HBM27_AXI_rready_0),
    .AXI_27_RVALID (HBM27_AXI_rvalid_0),
    .AXI_27_RLAST  (HBM27_AXI_rlast_0),
    .AXI_27_RDATA  (HBM27_AXI_rdata_0),
    .AXI_27_BREADY (HBM27_AXI_bready_0),
    .AXI_27_BRESP  (HBM27_AXI_bresp_0),
    .AXI_27_BVALID (HBM27_AXI_bvalid_0),
    .AXI_27_WDATA  (HBM27_AXI_wdata_0),
    .AXI_27_WDATA_PARITY_i(),
    .AXI_27_WLAST  (HBM27_AXI_wlast_0),
    .AXI_27_WSTRB  (HBM27_AXI_wstrb_0),
    .AXI_27_WVALID (HBM27_AXI_wvalid_0),
    .AXI_27_WREADY (HBM27_AXI_wready_0),
    .AXI_28_ARADDR (HBM28_AXI_araddr_0),
    .AXI_28_ARBURST(HBM28_AXI_arburst_0),
    .AXI_28_ARID   (HBM28_AXI_arid_0),
    .AXI_28_ARLEN  (HBM28_AXI_arlen_0),
    .AXI_28_ARSIZE (HBM28_AXI_arsize_0),
    .AXI_28_ARVALID(HBM28_AXI_arvalid_0),
    .AXI_28_ARREADY(HBM28_AXI_arready_0),
    .AXI_28_AWADDR (HBM28_AXI_awaddr_0),
    .AXI_28_AWBURST(HBM28_AXI_awburst_0),
    .AXI_28_AWID   (HBM28_AXI_awid_0),
    .AXI_28_AWLEN  (HBM28_AXI_awlen_0),
    .AXI_28_AWSIZE (HBM28_AXI_awsize_0),
    .AXI_28_AWVALID(HBM28_AXI_awvalid_0),
    .AXI_28_AWREADY(HBM28_AXI_awready_0),
    .AXI_28_RREADY (HBM28_AXI_rready_0),
    .AXI_28_RVALID (HBM28_AXI_rvalid_0),
    .AXI_28_RLAST  (HBM28_AXI_rlast_0),
    .AXI_28_RDATA  (HBM28_AXI_rdata_0),
    .AXI_28_BREADY (HBM28_AXI_bready_0),
    .AXI_28_BRESP  (HBM28_AXI_bresp_0),
    .AXI_28_BVALID (HBM28_AXI_bvalid_0),
    .AXI_28_WDATA  (HBM28_AXI_wdata_0),
    .AXI_28_WDATA_PARITY_i(),
    .AXI_28_WLAST  (HBM28_AXI_wlast_0),
    .AXI_28_WSTRB  (HBM28_AXI_wstrb_0),
    .AXI_28_WVALID (HBM28_AXI_wvalid_0),
    .AXI_28_WREADY (HBM28_AXI_wready_0),
    .AXI_29_ARADDR (HBM29_AXI_araddr_0),
    .AXI_29_ARBURST(HBM29_AXI_arburst_0),
    .AXI_29_ARID   (HBM29_AXI_arid_0),
    .AXI_29_ARLEN  (HBM29_AXI_arlen_0),
    .AXI_29_ARSIZE (HBM29_AXI_arsize_0),
    .AXI_29_ARVALID(HBM29_AXI_arvalid_0),
    .AXI_29_ARREADY(HBM29_AXI_arready_0),
    .AXI_29_AWADDR (HBM29_AXI_awaddr_0),
    .AXI_29_AWBURST(HBM29_AXI_awburst_0),
    .AXI_29_AWID   (HBM29_AXI_awid_0),
    .AXI_29_AWLEN  (HBM29_AXI_awlen_0),
    .AXI_29_AWSIZE (HBM29_AXI_awsize_0),
    .AXI_29_AWVALID(HBM29_AXI_awvalid_0),
    .AXI_29_AWREADY(HBM29_AXI_awready_0),
    .AXI_29_RREADY (HBM29_AXI_rready_0),
    .AXI_29_RVALID (HBM29_AXI_rvalid_0),
    .AXI_29_RLAST  (HBM29_AXI_rlast_0),
    .AXI_29_RDATA  (HBM29_AXI_rdata_0),
    .AXI_29_BREADY (HBM29_AXI_bready_0),
    .AXI_29_BRESP  (HBM29_AXI_bresp_0),
    .AXI_29_BVALID (HBM29_AXI_bvalid_0),
    .AXI_29_WDATA  (HBM29_AXI_wdata_0),
    .AXI_29_WDATA_PARITY_i(),
    .AXI_29_WLAST  (HBM29_AXI_wlast_0),
    .AXI_29_WSTRB  (HBM29_AXI_wstrb_0),
    .AXI_29_WVALID (HBM29_AXI_wvalid_0),
    .AXI_29_WREADY (HBM29_AXI_wready_0),
    .AXI_30_ARADDR (HBM30_AXI_araddr_0),
    .AXI_30_ARBURST(HBM30_AXI_arburst_0),
    .AXI_30_ARID   (HBM30_AXI_arid_0),
    .AXI_30_ARLEN  (HBM30_AXI_arlen_0),
    .AXI_30_ARSIZE (HBM30_AXI_arsize_0),
    .AXI_30_ARVALID(HBM30_AXI_arvalid_0),
    .AXI_30_ARREADY(HBM30_AXI_arready_0),
    .AXI_30_AWADDR (HBM30_AXI_awaddr_0),
    .AXI_30_AWBURST(HBM30_AXI_awburst_0),
    .AXI_30_AWID   (HBM30_AXI_awid_0),
    .AXI_30_AWLEN  (HBM30_AXI_awlen_0),
    .AXI_30_AWSIZE (HBM30_AXI_awsize_0),
    .AXI_30_AWVALID(HBM30_AXI_awvalid_0),
    .AXI_30_AWREADY(HBM30_AXI_awready_0),
    .AXI_30_RREADY (HBM30_AXI_rready_0),
    .AXI_30_RVALID (HBM30_AXI_rvalid_0),
    .AXI_30_RLAST  (HBM30_AXI_rlast_0),
    .AXI_30_RDATA  (HBM30_AXI_rdata_0),
    .AXI_30_BREADY (HBM30_AXI_bready_0),
    .AXI_30_BRESP  (HBM30_AXI_bresp_0),
    .AXI_30_BVALID (HBM30_AXI_bvalid_0),
    .AXI_30_WDATA  (HBM30_AXI_wdata_0),
    .AXI_30_WDATA_PARITY_i(),
    .AXI_30_WLAST  (HBM30_AXI_wlast_0),
    .AXI_30_WSTRB  (HBM30_AXI_wstrb_0),
    .AXI_30_WVALID (HBM30_AXI_wvalid_0),
    .AXI_30_WREADY (HBM30_AXI_wready_0),
    .AXI_31_ARADDR (HBM31_AXI_araddr_0),
    .AXI_31_ARBURST(HBM31_AXI_arburst_0),
    .AXI_31_ARID   (HBM31_AXI_arid_0),
    .AXI_31_ARLEN  (HBM31_AXI_arlen_0),
    .AXI_31_ARSIZE (HBM31_AXI_arsize_0),
    .AXI_31_ARVALID(HBM31_AXI_arvalid_0),
    .AXI_31_ARREADY(HBM31_AXI_arready_0),
    .AXI_31_AWADDR (HBM31_AXI_awaddr_0),
    .AXI_31_AWBURST(HBM31_AXI_awburst_0),
    .AXI_31_AWID   (HBM31_AXI_awid_0),
    .AXI_31_AWLEN  (HBM31_AXI_awlen_0),
    .AXI_31_AWSIZE (HBM31_AXI_awsize_0),
    .AXI_31_AWVALID(HBM31_AXI_awvalid_0),
    .AXI_31_AWREADY(HBM31_AXI_awready_0),
    .AXI_31_RREADY (HBM31_AXI_rready_0),
    .AXI_31_RVALID (HBM31_AXI_rvalid_0),
    .AXI_31_RLAST  (HBM31_AXI_rlast_0),
    .AXI_31_RDATA  (HBM31_AXI_rdata_0),
    .AXI_31_BREADY (HBM31_AXI_bready_0),
    .AXI_31_BRESP  (HBM31_AXI_bresp_0),
    .AXI_31_BVALID (HBM31_AXI_bvalid_0),
    .AXI_31_WDATA  (HBM31_AXI_wdata_0),
    .AXI_31_WDATA_PARITY_i(),
    .AXI_31_WLAST  (HBM31_AXI_wlast_0),
    .AXI_31_WSTRB  (HBM31_AXI_wstrb_0),
    .AXI_31_WVALID (HBM31_AXI_wvalid_0),
    .AXI_31_WREADY (HBM31_AXI_wready_0)
);


cpm_pcie_qdma_ep_wrapper  u_cpm_pcie_qdma_ep_wrapper (
    .*
);
//--------------------------------
// MPU,VPU DMA connection
genvar i;


assign i_MPU_VPU_valid = o_MPU_VPU_data_valid;
assign i_16x4_MPU_data_valid = o_mpu_data_vald;
assign i_16x4_scale =  o_mpu_scale;
assign i_16x4_bf16_in = o_mpu_data0;
assign i_16x4_int4_in = o_mpu_data1;

/*********/
assign i_mpu_done_data_vald = o_MPU_DMA_data_valid; //modify
assign i_mpu_done_data = o_mpu_done_data; //modify
// logic [1023:0] converted_data;
// generate
//     for (i = 0; i < 64; i = i + 1) begin : gen_conversion
//         assign converted_data[(63-i)*16 +: 16] = o_VPU_data[i][31:16];
//     end
// endgenerate
// assign i_mpu_done_data = (o_cmd == 6'd13) ? converted_data : o_mpu_done_data;
// assign i_mpu_done_data_vald = (o_cmd == 6'd13) ? o_VPU_data_valid : o_MPU_DMA_data_valid; //modify
/*********/

//assign i_vpu_s_is_ready = o_vpu_s_is_ready;

assign i_mpu_64x8_data0 = o_mpu_64x8_data0;
assign i_mpu_64x8_data1 = o_mpu_64x8_data1;
assign i_mpu_64x8_data_vald = o_mpu_64x8_data_vald;

assign i_SV_data_valid = o_SV_data_valid;

assign i_prob_valid = o_prob_valid;

assign i_MPU_max_valid = o_MPU_max_valid;
assign i_MPU_max = o_MPU_max;
generate
    for (i = 0; i < `PARALLEL_TOKEN_NUM; i = i + 1) begin
        assign i_prob[i] = o_prob[i];
    end
endgenerate

//o_MPU_max;
generate
    for (i = 0; i < `PARALLEL_NUM; i = i + 1) begin
        assign i_MPU_VPU_data[i] = o_MPU_VPU_data[i];
    end
endgenerate

generate
    for (i = 0; i < 64; i = i + 1) begin
        assign i_VPU_data_1[i] = o_vpu_data0[(63-i)*32 +: 32];
    end
endgenerate

generate
    for (i = 0; i < 64; i = i + 1) begin
        assign i_VPU_data_2[i] = o_vpu_data1[(63-i)*32 +: 32];
    end
endgenerate

generate
    for (i = 0; i < 64; i = i + 1) begin
        assign i_VPU_data_valid[i] = o_vpu_data_vald;
    end
endgenerate

logic vpu_flag, vpu_flag_nxt;

assign i_vpu_flag = vpu_flag;

always@(*) begin
    vpu_flag_nxt = (o_VPU_flag || o_MPU_VPU_flag);
end

always@(posedge clk_out3_0 or negedge HRESETn) begin
    if(!HRESETn)
        vpu_flag <= 0;
    else
        vpu_flag <= vpu_flag_nxt;
end

generate
    for (i = 0; i < 64; i = i + 1) begin
        assign i_vpu_done_data[(63-i)*32 +: 32] = o_VPU_data[i];
    end
endgenerate

assign i_vpu_done_data_vald = o_VPU_data_valid;
assign i_one_head_fa_finish = o_one_head_fa_finish;

cm3_system_cdc_top u_cm3_system_cdc_top (
    .i_clk_memory(clk_out4_0),
    .i_clk_core(clk_out3_0),
    .i_rst_n(HRESETn),
    .i_MPU_DMA_max_id(o_MPU_DMA_max_id),
    .i_MPU_DMA_max_id_valid(o_MPU_DMA_max_id_valid),
    .o_MPU_DMA_max_id(i_mpu_token_id_memory),
    .o_MPU_DMA_max_id_valid(i_mpu_token_id_vald_memory)
);

//--------------------------------
// CPU system infra
bus_matrix_lite u_infra (
    .*,
    .HCLK(clk_out2_0),
// Scan test dummy signals; not connected until scan insertion
    .SCANENABLE  (1'b0),         // Scan Test Mode Enable
    .SCANINHCLK  (1'b0),         // Scan Chain Input
    .SCANOUTHCLK (/*unused*/),   // Scan Chain Output

// System Address Remap control
    .REMAP       (4'b0),


// Master: CPUS
    .HBURST_CPUS    (3'b0),
    .HPROT_CPUS     (4'b0),
    .HMASTLOCK_CPUS (1'b0),
    .HAUSER_CPUS    (32'b0),
    .HWUSER_CPUS    (32'b0),
    .HRUSER_CPUS (/*unused*/),

// Slave: RAM
    .HRUSER_RAM    (32'b0),
    .HBURST_RAM (/*unused*/),
    .HPROT_RAM (/*unused*/),
    .HMASTLOCK_RAM (/*unused*/),
    .HREADYMUX_RAM (/*unused*/),
    .HAUSER_RAM (/*unused*/),
    .HWUSER_RAM (/*unused*/),
// Slave: MPUS

    .HBURST_MPUS (/*unused*/),
    .HPROT_MPUS (/*unused*/),
    .HMASTLOCK_MPUS (/*unused*/),
    .HREADYMUX_MPUS (/*unused*/),
    .HAUSER_MPUS (/*unused*/),
    .HWUSER_MPUS (/*unused*/),
    .HRUSER_MPUS    (32'b0),

// Slave: VPUS
    .HRUSER_VPUS    (32'b0),
    .HBURST_VPUS (/*unused*/),
    .HPROT_VPUS (/*unused*/),
    .HMASTLOCK_VPUS (/*unused*/),
    .HREADYMUX_VPUS (/*unused*/),
    .HAUSER_VPUS (/*unused*/),
    .HWUSER_VPUS (/*unused*/),
// Slave: DMAS
    .HBURST_DMAS (/*unused*/),
    .HPROT_DMAS (/*unused*/),
    .HMASTLOCK_DMAS (/*unused*/),
    .HREADYMUX_DMAS (/*unused*/),
    .HAUSER_DMAS (/*unused*/),
    .HWUSER_DMAS (/*unused*/),
    .HRUSER_DMAS    (32'b0)
);

//-------------------------------- 
// IO MUX
//io_mux u_io_mux (
//    .*
//);

assign IRQs = {237'd0, IRQ_DMA, IRQ_VPU, IRQ_MPU};
endmodule
