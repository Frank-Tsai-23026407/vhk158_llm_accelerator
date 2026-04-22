//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_6a72.bd
//Design : bd_6a72
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_6a72,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_6a72,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=42,numReposBlks=42,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "cpm_pcie_axi_noc_0_1.hwdef" *) 
module bd_6a72
   (CH0_DDR4_0_act_n,
    CH0_DDR4_0_adr,
    CH0_DDR4_0_alert_n,
    CH0_DDR4_0_ba,
    CH0_DDR4_0_bg,
    CH0_DDR4_0_ck_c,
    CH0_DDR4_0_ck_t,
    CH0_DDR4_0_cke,
    CH0_DDR4_0_cs_n,
    CH0_DDR4_0_dq,
    CH0_DDR4_0_dqs_c,
    CH0_DDR4_0_dqs_t,
    CH0_DDR4_0_odt,
    CH0_DDR4_0_par,
    CH0_DDR4_0_reset_n,
    CH0_DDR4_1_act_n,
    CH0_DDR4_1_adr,
    CH0_DDR4_1_alert_n,
    CH0_DDR4_1_ba,
    CH0_DDR4_1_bg,
    CH0_DDR4_1_ck_c,
    CH0_DDR4_1_ck_t,
    CH0_DDR4_1_cke,
    CH0_DDR4_1_cs_n,
    CH0_DDR4_1_dq,
    CH0_DDR4_1_dqs_c,
    CH0_DDR4_1_dqs_t,
    CH0_DDR4_1_odt,
    CH0_DDR4_1_par,
    CH0_DDR4_1_reset_n,
    HBM00_AXI_araddr,
    HBM00_AXI_arburst,
    HBM00_AXI_arcache,
    HBM00_AXI_arid,
    HBM00_AXI_arlen,
    HBM00_AXI_arlock,
    HBM00_AXI_arprot,
    HBM00_AXI_arready,
    HBM00_AXI_arsize,
    HBM00_AXI_aruser,
    HBM00_AXI_arvalid,
    HBM00_AXI_awaddr,
    HBM00_AXI_awburst,
    HBM00_AXI_awcache,
    HBM00_AXI_awid,
    HBM00_AXI_awlen,
    HBM00_AXI_awlock,
    HBM00_AXI_awprot,
    HBM00_AXI_awready,
    HBM00_AXI_awsize,
    HBM00_AXI_awuser,
    HBM00_AXI_awvalid,
    HBM00_AXI_bid,
    HBM00_AXI_bready,
    HBM00_AXI_bresp,
    HBM00_AXI_buser,
    HBM00_AXI_bvalid,
    HBM00_AXI_rdata,
    HBM00_AXI_rid,
    HBM00_AXI_rlast,
    HBM00_AXI_rready,
    HBM00_AXI_rresp,
    HBM00_AXI_rvalid,
    HBM00_AXI_wdata,
    HBM00_AXI_wlast,
    HBM00_AXI_wready,
    HBM00_AXI_wstrb,
    HBM00_AXI_wvalid,
    HBM01_AXI_araddr,
    HBM01_AXI_arburst,
    HBM01_AXI_arcache,
    HBM01_AXI_arid,
    HBM01_AXI_arlen,
    HBM01_AXI_arlock,
    HBM01_AXI_arprot,
    HBM01_AXI_arready,
    HBM01_AXI_arsize,
    HBM01_AXI_aruser,
    HBM01_AXI_arvalid,
    HBM01_AXI_awaddr,
    HBM01_AXI_awburst,
    HBM01_AXI_awcache,
    HBM01_AXI_awid,
    HBM01_AXI_awlen,
    HBM01_AXI_awlock,
    HBM01_AXI_awprot,
    HBM01_AXI_awready,
    HBM01_AXI_awsize,
    HBM01_AXI_awuser,
    HBM01_AXI_awvalid,
    HBM01_AXI_bid,
    HBM01_AXI_bready,
    HBM01_AXI_bresp,
    HBM01_AXI_buser,
    HBM01_AXI_bvalid,
    HBM01_AXI_rdata,
    HBM01_AXI_rid,
    HBM01_AXI_rlast,
    HBM01_AXI_rready,
    HBM01_AXI_rresp,
    HBM01_AXI_rvalid,
    HBM01_AXI_wdata,
    HBM01_AXI_wlast,
    HBM01_AXI_wready,
    HBM01_AXI_wstrb,
    HBM01_AXI_wvalid,
    HBM02_AXI_araddr,
    HBM02_AXI_arburst,
    HBM02_AXI_arcache,
    HBM02_AXI_arid,
    HBM02_AXI_arlen,
    HBM02_AXI_arlock,
    HBM02_AXI_arprot,
    HBM02_AXI_arready,
    HBM02_AXI_arsize,
    HBM02_AXI_aruser,
    HBM02_AXI_arvalid,
    HBM02_AXI_awaddr,
    HBM02_AXI_awburst,
    HBM02_AXI_awcache,
    HBM02_AXI_awid,
    HBM02_AXI_awlen,
    HBM02_AXI_awlock,
    HBM02_AXI_awprot,
    HBM02_AXI_awready,
    HBM02_AXI_awsize,
    HBM02_AXI_awuser,
    HBM02_AXI_awvalid,
    HBM02_AXI_bid,
    HBM02_AXI_bready,
    HBM02_AXI_bresp,
    HBM02_AXI_buser,
    HBM02_AXI_bvalid,
    HBM02_AXI_rdata,
    HBM02_AXI_rid,
    HBM02_AXI_rlast,
    HBM02_AXI_rready,
    HBM02_AXI_rresp,
    HBM02_AXI_rvalid,
    HBM02_AXI_wdata,
    HBM02_AXI_wlast,
    HBM02_AXI_wready,
    HBM02_AXI_wstrb,
    HBM02_AXI_wvalid,
    HBM03_AXI_araddr,
    HBM03_AXI_arburst,
    HBM03_AXI_arcache,
    HBM03_AXI_arid,
    HBM03_AXI_arlen,
    HBM03_AXI_arlock,
    HBM03_AXI_arprot,
    HBM03_AXI_arready,
    HBM03_AXI_arsize,
    HBM03_AXI_aruser,
    HBM03_AXI_arvalid,
    HBM03_AXI_awaddr,
    HBM03_AXI_awburst,
    HBM03_AXI_awcache,
    HBM03_AXI_awid,
    HBM03_AXI_awlen,
    HBM03_AXI_awlock,
    HBM03_AXI_awprot,
    HBM03_AXI_awready,
    HBM03_AXI_awsize,
    HBM03_AXI_awuser,
    HBM03_AXI_awvalid,
    HBM03_AXI_bid,
    HBM03_AXI_bready,
    HBM03_AXI_bresp,
    HBM03_AXI_buser,
    HBM03_AXI_bvalid,
    HBM03_AXI_rdata,
    HBM03_AXI_rid,
    HBM03_AXI_rlast,
    HBM03_AXI_rready,
    HBM03_AXI_rresp,
    HBM03_AXI_rvalid,
    HBM03_AXI_wdata,
    HBM03_AXI_wlast,
    HBM03_AXI_wready,
    HBM03_AXI_wstrb,
    HBM03_AXI_wvalid,
    HBM04_AXI_araddr,
    HBM04_AXI_arburst,
    HBM04_AXI_arcache,
    HBM04_AXI_arid,
    HBM04_AXI_arlen,
    HBM04_AXI_arlock,
    HBM04_AXI_arprot,
    HBM04_AXI_arready,
    HBM04_AXI_arsize,
    HBM04_AXI_aruser,
    HBM04_AXI_arvalid,
    HBM04_AXI_awaddr,
    HBM04_AXI_awburst,
    HBM04_AXI_awcache,
    HBM04_AXI_awid,
    HBM04_AXI_awlen,
    HBM04_AXI_awlock,
    HBM04_AXI_awprot,
    HBM04_AXI_awready,
    HBM04_AXI_awsize,
    HBM04_AXI_awuser,
    HBM04_AXI_awvalid,
    HBM04_AXI_bid,
    HBM04_AXI_bready,
    HBM04_AXI_bresp,
    HBM04_AXI_buser,
    HBM04_AXI_bvalid,
    HBM04_AXI_rdata,
    HBM04_AXI_rid,
    HBM04_AXI_rlast,
    HBM04_AXI_rready,
    HBM04_AXI_rresp,
    HBM04_AXI_rvalid,
    HBM04_AXI_wdata,
    HBM04_AXI_wlast,
    HBM04_AXI_wready,
    HBM04_AXI_wstrb,
    HBM04_AXI_wvalid,
    HBM05_AXI_araddr,
    HBM05_AXI_arburst,
    HBM05_AXI_arcache,
    HBM05_AXI_arid,
    HBM05_AXI_arlen,
    HBM05_AXI_arlock,
    HBM05_AXI_arprot,
    HBM05_AXI_arready,
    HBM05_AXI_arsize,
    HBM05_AXI_aruser,
    HBM05_AXI_arvalid,
    HBM05_AXI_awaddr,
    HBM05_AXI_awburst,
    HBM05_AXI_awcache,
    HBM05_AXI_awid,
    HBM05_AXI_awlen,
    HBM05_AXI_awlock,
    HBM05_AXI_awprot,
    HBM05_AXI_awready,
    HBM05_AXI_awsize,
    HBM05_AXI_awuser,
    HBM05_AXI_awvalid,
    HBM05_AXI_bid,
    HBM05_AXI_bready,
    HBM05_AXI_bresp,
    HBM05_AXI_buser,
    HBM05_AXI_bvalid,
    HBM05_AXI_rdata,
    HBM05_AXI_rid,
    HBM05_AXI_rlast,
    HBM05_AXI_rready,
    HBM05_AXI_rresp,
    HBM05_AXI_rvalid,
    HBM05_AXI_wdata,
    HBM05_AXI_wlast,
    HBM05_AXI_wready,
    HBM05_AXI_wstrb,
    HBM05_AXI_wvalid,
    HBM06_AXI_araddr,
    HBM06_AXI_arburst,
    HBM06_AXI_arcache,
    HBM06_AXI_arid,
    HBM06_AXI_arlen,
    HBM06_AXI_arlock,
    HBM06_AXI_arprot,
    HBM06_AXI_arready,
    HBM06_AXI_arsize,
    HBM06_AXI_aruser,
    HBM06_AXI_arvalid,
    HBM06_AXI_awaddr,
    HBM06_AXI_awburst,
    HBM06_AXI_awcache,
    HBM06_AXI_awid,
    HBM06_AXI_awlen,
    HBM06_AXI_awlock,
    HBM06_AXI_awprot,
    HBM06_AXI_awready,
    HBM06_AXI_awsize,
    HBM06_AXI_awuser,
    HBM06_AXI_awvalid,
    HBM06_AXI_bid,
    HBM06_AXI_bready,
    HBM06_AXI_bresp,
    HBM06_AXI_buser,
    HBM06_AXI_bvalid,
    HBM06_AXI_rdata,
    HBM06_AXI_rid,
    HBM06_AXI_rlast,
    HBM06_AXI_rready,
    HBM06_AXI_rresp,
    HBM06_AXI_rvalid,
    HBM06_AXI_wdata,
    HBM06_AXI_wlast,
    HBM06_AXI_wready,
    HBM06_AXI_wstrb,
    HBM06_AXI_wvalid,
    HBM07_AXI_araddr,
    HBM07_AXI_arburst,
    HBM07_AXI_arcache,
    HBM07_AXI_arid,
    HBM07_AXI_arlen,
    HBM07_AXI_arlock,
    HBM07_AXI_arprot,
    HBM07_AXI_arready,
    HBM07_AXI_arsize,
    HBM07_AXI_aruser,
    HBM07_AXI_arvalid,
    HBM07_AXI_awaddr,
    HBM07_AXI_awburst,
    HBM07_AXI_awcache,
    HBM07_AXI_awid,
    HBM07_AXI_awlen,
    HBM07_AXI_awlock,
    HBM07_AXI_awprot,
    HBM07_AXI_awready,
    HBM07_AXI_awsize,
    HBM07_AXI_awuser,
    HBM07_AXI_awvalid,
    HBM07_AXI_bid,
    HBM07_AXI_bready,
    HBM07_AXI_bresp,
    HBM07_AXI_buser,
    HBM07_AXI_bvalid,
    HBM07_AXI_rdata,
    HBM07_AXI_rid,
    HBM07_AXI_rlast,
    HBM07_AXI_rready,
    HBM07_AXI_rresp,
    HBM07_AXI_rvalid,
    HBM07_AXI_wdata,
    HBM07_AXI_wlast,
    HBM07_AXI_wready,
    HBM07_AXI_wstrb,
    HBM07_AXI_wvalid,
    HBM08_AXI_araddr,
    HBM08_AXI_arburst,
    HBM08_AXI_arcache,
    HBM08_AXI_arid,
    HBM08_AXI_arlen,
    HBM08_AXI_arlock,
    HBM08_AXI_arprot,
    HBM08_AXI_arready,
    HBM08_AXI_arsize,
    HBM08_AXI_aruser,
    HBM08_AXI_arvalid,
    HBM08_AXI_awaddr,
    HBM08_AXI_awburst,
    HBM08_AXI_awcache,
    HBM08_AXI_awid,
    HBM08_AXI_awlen,
    HBM08_AXI_awlock,
    HBM08_AXI_awprot,
    HBM08_AXI_awready,
    HBM08_AXI_awsize,
    HBM08_AXI_awuser,
    HBM08_AXI_awvalid,
    HBM08_AXI_bid,
    HBM08_AXI_bready,
    HBM08_AXI_bresp,
    HBM08_AXI_buser,
    HBM08_AXI_bvalid,
    HBM08_AXI_rdata,
    HBM08_AXI_rid,
    HBM08_AXI_rlast,
    HBM08_AXI_rready,
    HBM08_AXI_rresp,
    HBM08_AXI_rvalid,
    HBM08_AXI_wdata,
    HBM08_AXI_wlast,
    HBM08_AXI_wready,
    HBM08_AXI_wstrb,
    HBM08_AXI_wvalid,
    HBM09_AXI_araddr,
    HBM09_AXI_arburst,
    HBM09_AXI_arcache,
    HBM09_AXI_arid,
    HBM09_AXI_arlen,
    HBM09_AXI_arlock,
    HBM09_AXI_arprot,
    HBM09_AXI_arready,
    HBM09_AXI_arsize,
    HBM09_AXI_aruser,
    HBM09_AXI_arvalid,
    HBM09_AXI_awaddr,
    HBM09_AXI_awburst,
    HBM09_AXI_awcache,
    HBM09_AXI_awid,
    HBM09_AXI_awlen,
    HBM09_AXI_awlock,
    HBM09_AXI_awprot,
    HBM09_AXI_awready,
    HBM09_AXI_awsize,
    HBM09_AXI_awuser,
    HBM09_AXI_awvalid,
    HBM09_AXI_bid,
    HBM09_AXI_bready,
    HBM09_AXI_bresp,
    HBM09_AXI_buser,
    HBM09_AXI_bvalid,
    HBM09_AXI_rdata,
    HBM09_AXI_rid,
    HBM09_AXI_rlast,
    HBM09_AXI_rready,
    HBM09_AXI_rresp,
    HBM09_AXI_rvalid,
    HBM09_AXI_wdata,
    HBM09_AXI_wlast,
    HBM09_AXI_wready,
    HBM09_AXI_wstrb,
    HBM09_AXI_wvalid,
    HBM10_AXI_araddr,
    HBM10_AXI_arburst,
    HBM10_AXI_arcache,
    HBM10_AXI_arid,
    HBM10_AXI_arlen,
    HBM10_AXI_arlock,
    HBM10_AXI_arprot,
    HBM10_AXI_arready,
    HBM10_AXI_arsize,
    HBM10_AXI_aruser,
    HBM10_AXI_arvalid,
    HBM10_AXI_awaddr,
    HBM10_AXI_awburst,
    HBM10_AXI_awcache,
    HBM10_AXI_awid,
    HBM10_AXI_awlen,
    HBM10_AXI_awlock,
    HBM10_AXI_awprot,
    HBM10_AXI_awready,
    HBM10_AXI_awsize,
    HBM10_AXI_awuser,
    HBM10_AXI_awvalid,
    HBM10_AXI_bid,
    HBM10_AXI_bready,
    HBM10_AXI_bresp,
    HBM10_AXI_buser,
    HBM10_AXI_bvalid,
    HBM10_AXI_rdata,
    HBM10_AXI_rid,
    HBM10_AXI_rlast,
    HBM10_AXI_rready,
    HBM10_AXI_rresp,
    HBM10_AXI_rvalid,
    HBM10_AXI_wdata,
    HBM10_AXI_wlast,
    HBM10_AXI_wready,
    HBM10_AXI_wstrb,
    HBM10_AXI_wvalid,
    HBM11_AXI_araddr,
    HBM11_AXI_arburst,
    HBM11_AXI_arcache,
    HBM11_AXI_arid,
    HBM11_AXI_arlen,
    HBM11_AXI_arlock,
    HBM11_AXI_arprot,
    HBM11_AXI_arready,
    HBM11_AXI_arsize,
    HBM11_AXI_aruser,
    HBM11_AXI_arvalid,
    HBM11_AXI_awaddr,
    HBM11_AXI_awburst,
    HBM11_AXI_awcache,
    HBM11_AXI_awid,
    HBM11_AXI_awlen,
    HBM11_AXI_awlock,
    HBM11_AXI_awprot,
    HBM11_AXI_awready,
    HBM11_AXI_awsize,
    HBM11_AXI_awuser,
    HBM11_AXI_awvalid,
    HBM11_AXI_bid,
    HBM11_AXI_bready,
    HBM11_AXI_bresp,
    HBM11_AXI_buser,
    HBM11_AXI_bvalid,
    HBM11_AXI_rdata,
    HBM11_AXI_rid,
    HBM11_AXI_rlast,
    HBM11_AXI_rready,
    HBM11_AXI_rresp,
    HBM11_AXI_rvalid,
    HBM11_AXI_wdata,
    HBM11_AXI_wlast,
    HBM11_AXI_wready,
    HBM11_AXI_wstrb,
    HBM11_AXI_wvalid,
    HBM12_AXI_araddr,
    HBM12_AXI_arburst,
    HBM12_AXI_arcache,
    HBM12_AXI_arid,
    HBM12_AXI_arlen,
    HBM12_AXI_arlock,
    HBM12_AXI_arprot,
    HBM12_AXI_arready,
    HBM12_AXI_arsize,
    HBM12_AXI_aruser,
    HBM12_AXI_arvalid,
    HBM12_AXI_awaddr,
    HBM12_AXI_awburst,
    HBM12_AXI_awcache,
    HBM12_AXI_awid,
    HBM12_AXI_awlen,
    HBM12_AXI_awlock,
    HBM12_AXI_awprot,
    HBM12_AXI_awready,
    HBM12_AXI_awsize,
    HBM12_AXI_awuser,
    HBM12_AXI_awvalid,
    HBM12_AXI_bid,
    HBM12_AXI_bready,
    HBM12_AXI_bresp,
    HBM12_AXI_buser,
    HBM12_AXI_bvalid,
    HBM12_AXI_rdata,
    HBM12_AXI_rid,
    HBM12_AXI_rlast,
    HBM12_AXI_rready,
    HBM12_AXI_rresp,
    HBM12_AXI_rvalid,
    HBM12_AXI_wdata,
    HBM12_AXI_wlast,
    HBM12_AXI_wready,
    HBM12_AXI_wstrb,
    HBM12_AXI_wvalid,
    HBM13_AXI_araddr,
    HBM13_AXI_arburst,
    HBM13_AXI_arcache,
    HBM13_AXI_arid,
    HBM13_AXI_arlen,
    HBM13_AXI_arlock,
    HBM13_AXI_arprot,
    HBM13_AXI_arready,
    HBM13_AXI_arsize,
    HBM13_AXI_aruser,
    HBM13_AXI_arvalid,
    HBM13_AXI_awaddr,
    HBM13_AXI_awburst,
    HBM13_AXI_awcache,
    HBM13_AXI_awid,
    HBM13_AXI_awlen,
    HBM13_AXI_awlock,
    HBM13_AXI_awprot,
    HBM13_AXI_awready,
    HBM13_AXI_awsize,
    HBM13_AXI_awuser,
    HBM13_AXI_awvalid,
    HBM13_AXI_bid,
    HBM13_AXI_bready,
    HBM13_AXI_bresp,
    HBM13_AXI_buser,
    HBM13_AXI_bvalid,
    HBM13_AXI_rdata,
    HBM13_AXI_rid,
    HBM13_AXI_rlast,
    HBM13_AXI_rready,
    HBM13_AXI_rresp,
    HBM13_AXI_rvalid,
    HBM13_AXI_wdata,
    HBM13_AXI_wlast,
    HBM13_AXI_wready,
    HBM13_AXI_wstrb,
    HBM13_AXI_wvalid,
    HBM14_AXI_araddr,
    HBM14_AXI_arburst,
    HBM14_AXI_arcache,
    HBM14_AXI_arid,
    HBM14_AXI_arlen,
    HBM14_AXI_arlock,
    HBM14_AXI_arprot,
    HBM14_AXI_arready,
    HBM14_AXI_arsize,
    HBM14_AXI_aruser,
    HBM14_AXI_arvalid,
    HBM14_AXI_awaddr,
    HBM14_AXI_awburst,
    HBM14_AXI_awcache,
    HBM14_AXI_awid,
    HBM14_AXI_awlen,
    HBM14_AXI_awlock,
    HBM14_AXI_awprot,
    HBM14_AXI_awready,
    HBM14_AXI_awsize,
    HBM14_AXI_awuser,
    HBM14_AXI_awvalid,
    HBM14_AXI_bid,
    HBM14_AXI_bready,
    HBM14_AXI_bresp,
    HBM14_AXI_buser,
    HBM14_AXI_bvalid,
    HBM14_AXI_rdata,
    HBM14_AXI_rid,
    HBM14_AXI_rlast,
    HBM14_AXI_rready,
    HBM14_AXI_rresp,
    HBM14_AXI_rvalid,
    HBM14_AXI_wdata,
    HBM14_AXI_wlast,
    HBM14_AXI_wready,
    HBM14_AXI_wstrb,
    HBM14_AXI_wvalid,
    HBM15_AXI_araddr,
    HBM15_AXI_arburst,
    HBM15_AXI_arcache,
    HBM15_AXI_arid,
    HBM15_AXI_arlen,
    HBM15_AXI_arlock,
    HBM15_AXI_arprot,
    HBM15_AXI_arready,
    HBM15_AXI_arsize,
    HBM15_AXI_aruser,
    HBM15_AXI_arvalid,
    HBM15_AXI_awaddr,
    HBM15_AXI_awburst,
    HBM15_AXI_awcache,
    HBM15_AXI_awid,
    HBM15_AXI_awlen,
    HBM15_AXI_awlock,
    HBM15_AXI_awprot,
    HBM15_AXI_awready,
    HBM15_AXI_awsize,
    HBM15_AXI_awuser,
    HBM15_AXI_awvalid,
    HBM15_AXI_bid,
    HBM15_AXI_bready,
    HBM15_AXI_bresp,
    HBM15_AXI_buser,
    HBM15_AXI_bvalid,
    HBM15_AXI_rdata,
    HBM15_AXI_rid,
    HBM15_AXI_rlast,
    HBM15_AXI_rready,
    HBM15_AXI_rresp,
    HBM15_AXI_rvalid,
    HBM15_AXI_wdata,
    HBM15_AXI_wlast,
    HBM15_AXI_wready,
    HBM15_AXI_wstrb,
    HBM15_AXI_wvalid,
    HBM16_AXI_araddr,
    HBM16_AXI_arburst,
    HBM16_AXI_arcache,
    HBM16_AXI_arid,
    HBM16_AXI_arlen,
    HBM16_AXI_arlock,
    HBM16_AXI_arprot,
    HBM16_AXI_arready,
    HBM16_AXI_arsize,
    HBM16_AXI_aruser,
    HBM16_AXI_arvalid,
    HBM16_AXI_awaddr,
    HBM16_AXI_awburst,
    HBM16_AXI_awcache,
    HBM16_AXI_awid,
    HBM16_AXI_awlen,
    HBM16_AXI_awlock,
    HBM16_AXI_awprot,
    HBM16_AXI_awready,
    HBM16_AXI_awsize,
    HBM16_AXI_awuser,
    HBM16_AXI_awvalid,
    HBM16_AXI_bid,
    HBM16_AXI_bready,
    HBM16_AXI_bresp,
    HBM16_AXI_buser,
    HBM16_AXI_bvalid,
    HBM16_AXI_rdata,
    HBM16_AXI_rid,
    HBM16_AXI_rlast,
    HBM16_AXI_rready,
    HBM16_AXI_rresp,
    HBM16_AXI_rvalid,
    HBM16_AXI_wdata,
    HBM16_AXI_wlast,
    HBM16_AXI_wready,
    HBM16_AXI_wstrb,
    HBM16_AXI_wvalid,
    HBM17_AXI_araddr,
    HBM17_AXI_arburst,
    HBM17_AXI_arcache,
    HBM17_AXI_arid,
    HBM17_AXI_arlen,
    HBM17_AXI_arlock,
    HBM17_AXI_arprot,
    HBM17_AXI_arready,
    HBM17_AXI_arsize,
    HBM17_AXI_aruser,
    HBM17_AXI_arvalid,
    HBM17_AXI_awaddr,
    HBM17_AXI_awburst,
    HBM17_AXI_awcache,
    HBM17_AXI_awid,
    HBM17_AXI_awlen,
    HBM17_AXI_awlock,
    HBM17_AXI_awprot,
    HBM17_AXI_awready,
    HBM17_AXI_awsize,
    HBM17_AXI_awuser,
    HBM17_AXI_awvalid,
    HBM17_AXI_bid,
    HBM17_AXI_bready,
    HBM17_AXI_bresp,
    HBM17_AXI_buser,
    HBM17_AXI_bvalid,
    HBM17_AXI_rdata,
    HBM17_AXI_rid,
    HBM17_AXI_rlast,
    HBM17_AXI_rready,
    HBM17_AXI_rresp,
    HBM17_AXI_rvalid,
    HBM17_AXI_wdata,
    HBM17_AXI_wlast,
    HBM17_AXI_wready,
    HBM17_AXI_wstrb,
    HBM17_AXI_wvalid,
    HBM18_AXI_araddr,
    HBM18_AXI_arburst,
    HBM18_AXI_arcache,
    HBM18_AXI_arid,
    HBM18_AXI_arlen,
    HBM18_AXI_arlock,
    HBM18_AXI_arprot,
    HBM18_AXI_arready,
    HBM18_AXI_arsize,
    HBM18_AXI_aruser,
    HBM18_AXI_arvalid,
    HBM18_AXI_awaddr,
    HBM18_AXI_awburst,
    HBM18_AXI_awcache,
    HBM18_AXI_awid,
    HBM18_AXI_awlen,
    HBM18_AXI_awlock,
    HBM18_AXI_awprot,
    HBM18_AXI_awready,
    HBM18_AXI_awsize,
    HBM18_AXI_awuser,
    HBM18_AXI_awvalid,
    HBM18_AXI_bid,
    HBM18_AXI_bready,
    HBM18_AXI_bresp,
    HBM18_AXI_buser,
    HBM18_AXI_bvalid,
    HBM18_AXI_rdata,
    HBM18_AXI_rid,
    HBM18_AXI_rlast,
    HBM18_AXI_rready,
    HBM18_AXI_rresp,
    HBM18_AXI_rvalid,
    HBM18_AXI_wdata,
    HBM18_AXI_wlast,
    HBM18_AXI_wready,
    HBM18_AXI_wstrb,
    HBM18_AXI_wvalid,
    HBM19_AXI_araddr,
    HBM19_AXI_arburst,
    HBM19_AXI_arcache,
    HBM19_AXI_arid,
    HBM19_AXI_arlen,
    HBM19_AXI_arlock,
    HBM19_AXI_arprot,
    HBM19_AXI_arready,
    HBM19_AXI_arsize,
    HBM19_AXI_aruser,
    HBM19_AXI_arvalid,
    HBM19_AXI_awaddr,
    HBM19_AXI_awburst,
    HBM19_AXI_awcache,
    HBM19_AXI_awid,
    HBM19_AXI_awlen,
    HBM19_AXI_awlock,
    HBM19_AXI_awprot,
    HBM19_AXI_awready,
    HBM19_AXI_awsize,
    HBM19_AXI_awuser,
    HBM19_AXI_awvalid,
    HBM19_AXI_bid,
    HBM19_AXI_bready,
    HBM19_AXI_bresp,
    HBM19_AXI_buser,
    HBM19_AXI_bvalid,
    HBM19_AXI_rdata,
    HBM19_AXI_rid,
    HBM19_AXI_rlast,
    HBM19_AXI_rready,
    HBM19_AXI_rresp,
    HBM19_AXI_rvalid,
    HBM19_AXI_wdata,
    HBM19_AXI_wlast,
    HBM19_AXI_wready,
    HBM19_AXI_wstrb,
    HBM19_AXI_wvalid,
    HBM20_AXI_araddr,
    HBM20_AXI_arburst,
    HBM20_AXI_arcache,
    HBM20_AXI_arid,
    HBM20_AXI_arlen,
    HBM20_AXI_arlock,
    HBM20_AXI_arprot,
    HBM20_AXI_arready,
    HBM20_AXI_arsize,
    HBM20_AXI_aruser,
    HBM20_AXI_arvalid,
    HBM20_AXI_awaddr,
    HBM20_AXI_awburst,
    HBM20_AXI_awcache,
    HBM20_AXI_awid,
    HBM20_AXI_awlen,
    HBM20_AXI_awlock,
    HBM20_AXI_awprot,
    HBM20_AXI_awready,
    HBM20_AXI_awsize,
    HBM20_AXI_awuser,
    HBM20_AXI_awvalid,
    HBM20_AXI_bid,
    HBM20_AXI_bready,
    HBM20_AXI_bresp,
    HBM20_AXI_buser,
    HBM20_AXI_bvalid,
    HBM20_AXI_rdata,
    HBM20_AXI_rid,
    HBM20_AXI_rlast,
    HBM20_AXI_rready,
    HBM20_AXI_rresp,
    HBM20_AXI_rvalid,
    HBM20_AXI_wdata,
    HBM20_AXI_wlast,
    HBM20_AXI_wready,
    HBM20_AXI_wstrb,
    HBM20_AXI_wvalid,
    HBM21_AXI_araddr,
    HBM21_AXI_arburst,
    HBM21_AXI_arcache,
    HBM21_AXI_arid,
    HBM21_AXI_arlen,
    HBM21_AXI_arlock,
    HBM21_AXI_arprot,
    HBM21_AXI_arready,
    HBM21_AXI_arsize,
    HBM21_AXI_aruser,
    HBM21_AXI_arvalid,
    HBM21_AXI_awaddr,
    HBM21_AXI_awburst,
    HBM21_AXI_awcache,
    HBM21_AXI_awid,
    HBM21_AXI_awlen,
    HBM21_AXI_awlock,
    HBM21_AXI_awprot,
    HBM21_AXI_awready,
    HBM21_AXI_awsize,
    HBM21_AXI_awuser,
    HBM21_AXI_awvalid,
    HBM21_AXI_bid,
    HBM21_AXI_bready,
    HBM21_AXI_bresp,
    HBM21_AXI_buser,
    HBM21_AXI_bvalid,
    HBM21_AXI_rdata,
    HBM21_AXI_rid,
    HBM21_AXI_rlast,
    HBM21_AXI_rready,
    HBM21_AXI_rresp,
    HBM21_AXI_rvalid,
    HBM21_AXI_wdata,
    HBM21_AXI_wlast,
    HBM21_AXI_wready,
    HBM21_AXI_wstrb,
    HBM21_AXI_wvalid,
    HBM22_AXI_araddr,
    HBM22_AXI_arburst,
    HBM22_AXI_arcache,
    HBM22_AXI_arid,
    HBM22_AXI_arlen,
    HBM22_AXI_arlock,
    HBM22_AXI_arprot,
    HBM22_AXI_arready,
    HBM22_AXI_arsize,
    HBM22_AXI_aruser,
    HBM22_AXI_arvalid,
    HBM22_AXI_awaddr,
    HBM22_AXI_awburst,
    HBM22_AXI_awcache,
    HBM22_AXI_awid,
    HBM22_AXI_awlen,
    HBM22_AXI_awlock,
    HBM22_AXI_awprot,
    HBM22_AXI_awready,
    HBM22_AXI_awsize,
    HBM22_AXI_awuser,
    HBM22_AXI_awvalid,
    HBM22_AXI_bid,
    HBM22_AXI_bready,
    HBM22_AXI_bresp,
    HBM22_AXI_buser,
    HBM22_AXI_bvalid,
    HBM22_AXI_rdata,
    HBM22_AXI_rid,
    HBM22_AXI_rlast,
    HBM22_AXI_rready,
    HBM22_AXI_rresp,
    HBM22_AXI_rvalid,
    HBM22_AXI_wdata,
    HBM22_AXI_wlast,
    HBM22_AXI_wready,
    HBM22_AXI_wstrb,
    HBM22_AXI_wvalid,
    HBM23_AXI_araddr,
    HBM23_AXI_arburst,
    HBM23_AXI_arcache,
    HBM23_AXI_arid,
    HBM23_AXI_arlen,
    HBM23_AXI_arlock,
    HBM23_AXI_arprot,
    HBM23_AXI_arready,
    HBM23_AXI_arsize,
    HBM23_AXI_aruser,
    HBM23_AXI_arvalid,
    HBM23_AXI_awaddr,
    HBM23_AXI_awburst,
    HBM23_AXI_awcache,
    HBM23_AXI_awid,
    HBM23_AXI_awlen,
    HBM23_AXI_awlock,
    HBM23_AXI_awprot,
    HBM23_AXI_awready,
    HBM23_AXI_awsize,
    HBM23_AXI_awuser,
    HBM23_AXI_awvalid,
    HBM23_AXI_bid,
    HBM23_AXI_bready,
    HBM23_AXI_bresp,
    HBM23_AXI_buser,
    HBM23_AXI_bvalid,
    HBM23_AXI_rdata,
    HBM23_AXI_rid,
    HBM23_AXI_rlast,
    HBM23_AXI_rready,
    HBM23_AXI_rresp,
    HBM23_AXI_rvalid,
    HBM23_AXI_wdata,
    HBM23_AXI_wlast,
    HBM23_AXI_wready,
    HBM23_AXI_wstrb,
    HBM23_AXI_wvalid,
    HBM24_AXI_araddr,
    HBM24_AXI_arburst,
    HBM24_AXI_arcache,
    HBM24_AXI_arid,
    HBM24_AXI_arlen,
    HBM24_AXI_arlock,
    HBM24_AXI_arprot,
    HBM24_AXI_arready,
    HBM24_AXI_arsize,
    HBM24_AXI_aruser,
    HBM24_AXI_arvalid,
    HBM24_AXI_awaddr,
    HBM24_AXI_awburst,
    HBM24_AXI_awcache,
    HBM24_AXI_awid,
    HBM24_AXI_awlen,
    HBM24_AXI_awlock,
    HBM24_AXI_awprot,
    HBM24_AXI_awready,
    HBM24_AXI_awsize,
    HBM24_AXI_awuser,
    HBM24_AXI_awvalid,
    HBM24_AXI_bid,
    HBM24_AXI_bready,
    HBM24_AXI_bresp,
    HBM24_AXI_buser,
    HBM24_AXI_bvalid,
    HBM24_AXI_rdata,
    HBM24_AXI_rid,
    HBM24_AXI_rlast,
    HBM24_AXI_rready,
    HBM24_AXI_rresp,
    HBM24_AXI_rvalid,
    HBM24_AXI_wdata,
    HBM24_AXI_wlast,
    HBM24_AXI_wready,
    HBM24_AXI_wstrb,
    HBM24_AXI_wvalid,
    HBM25_AXI_araddr,
    HBM25_AXI_arburst,
    HBM25_AXI_arcache,
    HBM25_AXI_arid,
    HBM25_AXI_arlen,
    HBM25_AXI_arlock,
    HBM25_AXI_arprot,
    HBM25_AXI_arready,
    HBM25_AXI_arsize,
    HBM25_AXI_aruser,
    HBM25_AXI_arvalid,
    HBM25_AXI_awaddr,
    HBM25_AXI_awburst,
    HBM25_AXI_awcache,
    HBM25_AXI_awid,
    HBM25_AXI_awlen,
    HBM25_AXI_awlock,
    HBM25_AXI_awprot,
    HBM25_AXI_awready,
    HBM25_AXI_awsize,
    HBM25_AXI_awuser,
    HBM25_AXI_awvalid,
    HBM25_AXI_bid,
    HBM25_AXI_bready,
    HBM25_AXI_bresp,
    HBM25_AXI_buser,
    HBM25_AXI_bvalid,
    HBM25_AXI_rdata,
    HBM25_AXI_rid,
    HBM25_AXI_rlast,
    HBM25_AXI_rready,
    HBM25_AXI_rresp,
    HBM25_AXI_rvalid,
    HBM25_AXI_wdata,
    HBM25_AXI_wlast,
    HBM25_AXI_wready,
    HBM25_AXI_wstrb,
    HBM25_AXI_wvalid,
    HBM26_AXI_araddr,
    HBM26_AXI_arburst,
    HBM26_AXI_arcache,
    HBM26_AXI_arid,
    HBM26_AXI_arlen,
    HBM26_AXI_arlock,
    HBM26_AXI_arprot,
    HBM26_AXI_arready,
    HBM26_AXI_arsize,
    HBM26_AXI_aruser,
    HBM26_AXI_arvalid,
    HBM26_AXI_awaddr,
    HBM26_AXI_awburst,
    HBM26_AXI_awcache,
    HBM26_AXI_awid,
    HBM26_AXI_awlen,
    HBM26_AXI_awlock,
    HBM26_AXI_awprot,
    HBM26_AXI_awready,
    HBM26_AXI_awsize,
    HBM26_AXI_awuser,
    HBM26_AXI_awvalid,
    HBM26_AXI_bid,
    HBM26_AXI_bready,
    HBM26_AXI_bresp,
    HBM26_AXI_buser,
    HBM26_AXI_bvalid,
    HBM26_AXI_rdata,
    HBM26_AXI_rid,
    HBM26_AXI_rlast,
    HBM26_AXI_rready,
    HBM26_AXI_rresp,
    HBM26_AXI_rvalid,
    HBM26_AXI_wdata,
    HBM26_AXI_wlast,
    HBM26_AXI_wready,
    HBM26_AXI_wstrb,
    HBM26_AXI_wvalid,
    HBM27_AXI_araddr,
    HBM27_AXI_arburst,
    HBM27_AXI_arcache,
    HBM27_AXI_arid,
    HBM27_AXI_arlen,
    HBM27_AXI_arlock,
    HBM27_AXI_arprot,
    HBM27_AXI_arready,
    HBM27_AXI_arsize,
    HBM27_AXI_aruser,
    HBM27_AXI_arvalid,
    HBM27_AXI_awaddr,
    HBM27_AXI_awburst,
    HBM27_AXI_awcache,
    HBM27_AXI_awid,
    HBM27_AXI_awlen,
    HBM27_AXI_awlock,
    HBM27_AXI_awprot,
    HBM27_AXI_awready,
    HBM27_AXI_awsize,
    HBM27_AXI_awuser,
    HBM27_AXI_awvalid,
    HBM27_AXI_bid,
    HBM27_AXI_bready,
    HBM27_AXI_bresp,
    HBM27_AXI_buser,
    HBM27_AXI_bvalid,
    HBM27_AXI_rdata,
    HBM27_AXI_rid,
    HBM27_AXI_rlast,
    HBM27_AXI_rready,
    HBM27_AXI_rresp,
    HBM27_AXI_rvalid,
    HBM27_AXI_wdata,
    HBM27_AXI_wlast,
    HBM27_AXI_wready,
    HBM27_AXI_wstrb,
    HBM27_AXI_wvalid,
    HBM28_AXI_araddr,
    HBM28_AXI_arburst,
    HBM28_AXI_arcache,
    HBM28_AXI_arid,
    HBM28_AXI_arlen,
    HBM28_AXI_arlock,
    HBM28_AXI_arprot,
    HBM28_AXI_arready,
    HBM28_AXI_arsize,
    HBM28_AXI_aruser,
    HBM28_AXI_arvalid,
    HBM28_AXI_awaddr,
    HBM28_AXI_awburst,
    HBM28_AXI_awcache,
    HBM28_AXI_awid,
    HBM28_AXI_awlen,
    HBM28_AXI_awlock,
    HBM28_AXI_awprot,
    HBM28_AXI_awready,
    HBM28_AXI_awsize,
    HBM28_AXI_awuser,
    HBM28_AXI_awvalid,
    HBM28_AXI_bid,
    HBM28_AXI_bready,
    HBM28_AXI_bresp,
    HBM28_AXI_buser,
    HBM28_AXI_bvalid,
    HBM28_AXI_rdata,
    HBM28_AXI_rid,
    HBM28_AXI_rlast,
    HBM28_AXI_rready,
    HBM28_AXI_rresp,
    HBM28_AXI_rvalid,
    HBM28_AXI_wdata,
    HBM28_AXI_wlast,
    HBM28_AXI_wready,
    HBM28_AXI_wstrb,
    HBM28_AXI_wvalid,
    HBM29_AXI_araddr,
    HBM29_AXI_arburst,
    HBM29_AXI_arcache,
    HBM29_AXI_arid,
    HBM29_AXI_arlen,
    HBM29_AXI_arlock,
    HBM29_AXI_arprot,
    HBM29_AXI_arready,
    HBM29_AXI_arsize,
    HBM29_AXI_aruser,
    HBM29_AXI_arvalid,
    HBM29_AXI_awaddr,
    HBM29_AXI_awburst,
    HBM29_AXI_awcache,
    HBM29_AXI_awid,
    HBM29_AXI_awlen,
    HBM29_AXI_awlock,
    HBM29_AXI_awprot,
    HBM29_AXI_awready,
    HBM29_AXI_awsize,
    HBM29_AXI_awuser,
    HBM29_AXI_awvalid,
    HBM29_AXI_bid,
    HBM29_AXI_bready,
    HBM29_AXI_bresp,
    HBM29_AXI_buser,
    HBM29_AXI_bvalid,
    HBM29_AXI_rdata,
    HBM29_AXI_rid,
    HBM29_AXI_rlast,
    HBM29_AXI_rready,
    HBM29_AXI_rresp,
    HBM29_AXI_rvalid,
    HBM29_AXI_wdata,
    HBM29_AXI_wlast,
    HBM29_AXI_wready,
    HBM29_AXI_wstrb,
    HBM29_AXI_wvalid,
    HBM30_AXI_araddr,
    HBM30_AXI_arburst,
    HBM30_AXI_arcache,
    HBM30_AXI_arid,
    HBM30_AXI_arlen,
    HBM30_AXI_arlock,
    HBM30_AXI_arprot,
    HBM30_AXI_arready,
    HBM30_AXI_arsize,
    HBM30_AXI_aruser,
    HBM30_AXI_arvalid,
    HBM30_AXI_awaddr,
    HBM30_AXI_awburst,
    HBM30_AXI_awcache,
    HBM30_AXI_awid,
    HBM30_AXI_awlen,
    HBM30_AXI_awlock,
    HBM30_AXI_awprot,
    HBM30_AXI_awready,
    HBM30_AXI_awsize,
    HBM30_AXI_awuser,
    HBM30_AXI_awvalid,
    HBM30_AXI_bid,
    HBM30_AXI_bready,
    HBM30_AXI_bresp,
    HBM30_AXI_buser,
    HBM30_AXI_bvalid,
    HBM30_AXI_rdata,
    HBM30_AXI_rid,
    HBM30_AXI_rlast,
    HBM30_AXI_rready,
    HBM30_AXI_rresp,
    HBM30_AXI_rvalid,
    HBM30_AXI_wdata,
    HBM30_AXI_wlast,
    HBM30_AXI_wready,
    HBM30_AXI_wstrb,
    HBM30_AXI_wvalid,
    HBM31_AXI_araddr,
    HBM31_AXI_arburst,
    HBM31_AXI_arcache,
    HBM31_AXI_arid,
    HBM31_AXI_arlen,
    HBM31_AXI_arlock,
    HBM31_AXI_arprot,
    HBM31_AXI_arready,
    HBM31_AXI_arsize,
    HBM31_AXI_aruser,
    HBM31_AXI_arvalid,
    HBM31_AXI_awaddr,
    HBM31_AXI_awburst,
    HBM31_AXI_awcache,
    HBM31_AXI_awid,
    HBM31_AXI_awlen,
    HBM31_AXI_awlock,
    HBM31_AXI_awprot,
    HBM31_AXI_awready,
    HBM31_AXI_awsize,
    HBM31_AXI_awuser,
    HBM31_AXI_awvalid,
    HBM31_AXI_bid,
    HBM31_AXI_bready,
    HBM31_AXI_bresp,
    HBM31_AXI_buser,
    HBM31_AXI_bvalid,
    HBM31_AXI_rdata,
    HBM31_AXI_rid,
    HBM31_AXI_rlast,
    HBM31_AXI_rready,
    HBM31_AXI_rresp,
    HBM31_AXI_rvalid,
    HBM31_AXI_wdata,
    HBM31_AXI_wlast,
    HBM31_AXI_wready,
    HBM31_AXI_wstrb,
    HBM31_AXI_wvalid,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_aruser,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awuser,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arregion,
    M02_AXI_arsize,
    M02_AXI_aruser,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awregion,
    M02_AXI_awsize,
    M02_AXI_awuser,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arid,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arqos,
    M03_AXI_arready,
    M03_AXI_arregion,
    M03_AXI_arsize,
    M03_AXI_aruser,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awid,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awqos,
    M03_AXI_awready,
    M03_AXI_awregion,
    M03_AXI_awsize,
    M03_AXI_awuser,
    M03_AXI_awvalid,
    M03_AXI_bid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rid,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_aruser,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awuser,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_ruser,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wuser,
    S01_AXI_wvalid,
    aclk0,
    aclk1,
    aclk2,
    aclk3,
    sys_clk0_clk_n,
    sys_clk0_clk_p,
    sys_clk1_clk_n,
    sys_clk1_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ACT_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_DDR4_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, MY_CATEGORY pl, NOC_ID -1, SLOT Single, TIMEPERIOD_PS 1250, WRITE_BUFFER_SIZE 80" *) output [0:0]CH0_DDR4_0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ADR" *) output [16:0]CH0_DDR4_0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ALERT_N" *) inout [0:0]CH0_DDR4_0_alert_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 BA" *) output [1:0]CH0_DDR4_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 BG" *) output [1:0]CH0_DDR4_0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CK_C" *) output [0:0]CH0_DDR4_0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CK_T" *) output [0:0]CH0_DDR4_0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CKE" *) output [0:0]CH0_DDR4_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CS_N" *) output [0:0]CH0_DDR4_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQ" *) inout [71:0]CH0_DDR4_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQS_C" *) inout [8:0]CH0_DDR4_0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQS_T" *) inout [8:0]CH0_DDR4_0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ODT" *) output [0:0]CH0_DDR4_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 PAR" *) output [0:0]CH0_DDR4_0_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 RESET_N" *) output [0:0]CH0_DDR4_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ACT_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_DDR4_1, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, MY_CATEGORY pl, NOC_ID -1, SLOT Single, TIMEPERIOD_PS 1250, WRITE_BUFFER_SIZE 80" *) output [0:0]CH0_DDR4_1_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ADR" *) output [16:0]CH0_DDR4_1_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ALERT_N" *) inout [0:0]CH0_DDR4_1_alert_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 BA" *) output [1:0]CH0_DDR4_1_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 BG" *) output [1:0]CH0_DDR4_1_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CK_C" *) output [0:0]CH0_DDR4_1_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CK_T" *) output [0:0]CH0_DDR4_1_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CKE" *) output [0:0]CH0_DDR4_1_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CS_N" *) output [0:0]CH0_DDR4_1_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQ" *) inout [71:0]CH0_DDR4_1_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQS_C" *) inout [8:0]CH0_DDR4_1_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQS_T" *) inout [8:0]CH0_DDR4_1_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ODT" *) output [0:0]CH0_DDR4_1_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 PAR" *) output [0:0]CH0_DDR4_1_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 RESET_N" *) output [0:0]CH0_DDR4_1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM00_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM0_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARBURST" *) input [1:0]HBM00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARCACHE" *) input [3:0]HBM00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARID" *) input [6:0]HBM00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARLEN" *) input [7:0]HBM00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARLOCK" *) input [0:0]HBM00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARPROT" *) input [2:0]HBM00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARREADY" *) output [0:0]HBM00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARSIZE" *) input [2:0]HBM00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARUSER" *) input [10:0]HBM00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARVALID" *) input [0:0]HBM00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWADDR" *) input [63:0]HBM00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWBURST" *) input [1:0]HBM00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWCACHE" *) input [3:0]HBM00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWID" *) input [6:0]HBM00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWLEN" *) input [7:0]HBM00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWLOCK" *) input [0:0]HBM00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWPROT" *) input [2:0]HBM00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWREADY" *) output [0:0]HBM00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWSIZE" *) input [2:0]HBM00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWUSER" *) input [10:0]HBM00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWVALID" *) input [0:0]HBM00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BID" *) output [6:0]HBM00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BREADY" *) input [0:0]HBM00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BRESP" *) output [1:0]HBM00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BUSER" *) output [15:0]HBM00_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BVALID" *) output [0:0]HBM00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RDATA" *) output [255:0]HBM00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RID" *) output [6:0]HBM00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RLAST" *) output [0:0]HBM00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RREADY" *) input [0:0]HBM00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RRESP" *) output [1:0]HBM00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RVALID" *) output [0:0]HBM00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WDATA" *) input [255:0]HBM00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WLAST" *) input [0:0]HBM00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WREADY" *) output [0:0]HBM00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WSTRB" *) input [31:0]HBM00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WVALID" *) input [0:0]HBM00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM01_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM0_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARBURST" *) input [1:0]HBM01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARCACHE" *) input [3:0]HBM01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARID" *) input [6:0]HBM01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARLEN" *) input [7:0]HBM01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARLOCK" *) input [0:0]HBM01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARPROT" *) input [2:0]HBM01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARREADY" *) output [0:0]HBM01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARSIZE" *) input [2:0]HBM01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARUSER" *) input [10:0]HBM01_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARVALID" *) input [0:0]HBM01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWADDR" *) input [63:0]HBM01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWBURST" *) input [1:0]HBM01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWCACHE" *) input [3:0]HBM01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWID" *) input [6:0]HBM01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWLEN" *) input [7:0]HBM01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWLOCK" *) input [0:0]HBM01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWPROT" *) input [2:0]HBM01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWREADY" *) output [0:0]HBM01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWSIZE" *) input [2:0]HBM01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWUSER" *) input [10:0]HBM01_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWVALID" *) input [0:0]HBM01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BID" *) output [6:0]HBM01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BREADY" *) input [0:0]HBM01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BRESP" *) output [1:0]HBM01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BUSER" *) output [15:0]HBM01_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BVALID" *) output [0:0]HBM01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RDATA" *) output [255:0]HBM01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RID" *) output [6:0]HBM01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RLAST" *) output [0:0]HBM01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RREADY" *) input [0:0]HBM01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RRESP" *) output [1:0]HBM01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RVALID" *) output [0:0]HBM01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WDATA" *) input [255:0]HBM01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WLAST" *) input [0:0]HBM01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WREADY" *) output [0:0]HBM01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WSTRB" *) input [31:0]HBM01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WVALID" *) input [0:0]HBM01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM02_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM1_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARBURST" *) input [1:0]HBM02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARCACHE" *) input [3:0]HBM02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARID" *) input [6:0]HBM02_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARLEN" *) input [7:0]HBM02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARLOCK" *) input [0:0]HBM02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARPROT" *) input [2:0]HBM02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARREADY" *) output [0:0]HBM02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARSIZE" *) input [2:0]HBM02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARUSER" *) input [10:0]HBM02_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARVALID" *) input [0:0]HBM02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWADDR" *) input [63:0]HBM02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWBURST" *) input [1:0]HBM02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWCACHE" *) input [3:0]HBM02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWID" *) input [6:0]HBM02_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWLEN" *) input [7:0]HBM02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWLOCK" *) input [0:0]HBM02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWPROT" *) input [2:0]HBM02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWREADY" *) output [0:0]HBM02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWSIZE" *) input [2:0]HBM02_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWUSER" *) input [10:0]HBM02_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWVALID" *) input [0:0]HBM02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BID" *) output [6:0]HBM02_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BREADY" *) input [0:0]HBM02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BRESP" *) output [1:0]HBM02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BUSER" *) output [15:0]HBM02_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BVALID" *) output [0:0]HBM02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RDATA" *) output [255:0]HBM02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RID" *) output [6:0]HBM02_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RLAST" *) output [0:0]HBM02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RREADY" *) input [0:0]HBM02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RRESP" *) output [1:0]HBM02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RVALID" *) output [0:0]HBM02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WDATA" *) input [255:0]HBM02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WLAST" *) input [0:0]HBM02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WREADY" *) output [0:0]HBM02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WSTRB" *) input [31:0]HBM02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WVALID" *) input [0:0]HBM02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM03_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM1_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM03_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARBURST" *) input [1:0]HBM03_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARCACHE" *) input [3:0]HBM03_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARID" *) input [6:0]HBM03_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARLEN" *) input [7:0]HBM03_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARLOCK" *) input [0:0]HBM03_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARPROT" *) input [2:0]HBM03_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARREADY" *) output [0:0]HBM03_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARSIZE" *) input [2:0]HBM03_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARUSER" *) input [10:0]HBM03_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARVALID" *) input [0:0]HBM03_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWADDR" *) input [63:0]HBM03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWBURST" *) input [1:0]HBM03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWCACHE" *) input [3:0]HBM03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWID" *) input [6:0]HBM03_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWLEN" *) input [7:0]HBM03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWLOCK" *) input [0:0]HBM03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWPROT" *) input [2:0]HBM03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWREADY" *) output [0:0]HBM03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWSIZE" *) input [2:0]HBM03_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWUSER" *) input [10:0]HBM03_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWVALID" *) input [0:0]HBM03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BID" *) output [6:0]HBM03_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BREADY" *) input [0:0]HBM03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BRESP" *) output [1:0]HBM03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BUSER" *) output [15:0]HBM03_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BVALID" *) output [0:0]HBM03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RDATA" *) output [255:0]HBM03_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RID" *) output [6:0]HBM03_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RLAST" *) output [0:0]HBM03_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RREADY" *) input [0:0]HBM03_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RRESP" *) output [1:0]HBM03_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RVALID" *) output [0:0]HBM03_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WDATA" *) input [255:0]HBM03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WLAST" *) input [0:0]HBM03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WREADY" *) output [0:0]HBM03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WSTRB" *) input [31:0]HBM03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WVALID" *) input [0:0]HBM03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM04_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM2_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM04_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARBURST" *) input [1:0]HBM04_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARCACHE" *) input [3:0]HBM04_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARID" *) input [6:0]HBM04_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARLEN" *) input [7:0]HBM04_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARLOCK" *) input [0:0]HBM04_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARPROT" *) input [2:0]HBM04_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARREADY" *) output [0:0]HBM04_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARSIZE" *) input [2:0]HBM04_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARUSER" *) input [10:0]HBM04_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARVALID" *) input [0:0]HBM04_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWADDR" *) input [63:0]HBM04_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWBURST" *) input [1:0]HBM04_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWCACHE" *) input [3:0]HBM04_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWID" *) input [6:0]HBM04_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWLEN" *) input [7:0]HBM04_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWLOCK" *) input [0:0]HBM04_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWPROT" *) input [2:0]HBM04_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWREADY" *) output [0:0]HBM04_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWSIZE" *) input [2:0]HBM04_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWUSER" *) input [10:0]HBM04_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWVALID" *) input [0:0]HBM04_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BID" *) output [6:0]HBM04_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BREADY" *) input [0:0]HBM04_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BRESP" *) output [1:0]HBM04_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BUSER" *) output [15:0]HBM04_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BVALID" *) output [0:0]HBM04_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RDATA" *) output [255:0]HBM04_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RID" *) output [6:0]HBM04_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RLAST" *) output [0:0]HBM04_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RREADY" *) input [0:0]HBM04_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RRESP" *) output [1:0]HBM04_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RVALID" *) output [0:0]HBM04_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WDATA" *) input [255:0]HBM04_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WLAST" *) input [0:0]HBM04_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WREADY" *) output [0:0]HBM04_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WSTRB" *) input [31:0]HBM04_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WVALID" *) input [0:0]HBM04_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM05_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM2_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM05_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARBURST" *) input [1:0]HBM05_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARCACHE" *) input [3:0]HBM05_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARID" *) input [6:0]HBM05_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARLEN" *) input [7:0]HBM05_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARLOCK" *) input [0:0]HBM05_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARPROT" *) input [2:0]HBM05_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARREADY" *) output [0:0]HBM05_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARSIZE" *) input [2:0]HBM05_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARUSER" *) input [10:0]HBM05_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARVALID" *) input [0:0]HBM05_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWADDR" *) input [63:0]HBM05_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWBURST" *) input [1:0]HBM05_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWCACHE" *) input [3:0]HBM05_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWID" *) input [6:0]HBM05_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWLEN" *) input [7:0]HBM05_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWLOCK" *) input [0:0]HBM05_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWPROT" *) input [2:0]HBM05_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWREADY" *) output [0:0]HBM05_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWSIZE" *) input [2:0]HBM05_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWUSER" *) input [10:0]HBM05_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWVALID" *) input [0:0]HBM05_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BID" *) output [6:0]HBM05_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BREADY" *) input [0:0]HBM05_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BRESP" *) output [1:0]HBM05_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BUSER" *) output [15:0]HBM05_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BVALID" *) output [0:0]HBM05_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RDATA" *) output [255:0]HBM05_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RID" *) output [6:0]HBM05_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RLAST" *) output [0:0]HBM05_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RREADY" *) input [0:0]HBM05_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RRESP" *) output [1:0]HBM05_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RVALID" *) output [0:0]HBM05_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WDATA" *) input [255:0]HBM05_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WLAST" *) input [0:0]HBM05_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WREADY" *) output [0:0]HBM05_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WSTRB" *) input [31:0]HBM05_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WVALID" *) input [0:0]HBM05_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM06_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM3_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM06_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARBURST" *) input [1:0]HBM06_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARCACHE" *) input [3:0]HBM06_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARID" *) input [6:0]HBM06_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARLEN" *) input [7:0]HBM06_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARLOCK" *) input [0:0]HBM06_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARPROT" *) input [2:0]HBM06_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARREADY" *) output [0:0]HBM06_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARSIZE" *) input [2:0]HBM06_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARUSER" *) input [10:0]HBM06_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARVALID" *) input [0:0]HBM06_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWADDR" *) input [63:0]HBM06_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWBURST" *) input [1:0]HBM06_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWCACHE" *) input [3:0]HBM06_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWID" *) input [6:0]HBM06_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWLEN" *) input [7:0]HBM06_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWLOCK" *) input [0:0]HBM06_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWPROT" *) input [2:0]HBM06_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWREADY" *) output [0:0]HBM06_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWSIZE" *) input [2:0]HBM06_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWUSER" *) input [10:0]HBM06_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWVALID" *) input [0:0]HBM06_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BID" *) output [6:0]HBM06_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BREADY" *) input [0:0]HBM06_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BRESP" *) output [1:0]HBM06_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BUSER" *) output [15:0]HBM06_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BVALID" *) output [0:0]HBM06_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RDATA" *) output [255:0]HBM06_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RID" *) output [6:0]HBM06_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RLAST" *) output [0:0]HBM06_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RREADY" *) input [0:0]HBM06_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RRESP" *) output [1:0]HBM06_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RVALID" *) output [0:0]HBM06_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WDATA" *) input [255:0]HBM06_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WLAST" *) input [0:0]HBM06_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WREADY" *) output [0:0]HBM06_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WSTRB" *) input [31:0]HBM06_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WVALID" *) input [0:0]HBM06_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM07_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM3_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM07_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARBURST" *) input [1:0]HBM07_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARCACHE" *) input [3:0]HBM07_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARID" *) input [6:0]HBM07_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARLEN" *) input [7:0]HBM07_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARLOCK" *) input [0:0]HBM07_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARPROT" *) input [2:0]HBM07_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARREADY" *) output [0:0]HBM07_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARSIZE" *) input [2:0]HBM07_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARUSER" *) input [10:0]HBM07_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARVALID" *) input [0:0]HBM07_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWADDR" *) input [63:0]HBM07_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWBURST" *) input [1:0]HBM07_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWCACHE" *) input [3:0]HBM07_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWID" *) input [6:0]HBM07_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWLEN" *) input [7:0]HBM07_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWLOCK" *) input [0:0]HBM07_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWPROT" *) input [2:0]HBM07_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWREADY" *) output [0:0]HBM07_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWSIZE" *) input [2:0]HBM07_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWUSER" *) input [10:0]HBM07_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWVALID" *) input [0:0]HBM07_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BID" *) output [6:0]HBM07_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BREADY" *) input [0:0]HBM07_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BRESP" *) output [1:0]HBM07_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BUSER" *) output [15:0]HBM07_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BVALID" *) output [0:0]HBM07_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RDATA" *) output [255:0]HBM07_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RID" *) output [6:0]HBM07_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RLAST" *) output [0:0]HBM07_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RREADY" *) input [0:0]HBM07_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RRESP" *) output [1:0]HBM07_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RVALID" *) output [0:0]HBM07_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WDATA" *) input [255:0]HBM07_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WLAST" *) input [0:0]HBM07_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WREADY" *) output [0:0]HBM07_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WSTRB" *) input [31:0]HBM07_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WVALID" *) input [0:0]HBM07_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM08_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM4_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM08_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARBURST" *) input [1:0]HBM08_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARCACHE" *) input [3:0]HBM08_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARID" *) input [6:0]HBM08_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARLEN" *) input [7:0]HBM08_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARLOCK" *) input [0:0]HBM08_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARPROT" *) input [2:0]HBM08_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARREADY" *) output [0:0]HBM08_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARSIZE" *) input [2:0]HBM08_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARUSER" *) input [10:0]HBM08_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARVALID" *) input [0:0]HBM08_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWADDR" *) input [63:0]HBM08_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWBURST" *) input [1:0]HBM08_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWCACHE" *) input [3:0]HBM08_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWID" *) input [6:0]HBM08_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWLEN" *) input [7:0]HBM08_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWLOCK" *) input [0:0]HBM08_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWPROT" *) input [2:0]HBM08_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWREADY" *) output [0:0]HBM08_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWSIZE" *) input [2:0]HBM08_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWUSER" *) input [10:0]HBM08_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWVALID" *) input [0:0]HBM08_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BID" *) output [6:0]HBM08_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BREADY" *) input [0:0]HBM08_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BRESP" *) output [1:0]HBM08_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BUSER" *) output [15:0]HBM08_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BVALID" *) output [0:0]HBM08_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RDATA" *) output [255:0]HBM08_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RID" *) output [6:0]HBM08_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RLAST" *) output [0:0]HBM08_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RREADY" *) input [0:0]HBM08_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RRESP" *) output [1:0]HBM08_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RVALID" *) output [0:0]HBM08_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WDATA" *) input [255:0]HBM08_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WLAST" *) input [0:0]HBM08_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WREADY" *) output [0:0]HBM08_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WSTRB" *) input [31:0]HBM08_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WVALID" *) input [0:0]HBM08_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM09_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM4_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM09_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARBURST" *) input [1:0]HBM09_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARCACHE" *) input [3:0]HBM09_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARID" *) input [6:0]HBM09_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARLEN" *) input [7:0]HBM09_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARLOCK" *) input [0:0]HBM09_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARPROT" *) input [2:0]HBM09_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARREADY" *) output [0:0]HBM09_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARSIZE" *) input [2:0]HBM09_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARUSER" *) input [10:0]HBM09_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARVALID" *) input [0:0]HBM09_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWADDR" *) input [63:0]HBM09_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWBURST" *) input [1:0]HBM09_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWCACHE" *) input [3:0]HBM09_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWID" *) input [6:0]HBM09_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWLEN" *) input [7:0]HBM09_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWLOCK" *) input [0:0]HBM09_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWPROT" *) input [2:0]HBM09_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWREADY" *) output [0:0]HBM09_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWSIZE" *) input [2:0]HBM09_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWUSER" *) input [10:0]HBM09_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWVALID" *) input [0:0]HBM09_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BID" *) output [6:0]HBM09_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BREADY" *) input [0:0]HBM09_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BRESP" *) output [1:0]HBM09_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BUSER" *) output [15:0]HBM09_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BVALID" *) output [0:0]HBM09_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RDATA" *) output [255:0]HBM09_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RID" *) output [6:0]HBM09_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RLAST" *) output [0:0]HBM09_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RREADY" *) input [0:0]HBM09_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RRESP" *) output [1:0]HBM09_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RVALID" *) output [0:0]HBM09_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WDATA" *) input [255:0]HBM09_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WLAST" *) input [0:0]HBM09_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WREADY" *) output [0:0]HBM09_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WSTRB" *) input [31:0]HBM09_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WVALID" *) input [0:0]HBM09_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM10_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM5_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM10_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARBURST" *) input [1:0]HBM10_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARCACHE" *) input [3:0]HBM10_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARID" *) input [6:0]HBM10_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARLEN" *) input [7:0]HBM10_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARLOCK" *) input [0:0]HBM10_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARPROT" *) input [2:0]HBM10_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARREADY" *) output [0:0]HBM10_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARSIZE" *) input [2:0]HBM10_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARUSER" *) input [10:0]HBM10_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARVALID" *) input [0:0]HBM10_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWADDR" *) input [63:0]HBM10_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWBURST" *) input [1:0]HBM10_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWCACHE" *) input [3:0]HBM10_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWID" *) input [6:0]HBM10_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWLEN" *) input [7:0]HBM10_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWLOCK" *) input [0:0]HBM10_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWPROT" *) input [2:0]HBM10_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWREADY" *) output [0:0]HBM10_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWSIZE" *) input [2:0]HBM10_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWUSER" *) input [10:0]HBM10_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWVALID" *) input [0:0]HBM10_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BID" *) output [6:0]HBM10_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BREADY" *) input [0:0]HBM10_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BRESP" *) output [1:0]HBM10_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BUSER" *) output [15:0]HBM10_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BVALID" *) output [0:0]HBM10_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RDATA" *) output [255:0]HBM10_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RID" *) output [6:0]HBM10_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RLAST" *) output [0:0]HBM10_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RREADY" *) input [0:0]HBM10_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RRESP" *) output [1:0]HBM10_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RVALID" *) output [0:0]HBM10_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WDATA" *) input [255:0]HBM10_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WLAST" *) input [0:0]HBM10_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WREADY" *) output [0:0]HBM10_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WSTRB" *) input [31:0]HBM10_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WVALID" *) input [0:0]HBM10_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM11_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM5_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM11_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARBURST" *) input [1:0]HBM11_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARCACHE" *) input [3:0]HBM11_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARID" *) input [6:0]HBM11_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARLEN" *) input [7:0]HBM11_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARLOCK" *) input [0:0]HBM11_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARPROT" *) input [2:0]HBM11_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARREADY" *) output [0:0]HBM11_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARSIZE" *) input [2:0]HBM11_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARUSER" *) input [10:0]HBM11_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARVALID" *) input [0:0]HBM11_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWADDR" *) input [63:0]HBM11_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWBURST" *) input [1:0]HBM11_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWCACHE" *) input [3:0]HBM11_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWID" *) input [6:0]HBM11_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWLEN" *) input [7:0]HBM11_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWLOCK" *) input [0:0]HBM11_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWPROT" *) input [2:0]HBM11_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWREADY" *) output [0:0]HBM11_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWSIZE" *) input [2:0]HBM11_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWUSER" *) input [10:0]HBM11_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWVALID" *) input [0:0]HBM11_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BID" *) output [6:0]HBM11_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BREADY" *) input [0:0]HBM11_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BRESP" *) output [1:0]HBM11_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BUSER" *) output [15:0]HBM11_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BVALID" *) output [0:0]HBM11_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RDATA" *) output [255:0]HBM11_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RID" *) output [6:0]HBM11_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RLAST" *) output [0:0]HBM11_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RREADY" *) input [0:0]HBM11_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RRESP" *) output [1:0]HBM11_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RVALID" *) output [0:0]HBM11_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WDATA" *) input [255:0]HBM11_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WLAST" *) input [0:0]HBM11_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WREADY" *) output [0:0]HBM11_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WSTRB" *) input [31:0]HBM11_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WVALID" *) input [0:0]HBM11_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM12_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM6_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM12_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARBURST" *) input [1:0]HBM12_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARCACHE" *) input [3:0]HBM12_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARID" *) input [6:0]HBM12_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARLEN" *) input [7:0]HBM12_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARLOCK" *) input [0:0]HBM12_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARPROT" *) input [2:0]HBM12_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARREADY" *) output [0:0]HBM12_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARSIZE" *) input [2:0]HBM12_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARUSER" *) input [10:0]HBM12_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARVALID" *) input [0:0]HBM12_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWADDR" *) input [63:0]HBM12_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWBURST" *) input [1:0]HBM12_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWCACHE" *) input [3:0]HBM12_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWID" *) input [6:0]HBM12_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWLEN" *) input [7:0]HBM12_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWLOCK" *) input [0:0]HBM12_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWPROT" *) input [2:0]HBM12_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWREADY" *) output [0:0]HBM12_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWSIZE" *) input [2:0]HBM12_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWUSER" *) input [10:0]HBM12_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWVALID" *) input [0:0]HBM12_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BID" *) output [6:0]HBM12_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BREADY" *) input [0:0]HBM12_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BRESP" *) output [1:0]HBM12_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BUSER" *) output [15:0]HBM12_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BVALID" *) output [0:0]HBM12_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RDATA" *) output [255:0]HBM12_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RID" *) output [6:0]HBM12_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RLAST" *) output [0:0]HBM12_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RREADY" *) input [0:0]HBM12_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RRESP" *) output [1:0]HBM12_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RVALID" *) output [0:0]HBM12_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WDATA" *) input [255:0]HBM12_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WLAST" *) input [0:0]HBM12_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WREADY" *) output [0:0]HBM12_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WSTRB" *) input [31:0]HBM12_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WVALID" *) input [0:0]HBM12_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM13_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM6_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM13_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARBURST" *) input [1:0]HBM13_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARCACHE" *) input [3:0]HBM13_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARID" *) input [6:0]HBM13_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARLEN" *) input [7:0]HBM13_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARLOCK" *) input [0:0]HBM13_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARPROT" *) input [2:0]HBM13_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARREADY" *) output [0:0]HBM13_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARSIZE" *) input [2:0]HBM13_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARUSER" *) input [10:0]HBM13_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARVALID" *) input [0:0]HBM13_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWADDR" *) input [63:0]HBM13_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWBURST" *) input [1:0]HBM13_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWCACHE" *) input [3:0]HBM13_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWID" *) input [6:0]HBM13_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWLEN" *) input [7:0]HBM13_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWLOCK" *) input [0:0]HBM13_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWPROT" *) input [2:0]HBM13_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWREADY" *) output [0:0]HBM13_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWSIZE" *) input [2:0]HBM13_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWUSER" *) input [10:0]HBM13_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWVALID" *) input [0:0]HBM13_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BID" *) output [6:0]HBM13_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BREADY" *) input [0:0]HBM13_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BRESP" *) output [1:0]HBM13_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BUSER" *) output [15:0]HBM13_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BVALID" *) output [0:0]HBM13_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RDATA" *) output [255:0]HBM13_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RID" *) output [6:0]HBM13_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RLAST" *) output [0:0]HBM13_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RREADY" *) input [0:0]HBM13_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RRESP" *) output [1:0]HBM13_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RVALID" *) output [0:0]HBM13_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WDATA" *) input [255:0]HBM13_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WLAST" *) input [0:0]HBM13_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WREADY" *) output [0:0]HBM13_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WSTRB" *) input [31:0]HBM13_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WVALID" *) input [0:0]HBM13_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM14_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM7_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM14_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARBURST" *) input [1:0]HBM14_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARCACHE" *) input [3:0]HBM14_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARID" *) input [6:0]HBM14_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARLEN" *) input [7:0]HBM14_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARLOCK" *) input [0:0]HBM14_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARPROT" *) input [2:0]HBM14_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARREADY" *) output [0:0]HBM14_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARSIZE" *) input [2:0]HBM14_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARUSER" *) input [10:0]HBM14_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARVALID" *) input [0:0]HBM14_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWADDR" *) input [63:0]HBM14_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWBURST" *) input [1:0]HBM14_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWCACHE" *) input [3:0]HBM14_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWID" *) input [6:0]HBM14_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWLEN" *) input [7:0]HBM14_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWLOCK" *) input [0:0]HBM14_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWPROT" *) input [2:0]HBM14_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWREADY" *) output [0:0]HBM14_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWSIZE" *) input [2:0]HBM14_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWUSER" *) input [10:0]HBM14_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWVALID" *) input [0:0]HBM14_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BID" *) output [6:0]HBM14_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BREADY" *) input [0:0]HBM14_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BRESP" *) output [1:0]HBM14_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BUSER" *) output [15:0]HBM14_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BVALID" *) output [0:0]HBM14_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RDATA" *) output [255:0]HBM14_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RID" *) output [6:0]HBM14_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RLAST" *) output [0:0]HBM14_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RREADY" *) input [0:0]HBM14_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RRESP" *) output [1:0]HBM14_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RVALID" *) output [0:0]HBM14_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WDATA" *) input [255:0]HBM14_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WLAST" *) input [0:0]HBM14_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WREADY" *) output [0:0]HBM14_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WSTRB" *) input [31:0]HBM14_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WVALID" *) input [0:0]HBM14_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM15_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM7_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM15_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARBURST" *) input [1:0]HBM15_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARCACHE" *) input [3:0]HBM15_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARID" *) input [6:0]HBM15_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARLEN" *) input [7:0]HBM15_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARLOCK" *) input [0:0]HBM15_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARPROT" *) input [2:0]HBM15_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARREADY" *) output [0:0]HBM15_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARSIZE" *) input [2:0]HBM15_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARUSER" *) input [10:0]HBM15_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARVALID" *) input [0:0]HBM15_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWADDR" *) input [63:0]HBM15_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWBURST" *) input [1:0]HBM15_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWCACHE" *) input [3:0]HBM15_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWID" *) input [6:0]HBM15_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWLEN" *) input [7:0]HBM15_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWLOCK" *) input [0:0]HBM15_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWPROT" *) input [2:0]HBM15_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWREADY" *) output [0:0]HBM15_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWSIZE" *) input [2:0]HBM15_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWUSER" *) input [10:0]HBM15_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWVALID" *) input [0:0]HBM15_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BID" *) output [6:0]HBM15_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BREADY" *) input [0:0]HBM15_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BRESP" *) output [1:0]HBM15_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BUSER" *) output [15:0]HBM15_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BVALID" *) output [0:0]HBM15_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RDATA" *) output [255:0]HBM15_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RID" *) output [6:0]HBM15_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RLAST" *) output [0:0]HBM15_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RREADY" *) input [0:0]HBM15_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RRESP" *) output [1:0]HBM15_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RVALID" *) output [0:0]HBM15_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WDATA" *) input [255:0]HBM15_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WLAST" *) input [0:0]HBM15_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WREADY" *) output [0:0]HBM15_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WSTRB" *) input [31:0]HBM15_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WVALID" *) input [0:0]HBM15_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM16_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM8_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM16_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARBURST" *) input [1:0]HBM16_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARCACHE" *) input [3:0]HBM16_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARID" *) input [6:0]HBM16_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARLEN" *) input [7:0]HBM16_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARLOCK" *) input [0:0]HBM16_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARPROT" *) input [2:0]HBM16_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARREADY" *) output [0:0]HBM16_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARSIZE" *) input [2:0]HBM16_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARUSER" *) input [10:0]HBM16_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARVALID" *) input [0:0]HBM16_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWADDR" *) input [63:0]HBM16_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWBURST" *) input [1:0]HBM16_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWCACHE" *) input [3:0]HBM16_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWID" *) input [6:0]HBM16_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWLEN" *) input [7:0]HBM16_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWLOCK" *) input [0:0]HBM16_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWPROT" *) input [2:0]HBM16_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWREADY" *) output [0:0]HBM16_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWSIZE" *) input [2:0]HBM16_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWUSER" *) input [10:0]HBM16_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWVALID" *) input [0:0]HBM16_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BID" *) output [6:0]HBM16_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BREADY" *) input [0:0]HBM16_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BRESP" *) output [1:0]HBM16_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BUSER" *) output [15:0]HBM16_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BVALID" *) output [0:0]HBM16_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RDATA" *) output [255:0]HBM16_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RID" *) output [6:0]HBM16_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RLAST" *) output [0:0]HBM16_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RREADY" *) input [0:0]HBM16_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RRESP" *) output [1:0]HBM16_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RVALID" *) output [0:0]HBM16_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WDATA" *) input [255:0]HBM16_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WLAST" *) input [0:0]HBM16_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WREADY" *) output [0:0]HBM16_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WSTRB" *) input [31:0]HBM16_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WVALID" *) input [0:0]HBM16_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM17_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM8_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM17_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARBURST" *) input [1:0]HBM17_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARCACHE" *) input [3:0]HBM17_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARID" *) input [6:0]HBM17_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARLEN" *) input [7:0]HBM17_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARLOCK" *) input [0:0]HBM17_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARPROT" *) input [2:0]HBM17_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARREADY" *) output [0:0]HBM17_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARSIZE" *) input [2:0]HBM17_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARUSER" *) input [10:0]HBM17_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARVALID" *) input [0:0]HBM17_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWADDR" *) input [63:0]HBM17_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWBURST" *) input [1:0]HBM17_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWCACHE" *) input [3:0]HBM17_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWID" *) input [6:0]HBM17_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWLEN" *) input [7:0]HBM17_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWLOCK" *) input [0:0]HBM17_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWPROT" *) input [2:0]HBM17_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWREADY" *) output [0:0]HBM17_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWSIZE" *) input [2:0]HBM17_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWUSER" *) input [10:0]HBM17_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWVALID" *) input [0:0]HBM17_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BID" *) output [6:0]HBM17_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BREADY" *) input [0:0]HBM17_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BRESP" *) output [1:0]HBM17_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BUSER" *) output [15:0]HBM17_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BVALID" *) output [0:0]HBM17_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RDATA" *) output [255:0]HBM17_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RID" *) output [6:0]HBM17_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RLAST" *) output [0:0]HBM17_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RREADY" *) input [0:0]HBM17_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RRESP" *) output [1:0]HBM17_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RVALID" *) output [0:0]HBM17_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WDATA" *) input [255:0]HBM17_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WLAST" *) input [0:0]HBM17_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WREADY" *) output [0:0]HBM17_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WSTRB" *) input [31:0]HBM17_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WVALID" *) input [0:0]HBM17_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM18_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM9_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM18_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARBURST" *) input [1:0]HBM18_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARCACHE" *) input [3:0]HBM18_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARID" *) input [6:0]HBM18_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARLEN" *) input [7:0]HBM18_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARLOCK" *) input [0:0]HBM18_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARPROT" *) input [2:0]HBM18_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARREADY" *) output [0:0]HBM18_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARSIZE" *) input [2:0]HBM18_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARUSER" *) input [10:0]HBM18_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARVALID" *) input [0:0]HBM18_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWADDR" *) input [63:0]HBM18_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWBURST" *) input [1:0]HBM18_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWCACHE" *) input [3:0]HBM18_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWID" *) input [6:0]HBM18_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWLEN" *) input [7:0]HBM18_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWLOCK" *) input [0:0]HBM18_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWPROT" *) input [2:0]HBM18_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWREADY" *) output [0:0]HBM18_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWSIZE" *) input [2:0]HBM18_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWUSER" *) input [10:0]HBM18_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWVALID" *) input [0:0]HBM18_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BID" *) output [6:0]HBM18_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BREADY" *) input [0:0]HBM18_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BRESP" *) output [1:0]HBM18_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BUSER" *) output [15:0]HBM18_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BVALID" *) output [0:0]HBM18_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RDATA" *) output [255:0]HBM18_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RID" *) output [6:0]HBM18_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RLAST" *) output [0:0]HBM18_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RREADY" *) input [0:0]HBM18_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RRESP" *) output [1:0]HBM18_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RVALID" *) output [0:0]HBM18_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WDATA" *) input [255:0]HBM18_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WLAST" *) input [0:0]HBM18_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WREADY" *) output [0:0]HBM18_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WSTRB" *) input [31:0]HBM18_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WVALID" *) input [0:0]HBM18_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM19_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM9_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM19_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARBURST" *) input [1:0]HBM19_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARCACHE" *) input [3:0]HBM19_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARID" *) input [6:0]HBM19_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARLEN" *) input [7:0]HBM19_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARLOCK" *) input [0:0]HBM19_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARPROT" *) input [2:0]HBM19_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARREADY" *) output [0:0]HBM19_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARSIZE" *) input [2:0]HBM19_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARUSER" *) input [10:0]HBM19_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARVALID" *) input [0:0]HBM19_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWADDR" *) input [63:0]HBM19_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWBURST" *) input [1:0]HBM19_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWCACHE" *) input [3:0]HBM19_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWID" *) input [6:0]HBM19_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWLEN" *) input [7:0]HBM19_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWLOCK" *) input [0:0]HBM19_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWPROT" *) input [2:0]HBM19_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWREADY" *) output [0:0]HBM19_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWSIZE" *) input [2:0]HBM19_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWUSER" *) input [10:0]HBM19_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWVALID" *) input [0:0]HBM19_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BID" *) output [6:0]HBM19_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BREADY" *) input [0:0]HBM19_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BRESP" *) output [1:0]HBM19_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BUSER" *) output [15:0]HBM19_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BVALID" *) output [0:0]HBM19_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RDATA" *) output [255:0]HBM19_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RID" *) output [6:0]HBM19_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RLAST" *) output [0:0]HBM19_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RREADY" *) input [0:0]HBM19_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RRESP" *) output [1:0]HBM19_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RVALID" *) output [0:0]HBM19_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WDATA" *) input [255:0]HBM19_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WLAST" *) input [0:0]HBM19_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WREADY" *) output [0:0]HBM19_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WSTRB" *) input [31:0]HBM19_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WVALID" *) input [0:0]HBM19_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM20_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM10_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM20_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARBURST" *) input [1:0]HBM20_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARCACHE" *) input [3:0]HBM20_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARID" *) input [6:0]HBM20_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARLEN" *) input [7:0]HBM20_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARLOCK" *) input [0:0]HBM20_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARPROT" *) input [2:0]HBM20_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARREADY" *) output [0:0]HBM20_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARSIZE" *) input [2:0]HBM20_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARUSER" *) input [10:0]HBM20_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARVALID" *) input [0:0]HBM20_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWADDR" *) input [63:0]HBM20_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWBURST" *) input [1:0]HBM20_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWCACHE" *) input [3:0]HBM20_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWID" *) input [6:0]HBM20_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWLEN" *) input [7:0]HBM20_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWLOCK" *) input [0:0]HBM20_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWPROT" *) input [2:0]HBM20_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWREADY" *) output [0:0]HBM20_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWSIZE" *) input [2:0]HBM20_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWUSER" *) input [10:0]HBM20_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWVALID" *) input [0:0]HBM20_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BID" *) output [6:0]HBM20_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BREADY" *) input [0:0]HBM20_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BRESP" *) output [1:0]HBM20_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BUSER" *) output [15:0]HBM20_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BVALID" *) output [0:0]HBM20_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RDATA" *) output [255:0]HBM20_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RID" *) output [6:0]HBM20_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RLAST" *) output [0:0]HBM20_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RREADY" *) input [0:0]HBM20_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RRESP" *) output [1:0]HBM20_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RVALID" *) output [0:0]HBM20_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WDATA" *) input [255:0]HBM20_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WLAST" *) input [0:0]HBM20_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WREADY" *) output [0:0]HBM20_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WSTRB" *) input [31:0]HBM20_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WVALID" *) input [0:0]HBM20_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM21_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM10_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM21_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARBURST" *) input [1:0]HBM21_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARCACHE" *) input [3:0]HBM21_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARID" *) input [6:0]HBM21_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARLEN" *) input [7:0]HBM21_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARLOCK" *) input [0:0]HBM21_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARPROT" *) input [2:0]HBM21_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARREADY" *) output [0:0]HBM21_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARSIZE" *) input [2:0]HBM21_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARUSER" *) input [10:0]HBM21_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARVALID" *) input [0:0]HBM21_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWADDR" *) input [63:0]HBM21_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWBURST" *) input [1:0]HBM21_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWCACHE" *) input [3:0]HBM21_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWID" *) input [6:0]HBM21_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWLEN" *) input [7:0]HBM21_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWLOCK" *) input [0:0]HBM21_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWPROT" *) input [2:0]HBM21_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWREADY" *) output [0:0]HBM21_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWSIZE" *) input [2:0]HBM21_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWUSER" *) input [10:0]HBM21_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWVALID" *) input [0:0]HBM21_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BID" *) output [6:0]HBM21_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BREADY" *) input [0:0]HBM21_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BRESP" *) output [1:0]HBM21_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BUSER" *) output [15:0]HBM21_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BVALID" *) output [0:0]HBM21_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RDATA" *) output [255:0]HBM21_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RID" *) output [6:0]HBM21_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RLAST" *) output [0:0]HBM21_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RREADY" *) input [0:0]HBM21_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RRESP" *) output [1:0]HBM21_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RVALID" *) output [0:0]HBM21_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WDATA" *) input [255:0]HBM21_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WLAST" *) input [0:0]HBM21_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WREADY" *) output [0:0]HBM21_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WSTRB" *) input [31:0]HBM21_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WVALID" *) input [0:0]HBM21_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM22_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM11_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM22_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARBURST" *) input [1:0]HBM22_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARCACHE" *) input [3:0]HBM22_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARID" *) input [6:0]HBM22_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARLEN" *) input [7:0]HBM22_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARLOCK" *) input [0:0]HBM22_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARPROT" *) input [2:0]HBM22_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARREADY" *) output [0:0]HBM22_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARSIZE" *) input [2:0]HBM22_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARUSER" *) input [10:0]HBM22_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARVALID" *) input [0:0]HBM22_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWADDR" *) input [63:0]HBM22_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWBURST" *) input [1:0]HBM22_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWCACHE" *) input [3:0]HBM22_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWID" *) input [6:0]HBM22_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWLEN" *) input [7:0]HBM22_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWLOCK" *) input [0:0]HBM22_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWPROT" *) input [2:0]HBM22_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWREADY" *) output [0:0]HBM22_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWSIZE" *) input [2:0]HBM22_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWUSER" *) input [10:0]HBM22_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWVALID" *) input [0:0]HBM22_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BID" *) output [6:0]HBM22_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BREADY" *) input [0:0]HBM22_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BRESP" *) output [1:0]HBM22_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BUSER" *) output [15:0]HBM22_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BVALID" *) output [0:0]HBM22_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RDATA" *) output [255:0]HBM22_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RID" *) output [6:0]HBM22_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RLAST" *) output [0:0]HBM22_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RREADY" *) input [0:0]HBM22_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RRESP" *) output [1:0]HBM22_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RVALID" *) output [0:0]HBM22_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WDATA" *) input [255:0]HBM22_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WLAST" *) input [0:0]HBM22_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WREADY" *) output [0:0]HBM22_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WSTRB" *) input [31:0]HBM22_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WVALID" *) input [0:0]HBM22_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM23_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM11_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM23_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARBURST" *) input [1:0]HBM23_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARCACHE" *) input [3:0]HBM23_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARID" *) input [6:0]HBM23_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARLEN" *) input [7:0]HBM23_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARLOCK" *) input [0:0]HBM23_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARPROT" *) input [2:0]HBM23_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARREADY" *) output [0:0]HBM23_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARSIZE" *) input [2:0]HBM23_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARUSER" *) input [10:0]HBM23_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARVALID" *) input [0:0]HBM23_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWADDR" *) input [63:0]HBM23_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWBURST" *) input [1:0]HBM23_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWCACHE" *) input [3:0]HBM23_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWID" *) input [6:0]HBM23_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWLEN" *) input [7:0]HBM23_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWLOCK" *) input [0:0]HBM23_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWPROT" *) input [2:0]HBM23_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWREADY" *) output [0:0]HBM23_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWSIZE" *) input [2:0]HBM23_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWUSER" *) input [10:0]HBM23_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWVALID" *) input [0:0]HBM23_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BID" *) output [6:0]HBM23_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BREADY" *) input [0:0]HBM23_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BRESP" *) output [1:0]HBM23_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BUSER" *) output [15:0]HBM23_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BVALID" *) output [0:0]HBM23_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RDATA" *) output [255:0]HBM23_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RID" *) output [6:0]HBM23_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RLAST" *) output [0:0]HBM23_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RREADY" *) input [0:0]HBM23_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RRESP" *) output [1:0]HBM23_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RVALID" *) output [0:0]HBM23_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WDATA" *) input [255:0]HBM23_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WLAST" *) input [0:0]HBM23_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WREADY" *) output [0:0]HBM23_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WSTRB" *) input [31:0]HBM23_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WVALID" *) input [0:0]HBM23_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM24_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM12_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM24_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARBURST" *) input [1:0]HBM24_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARCACHE" *) input [3:0]HBM24_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARID" *) input [6:0]HBM24_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARLEN" *) input [7:0]HBM24_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARLOCK" *) input [0:0]HBM24_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARPROT" *) input [2:0]HBM24_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARREADY" *) output [0:0]HBM24_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARSIZE" *) input [2:0]HBM24_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARUSER" *) input [10:0]HBM24_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARVALID" *) input [0:0]HBM24_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWADDR" *) input [63:0]HBM24_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWBURST" *) input [1:0]HBM24_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWCACHE" *) input [3:0]HBM24_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWID" *) input [6:0]HBM24_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWLEN" *) input [7:0]HBM24_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWLOCK" *) input [0:0]HBM24_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWPROT" *) input [2:0]HBM24_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWREADY" *) output [0:0]HBM24_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWSIZE" *) input [2:0]HBM24_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWUSER" *) input [10:0]HBM24_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWVALID" *) input [0:0]HBM24_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BID" *) output [6:0]HBM24_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BREADY" *) input [0:0]HBM24_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BRESP" *) output [1:0]HBM24_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BUSER" *) output [15:0]HBM24_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BVALID" *) output [0:0]HBM24_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RDATA" *) output [255:0]HBM24_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RID" *) output [6:0]HBM24_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RLAST" *) output [0:0]HBM24_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RREADY" *) input [0:0]HBM24_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RRESP" *) output [1:0]HBM24_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RVALID" *) output [0:0]HBM24_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WDATA" *) input [255:0]HBM24_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WLAST" *) input [0:0]HBM24_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WREADY" *) output [0:0]HBM24_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WSTRB" *) input [31:0]HBM24_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WVALID" *) input [0:0]HBM24_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM25_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM12_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM25_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARBURST" *) input [1:0]HBM25_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARCACHE" *) input [3:0]HBM25_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARID" *) input [6:0]HBM25_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARLEN" *) input [7:0]HBM25_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARLOCK" *) input [0:0]HBM25_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARPROT" *) input [2:0]HBM25_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARREADY" *) output [0:0]HBM25_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARSIZE" *) input [2:0]HBM25_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARUSER" *) input [10:0]HBM25_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARVALID" *) input [0:0]HBM25_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWADDR" *) input [63:0]HBM25_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWBURST" *) input [1:0]HBM25_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWCACHE" *) input [3:0]HBM25_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWID" *) input [6:0]HBM25_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWLEN" *) input [7:0]HBM25_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWLOCK" *) input [0:0]HBM25_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWPROT" *) input [2:0]HBM25_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWREADY" *) output [0:0]HBM25_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWSIZE" *) input [2:0]HBM25_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWUSER" *) input [10:0]HBM25_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWVALID" *) input [0:0]HBM25_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BID" *) output [6:0]HBM25_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BREADY" *) input [0:0]HBM25_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BRESP" *) output [1:0]HBM25_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BUSER" *) output [15:0]HBM25_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BVALID" *) output [0:0]HBM25_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RDATA" *) output [255:0]HBM25_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RID" *) output [6:0]HBM25_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RLAST" *) output [0:0]HBM25_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RREADY" *) input [0:0]HBM25_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RRESP" *) output [1:0]HBM25_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RVALID" *) output [0:0]HBM25_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WDATA" *) input [255:0]HBM25_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WLAST" *) input [0:0]HBM25_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WREADY" *) output [0:0]HBM25_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WSTRB" *) input [31:0]HBM25_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WVALID" *) input [0:0]HBM25_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM26_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM13_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM26_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARBURST" *) input [1:0]HBM26_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARCACHE" *) input [3:0]HBM26_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARID" *) input [6:0]HBM26_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARLEN" *) input [7:0]HBM26_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARLOCK" *) input [0:0]HBM26_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARPROT" *) input [2:0]HBM26_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARREADY" *) output [0:0]HBM26_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARSIZE" *) input [2:0]HBM26_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARUSER" *) input [10:0]HBM26_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARVALID" *) input [0:0]HBM26_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWADDR" *) input [63:0]HBM26_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWBURST" *) input [1:0]HBM26_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWCACHE" *) input [3:0]HBM26_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWID" *) input [6:0]HBM26_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWLEN" *) input [7:0]HBM26_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWLOCK" *) input [0:0]HBM26_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWPROT" *) input [2:0]HBM26_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWREADY" *) output [0:0]HBM26_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWSIZE" *) input [2:0]HBM26_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWUSER" *) input [10:0]HBM26_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWVALID" *) input [0:0]HBM26_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BID" *) output [6:0]HBM26_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BREADY" *) input [0:0]HBM26_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BRESP" *) output [1:0]HBM26_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BUSER" *) output [15:0]HBM26_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BVALID" *) output [0:0]HBM26_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RDATA" *) output [255:0]HBM26_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RID" *) output [6:0]HBM26_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RLAST" *) output [0:0]HBM26_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RREADY" *) input [0:0]HBM26_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RRESP" *) output [1:0]HBM26_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RVALID" *) output [0:0]HBM26_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WDATA" *) input [255:0]HBM26_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WLAST" *) input [0:0]HBM26_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WREADY" *) output [0:0]HBM26_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WSTRB" *) input [31:0]HBM26_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WVALID" *) input [0:0]HBM26_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM27_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM13_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM27_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARBURST" *) input [1:0]HBM27_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARCACHE" *) input [3:0]HBM27_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARID" *) input [6:0]HBM27_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARLEN" *) input [7:0]HBM27_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARLOCK" *) input [0:0]HBM27_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARPROT" *) input [2:0]HBM27_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARREADY" *) output [0:0]HBM27_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARSIZE" *) input [2:0]HBM27_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARUSER" *) input [10:0]HBM27_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARVALID" *) input [0:0]HBM27_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWADDR" *) input [63:0]HBM27_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWBURST" *) input [1:0]HBM27_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWCACHE" *) input [3:0]HBM27_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWID" *) input [6:0]HBM27_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWLEN" *) input [7:0]HBM27_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWLOCK" *) input [0:0]HBM27_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWPROT" *) input [2:0]HBM27_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWREADY" *) output [0:0]HBM27_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWSIZE" *) input [2:0]HBM27_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWUSER" *) input [10:0]HBM27_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWVALID" *) input [0:0]HBM27_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BID" *) output [6:0]HBM27_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BREADY" *) input [0:0]HBM27_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BRESP" *) output [1:0]HBM27_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BUSER" *) output [15:0]HBM27_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BVALID" *) output [0:0]HBM27_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RDATA" *) output [255:0]HBM27_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RID" *) output [6:0]HBM27_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RLAST" *) output [0:0]HBM27_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RREADY" *) input [0:0]HBM27_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RRESP" *) output [1:0]HBM27_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RVALID" *) output [0:0]HBM27_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WDATA" *) input [255:0]HBM27_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WLAST" *) input [0:0]HBM27_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WREADY" *) output [0:0]HBM27_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WSTRB" *) input [31:0]HBM27_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WVALID" *) input [0:0]HBM27_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM28_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM14_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM28_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARBURST" *) input [1:0]HBM28_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARCACHE" *) input [3:0]HBM28_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARID" *) input [6:0]HBM28_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARLEN" *) input [7:0]HBM28_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARLOCK" *) input [0:0]HBM28_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARPROT" *) input [2:0]HBM28_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARREADY" *) output [0:0]HBM28_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARSIZE" *) input [2:0]HBM28_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARUSER" *) input [10:0]HBM28_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARVALID" *) input [0:0]HBM28_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWADDR" *) input [63:0]HBM28_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWBURST" *) input [1:0]HBM28_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWCACHE" *) input [3:0]HBM28_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWID" *) input [6:0]HBM28_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWLEN" *) input [7:0]HBM28_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWLOCK" *) input [0:0]HBM28_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWPROT" *) input [2:0]HBM28_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWREADY" *) output [0:0]HBM28_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWSIZE" *) input [2:0]HBM28_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWUSER" *) input [10:0]HBM28_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWVALID" *) input [0:0]HBM28_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BID" *) output [6:0]HBM28_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BREADY" *) input [0:0]HBM28_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BRESP" *) output [1:0]HBM28_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BUSER" *) output [15:0]HBM28_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BVALID" *) output [0:0]HBM28_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RDATA" *) output [255:0]HBM28_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RID" *) output [6:0]HBM28_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RLAST" *) output [0:0]HBM28_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RREADY" *) input [0:0]HBM28_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RRESP" *) output [1:0]HBM28_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RVALID" *) output [0:0]HBM28_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WDATA" *) input [255:0]HBM28_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WLAST" *) input [0:0]HBM28_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WREADY" *) output [0:0]HBM28_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WSTRB" *) input [31:0]HBM28_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WVALID" *) input [0:0]HBM28_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM29_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM14_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM29_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARBURST" *) input [1:0]HBM29_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARCACHE" *) input [3:0]HBM29_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARID" *) input [6:0]HBM29_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARLEN" *) input [7:0]HBM29_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARLOCK" *) input [0:0]HBM29_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARPROT" *) input [2:0]HBM29_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARREADY" *) output [0:0]HBM29_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARSIZE" *) input [2:0]HBM29_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARUSER" *) input [10:0]HBM29_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARVALID" *) input [0:0]HBM29_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWADDR" *) input [63:0]HBM29_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWBURST" *) input [1:0]HBM29_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWCACHE" *) input [3:0]HBM29_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWID" *) input [6:0]HBM29_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWLEN" *) input [7:0]HBM29_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWLOCK" *) input [0:0]HBM29_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWPROT" *) input [2:0]HBM29_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWREADY" *) output [0:0]HBM29_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWSIZE" *) input [2:0]HBM29_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWUSER" *) input [10:0]HBM29_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWVALID" *) input [0:0]HBM29_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BID" *) output [6:0]HBM29_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BREADY" *) input [0:0]HBM29_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BRESP" *) output [1:0]HBM29_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BUSER" *) output [15:0]HBM29_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BVALID" *) output [0:0]HBM29_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RDATA" *) output [255:0]HBM29_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RID" *) output [6:0]HBM29_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RLAST" *) output [0:0]HBM29_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RREADY" *) input [0:0]HBM29_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RRESP" *) output [1:0]HBM29_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RVALID" *) output [0:0]HBM29_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WDATA" *) input [255:0]HBM29_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WLAST" *) input [0:0]HBM29_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WREADY" *) output [0:0]HBM29_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WSTRB" *) input [31:0]HBM29_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WVALID" *) input [0:0]HBM29_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM30_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM15_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM30_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARBURST" *) input [1:0]HBM30_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARCACHE" *) input [3:0]HBM30_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARID" *) input [6:0]HBM30_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARLEN" *) input [7:0]HBM30_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARLOCK" *) input [0:0]HBM30_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARPROT" *) input [2:0]HBM30_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARREADY" *) output [0:0]HBM30_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARSIZE" *) input [2:0]HBM30_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARUSER" *) input [10:0]HBM30_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARVALID" *) input [0:0]HBM30_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWADDR" *) input [63:0]HBM30_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWBURST" *) input [1:0]HBM30_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWCACHE" *) input [3:0]HBM30_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWID" *) input [6:0]HBM30_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWLEN" *) input [7:0]HBM30_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWLOCK" *) input [0:0]HBM30_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWPROT" *) input [2:0]HBM30_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWREADY" *) output [0:0]HBM30_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWSIZE" *) input [2:0]HBM30_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWUSER" *) input [10:0]HBM30_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWVALID" *) input [0:0]HBM30_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BID" *) output [6:0]HBM30_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BREADY" *) input [0:0]HBM30_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BRESP" *) output [1:0]HBM30_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BUSER" *) output [15:0]HBM30_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BVALID" *) output [0:0]HBM30_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RDATA" *) output [255:0]HBM30_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RID" *) output [6:0]HBM30_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RLAST" *) output [0:0]HBM30_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RREADY" *) input [0:0]HBM30_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RRESP" *) output [1:0]HBM30_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RVALID" *) output [0:0]HBM30_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WDATA" *) input [255:0]HBM30_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WLAST" *) input [0:0]HBM30_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WREADY" *) output [0:0]HBM30_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WSTRB" *) input [31:0]HBM30_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WVALID" *) input [0:0]HBM30_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM31_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 11, AWUSER_WIDTH 11, BUSER_WIDTH 16, CATEGORY pl_hbm, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, CONNECTIONS HBM15_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 256, FREQ_HZ 49999500, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]HBM31_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARBURST" *) input [1:0]HBM31_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARCACHE" *) input [3:0]HBM31_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARID" *) input [6:0]HBM31_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARLEN" *) input [7:0]HBM31_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARLOCK" *) input [0:0]HBM31_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARPROT" *) input [2:0]HBM31_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARREADY" *) output [0:0]HBM31_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARSIZE" *) input [2:0]HBM31_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARUSER" *) input [10:0]HBM31_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARVALID" *) input [0:0]HBM31_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWADDR" *) input [63:0]HBM31_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWBURST" *) input [1:0]HBM31_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWCACHE" *) input [3:0]HBM31_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWID" *) input [6:0]HBM31_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWLEN" *) input [7:0]HBM31_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWLOCK" *) input [0:0]HBM31_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWPROT" *) input [2:0]HBM31_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWREADY" *) output [0:0]HBM31_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWSIZE" *) input [2:0]HBM31_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWUSER" *) input [10:0]HBM31_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWVALID" *) input [0:0]HBM31_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BID" *) output [6:0]HBM31_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BREADY" *) input [0:0]HBM31_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BRESP" *) output [1:0]HBM31_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BUSER" *) output [15:0]HBM31_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BVALID" *) output [0:0]HBM31_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RDATA" *) output [255:0]HBM31_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RID" *) output [6:0]HBM31_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RLAST" *) output [0:0]HBM31_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RREADY" *) input [0:0]HBM31_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RRESP" *) output [1:0]HBM31_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RVALID" *) output [0:0]HBM31_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WDATA" *) input [255:0]HBM31_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WLAST" *) input [0:0]HBM31_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WREADY" *) output [0:0]HBM31_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WSTRB" *) input [31:0]HBM31_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WVALID" *) input [0:0]HBM31_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 64, APERTURES {0x201_0000_0000 1G}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 512, FREQ_HZ 249997498, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [1:0]M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [17:0]M00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [63:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [1:0]M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [17:0]M00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [1:0]M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [511:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [1:0]M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output [0:0]M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [511:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [63:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, ADDR_WIDTH 64, APERTURES {0x201_4000_0000 1G}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 249997498, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *) output [1:0]M01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *) output [3:0]M01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *) output [1:0]M01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *) output [7:0]M01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *) output [0:0]M01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *) output [2:0]M01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *) output [3:0]M01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *) input [0:0]M01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREGION" *) output [3:0]M01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *) output [2:0]M01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARUSER" *) output [17:0]M01_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *) output [0:0]M01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *) output [63:0]M01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *) output [1:0]M01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *) output [3:0]M01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *) output [1:0]M01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *) output [7:0]M01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *) output [0:0]M01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *) output [2:0]M01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *) output [3:0]M01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *) input [0:0]M01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREGION" *) output [3:0]M01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *) output [2:0]M01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWUSER" *) output [17:0]M01_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *) output [0:0]M01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *) input [1:0]M01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *) output [0:0]M01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *) input [1:0]M01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *) input [0:0]M01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *) input [31:0]M01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *) input [1:0]M01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *) input [0:0]M01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *) output [0:0]M01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *) input [1:0]M01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *) input [0:0]M01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *) output [31:0]M01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *) output [0:0]M01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *) input [0:0]M01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *) output [3:0]M01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *) output [0:0]M01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI, ADDR_WIDTH 64, APERTURES {0x201_8000_0000 1G}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 249997498, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARBURST" *) output [1:0]M02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARCACHE" *) output [3:0]M02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARID" *) output [1:0]M02_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARLEN" *) output [7:0]M02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARLOCK" *) output [0:0]M02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT" *) output [2:0]M02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARQOS" *) output [3:0]M02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY" *) input [0:0]M02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREGION" *) output [3:0]M02_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARSIZE" *) output [2:0]M02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARUSER" *) output [17:0]M02_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID" *) output [0:0]M02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR" *) output [63:0]M02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWBURST" *) output [1:0]M02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWCACHE" *) output [3:0]M02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWID" *) output [1:0]M02_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWLEN" *) output [7:0]M02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWLOCK" *) output [0:0]M02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT" *) output [2:0]M02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWQOS" *) output [3:0]M02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY" *) input [0:0]M02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREGION" *) output [3:0]M02_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWSIZE" *) output [2:0]M02_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWUSER" *) output [17:0]M02_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID" *) output [0:0]M02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BID" *) input [1:0]M02_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BREADY" *) output [0:0]M02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BRESP" *) input [1:0]M02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BVALID" *) input [0:0]M02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RDATA" *) input [31:0]M02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RID" *) input [1:0]M02_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RLAST" *) input [0:0]M02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RREADY" *) output [0:0]M02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RRESP" *) input [1:0]M02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RVALID" *) input [0:0]M02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WDATA" *) output [31:0]M02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WLAST" *) output [0:0]M02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WREADY" *) input [0:0]M02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB" *) output [3:0]M02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WVALID" *) output [0:0]M02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M03_AXI, ADDR_WIDTH 64, APERTURES {0x202_0000_0000 1G}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 249997498, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M03_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARBURST" *) output [1:0]M03_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARCACHE" *) output [3:0]M03_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARID" *) output [1:0]M03_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARLEN" *) output [7:0]M03_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARLOCK" *) output [0:0]M03_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARPROT" *) output [2:0]M03_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARQOS" *) output [3:0]M03_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARREADY" *) input [0:0]M03_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARREGION" *) output [3:0]M03_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARSIZE" *) output [2:0]M03_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARUSER" *) output [17:0]M03_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARVALID" *) output [0:0]M03_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWADDR" *) output [63:0]M03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWBURST" *) output [1:0]M03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWCACHE" *) output [3:0]M03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWID" *) output [1:0]M03_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWLEN" *) output [7:0]M03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWLOCK" *) output [0:0]M03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWPROT" *) output [2:0]M03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWQOS" *) output [3:0]M03_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWREADY" *) input [0:0]M03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWREGION" *) output [3:0]M03_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWSIZE" *) output [2:0]M03_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWUSER" *) output [17:0]M03_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWVALID" *) output [0:0]M03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BID" *) input [1:0]M03_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BREADY" *) output [0:0]M03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BRESP" *) input [1:0]M03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BVALID" *) input [0:0]M03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RDATA" *) input [31:0]M03_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RID" *) input [1:0]M03_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RLAST" *) input [0:0]M03_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RREADY" *) output [0:0]M03_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RRESP" *) input [1:0]M03_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RVALID" *) input [0:0]M03_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WDATA" *) output [31:0]M03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WLAST" *) output [0:0]M03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WREADY" *) input [0:0]M03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WSTRB" *) output [3:0]M03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WVALID" *) output [0:0]M03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_pcie, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi0_clk, CONNECTIONS HBM10_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM15_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M01_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM10_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM5_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM15_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM5_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM1_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM1_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM6_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM12_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM0_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM6_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM14_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM12_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M02_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM0_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM8_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM8_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM14_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM3_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM3_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM4_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M03_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM4_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} MC_0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM9_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM2_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM11_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM9_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM11_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM7_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM13_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM7_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM13_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM2_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M00_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 128, DEST_IDS M01_AXI:0x80:M02_AXI:0xc0:M03_AXI:0x40:M00_AXI:0x100, FREQ_HZ 1000000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [15:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *) input [17:0]S00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [63:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [15:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *) input [17:0]S00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [15:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [127:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [15:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *) output [16:0]S00_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [127:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [15:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *) input [16:0]S00_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_pcie, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi1_clk, CONNECTIONS HBM10_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM15_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M01_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM10_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM5_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM15_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM5_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM1_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM1_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM6_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM12_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM0_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM6_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM14_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM12_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M02_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM0_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM8_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM8_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM14_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM3_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM3_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM4_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M03_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM4_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} MC_0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM9_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM2_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM11_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM9_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM11_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM7_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM13_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM7_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM13_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM2_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M00_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}}, DATA_WIDTH 128, DEST_IDS M01_AXI:0x80:M02_AXI:0xc0:M03_AXI:0x40:M00_AXI:0x100, FREQ_HZ 1000000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *) input [15:0]S01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output [0:0]S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *) input [3:0]S01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *) input [2:0]S01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARUSER" *) input [17:0]S01_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input [0:0]S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [63:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *) input [15:0]S01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output [0:0]S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *) input [3:0]S01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *) input [2:0]S01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWUSER" *) input [17:0]S01_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input [0:0]S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *) output [15:0]S01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input [0:0]S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output [0:0]S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [127:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *) output [15:0]S01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output [0:0]S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) input [0:0]S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RUSER" *) output [16:0]S01_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output [0:0]S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [127:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input [0:0]S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output [0:0]S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [15:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WUSER" *) input [16:0]S01_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input [0:0]S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK0, ASSOCIATED_BUSIF S00_AXI, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi0_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF S01_AXI, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi1_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK2, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK3 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK3, ASSOCIATED_BUSIF HBM00_AXI:HBM01_AXI:HBM02_AXI:HBM03_AXI:HBM04_AXI:HBM05_AXI:HBM06_AXI:HBM07_AXI:HBM08_AXI:HBM09_AXI:HBM10_AXI:HBM11_AXI:HBM12_AXI:HBM13_AXI:HBM14_AXI:HBM15_AXI:HBM16_AXI:HBM17_AXI:HBM18_AXI:HBM19_AXI:HBM20_AXI:HBM21_AXI:HBM22_AXI:HBM23_AXI:HBM24_AXI:HBM25_AXI:HBM26_AXI:HBM27_AXI:HBM28_AXI:HBM29_AXI:HBM30_AXI:HBM31_AXI, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, FREQ_HZ 49999500, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk0, CAN_DEBUG false, FREQ_HZ 200000000" *) input [0:0]sys_clk0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_P" *) input [0:0]sys_clk0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk1 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk1, CAN_DEBUG false, FREQ_HZ 200000000" *) input [0:0]sys_clk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk1 CLK_P" *) input [0:0]sys_clk1_clk_p;

  wire \^CH0_DDR4_0_act_n ;
  wire [16:0]CH0_DDR4_0_adr;
  wire [0:0]CH0_DDR4_0_alert_n;
  wire [1:0]CH0_DDR4_0_ba;
  wire [1:0]CH0_DDR4_0_bg;
  wire [0:0]CH0_DDR4_0_ck_c;
  wire [0:0]CH0_DDR4_0_ck_t;
  wire [0:0]CH0_DDR4_0_cke;
  wire [0:0]CH0_DDR4_0_cs_n;
  wire [71:0]CH0_DDR4_0_dq;
  wire [8:0]CH0_DDR4_0_dqs_c;
  wire [8:0]CH0_DDR4_0_dqs_t;
  wire [0:0]CH0_DDR4_0_odt;
  wire \^CH0_DDR4_0_par ;
  wire \^CH0_DDR4_0_reset_n ;
  wire \^CH0_DDR4_1_act_n ;
  wire [16:0]CH0_DDR4_1_adr;
  wire [0:0]CH0_DDR4_1_alert_n;
  wire [1:0]CH0_DDR4_1_ba;
  wire [1:0]CH0_DDR4_1_bg;
  wire [0:0]CH0_DDR4_1_ck_c;
  wire [0:0]CH0_DDR4_1_ck_t;
  wire [0:0]CH0_DDR4_1_cke;
  wire [0:0]CH0_DDR4_1_cs_n;
  wire [71:0]CH0_DDR4_1_dq;
  wire [8:0]CH0_DDR4_1_dqs_c;
  wire [8:0]CH0_DDR4_1_dqs_t;
  wire [0:0]CH0_DDR4_1_odt;
  wire \^CH0_DDR4_1_par ;
  wire \^CH0_DDR4_1_reset_n ;
  wire [63:0]HBM00_AXI_araddr;
  wire [1:0]HBM00_AXI_arburst;
  wire [3:0]HBM00_AXI_arcache;
  wire [6:0]HBM00_AXI_arid;
  wire [7:0]HBM00_AXI_arlen;
  wire [0:0]HBM00_AXI_arlock;
  wire [2:0]HBM00_AXI_arprot;
  wire \^HBM00_AXI_arready ;
  wire [2:0]HBM00_AXI_arsize;
  wire [10:0]HBM00_AXI_aruser;
  wire [0:0]HBM00_AXI_arvalid;
  wire [63:0]HBM00_AXI_awaddr;
  wire [1:0]HBM00_AXI_awburst;
  wire [3:0]HBM00_AXI_awcache;
  wire [6:0]HBM00_AXI_awid;
  wire [7:0]HBM00_AXI_awlen;
  wire [0:0]HBM00_AXI_awlock;
  wire [2:0]HBM00_AXI_awprot;
  wire \^HBM00_AXI_awready ;
  wire [2:0]HBM00_AXI_awsize;
  wire [10:0]HBM00_AXI_awuser;
  wire [0:0]HBM00_AXI_awvalid;
  wire [6:0]HBM00_AXI_bid;
  wire [0:0]HBM00_AXI_bready;
  wire [1:0]HBM00_AXI_bresp;
  wire [15:0]HBM00_AXI_buser;
  wire \^HBM00_AXI_bvalid ;
  wire [255:0]HBM00_AXI_rdata;
  wire [6:0]HBM00_AXI_rid;
  wire [0:0]HBM00_AXI_rlast;
  wire [0:0]HBM00_AXI_rready;
  wire [1:0]HBM00_AXI_rresp;
  wire \^HBM00_AXI_rvalid ;
  wire [255:0]HBM00_AXI_wdata;
  wire [0:0]HBM00_AXI_wlast;
  wire \^HBM00_AXI_wready ;
  wire [31:0]HBM00_AXI_wstrb;
  wire [0:0]HBM00_AXI_wvalid;
  wire [63:0]HBM01_AXI_araddr;
  wire [1:0]HBM01_AXI_arburst;
  wire [3:0]HBM01_AXI_arcache;
  wire [6:0]HBM01_AXI_arid;
  wire [7:0]HBM01_AXI_arlen;
  wire [0:0]HBM01_AXI_arlock;
  wire [2:0]HBM01_AXI_arprot;
  wire \^HBM01_AXI_arready ;
  wire [2:0]HBM01_AXI_arsize;
  wire [10:0]HBM01_AXI_aruser;
  wire [0:0]HBM01_AXI_arvalid;
  wire [63:0]HBM01_AXI_awaddr;
  wire [1:0]HBM01_AXI_awburst;
  wire [3:0]HBM01_AXI_awcache;
  wire [6:0]HBM01_AXI_awid;
  wire [7:0]HBM01_AXI_awlen;
  wire [0:0]HBM01_AXI_awlock;
  wire [2:0]HBM01_AXI_awprot;
  wire \^HBM01_AXI_awready ;
  wire [2:0]HBM01_AXI_awsize;
  wire [10:0]HBM01_AXI_awuser;
  wire [0:0]HBM01_AXI_awvalid;
  wire [6:0]HBM01_AXI_bid;
  wire [0:0]HBM01_AXI_bready;
  wire [1:0]HBM01_AXI_bresp;
  wire [15:0]HBM01_AXI_buser;
  wire \^HBM01_AXI_bvalid ;
  wire [255:0]HBM01_AXI_rdata;
  wire [6:0]HBM01_AXI_rid;
  wire [0:0]HBM01_AXI_rlast;
  wire [0:0]HBM01_AXI_rready;
  wire [1:0]HBM01_AXI_rresp;
  wire \^HBM01_AXI_rvalid ;
  wire [255:0]HBM01_AXI_wdata;
  wire [0:0]HBM01_AXI_wlast;
  wire \^HBM01_AXI_wready ;
  wire [31:0]HBM01_AXI_wstrb;
  wire [0:0]HBM01_AXI_wvalid;
  wire [63:0]HBM02_AXI_araddr;
  wire [1:0]HBM02_AXI_arburst;
  wire [3:0]HBM02_AXI_arcache;
  wire [6:0]HBM02_AXI_arid;
  wire [7:0]HBM02_AXI_arlen;
  wire [0:0]HBM02_AXI_arlock;
  wire [2:0]HBM02_AXI_arprot;
  wire \^HBM02_AXI_arready ;
  wire [2:0]HBM02_AXI_arsize;
  wire [10:0]HBM02_AXI_aruser;
  wire [0:0]HBM02_AXI_arvalid;
  wire [63:0]HBM02_AXI_awaddr;
  wire [1:0]HBM02_AXI_awburst;
  wire [3:0]HBM02_AXI_awcache;
  wire [6:0]HBM02_AXI_awid;
  wire [7:0]HBM02_AXI_awlen;
  wire [0:0]HBM02_AXI_awlock;
  wire [2:0]HBM02_AXI_awprot;
  wire \^HBM02_AXI_awready ;
  wire [2:0]HBM02_AXI_awsize;
  wire [10:0]HBM02_AXI_awuser;
  wire [0:0]HBM02_AXI_awvalid;
  wire [6:0]HBM02_AXI_bid;
  wire [0:0]HBM02_AXI_bready;
  wire [1:0]HBM02_AXI_bresp;
  wire [15:0]HBM02_AXI_buser;
  wire \^HBM02_AXI_bvalid ;
  wire [255:0]HBM02_AXI_rdata;
  wire [6:0]HBM02_AXI_rid;
  wire [0:0]HBM02_AXI_rlast;
  wire [0:0]HBM02_AXI_rready;
  wire [1:0]HBM02_AXI_rresp;
  wire \^HBM02_AXI_rvalid ;
  wire [255:0]HBM02_AXI_wdata;
  wire [0:0]HBM02_AXI_wlast;
  wire \^HBM02_AXI_wready ;
  wire [31:0]HBM02_AXI_wstrb;
  wire [0:0]HBM02_AXI_wvalid;
  wire [63:0]HBM03_AXI_araddr;
  wire [1:0]HBM03_AXI_arburst;
  wire [3:0]HBM03_AXI_arcache;
  wire [6:0]HBM03_AXI_arid;
  wire [7:0]HBM03_AXI_arlen;
  wire [0:0]HBM03_AXI_arlock;
  wire [2:0]HBM03_AXI_arprot;
  wire \^HBM03_AXI_arready ;
  wire [2:0]HBM03_AXI_arsize;
  wire [10:0]HBM03_AXI_aruser;
  wire [0:0]HBM03_AXI_arvalid;
  wire [63:0]HBM03_AXI_awaddr;
  wire [1:0]HBM03_AXI_awburst;
  wire [3:0]HBM03_AXI_awcache;
  wire [6:0]HBM03_AXI_awid;
  wire [7:0]HBM03_AXI_awlen;
  wire [0:0]HBM03_AXI_awlock;
  wire [2:0]HBM03_AXI_awprot;
  wire \^HBM03_AXI_awready ;
  wire [2:0]HBM03_AXI_awsize;
  wire [10:0]HBM03_AXI_awuser;
  wire [0:0]HBM03_AXI_awvalid;
  wire [6:0]HBM03_AXI_bid;
  wire [0:0]HBM03_AXI_bready;
  wire [1:0]HBM03_AXI_bresp;
  wire [15:0]HBM03_AXI_buser;
  wire \^HBM03_AXI_bvalid ;
  wire [255:0]HBM03_AXI_rdata;
  wire [6:0]HBM03_AXI_rid;
  wire [0:0]HBM03_AXI_rlast;
  wire [0:0]HBM03_AXI_rready;
  wire [1:0]HBM03_AXI_rresp;
  wire \^HBM03_AXI_rvalid ;
  wire [255:0]HBM03_AXI_wdata;
  wire [0:0]HBM03_AXI_wlast;
  wire \^HBM03_AXI_wready ;
  wire [31:0]HBM03_AXI_wstrb;
  wire [0:0]HBM03_AXI_wvalid;
  wire [63:0]HBM04_AXI_araddr;
  wire [1:0]HBM04_AXI_arburst;
  wire [3:0]HBM04_AXI_arcache;
  wire [6:0]HBM04_AXI_arid;
  wire [7:0]HBM04_AXI_arlen;
  wire [0:0]HBM04_AXI_arlock;
  wire [2:0]HBM04_AXI_arprot;
  wire \^HBM04_AXI_arready ;
  wire [2:0]HBM04_AXI_arsize;
  wire [10:0]HBM04_AXI_aruser;
  wire [0:0]HBM04_AXI_arvalid;
  wire [63:0]HBM04_AXI_awaddr;
  wire [1:0]HBM04_AXI_awburst;
  wire [3:0]HBM04_AXI_awcache;
  wire [6:0]HBM04_AXI_awid;
  wire [7:0]HBM04_AXI_awlen;
  wire [0:0]HBM04_AXI_awlock;
  wire [2:0]HBM04_AXI_awprot;
  wire \^HBM04_AXI_awready ;
  wire [2:0]HBM04_AXI_awsize;
  wire [10:0]HBM04_AXI_awuser;
  wire [0:0]HBM04_AXI_awvalid;
  wire [6:0]HBM04_AXI_bid;
  wire [0:0]HBM04_AXI_bready;
  wire [1:0]HBM04_AXI_bresp;
  wire [15:0]HBM04_AXI_buser;
  wire \^HBM04_AXI_bvalid ;
  wire [255:0]HBM04_AXI_rdata;
  wire [6:0]HBM04_AXI_rid;
  wire [0:0]HBM04_AXI_rlast;
  wire [0:0]HBM04_AXI_rready;
  wire [1:0]HBM04_AXI_rresp;
  wire \^HBM04_AXI_rvalid ;
  wire [255:0]HBM04_AXI_wdata;
  wire [0:0]HBM04_AXI_wlast;
  wire \^HBM04_AXI_wready ;
  wire [31:0]HBM04_AXI_wstrb;
  wire [0:0]HBM04_AXI_wvalid;
  wire [63:0]HBM05_AXI_araddr;
  wire [1:0]HBM05_AXI_arburst;
  wire [3:0]HBM05_AXI_arcache;
  wire [6:0]HBM05_AXI_arid;
  wire [7:0]HBM05_AXI_arlen;
  wire [0:0]HBM05_AXI_arlock;
  wire [2:0]HBM05_AXI_arprot;
  wire \^HBM05_AXI_arready ;
  wire [2:0]HBM05_AXI_arsize;
  wire [10:0]HBM05_AXI_aruser;
  wire [0:0]HBM05_AXI_arvalid;
  wire [63:0]HBM05_AXI_awaddr;
  wire [1:0]HBM05_AXI_awburst;
  wire [3:0]HBM05_AXI_awcache;
  wire [6:0]HBM05_AXI_awid;
  wire [7:0]HBM05_AXI_awlen;
  wire [0:0]HBM05_AXI_awlock;
  wire [2:0]HBM05_AXI_awprot;
  wire \^HBM05_AXI_awready ;
  wire [2:0]HBM05_AXI_awsize;
  wire [10:0]HBM05_AXI_awuser;
  wire [0:0]HBM05_AXI_awvalid;
  wire [6:0]HBM05_AXI_bid;
  wire [0:0]HBM05_AXI_bready;
  wire [1:0]HBM05_AXI_bresp;
  wire [15:0]HBM05_AXI_buser;
  wire \^HBM05_AXI_bvalid ;
  wire [255:0]HBM05_AXI_rdata;
  wire [6:0]HBM05_AXI_rid;
  wire [0:0]HBM05_AXI_rlast;
  wire [0:0]HBM05_AXI_rready;
  wire [1:0]HBM05_AXI_rresp;
  wire \^HBM05_AXI_rvalid ;
  wire [255:0]HBM05_AXI_wdata;
  wire [0:0]HBM05_AXI_wlast;
  wire \^HBM05_AXI_wready ;
  wire [31:0]HBM05_AXI_wstrb;
  wire [0:0]HBM05_AXI_wvalid;
  wire [63:0]HBM06_AXI_araddr;
  wire [1:0]HBM06_AXI_arburst;
  wire [3:0]HBM06_AXI_arcache;
  wire [6:0]HBM06_AXI_arid;
  wire [7:0]HBM06_AXI_arlen;
  wire [0:0]HBM06_AXI_arlock;
  wire [2:0]HBM06_AXI_arprot;
  wire \^HBM06_AXI_arready ;
  wire [2:0]HBM06_AXI_arsize;
  wire [10:0]HBM06_AXI_aruser;
  wire [0:0]HBM06_AXI_arvalid;
  wire [63:0]HBM06_AXI_awaddr;
  wire [1:0]HBM06_AXI_awburst;
  wire [3:0]HBM06_AXI_awcache;
  wire [6:0]HBM06_AXI_awid;
  wire [7:0]HBM06_AXI_awlen;
  wire [0:0]HBM06_AXI_awlock;
  wire [2:0]HBM06_AXI_awprot;
  wire \^HBM06_AXI_awready ;
  wire [2:0]HBM06_AXI_awsize;
  wire [10:0]HBM06_AXI_awuser;
  wire [0:0]HBM06_AXI_awvalid;
  wire [6:0]HBM06_AXI_bid;
  wire [0:0]HBM06_AXI_bready;
  wire [1:0]HBM06_AXI_bresp;
  wire [15:0]HBM06_AXI_buser;
  wire \^HBM06_AXI_bvalid ;
  wire [255:0]HBM06_AXI_rdata;
  wire [6:0]HBM06_AXI_rid;
  wire [0:0]HBM06_AXI_rlast;
  wire [0:0]HBM06_AXI_rready;
  wire [1:0]HBM06_AXI_rresp;
  wire \^HBM06_AXI_rvalid ;
  wire [255:0]HBM06_AXI_wdata;
  wire [0:0]HBM06_AXI_wlast;
  wire \^HBM06_AXI_wready ;
  wire [31:0]HBM06_AXI_wstrb;
  wire [0:0]HBM06_AXI_wvalid;
  wire [63:0]HBM07_AXI_araddr;
  wire [1:0]HBM07_AXI_arburst;
  wire [3:0]HBM07_AXI_arcache;
  wire [6:0]HBM07_AXI_arid;
  wire [7:0]HBM07_AXI_arlen;
  wire [0:0]HBM07_AXI_arlock;
  wire [2:0]HBM07_AXI_arprot;
  wire \^HBM07_AXI_arready ;
  wire [2:0]HBM07_AXI_arsize;
  wire [10:0]HBM07_AXI_aruser;
  wire [0:0]HBM07_AXI_arvalid;
  wire [63:0]HBM07_AXI_awaddr;
  wire [1:0]HBM07_AXI_awburst;
  wire [3:0]HBM07_AXI_awcache;
  wire [6:0]HBM07_AXI_awid;
  wire [7:0]HBM07_AXI_awlen;
  wire [0:0]HBM07_AXI_awlock;
  wire [2:0]HBM07_AXI_awprot;
  wire \^HBM07_AXI_awready ;
  wire [2:0]HBM07_AXI_awsize;
  wire [10:0]HBM07_AXI_awuser;
  wire [0:0]HBM07_AXI_awvalid;
  wire [6:0]HBM07_AXI_bid;
  wire [0:0]HBM07_AXI_bready;
  wire [1:0]HBM07_AXI_bresp;
  wire [15:0]HBM07_AXI_buser;
  wire \^HBM07_AXI_bvalid ;
  wire [255:0]HBM07_AXI_rdata;
  wire [6:0]HBM07_AXI_rid;
  wire [0:0]HBM07_AXI_rlast;
  wire [0:0]HBM07_AXI_rready;
  wire [1:0]HBM07_AXI_rresp;
  wire \^HBM07_AXI_rvalid ;
  wire [255:0]HBM07_AXI_wdata;
  wire [0:0]HBM07_AXI_wlast;
  wire \^HBM07_AXI_wready ;
  wire [31:0]HBM07_AXI_wstrb;
  wire [0:0]HBM07_AXI_wvalid;
  wire [63:0]HBM08_AXI_araddr;
  wire [1:0]HBM08_AXI_arburst;
  wire [3:0]HBM08_AXI_arcache;
  wire [6:0]HBM08_AXI_arid;
  wire [7:0]HBM08_AXI_arlen;
  wire [0:0]HBM08_AXI_arlock;
  wire [2:0]HBM08_AXI_arprot;
  wire \^HBM08_AXI_arready ;
  wire [2:0]HBM08_AXI_arsize;
  wire [10:0]HBM08_AXI_aruser;
  wire [0:0]HBM08_AXI_arvalid;
  wire [63:0]HBM08_AXI_awaddr;
  wire [1:0]HBM08_AXI_awburst;
  wire [3:0]HBM08_AXI_awcache;
  wire [6:0]HBM08_AXI_awid;
  wire [7:0]HBM08_AXI_awlen;
  wire [0:0]HBM08_AXI_awlock;
  wire [2:0]HBM08_AXI_awprot;
  wire \^HBM08_AXI_awready ;
  wire [2:0]HBM08_AXI_awsize;
  wire [10:0]HBM08_AXI_awuser;
  wire [0:0]HBM08_AXI_awvalid;
  wire [6:0]HBM08_AXI_bid;
  wire [0:0]HBM08_AXI_bready;
  wire [1:0]HBM08_AXI_bresp;
  wire [15:0]HBM08_AXI_buser;
  wire \^HBM08_AXI_bvalid ;
  wire [255:0]HBM08_AXI_rdata;
  wire [6:0]HBM08_AXI_rid;
  wire [0:0]HBM08_AXI_rlast;
  wire [0:0]HBM08_AXI_rready;
  wire [1:0]HBM08_AXI_rresp;
  wire \^HBM08_AXI_rvalid ;
  wire [255:0]HBM08_AXI_wdata;
  wire [0:0]HBM08_AXI_wlast;
  wire \^HBM08_AXI_wready ;
  wire [31:0]HBM08_AXI_wstrb;
  wire [0:0]HBM08_AXI_wvalid;
  wire [63:0]HBM09_AXI_araddr;
  wire [1:0]HBM09_AXI_arburst;
  wire [3:0]HBM09_AXI_arcache;
  wire [6:0]HBM09_AXI_arid;
  wire [7:0]HBM09_AXI_arlen;
  wire [0:0]HBM09_AXI_arlock;
  wire [2:0]HBM09_AXI_arprot;
  wire \^HBM09_AXI_arready ;
  wire [2:0]HBM09_AXI_arsize;
  wire [10:0]HBM09_AXI_aruser;
  wire [0:0]HBM09_AXI_arvalid;
  wire [63:0]HBM09_AXI_awaddr;
  wire [1:0]HBM09_AXI_awburst;
  wire [3:0]HBM09_AXI_awcache;
  wire [6:0]HBM09_AXI_awid;
  wire [7:0]HBM09_AXI_awlen;
  wire [0:0]HBM09_AXI_awlock;
  wire [2:0]HBM09_AXI_awprot;
  wire \^HBM09_AXI_awready ;
  wire [2:0]HBM09_AXI_awsize;
  wire [10:0]HBM09_AXI_awuser;
  wire [0:0]HBM09_AXI_awvalid;
  wire [6:0]HBM09_AXI_bid;
  wire [0:0]HBM09_AXI_bready;
  wire [1:0]HBM09_AXI_bresp;
  wire [15:0]HBM09_AXI_buser;
  wire \^HBM09_AXI_bvalid ;
  wire [255:0]HBM09_AXI_rdata;
  wire [6:0]HBM09_AXI_rid;
  wire [0:0]HBM09_AXI_rlast;
  wire [0:0]HBM09_AXI_rready;
  wire [1:0]HBM09_AXI_rresp;
  wire \^HBM09_AXI_rvalid ;
  wire [255:0]HBM09_AXI_wdata;
  wire [0:0]HBM09_AXI_wlast;
  wire \^HBM09_AXI_wready ;
  wire [31:0]HBM09_AXI_wstrb;
  wire [0:0]HBM09_AXI_wvalid;
  wire [63:0]HBM10_AXI_araddr;
  wire [1:0]HBM10_AXI_arburst;
  wire [3:0]HBM10_AXI_arcache;
  wire [6:0]HBM10_AXI_arid;
  wire [7:0]HBM10_AXI_arlen;
  wire [0:0]HBM10_AXI_arlock;
  wire [2:0]HBM10_AXI_arprot;
  wire \^HBM10_AXI_arready ;
  wire [2:0]HBM10_AXI_arsize;
  wire [10:0]HBM10_AXI_aruser;
  wire [0:0]HBM10_AXI_arvalid;
  wire [63:0]HBM10_AXI_awaddr;
  wire [1:0]HBM10_AXI_awburst;
  wire [3:0]HBM10_AXI_awcache;
  wire [6:0]HBM10_AXI_awid;
  wire [7:0]HBM10_AXI_awlen;
  wire [0:0]HBM10_AXI_awlock;
  wire [2:0]HBM10_AXI_awprot;
  wire \^HBM10_AXI_awready ;
  wire [2:0]HBM10_AXI_awsize;
  wire [10:0]HBM10_AXI_awuser;
  wire [0:0]HBM10_AXI_awvalid;
  wire [6:0]HBM10_AXI_bid;
  wire [0:0]HBM10_AXI_bready;
  wire [1:0]HBM10_AXI_bresp;
  wire [15:0]HBM10_AXI_buser;
  wire \^HBM10_AXI_bvalid ;
  wire [255:0]HBM10_AXI_rdata;
  wire [6:0]HBM10_AXI_rid;
  wire [0:0]HBM10_AXI_rlast;
  wire [0:0]HBM10_AXI_rready;
  wire [1:0]HBM10_AXI_rresp;
  wire \^HBM10_AXI_rvalid ;
  wire [255:0]HBM10_AXI_wdata;
  wire [0:0]HBM10_AXI_wlast;
  wire \^HBM10_AXI_wready ;
  wire [31:0]HBM10_AXI_wstrb;
  wire [0:0]HBM10_AXI_wvalid;
  wire [63:0]HBM11_AXI_araddr;
  wire [1:0]HBM11_AXI_arburst;
  wire [3:0]HBM11_AXI_arcache;
  wire [6:0]HBM11_AXI_arid;
  wire [7:0]HBM11_AXI_arlen;
  wire [0:0]HBM11_AXI_arlock;
  wire [2:0]HBM11_AXI_arprot;
  wire \^HBM11_AXI_arready ;
  wire [2:0]HBM11_AXI_arsize;
  wire [10:0]HBM11_AXI_aruser;
  wire [0:0]HBM11_AXI_arvalid;
  wire [63:0]HBM11_AXI_awaddr;
  wire [1:0]HBM11_AXI_awburst;
  wire [3:0]HBM11_AXI_awcache;
  wire [6:0]HBM11_AXI_awid;
  wire [7:0]HBM11_AXI_awlen;
  wire [0:0]HBM11_AXI_awlock;
  wire [2:0]HBM11_AXI_awprot;
  wire \^HBM11_AXI_awready ;
  wire [2:0]HBM11_AXI_awsize;
  wire [10:0]HBM11_AXI_awuser;
  wire [0:0]HBM11_AXI_awvalid;
  wire [6:0]HBM11_AXI_bid;
  wire [0:0]HBM11_AXI_bready;
  wire [1:0]HBM11_AXI_bresp;
  wire [15:0]HBM11_AXI_buser;
  wire \^HBM11_AXI_bvalid ;
  wire [255:0]HBM11_AXI_rdata;
  wire [6:0]HBM11_AXI_rid;
  wire [0:0]HBM11_AXI_rlast;
  wire [0:0]HBM11_AXI_rready;
  wire [1:0]HBM11_AXI_rresp;
  wire \^HBM11_AXI_rvalid ;
  wire [255:0]HBM11_AXI_wdata;
  wire [0:0]HBM11_AXI_wlast;
  wire \^HBM11_AXI_wready ;
  wire [31:0]HBM11_AXI_wstrb;
  wire [0:0]HBM11_AXI_wvalid;
  wire [63:0]HBM12_AXI_araddr;
  wire [1:0]HBM12_AXI_arburst;
  wire [3:0]HBM12_AXI_arcache;
  wire [6:0]HBM12_AXI_arid;
  wire [7:0]HBM12_AXI_arlen;
  wire [0:0]HBM12_AXI_arlock;
  wire [2:0]HBM12_AXI_arprot;
  wire \^HBM12_AXI_arready ;
  wire [2:0]HBM12_AXI_arsize;
  wire [10:0]HBM12_AXI_aruser;
  wire [0:0]HBM12_AXI_arvalid;
  wire [63:0]HBM12_AXI_awaddr;
  wire [1:0]HBM12_AXI_awburst;
  wire [3:0]HBM12_AXI_awcache;
  wire [6:0]HBM12_AXI_awid;
  wire [7:0]HBM12_AXI_awlen;
  wire [0:0]HBM12_AXI_awlock;
  wire [2:0]HBM12_AXI_awprot;
  wire \^HBM12_AXI_awready ;
  wire [2:0]HBM12_AXI_awsize;
  wire [10:0]HBM12_AXI_awuser;
  wire [0:0]HBM12_AXI_awvalid;
  wire [6:0]HBM12_AXI_bid;
  wire [0:0]HBM12_AXI_bready;
  wire [1:0]HBM12_AXI_bresp;
  wire [15:0]HBM12_AXI_buser;
  wire \^HBM12_AXI_bvalid ;
  wire [255:0]HBM12_AXI_rdata;
  wire [6:0]HBM12_AXI_rid;
  wire [0:0]HBM12_AXI_rlast;
  wire [0:0]HBM12_AXI_rready;
  wire [1:0]HBM12_AXI_rresp;
  wire \^HBM12_AXI_rvalid ;
  wire [255:0]HBM12_AXI_wdata;
  wire [0:0]HBM12_AXI_wlast;
  wire \^HBM12_AXI_wready ;
  wire [31:0]HBM12_AXI_wstrb;
  wire [0:0]HBM12_AXI_wvalid;
  wire [63:0]HBM13_AXI_araddr;
  wire [1:0]HBM13_AXI_arburst;
  wire [3:0]HBM13_AXI_arcache;
  wire [6:0]HBM13_AXI_arid;
  wire [7:0]HBM13_AXI_arlen;
  wire [0:0]HBM13_AXI_arlock;
  wire [2:0]HBM13_AXI_arprot;
  wire \^HBM13_AXI_arready ;
  wire [2:0]HBM13_AXI_arsize;
  wire [10:0]HBM13_AXI_aruser;
  wire [0:0]HBM13_AXI_arvalid;
  wire [63:0]HBM13_AXI_awaddr;
  wire [1:0]HBM13_AXI_awburst;
  wire [3:0]HBM13_AXI_awcache;
  wire [6:0]HBM13_AXI_awid;
  wire [7:0]HBM13_AXI_awlen;
  wire [0:0]HBM13_AXI_awlock;
  wire [2:0]HBM13_AXI_awprot;
  wire \^HBM13_AXI_awready ;
  wire [2:0]HBM13_AXI_awsize;
  wire [10:0]HBM13_AXI_awuser;
  wire [0:0]HBM13_AXI_awvalid;
  wire [6:0]HBM13_AXI_bid;
  wire [0:0]HBM13_AXI_bready;
  wire [1:0]HBM13_AXI_bresp;
  wire [15:0]HBM13_AXI_buser;
  wire \^HBM13_AXI_bvalid ;
  wire [255:0]HBM13_AXI_rdata;
  wire [6:0]HBM13_AXI_rid;
  wire [0:0]HBM13_AXI_rlast;
  wire [0:0]HBM13_AXI_rready;
  wire [1:0]HBM13_AXI_rresp;
  wire \^HBM13_AXI_rvalid ;
  wire [255:0]HBM13_AXI_wdata;
  wire [0:0]HBM13_AXI_wlast;
  wire \^HBM13_AXI_wready ;
  wire [31:0]HBM13_AXI_wstrb;
  wire [0:0]HBM13_AXI_wvalid;
  wire [63:0]HBM14_AXI_araddr;
  wire [1:0]HBM14_AXI_arburst;
  wire [3:0]HBM14_AXI_arcache;
  wire [6:0]HBM14_AXI_arid;
  wire [7:0]HBM14_AXI_arlen;
  wire [0:0]HBM14_AXI_arlock;
  wire [2:0]HBM14_AXI_arprot;
  wire \^HBM14_AXI_arready ;
  wire [2:0]HBM14_AXI_arsize;
  wire [10:0]HBM14_AXI_aruser;
  wire [0:0]HBM14_AXI_arvalid;
  wire [63:0]HBM14_AXI_awaddr;
  wire [1:0]HBM14_AXI_awburst;
  wire [3:0]HBM14_AXI_awcache;
  wire [6:0]HBM14_AXI_awid;
  wire [7:0]HBM14_AXI_awlen;
  wire [0:0]HBM14_AXI_awlock;
  wire [2:0]HBM14_AXI_awprot;
  wire \^HBM14_AXI_awready ;
  wire [2:0]HBM14_AXI_awsize;
  wire [10:0]HBM14_AXI_awuser;
  wire [0:0]HBM14_AXI_awvalid;
  wire [6:0]HBM14_AXI_bid;
  wire [0:0]HBM14_AXI_bready;
  wire [1:0]HBM14_AXI_bresp;
  wire [15:0]HBM14_AXI_buser;
  wire \^HBM14_AXI_bvalid ;
  wire [255:0]HBM14_AXI_rdata;
  wire [6:0]HBM14_AXI_rid;
  wire [0:0]HBM14_AXI_rlast;
  wire [0:0]HBM14_AXI_rready;
  wire [1:0]HBM14_AXI_rresp;
  wire \^HBM14_AXI_rvalid ;
  wire [255:0]HBM14_AXI_wdata;
  wire [0:0]HBM14_AXI_wlast;
  wire \^HBM14_AXI_wready ;
  wire [31:0]HBM14_AXI_wstrb;
  wire [0:0]HBM14_AXI_wvalid;
  wire [63:0]HBM15_AXI_araddr;
  wire [1:0]HBM15_AXI_arburst;
  wire [3:0]HBM15_AXI_arcache;
  wire [6:0]HBM15_AXI_arid;
  wire [7:0]HBM15_AXI_arlen;
  wire [0:0]HBM15_AXI_arlock;
  wire [2:0]HBM15_AXI_arprot;
  wire \^HBM15_AXI_arready ;
  wire [2:0]HBM15_AXI_arsize;
  wire [10:0]HBM15_AXI_aruser;
  wire [0:0]HBM15_AXI_arvalid;
  wire [63:0]HBM15_AXI_awaddr;
  wire [1:0]HBM15_AXI_awburst;
  wire [3:0]HBM15_AXI_awcache;
  wire [6:0]HBM15_AXI_awid;
  wire [7:0]HBM15_AXI_awlen;
  wire [0:0]HBM15_AXI_awlock;
  wire [2:0]HBM15_AXI_awprot;
  wire \^HBM15_AXI_awready ;
  wire [2:0]HBM15_AXI_awsize;
  wire [10:0]HBM15_AXI_awuser;
  wire [0:0]HBM15_AXI_awvalid;
  wire [6:0]HBM15_AXI_bid;
  wire [0:0]HBM15_AXI_bready;
  wire [1:0]HBM15_AXI_bresp;
  wire [15:0]HBM15_AXI_buser;
  wire \^HBM15_AXI_bvalid ;
  wire [255:0]HBM15_AXI_rdata;
  wire [6:0]HBM15_AXI_rid;
  wire [0:0]HBM15_AXI_rlast;
  wire [0:0]HBM15_AXI_rready;
  wire [1:0]HBM15_AXI_rresp;
  wire \^HBM15_AXI_rvalid ;
  wire [255:0]HBM15_AXI_wdata;
  wire [0:0]HBM15_AXI_wlast;
  wire \^HBM15_AXI_wready ;
  wire [31:0]HBM15_AXI_wstrb;
  wire [0:0]HBM15_AXI_wvalid;
  wire [63:0]HBM16_AXI_araddr;
  wire [1:0]HBM16_AXI_arburst;
  wire [3:0]HBM16_AXI_arcache;
  wire [6:0]HBM16_AXI_arid;
  wire [7:0]HBM16_AXI_arlen;
  wire [0:0]HBM16_AXI_arlock;
  wire [2:0]HBM16_AXI_arprot;
  wire \^HBM16_AXI_arready ;
  wire [2:0]HBM16_AXI_arsize;
  wire [10:0]HBM16_AXI_aruser;
  wire [0:0]HBM16_AXI_arvalid;
  wire [63:0]HBM16_AXI_awaddr;
  wire [1:0]HBM16_AXI_awburst;
  wire [3:0]HBM16_AXI_awcache;
  wire [6:0]HBM16_AXI_awid;
  wire [7:0]HBM16_AXI_awlen;
  wire [0:0]HBM16_AXI_awlock;
  wire [2:0]HBM16_AXI_awprot;
  wire \^HBM16_AXI_awready ;
  wire [2:0]HBM16_AXI_awsize;
  wire [10:0]HBM16_AXI_awuser;
  wire [0:0]HBM16_AXI_awvalid;
  wire [6:0]HBM16_AXI_bid;
  wire [0:0]HBM16_AXI_bready;
  wire [1:0]HBM16_AXI_bresp;
  wire [15:0]HBM16_AXI_buser;
  wire \^HBM16_AXI_bvalid ;
  wire [255:0]HBM16_AXI_rdata;
  wire [6:0]HBM16_AXI_rid;
  wire [0:0]HBM16_AXI_rlast;
  wire [0:0]HBM16_AXI_rready;
  wire [1:0]HBM16_AXI_rresp;
  wire \^HBM16_AXI_rvalid ;
  wire [255:0]HBM16_AXI_wdata;
  wire [0:0]HBM16_AXI_wlast;
  wire \^HBM16_AXI_wready ;
  wire [31:0]HBM16_AXI_wstrb;
  wire [0:0]HBM16_AXI_wvalid;
  wire [63:0]HBM17_AXI_araddr;
  wire [1:0]HBM17_AXI_arburst;
  wire [3:0]HBM17_AXI_arcache;
  wire [6:0]HBM17_AXI_arid;
  wire [7:0]HBM17_AXI_arlen;
  wire [0:0]HBM17_AXI_arlock;
  wire [2:0]HBM17_AXI_arprot;
  wire \^HBM17_AXI_arready ;
  wire [2:0]HBM17_AXI_arsize;
  wire [10:0]HBM17_AXI_aruser;
  wire [0:0]HBM17_AXI_arvalid;
  wire [63:0]HBM17_AXI_awaddr;
  wire [1:0]HBM17_AXI_awburst;
  wire [3:0]HBM17_AXI_awcache;
  wire [6:0]HBM17_AXI_awid;
  wire [7:0]HBM17_AXI_awlen;
  wire [0:0]HBM17_AXI_awlock;
  wire [2:0]HBM17_AXI_awprot;
  wire \^HBM17_AXI_awready ;
  wire [2:0]HBM17_AXI_awsize;
  wire [10:0]HBM17_AXI_awuser;
  wire [0:0]HBM17_AXI_awvalid;
  wire [6:0]HBM17_AXI_bid;
  wire [0:0]HBM17_AXI_bready;
  wire [1:0]HBM17_AXI_bresp;
  wire [15:0]HBM17_AXI_buser;
  wire \^HBM17_AXI_bvalid ;
  wire [255:0]HBM17_AXI_rdata;
  wire [6:0]HBM17_AXI_rid;
  wire [0:0]HBM17_AXI_rlast;
  wire [0:0]HBM17_AXI_rready;
  wire [1:0]HBM17_AXI_rresp;
  wire \^HBM17_AXI_rvalid ;
  wire [255:0]HBM17_AXI_wdata;
  wire [0:0]HBM17_AXI_wlast;
  wire \^HBM17_AXI_wready ;
  wire [31:0]HBM17_AXI_wstrb;
  wire [0:0]HBM17_AXI_wvalid;
  wire [63:0]HBM18_AXI_araddr;
  wire [1:0]HBM18_AXI_arburst;
  wire [3:0]HBM18_AXI_arcache;
  wire [6:0]HBM18_AXI_arid;
  wire [7:0]HBM18_AXI_arlen;
  wire [0:0]HBM18_AXI_arlock;
  wire [2:0]HBM18_AXI_arprot;
  wire \^HBM18_AXI_arready ;
  wire [2:0]HBM18_AXI_arsize;
  wire [10:0]HBM18_AXI_aruser;
  wire [0:0]HBM18_AXI_arvalid;
  wire [63:0]HBM18_AXI_awaddr;
  wire [1:0]HBM18_AXI_awburst;
  wire [3:0]HBM18_AXI_awcache;
  wire [6:0]HBM18_AXI_awid;
  wire [7:0]HBM18_AXI_awlen;
  wire [0:0]HBM18_AXI_awlock;
  wire [2:0]HBM18_AXI_awprot;
  wire \^HBM18_AXI_awready ;
  wire [2:0]HBM18_AXI_awsize;
  wire [10:0]HBM18_AXI_awuser;
  wire [0:0]HBM18_AXI_awvalid;
  wire [6:0]HBM18_AXI_bid;
  wire [0:0]HBM18_AXI_bready;
  wire [1:0]HBM18_AXI_bresp;
  wire [15:0]HBM18_AXI_buser;
  wire \^HBM18_AXI_bvalid ;
  wire [255:0]HBM18_AXI_rdata;
  wire [6:0]HBM18_AXI_rid;
  wire [0:0]HBM18_AXI_rlast;
  wire [0:0]HBM18_AXI_rready;
  wire [1:0]HBM18_AXI_rresp;
  wire \^HBM18_AXI_rvalid ;
  wire [255:0]HBM18_AXI_wdata;
  wire [0:0]HBM18_AXI_wlast;
  wire \^HBM18_AXI_wready ;
  wire [31:0]HBM18_AXI_wstrb;
  wire [0:0]HBM18_AXI_wvalid;
  wire [63:0]HBM19_AXI_araddr;
  wire [1:0]HBM19_AXI_arburst;
  wire [3:0]HBM19_AXI_arcache;
  wire [6:0]HBM19_AXI_arid;
  wire [7:0]HBM19_AXI_arlen;
  wire [0:0]HBM19_AXI_arlock;
  wire [2:0]HBM19_AXI_arprot;
  wire \^HBM19_AXI_arready ;
  wire [2:0]HBM19_AXI_arsize;
  wire [10:0]HBM19_AXI_aruser;
  wire [0:0]HBM19_AXI_arvalid;
  wire [63:0]HBM19_AXI_awaddr;
  wire [1:0]HBM19_AXI_awburst;
  wire [3:0]HBM19_AXI_awcache;
  wire [6:0]HBM19_AXI_awid;
  wire [7:0]HBM19_AXI_awlen;
  wire [0:0]HBM19_AXI_awlock;
  wire [2:0]HBM19_AXI_awprot;
  wire \^HBM19_AXI_awready ;
  wire [2:0]HBM19_AXI_awsize;
  wire [10:0]HBM19_AXI_awuser;
  wire [0:0]HBM19_AXI_awvalid;
  wire [6:0]HBM19_AXI_bid;
  wire [0:0]HBM19_AXI_bready;
  wire [1:0]HBM19_AXI_bresp;
  wire [15:0]HBM19_AXI_buser;
  wire \^HBM19_AXI_bvalid ;
  wire [255:0]HBM19_AXI_rdata;
  wire [6:0]HBM19_AXI_rid;
  wire [0:0]HBM19_AXI_rlast;
  wire [0:0]HBM19_AXI_rready;
  wire [1:0]HBM19_AXI_rresp;
  wire \^HBM19_AXI_rvalid ;
  wire [255:0]HBM19_AXI_wdata;
  wire [0:0]HBM19_AXI_wlast;
  wire \^HBM19_AXI_wready ;
  wire [31:0]HBM19_AXI_wstrb;
  wire [0:0]HBM19_AXI_wvalid;
  wire [63:0]HBM20_AXI_araddr;
  wire [1:0]HBM20_AXI_arburst;
  wire [3:0]HBM20_AXI_arcache;
  wire [6:0]HBM20_AXI_arid;
  wire [7:0]HBM20_AXI_arlen;
  wire [0:0]HBM20_AXI_arlock;
  wire [2:0]HBM20_AXI_arprot;
  wire \^HBM20_AXI_arready ;
  wire [2:0]HBM20_AXI_arsize;
  wire [10:0]HBM20_AXI_aruser;
  wire [0:0]HBM20_AXI_arvalid;
  wire [63:0]HBM20_AXI_awaddr;
  wire [1:0]HBM20_AXI_awburst;
  wire [3:0]HBM20_AXI_awcache;
  wire [6:0]HBM20_AXI_awid;
  wire [7:0]HBM20_AXI_awlen;
  wire [0:0]HBM20_AXI_awlock;
  wire [2:0]HBM20_AXI_awprot;
  wire \^HBM20_AXI_awready ;
  wire [2:0]HBM20_AXI_awsize;
  wire [10:0]HBM20_AXI_awuser;
  wire [0:0]HBM20_AXI_awvalid;
  wire [6:0]HBM20_AXI_bid;
  wire [0:0]HBM20_AXI_bready;
  wire [1:0]HBM20_AXI_bresp;
  wire [15:0]HBM20_AXI_buser;
  wire \^HBM20_AXI_bvalid ;
  wire [255:0]HBM20_AXI_rdata;
  wire [6:0]HBM20_AXI_rid;
  wire [0:0]HBM20_AXI_rlast;
  wire [0:0]HBM20_AXI_rready;
  wire [1:0]HBM20_AXI_rresp;
  wire \^HBM20_AXI_rvalid ;
  wire [255:0]HBM20_AXI_wdata;
  wire [0:0]HBM20_AXI_wlast;
  wire \^HBM20_AXI_wready ;
  wire [31:0]HBM20_AXI_wstrb;
  wire [0:0]HBM20_AXI_wvalid;
  wire [63:0]HBM21_AXI_araddr;
  wire [1:0]HBM21_AXI_arburst;
  wire [3:0]HBM21_AXI_arcache;
  wire [6:0]HBM21_AXI_arid;
  wire [7:0]HBM21_AXI_arlen;
  wire [0:0]HBM21_AXI_arlock;
  wire [2:0]HBM21_AXI_arprot;
  wire \^HBM21_AXI_arready ;
  wire [2:0]HBM21_AXI_arsize;
  wire [10:0]HBM21_AXI_aruser;
  wire [0:0]HBM21_AXI_arvalid;
  wire [63:0]HBM21_AXI_awaddr;
  wire [1:0]HBM21_AXI_awburst;
  wire [3:0]HBM21_AXI_awcache;
  wire [6:0]HBM21_AXI_awid;
  wire [7:0]HBM21_AXI_awlen;
  wire [0:0]HBM21_AXI_awlock;
  wire [2:0]HBM21_AXI_awprot;
  wire \^HBM21_AXI_awready ;
  wire [2:0]HBM21_AXI_awsize;
  wire [10:0]HBM21_AXI_awuser;
  wire [0:0]HBM21_AXI_awvalid;
  wire [6:0]HBM21_AXI_bid;
  wire [0:0]HBM21_AXI_bready;
  wire [1:0]HBM21_AXI_bresp;
  wire [15:0]HBM21_AXI_buser;
  wire \^HBM21_AXI_bvalid ;
  wire [255:0]HBM21_AXI_rdata;
  wire [6:0]HBM21_AXI_rid;
  wire [0:0]HBM21_AXI_rlast;
  wire [0:0]HBM21_AXI_rready;
  wire [1:0]HBM21_AXI_rresp;
  wire \^HBM21_AXI_rvalid ;
  wire [255:0]HBM21_AXI_wdata;
  wire [0:0]HBM21_AXI_wlast;
  wire \^HBM21_AXI_wready ;
  wire [31:0]HBM21_AXI_wstrb;
  wire [0:0]HBM21_AXI_wvalid;
  wire [63:0]HBM22_AXI_araddr;
  wire [1:0]HBM22_AXI_arburst;
  wire [3:0]HBM22_AXI_arcache;
  wire [6:0]HBM22_AXI_arid;
  wire [7:0]HBM22_AXI_arlen;
  wire [0:0]HBM22_AXI_arlock;
  wire [2:0]HBM22_AXI_arprot;
  wire \^HBM22_AXI_arready ;
  wire [2:0]HBM22_AXI_arsize;
  wire [10:0]HBM22_AXI_aruser;
  wire [0:0]HBM22_AXI_arvalid;
  wire [63:0]HBM22_AXI_awaddr;
  wire [1:0]HBM22_AXI_awburst;
  wire [3:0]HBM22_AXI_awcache;
  wire [6:0]HBM22_AXI_awid;
  wire [7:0]HBM22_AXI_awlen;
  wire [0:0]HBM22_AXI_awlock;
  wire [2:0]HBM22_AXI_awprot;
  wire \^HBM22_AXI_awready ;
  wire [2:0]HBM22_AXI_awsize;
  wire [10:0]HBM22_AXI_awuser;
  wire [0:0]HBM22_AXI_awvalid;
  wire [6:0]HBM22_AXI_bid;
  wire [0:0]HBM22_AXI_bready;
  wire [1:0]HBM22_AXI_bresp;
  wire [15:0]HBM22_AXI_buser;
  wire \^HBM22_AXI_bvalid ;
  wire [255:0]HBM22_AXI_rdata;
  wire [6:0]HBM22_AXI_rid;
  wire [0:0]HBM22_AXI_rlast;
  wire [0:0]HBM22_AXI_rready;
  wire [1:0]HBM22_AXI_rresp;
  wire \^HBM22_AXI_rvalid ;
  wire [255:0]HBM22_AXI_wdata;
  wire [0:0]HBM22_AXI_wlast;
  wire \^HBM22_AXI_wready ;
  wire [31:0]HBM22_AXI_wstrb;
  wire [0:0]HBM22_AXI_wvalid;
  wire [63:0]HBM23_AXI_araddr;
  wire [1:0]HBM23_AXI_arburst;
  wire [3:0]HBM23_AXI_arcache;
  wire [6:0]HBM23_AXI_arid;
  wire [7:0]HBM23_AXI_arlen;
  wire [0:0]HBM23_AXI_arlock;
  wire [2:0]HBM23_AXI_arprot;
  wire \^HBM23_AXI_arready ;
  wire [2:0]HBM23_AXI_arsize;
  wire [10:0]HBM23_AXI_aruser;
  wire [0:0]HBM23_AXI_arvalid;
  wire [63:0]HBM23_AXI_awaddr;
  wire [1:0]HBM23_AXI_awburst;
  wire [3:0]HBM23_AXI_awcache;
  wire [6:0]HBM23_AXI_awid;
  wire [7:0]HBM23_AXI_awlen;
  wire [0:0]HBM23_AXI_awlock;
  wire [2:0]HBM23_AXI_awprot;
  wire \^HBM23_AXI_awready ;
  wire [2:0]HBM23_AXI_awsize;
  wire [10:0]HBM23_AXI_awuser;
  wire [0:0]HBM23_AXI_awvalid;
  wire [6:0]HBM23_AXI_bid;
  wire [0:0]HBM23_AXI_bready;
  wire [1:0]HBM23_AXI_bresp;
  wire [15:0]HBM23_AXI_buser;
  wire \^HBM23_AXI_bvalid ;
  wire [255:0]HBM23_AXI_rdata;
  wire [6:0]HBM23_AXI_rid;
  wire [0:0]HBM23_AXI_rlast;
  wire [0:0]HBM23_AXI_rready;
  wire [1:0]HBM23_AXI_rresp;
  wire \^HBM23_AXI_rvalid ;
  wire [255:0]HBM23_AXI_wdata;
  wire [0:0]HBM23_AXI_wlast;
  wire \^HBM23_AXI_wready ;
  wire [31:0]HBM23_AXI_wstrb;
  wire [0:0]HBM23_AXI_wvalid;
  wire [63:0]HBM24_AXI_araddr;
  wire [1:0]HBM24_AXI_arburst;
  wire [3:0]HBM24_AXI_arcache;
  wire [6:0]HBM24_AXI_arid;
  wire [7:0]HBM24_AXI_arlen;
  wire [0:0]HBM24_AXI_arlock;
  wire [2:0]HBM24_AXI_arprot;
  wire \^HBM24_AXI_arready ;
  wire [2:0]HBM24_AXI_arsize;
  wire [10:0]HBM24_AXI_aruser;
  wire [0:0]HBM24_AXI_arvalid;
  wire [63:0]HBM24_AXI_awaddr;
  wire [1:0]HBM24_AXI_awburst;
  wire [3:0]HBM24_AXI_awcache;
  wire [6:0]HBM24_AXI_awid;
  wire [7:0]HBM24_AXI_awlen;
  wire [0:0]HBM24_AXI_awlock;
  wire [2:0]HBM24_AXI_awprot;
  wire \^HBM24_AXI_awready ;
  wire [2:0]HBM24_AXI_awsize;
  wire [10:0]HBM24_AXI_awuser;
  wire [0:0]HBM24_AXI_awvalid;
  wire [6:0]HBM24_AXI_bid;
  wire [0:0]HBM24_AXI_bready;
  wire [1:0]HBM24_AXI_bresp;
  wire [15:0]HBM24_AXI_buser;
  wire \^HBM24_AXI_bvalid ;
  wire [255:0]HBM24_AXI_rdata;
  wire [6:0]HBM24_AXI_rid;
  wire [0:0]HBM24_AXI_rlast;
  wire [0:0]HBM24_AXI_rready;
  wire [1:0]HBM24_AXI_rresp;
  wire \^HBM24_AXI_rvalid ;
  wire [255:0]HBM24_AXI_wdata;
  wire [0:0]HBM24_AXI_wlast;
  wire \^HBM24_AXI_wready ;
  wire [31:0]HBM24_AXI_wstrb;
  wire [0:0]HBM24_AXI_wvalid;
  wire [63:0]HBM25_AXI_araddr;
  wire [1:0]HBM25_AXI_arburst;
  wire [3:0]HBM25_AXI_arcache;
  wire [6:0]HBM25_AXI_arid;
  wire [7:0]HBM25_AXI_arlen;
  wire [0:0]HBM25_AXI_arlock;
  wire [2:0]HBM25_AXI_arprot;
  wire \^HBM25_AXI_arready ;
  wire [2:0]HBM25_AXI_arsize;
  wire [10:0]HBM25_AXI_aruser;
  wire [0:0]HBM25_AXI_arvalid;
  wire [63:0]HBM25_AXI_awaddr;
  wire [1:0]HBM25_AXI_awburst;
  wire [3:0]HBM25_AXI_awcache;
  wire [6:0]HBM25_AXI_awid;
  wire [7:0]HBM25_AXI_awlen;
  wire [0:0]HBM25_AXI_awlock;
  wire [2:0]HBM25_AXI_awprot;
  wire \^HBM25_AXI_awready ;
  wire [2:0]HBM25_AXI_awsize;
  wire [10:0]HBM25_AXI_awuser;
  wire [0:0]HBM25_AXI_awvalid;
  wire [6:0]HBM25_AXI_bid;
  wire [0:0]HBM25_AXI_bready;
  wire [1:0]HBM25_AXI_bresp;
  wire [15:0]HBM25_AXI_buser;
  wire \^HBM25_AXI_bvalid ;
  wire [255:0]HBM25_AXI_rdata;
  wire [6:0]HBM25_AXI_rid;
  wire [0:0]HBM25_AXI_rlast;
  wire [0:0]HBM25_AXI_rready;
  wire [1:0]HBM25_AXI_rresp;
  wire \^HBM25_AXI_rvalid ;
  wire [255:0]HBM25_AXI_wdata;
  wire [0:0]HBM25_AXI_wlast;
  wire \^HBM25_AXI_wready ;
  wire [31:0]HBM25_AXI_wstrb;
  wire [0:0]HBM25_AXI_wvalid;
  wire [63:0]HBM26_AXI_araddr;
  wire [1:0]HBM26_AXI_arburst;
  wire [3:0]HBM26_AXI_arcache;
  wire [6:0]HBM26_AXI_arid;
  wire [7:0]HBM26_AXI_arlen;
  wire [0:0]HBM26_AXI_arlock;
  wire [2:0]HBM26_AXI_arprot;
  wire \^HBM26_AXI_arready ;
  wire [2:0]HBM26_AXI_arsize;
  wire [10:0]HBM26_AXI_aruser;
  wire [0:0]HBM26_AXI_arvalid;
  wire [63:0]HBM26_AXI_awaddr;
  wire [1:0]HBM26_AXI_awburst;
  wire [3:0]HBM26_AXI_awcache;
  wire [6:0]HBM26_AXI_awid;
  wire [7:0]HBM26_AXI_awlen;
  wire [0:0]HBM26_AXI_awlock;
  wire [2:0]HBM26_AXI_awprot;
  wire \^HBM26_AXI_awready ;
  wire [2:0]HBM26_AXI_awsize;
  wire [10:0]HBM26_AXI_awuser;
  wire [0:0]HBM26_AXI_awvalid;
  wire [6:0]HBM26_AXI_bid;
  wire [0:0]HBM26_AXI_bready;
  wire [1:0]HBM26_AXI_bresp;
  wire [15:0]HBM26_AXI_buser;
  wire \^HBM26_AXI_bvalid ;
  wire [255:0]HBM26_AXI_rdata;
  wire [6:0]HBM26_AXI_rid;
  wire [0:0]HBM26_AXI_rlast;
  wire [0:0]HBM26_AXI_rready;
  wire [1:0]HBM26_AXI_rresp;
  wire \^HBM26_AXI_rvalid ;
  wire [255:0]HBM26_AXI_wdata;
  wire [0:0]HBM26_AXI_wlast;
  wire \^HBM26_AXI_wready ;
  wire [31:0]HBM26_AXI_wstrb;
  wire [0:0]HBM26_AXI_wvalid;
  wire [63:0]HBM27_AXI_araddr;
  wire [1:0]HBM27_AXI_arburst;
  wire [3:0]HBM27_AXI_arcache;
  wire [6:0]HBM27_AXI_arid;
  wire [7:0]HBM27_AXI_arlen;
  wire [0:0]HBM27_AXI_arlock;
  wire [2:0]HBM27_AXI_arprot;
  wire \^HBM27_AXI_arready ;
  wire [2:0]HBM27_AXI_arsize;
  wire [10:0]HBM27_AXI_aruser;
  wire [0:0]HBM27_AXI_arvalid;
  wire [63:0]HBM27_AXI_awaddr;
  wire [1:0]HBM27_AXI_awburst;
  wire [3:0]HBM27_AXI_awcache;
  wire [6:0]HBM27_AXI_awid;
  wire [7:0]HBM27_AXI_awlen;
  wire [0:0]HBM27_AXI_awlock;
  wire [2:0]HBM27_AXI_awprot;
  wire \^HBM27_AXI_awready ;
  wire [2:0]HBM27_AXI_awsize;
  wire [10:0]HBM27_AXI_awuser;
  wire [0:0]HBM27_AXI_awvalid;
  wire [6:0]HBM27_AXI_bid;
  wire [0:0]HBM27_AXI_bready;
  wire [1:0]HBM27_AXI_bresp;
  wire [15:0]HBM27_AXI_buser;
  wire \^HBM27_AXI_bvalid ;
  wire [255:0]HBM27_AXI_rdata;
  wire [6:0]HBM27_AXI_rid;
  wire [0:0]HBM27_AXI_rlast;
  wire [0:0]HBM27_AXI_rready;
  wire [1:0]HBM27_AXI_rresp;
  wire \^HBM27_AXI_rvalid ;
  wire [255:0]HBM27_AXI_wdata;
  wire [0:0]HBM27_AXI_wlast;
  wire \^HBM27_AXI_wready ;
  wire [31:0]HBM27_AXI_wstrb;
  wire [0:0]HBM27_AXI_wvalid;
  wire [63:0]HBM28_AXI_araddr;
  wire [1:0]HBM28_AXI_arburst;
  wire [3:0]HBM28_AXI_arcache;
  wire [6:0]HBM28_AXI_arid;
  wire [7:0]HBM28_AXI_arlen;
  wire [0:0]HBM28_AXI_arlock;
  wire [2:0]HBM28_AXI_arprot;
  wire \^HBM28_AXI_arready ;
  wire [2:0]HBM28_AXI_arsize;
  wire [10:0]HBM28_AXI_aruser;
  wire [0:0]HBM28_AXI_arvalid;
  wire [63:0]HBM28_AXI_awaddr;
  wire [1:0]HBM28_AXI_awburst;
  wire [3:0]HBM28_AXI_awcache;
  wire [6:0]HBM28_AXI_awid;
  wire [7:0]HBM28_AXI_awlen;
  wire [0:0]HBM28_AXI_awlock;
  wire [2:0]HBM28_AXI_awprot;
  wire \^HBM28_AXI_awready ;
  wire [2:0]HBM28_AXI_awsize;
  wire [10:0]HBM28_AXI_awuser;
  wire [0:0]HBM28_AXI_awvalid;
  wire [6:0]HBM28_AXI_bid;
  wire [0:0]HBM28_AXI_bready;
  wire [1:0]HBM28_AXI_bresp;
  wire [15:0]HBM28_AXI_buser;
  wire \^HBM28_AXI_bvalid ;
  wire [255:0]HBM28_AXI_rdata;
  wire [6:0]HBM28_AXI_rid;
  wire [0:0]HBM28_AXI_rlast;
  wire [0:0]HBM28_AXI_rready;
  wire [1:0]HBM28_AXI_rresp;
  wire \^HBM28_AXI_rvalid ;
  wire [255:0]HBM28_AXI_wdata;
  wire [0:0]HBM28_AXI_wlast;
  wire \^HBM28_AXI_wready ;
  wire [31:0]HBM28_AXI_wstrb;
  wire [0:0]HBM28_AXI_wvalid;
  wire [63:0]HBM29_AXI_araddr;
  wire [1:0]HBM29_AXI_arburst;
  wire [3:0]HBM29_AXI_arcache;
  wire [6:0]HBM29_AXI_arid;
  wire [7:0]HBM29_AXI_arlen;
  wire [0:0]HBM29_AXI_arlock;
  wire [2:0]HBM29_AXI_arprot;
  wire \^HBM29_AXI_arready ;
  wire [2:0]HBM29_AXI_arsize;
  wire [10:0]HBM29_AXI_aruser;
  wire [0:0]HBM29_AXI_arvalid;
  wire [63:0]HBM29_AXI_awaddr;
  wire [1:0]HBM29_AXI_awburst;
  wire [3:0]HBM29_AXI_awcache;
  wire [6:0]HBM29_AXI_awid;
  wire [7:0]HBM29_AXI_awlen;
  wire [0:0]HBM29_AXI_awlock;
  wire [2:0]HBM29_AXI_awprot;
  wire \^HBM29_AXI_awready ;
  wire [2:0]HBM29_AXI_awsize;
  wire [10:0]HBM29_AXI_awuser;
  wire [0:0]HBM29_AXI_awvalid;
  wire [6:0]HBM29_AXI_bid;
  wire [0:0]HBM29_AXI_bready;
  wire [1:0]HBM29_AXI_bresp;
  wire [15:0]HBM29_AXI_buser;
  wire \^HBM29_AXI_bvalid ;
  wire [255:0]HBM29_AXI_rdata;
  wire [6:0]HBM29_AXI_rid;
  wire [0:0]HBM29_AXI_rlast;
  wire [0:0]HBM29_AXI_rready;
  wire [1:0]HBM29_AXI_rresp;
  wire \^HBM29_AXI_rvalid ;
  wire [255:0]HBM29_AXI_wdata;
  wire [0:0]HBM29_AXI_wlast;
  wire \^HBM29_AXI_wready ;
  wire [31:0]HBM29_AXI_wstrb;
  wire [0:0]HBM29_AXI_wvalid;
  wire [63:0]HBM30_AXI_araddr;
  wire [1:0]HBM30_AXI_arburst;
  wire [3:0]HBM30_AXI_arcache;
  wire [6:0]HBM30_AXI_arid;
  wire [7:0]HBM30_AXI_arlen;
  wire [0:0]HBM30_AXI_arlock;
  wire [2:0]HBM30_AXI_arprot;
  wire \^HBM30_AXI_arready ;
  wire [2:0]HBM30_AXI_arsize;
  wire [10:0]HBM30_AXI_aruser;
  wire [0:0]HBM30_AXI_arvalid;
  wire [63:0]HBM30_AXI_awaddr;
  wire [1:0]HBM30_AXI_awburst;
  wire [3:0]HBM30_AXI_awcache;
  wire [6:0]HBM30_AXI_awid;
  wire [7:0]HBM30_AXI_awlen;
  wire [0:0]HBM30_AXI_awlock;
  wire [2:0]HBM30_AXI_awprot;
  wire \^HBM30_AXI_awready ;
  wire [2:0]HBM30_AXI_awsize;
  wire [10:0]HBM30_AXI_awuser;
  wire [0:0]HBM30_AXI_awvalid;
  wire [6:0]HBM30_AXI_bid;
  wire [0:0]HBM30_AXI_bready;
  wire [1:0]HBM30_AXI_bresp;
  wire [15:0]HBM30_AXI_buser;
  wire \^HBM30_AXI_bvalid ;
  wire [255:0]HBM30_AXI_rdata;
  wire [6:0]HBM30_AXI_rid;
  wire [0:0]HBM30_AXI_rlast;
  wire [0:0]HBM30_AXI_rready;
  wire [1:0]HBM30_AXI_rresp;
  wire \^HBM30_AXI_rvalid ;
  wire [255:0]HBM30_AXI_wdata;
  wire [0:0]HBM30_AXI_wlast;
  wire \^HBM30_AXI_wready ;
  wire [31:0]HBM30_AXI_wstrb;
  wire [0:0]HBM30_AXI_wvalid;
  wire [63:0]HBM31_AXI_araddr;
  wire [1:0]HBM31_AXI_arburst;
  wire [3:0]HBM31_AXI_arcache;
  wire [6:0]HBM31_AXI_arid;
  wire [7:0]HBM31_AXI_arlen;
  wire [0:0]HBM31_AXI_arlock;
  wire [2:0]HBM31_AXI_arprot;
  wire \^HBM31_AXI_arready ;
  wire [2:0]HBM31_AXI_arsize;
  wire [10:0]HBM31_AXI_aruser;
  wire [0:0]HBM31_AXI_arvalid;
  wire [63:0]HBM31_AXI_awaddr;
  wire [1:0]HBM31_AXI_awburst;
  wire [3:0]HBM31_AXI_awcache;
  wire [6:0]HBM31_AXI_awid;
  wire [7:0]HBM31_AXI_awlen;
  wire [0:0]HBM31_AXI_awlock;
  wire [2:0]HBM31_AXI_awprot;
  wire \^HBM31_AXI_awready ;
  wire [2:0]HBM31_AXI_awsize;
  wire [10:0]HBM31_AXI_awuser;
  wire [0:0]HBM31_AXI_awvalid;
  wire [6:0]HBM31_AXI_bid;
  wire [0:0]HBM31_AXI_bready;
  wire [1:0]HBM31_AXI_bresp;
  wire [15:0]HBM31_AXI_buser;
  wire \^HBM31_AXI_bvalid ;
  wire [255:0]HBM31_AXI_rdata;
  wire [6:0]HBM31_AXI_rid;
  wire [0:0]HBM31_AXI_rlast;
  wire [0:0]HBM31_AXI_rready;
  wire [1:0]HBM31_AXI_rresp;
  wire \^HBM31_AXI_rvalid ;
  wire [255:0]HBM31_AXI_wdata;
  wire [0:0]HBM31_AXI_wlast;
  wire \^HBM31_AXI_wready ;
  wire [31:0]HBM31_AXI_wstrb;
  wire [0:0]HBM31_AXI_wvalid;
  wire [63:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [1:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire [17:0]M00_AXI_aruser;
  wire \^M00_AXI_arvalid ;
  wire [63:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [1:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire [17:0]M00_AXI_awuser;
  wire \^M00_AXI_awvalid ;
  wire [1:0]M00_AXI_bid;
  wire \^M00_AXI_bready ;
  wire [1:0]M00_AXI_bresp;
  wire [0:0]M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire [1:0]M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire \^M00_AXI_rready ;
  wire [1:0]M00_AXI_rresp;
  wire [0:0]M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire \^M00_AXI_wvalid ;
  wire [63:0]M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [1:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire [0:0]M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire [3:0]M01_AXI_arqos;
  wire [0:0]M01_AXI_arready;
  wire [3:0]M01_AXI_arregion;
  wire [2:0]M01_AXI_arsize;
  wire [17:0]M01_AXI_aruser;
  wire \^M01_AXI_arvalid ;
  wire [63:0]M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [1:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire [0:0]M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire [3:0]M01_AXI_awqos;
  wire [0:0]M01_AXI_awready;
  wire [3:0]M01_AXI_awregion;
  wire [2:0]M01_AXI_awsize;
  wire [17:0]M01_AXI_awuser;
  wire \^M01_AXI_awvalid ;
  wire [1:0]M01_AXI_bid;
  wire \^M01_AXI_bready ;
  wire [1:0]M01_AXI_bresp;
  wire [0:0]M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire [1:0]M01_AXI_rid;
  wire [0:0]M01_AXI_rlast;
  wire \^M01_AXI_rready ;
  wire [1:0]M01_AXI_rresp;
  wire [0:0]M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire [0:0]M01_AXI_wlast;
  wire [0:0]M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire \^M01_AXI_wvalid ;
  wire [63:0]M02_AXI_araddr;
  wire [1:0]M02_AXI_arburst;
  wire [3:0]M02_AXI_arcache;
  wire [1:0]M02_AXI_arid;
  wire [7:0]M02_AXI_arlen;
  wire [0:0]M02_AXI_arlock;
  wire [2:0]M02_AXI_arprot;
  wire [3:0]M02_AXI_arqos;
  wire [0:0]M02_AXI_arready;
  wire [3:0]M02_AXI_arregion;
  wire [2:0]M02_AXI_arsize;
  wire [17:0]M02_AXI_aruser;
  wire \^M02_AXI_arvalid ;
  wire [63:0]M02_AXI_awaddr;
  wire [1:0]M02_AXI_awburst;
  wire [3:0]M02_AXI_awcache;
  wire [1:0]M02_AXI_awid;
  wire [7:0]M02_AXI_awlen;
  wire [0:0]M02_AXI_awlock;
  wire [2:0]M02_AXI_awprot;
  wire [3:0]M02_AXI_awqos;
  wire [0:0]M02_AXI_awready;
  wire [3:0]M02_AXI_awregion;
  wire [2:0]M02_AXI_awsize;
  wire [17:0]M02_AXI_awuser;
  wire \^M02_AXI_awvalid ;
  wire [1:0]M02_AXI_bid;
  wire \^M02_AXI_bready ;
  wire [1:0]M02_AXI_bresp;
  wire [0:0]M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire [1:0]M02_AXI_rid;
  wire [0:0]M02_AXI_rlast;
  wire \^M02_AXI_rready ;
  wire [1:0]M02_AXI_rresp;
  wire [0:0]M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire [0:0]M02_AXI_wlast;
  wire [0:0]M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire \^M02_AXI_wvalid ;
  wire [63:0]M03_AXI_araddr;
  wire [1:0]M03_AXI_arburst;
  wire [3:0]M03_AXI_arcache;
  wire [1:0]M03_AXI_arid;
  wire [7:0]M03_AXI_arlen;
  wire [0:0]M03_AXI_arlock;
  wire [2:0]M03_AXI_arprot;
  wire [3:0]M03_AXI_arqos;
  wire [0:0]M03_AXI_arready;
  wire [3:0]M03_AXI_arregion;
  wire [2:0]M03_AXI_arsize;
  wire [17:0]M03_AXI_aruser;
  wire \^M03_AXI_arvalid ;
  wire [63:0]M03_AXI_awaddr;
  wire [1:0]M03_AXI_awburst;
  wire [3:0]M03_AXI_awcache;
  wire [1:0]M03_AXI_awid;
  wire [7:0]M03_AXI_awlen;
  wire [0:0]M03_AXI_awlock;
  wire [2:0]M03_AXI_awprot;
  wire [3:0]M03_AXI_awqos;
  wire [0:0]M03_AXI_awready;
  wire [3:0]M03_AXI_awregion;
  wire [2:0]M03_AXI_awsize;
  wire [17:0]M03_AXI_awuser;
  wire \^M03_AXI_awvalid ;
  wire [1:0]M03_AXI_bid;
  wire \^M03_AXI_bready ;
  wire [1:0]M03_AXI_bresp;
  wire [0:0]M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire [1:0]M03_AXI_rid;
  wire [0:0]M03_AXI_rlast;
  wire \^M03_AXI_rready ;
  wire [1:0]M03_AXI_rresp;
  wire [0:0]M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire [0:0]M03_AXI_wlast;
  wire [0:0]M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire \^M03_AXI_wvalid ;
  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [15:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire \^S00_AXI_arready ;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire [17:0]S00_AXI_aruser;
  wire [0:0]S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [15:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire \^S00_AXI_awready ;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire [17:0]S00_AXI_awuser;
  wire [0:0]S00_AXI_awvalid;
  wire [15:0]S00_AXI_bid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire \^S00_AXI_bvalid ;
  wire [127:0]S00_AXI_rdata;
  wire [15:0]S00_AXI_rid;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [16:0]S00_AXI_ruser;
  wire \^S00_AXI_rvalid ;
  wire [127:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire \^S00_AXI_wready ;
  wire [15:0]S00_AXI_wstrb;
  wire [16:0]S00_AXI_wuser;
  wire [0:0]S00_AXI_wvalid;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [15:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire \^S01_AXI_arready ;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire [17:0]S01_AXI_aruser;
  wire [0:0]S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [15:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire \^S01_AXI_awready ;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire [17:0]S01_AXI_awuser;
  wire [0:0]S01_AXI_awvalid;
  wire [15:0]S01_AXI_bid;
  wire [0:0]S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire \^S01_AXI_bvalid ;
  wire [127:0]S01_AXI_rdata;
  wire [15:0]S01_AXI_rid;
  wire [0:0]S01_AXI_rlast;
  wire [0:0]S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire [16:0]S01_AXI_ruser;
  wire \^S01_AXI_rvalid ;
  wire [127:0]S01_AXI_wdata;
  wire [0:0]S01_AXI_wlast;
  wire \^S01_AXI_wready ;
  wire [15:0]S01_AXI_wstrb;
  wire [16:0]S01_AXI_wuser;
  wire [0:0]S01_AXI_wvalid;
  wire aclk0;
  wire aclk1;
  wire aclk2;
  wire aclk3;
  wire [0:0]const_0_dout;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm00_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm00_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm00_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm00_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm00_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm00_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm00_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm00_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm01_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm01_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm01_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm01_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm01_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm01_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm01_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm01_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm02_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm02_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm02_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm02_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm02_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm02_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm02_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm02_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm03_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm03_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm03_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm03_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm03_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm03_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm03_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm03_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm04_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm04_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm04_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm04_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm04_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm04_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm04_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm04_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm05_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm05_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm05_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm05_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm05_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm05_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm05_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm05_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm06_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm06_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm06_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm06_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm06_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm06_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm06_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm06_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm07_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm07_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm07_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm07_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm07_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm07_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm07_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm07_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm08_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm08_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm08_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm08_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm08_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm08_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm08_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm08_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm09_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm09_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm09_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm09_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm09_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm09_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm09_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm09_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm10_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm10_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm10_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm10_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm10_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm10_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm10_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm10_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm11_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm11_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm11_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm11_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm11_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm11_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm11_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm11_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm12_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm12_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm12_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm12_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm12_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm12_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm12_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm12_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm13_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm13_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm13_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm13_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm13_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm13_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm13_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm13_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm14_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm14_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm14_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm14_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm14_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm14_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm14_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm14_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm15_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm15_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm15_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm15_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm15_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm15_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm15_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm15_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm16_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm16_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm16_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm16_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm16_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm16_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm16_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm16_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm17_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm17_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm17_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm17_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm17_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm17_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm17_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm17_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm18_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm18_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm18_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm18_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm18_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm18_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm18_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm18_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm19_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm19_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm19_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm19_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm19_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm19_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm19_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm19_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm20_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm20_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm20_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm20_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm20_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm20_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm20_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm20_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm21_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm21_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm21_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm21_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm21_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm21_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm21_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm21_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm22_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm22_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm22_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm22_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm22_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm22_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm22_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm22_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm23_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm23_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm23_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm23_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm23_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm23_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm23_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm23_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm24_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm24_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm24_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm24_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm24_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm24_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm24_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm24_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm25_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm25_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm25_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm25_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm25_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm25_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm25_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm25_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm26_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm26_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm26_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm26_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm26_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm26_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm26_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm26_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm27_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm27_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm27_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm27_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm27_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm27_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm27_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm27_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm28_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm28_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm28_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm28_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm28_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm28_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm28_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm28_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm29_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm29_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm29_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm29_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm29_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm29_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm29_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm29_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm30_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm30_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm30_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm30_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm30_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm30_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm30_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm30_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm31_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm31_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm31_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm31_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire hbm31_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm31_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]hbm31_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]hbm31_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_axi_nsu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m00_axi_nsu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_axi_nsu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m00_axi_nsu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_axi_nsu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m01_axi_nsu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_axi_nsu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m01_axi_nsu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_axi_nsu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_axi_nsu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m02_axi_nsu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_axi_nsu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_axi_nsu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_axi_nsu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m02_axi_nsu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_axi_nsu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m03_axi_nsu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m03_axi_nsu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m03_axi_nsu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m03_axi_nsu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m03_axi_nsu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m03_axi_nsu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m03_axi_nsu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m03_axi_nsu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_dmc2noc_credit_rdy_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_dmc2noc_credit_rdy_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_dmc2noc_credit_rdy_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_dmc2noc_credit_rdy_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_credit_rtn_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_credit_rtn_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_credit_rtn_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_credit_rtn_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_dmc2noc_data_out_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_dmc2noc_data_out_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_dmc2noc_data_out_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_dmc2noc_data_out_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_valid_out_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_valid_out_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_valid_out_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_valid_out_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_noc2dmc_credit_rdy_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_noc2dmc_credit_rdy_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_noc2dmc_credit_rdy_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_noc2dmc_credit_rdy_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_credit_rtn_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_credit_rtn_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_credit_rtn_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_credit_rtn_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_noc2dmc_data_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_noc2dmc_data_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_noc2dmc_data_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_noc2dmc_data_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_valid_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_valid_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_valid_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_valid_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc1_ddrc_dmc2noc_credit_rdy_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc1_ddrc_dmc2noc_credit_rdy_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc1_ddrc_dmc2noc_credit_rdy_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc1_ddrc_dmc2noc_credit_rdy_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_dmc2noc_credit_rtn_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_dmc2noc_credit_rtn_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_dmc2noc_credit_rtn_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_dmc2noc_credit_rtn_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc1_ddrc_dmc2noc_data_out_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc1_ddrc_dmc2noc_data_out_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc1_ddrc_dmc2noc_data_out_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc1_ddrc_dmc2noc_data_out_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_dmc2noc_valid_out_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_dmc2noc_valid_out_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_dmc2noc_valid_out_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_dmc2noc_valid_out_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc1_ddrc_noc2dmc_credit_rdy_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc1_ddrc_noc2dmc_credit_rdy_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc1_ddrc_noc2dmc_credit_rdy_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc1_ddrc_noc2dmc_credit_rdy_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_noc2dmc_credit_rtn_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_noc2dmc_credit_rtn_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_noc2dmc_credit_rtn_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_noc2dmc_credit_rtn_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc1_ddrc_noc2dmc_data_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc1_ddrc_noc2dmc_data_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc1_ddrc_noc2dmc_data_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc1_ddrc_noc2dmc_data_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_noc2dmc_valid_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_noc2dmc_valid_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_noc2dmc_valid_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc1_ddrc_noc2dmc_valid_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch0_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch0_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch0_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch0_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch0_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch0_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch0_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch0_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch0_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch10_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch10_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch10_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch10_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch10_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch10_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch10_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch10_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch10_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch11_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch11_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch11_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch11_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch11_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch11_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch11_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch11_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch11_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch12_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch12_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch12_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch12_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch12_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch12_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch12_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch12_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch12_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch13_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch13_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch13_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch13_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch13_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch13_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch13_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch13_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch13_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch14_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch14_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch14_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch14_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch14_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch14_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch14_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch14_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch14_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch15_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch15_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch15_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch15_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch15_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch15_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch15_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch15_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch15_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch1_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch1_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch1_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch1_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch1_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch1_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch1_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch1_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch1_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch2_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch2_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch2_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch2_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch2_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch2_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch2_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch2_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch2_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch3_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch3_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch3_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch3_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch3_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch3_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch3_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch3_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch3_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch4_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch4_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch4_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch4_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch4_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch4_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch4_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch4_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch4_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch5_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch5_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch5_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch5_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch5_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch5_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch5_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch5_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch5_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch6_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch6_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch6_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch6_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch6_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch6_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch6_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch6_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch6_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch7_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch7_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch7_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch7_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch7_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch7_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch7_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch7_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch7_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch8_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch8_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch8_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch8_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch8_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch8_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch8_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch8_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch8_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_credit_return_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_credit_return_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_credit_return_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_credit_return_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_credit_return_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_credit_return_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_credit_return_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_credit_return_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch9_hbmmc_noc_flit_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch9_hbmmc_noc_flit_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch9_hbmmc_noc_flit_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch9_hbmmc_noc_flit_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch9_hbmmc_noc_flit_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch9_hbmmc_noc_flit_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch9_hbmmc_noc_flit_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc_hbmc_ch9_hbmmc_noc_flit_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_valid_mc_noc2mc_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_valid_mc_noc2mc_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_valid_mc_noc2mc_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_valid_mc_noc2mc_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_valid_mc_nocout_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_valid_mc_nocout_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_valid_mc_nocout_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc_hbmc_ch9_hbmmc_noc_valid_mc_nocout_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s00_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s00_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s00_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s00_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s01_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s01_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s01_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s01_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_out_noc_valid;
  wire [0:0]sys_clk0_clk_n;
  wire [0:0]sys_clk0_clk_p;
  wire [0:0]sys_clk1_clk_n;
  wire [0:0]sys_clk1_clk_p;

  assign CH0_DDR4_0_act_n[0] = \^CH0_DDR4_0_act_n ;
  assign CH0_DDR4_0_par[0] = \^CH0_DDR4_0_par ;
  assign CH0_DDR4_0_reset_n[0] = \^CH0_DDR4_0_reset_n ;
  assign CH0_DDR4_1_act_n[0] = \^CH0_DDR4_1_act_n ;
  assign CH0_DDR4_1_par[0] = \^CH0_DDR4_1_par ;
  assign CH0_DDR4_1_reset_n[0] = \^CH0_DDR4_1_reset_n ;
  assign HBM00_AXI_arready[0] = \^HBM00_AXI_arready ;
  assign HBM00_AXI_awready[0] = \^HBM00_AXI_awready ;
  assign HBM00_AXI_bvalid[0] = \^HBM00_AXI_bvalid ;
  assign HBM00_AXI_rvalid[0] = \^HBM00_AXI_rvalid ;
  assign HBM00_AXI_wready[0] = \^HBM00_AXI_wready ;
  assign HBM01_AXI_arready[0] = \^HBM01_AXI_arready ;
  assign HBM01_AXI_awready[0] = \^HBM01_AXI_awready ;
  assign HBM01_AXI_bvalid[0] = \^HBM01_AXI_bvalid ;
  assign HBM01_AXI_rvalid[0] = \^HBM01_AXI_rvalid ;
  assign HBM01_AXI_wready[0] = \^HBM01_AXI_wready ;
  assign HBM02_AXI_arready[0] = \^HBM02_AXI_arready ;
  assign HBM02_AXI_awready[0] = \^HBM02_AXI_awready ;
  assign HBM02_AXI_bvalid[0] = \^HBM02_AXI_bvalid ;
  assign HBM02_AXI_rvalid[0] = \^HBM02_AXI_rvalid ;
  assign HBM02_AXI_wready[0] = \^HBM02_AXI_wready ;
  assign HBM03_AXI_arready[0] = \^HBM03_AXI_arready ;
  assign HBM03_AXI_awready[0] = \^HBM03_AXI_awready ;
  assign HBM03_AXI_bvalid[0] = \^HBM03_AXI_bvalid ;
  assign HBM03_AXI_rvalid[0] = \^HBM03_AXI_rvalid ;
  assign HBM03_AXI_wready[0] = \^HBM03_AXI_wready ;
  assign HBM04_AXI_arready[0] = \^HBM04_AXI_arready ;
  assign HBM04_AXI_awready[0] = \^HBM04_AXI_awready ;
  assign HBM04_AXI_bvalid[0] = \^HBM04_AXI_bvalid ;
  assign HBM04_AXI_rvalid[0] = \^HBM04_AXI_rvalid ;
  assign HBM04_AXI_wready[0] = \^HBM04_AXI_wready ;
  assign HBM05_AXI_arready[0] = \^HBM05_AXI_arready ;
  assign HBM05_AXI_awready[0] = \^HBM05_AXI_awready ;
  assign HBM05_AXI_bvalid[0] = \^HBM05_AXI_bvalid ;
  assign HBM05_AXI_rvalid[0] = \^HBM05_AXI_rvalid ;
  assign HBM05_AXI_wready[0] = \^HBM05_AXI_wready ;
  assign HBM06_AXI_arready[0] = \^HBM06_AXI_arready ;
  assign HBM06_AXI_awready[0] = \^HBM06_AXI_awready ;
  assign HBM06_AXI_bvalid[0] = \^HBM06_AXI_bvalid ;
  assign HBM06_AXI_rvalid[0] = \^HBM06_AXI_rvalid ;
  assign HBM06_AXI_wready[0] = \^HBM06_AXI_wready ;
  assign HBM07_AXI_arready[0] = \^HBM07_AXI_arready ;
  assign HBM07_AXI_awready[0] = \^HBM07_AXI_awready ;
  assign HBM07_AXI_bvalid[0] = \^HBM07_AXI_bvalid ;
  assign HBM07_AXI_rvalid[0] = \^HBM07_AXI_rvalid ;
  assign HBM07_AXI_wready[0] = \^HBM07_AXI_wready ;
  assign HBM08_AXI_arready[0] = \^HBM08_AXI_arready ;
  assign HBM08_AXI_awready[0] = \^HBM08_AXI_awready ;
  assign HBM08_AXI_bvalid[0] = \^HBM08_AXI_bvalid ;
  assign HBM08_AXI_rvalid[0] = \^HBM08_AXI_rvalid ;
  assign HBM08_AXI_wready[0] = \^HBM08_AXI_wready ;
  assign HBM09_AXI_arready[0] = \^HBM09_AXI_arready ;
  assign HBM09_AXI_awready[0] = \^HBM09_AXI_awready ;
  assign HBM09_AXI_bvalid[0] = \^HBM09_AXI_bvalid ;
  assign HBM09_AXI_rvalid[0] = \^HBM09_AXI_rvalid ;
  assign HBM09_AXI_wready[0] = \^HBM09_AXI_wready ;
  assign HBM10_AXI_arready[0] = \^HBM10_AXI_arready ;
  assign HBM10_AXI_awready[0] = \^HBM10_AXI_awready ;
  assign HBM10_AXI_bvalid[0] = \^HBM10_AXI_bvalid ;
  assign HBM10_AXI_rvalid[0] = \^HBM10_AXI_rvalid ;
  assign HBM10_AXI_wready[0] = \^HBM10_AXI_wready ;
  assign HBM11_AXI_arready[0] = \^HBM11_AXI_arready ;
  assign HBM11_AXI_awready[0] = \^HBM11_AXI_awready ;
  assign HBM11_AXI_bvalid[0] = \^HBM11_AXI_bvalid ;
  assign HBM11_AXI_rvalid[0] = \^HBM11_AXI_rvalid ;
  assign HBM11_AXI_wready[0] = \^HBM11_AXI_wready ;
  assign HBM12_AXI_arready[0] = \^HBM12_AXI_arready ;
  assign HBM12_AXI_awready[0] = \^HBM12_AXI_awready ;
  assign HBM12_AXI_bvalid[0] = \^HBM12_AXI_bvalid ;
  assign HBM12_AXI_rvalid[0] = \^HBM12_AXI_rvalid ;
  assign HBM12_AXI_wready[0] = \^HBM12_AXI_wready ;
  assign HBM13_AXI_arready[0] = \^HBM13_AXI_arready ;
  assign HBM13_AXI_awready[0] = \^HBM13_AXI_awready ;
  assign HBM13_AXI_bvalid[0] = \^HBM13_AXI_bvalid ;
  assign HBM13_AXI_rvalid[0] = \^HBM13_AXI_rvalid ;
  assign HBM13_AXI_wready[0] = \^HBM13_AXI_wready ;
  assign HBM14_AXI_arready[0] = \^HBM14_AXI_arready ;
  assign HBM14_AXI_awready[0] = \^HBM14_AXI_awready ;
  assign HBM14_AXI_bvalid[0] = \^HBM14_AXI_bvalid ;
  assign HBM14_AXI_rvalid[0] = \^HBM14_AXI_rvalid ;
  assign HBM14_AXI_wready[0] = \^HBM14_AXI_wready ;
  assign HBM15_AXI_arready[0] = \^HBM15_AXI_arready ;
  assign HBM15_AXI_awready[0] = \^HBM15_AXI_awready ;
  assign HBM15_AXI_bvalid[0] = \^HBM15_AXI_bvalid ;
  assign HBM15_AXI_rvalid[0] = \^HBM15_AXI_rvalid ;
  assign HBM15_AXI_wready[0] = \^HBM15_AXI_wready ;
  assign HBM16_AXI_arready[0] = \^HBM16_AXI_arready ;
  assign HBM16_AXI_awready[0] = \^HBM16_AXI_awready ;
  assign HBM16_AXI_bvalid[0] = \^HBM16_AXI_bvalid ;
  assign HBM16_AXI_rvalid[0] = \^HBM16_AXI_rvalid ;
  assign HBM16_AXI_wready[0] = \^HBM16_AXI_wready ;
  assign HBM17_AXI_arready[0] = \^HBM17_AXI_arready ;
  assign HBM17_AXI_awready[0] = \^HBM17_AXI_awready ;
  assign HBM17_AXI_bvalid[0] = \^HBM17_AXI_bvalid ;
  assign HBM17_AXI_rvalid[0] = \^HBM17_AXI_rvalid ;
  assign HBM17_AXI_wready[0] = \^HBM17_AXI_wready ;
  assign HBM18_AXI_arready[0] = \^HBM18_AXI_arready ;
  assign HBM18_AXI_awready[0] = \^HBM18_AXI_awready ;
  assign HBM18_AXI_bvalid[0] = \^HBM18_AXI_bvalid ;
  assign HBM18_AXI_rvalid[0] = \^HBM18_AXI_rvalid ;
  assign HBM18_AXI_wready[0] = \^HBM18_AXI_wready ;
  assign HBM19_AXI_arready[0] = \^HBM19_AXI_arready ;
  assign HBM19_AXI_awready[0] = \^HBM19_AXI_awready ;
  assign HBM19_AXI_bvalid[0] = \^HBM19_AXI_bvalid ;
  assign HBM19_AXI_rvalid[0] = \^HBM19_AXI_rvalid ;
  assign HBM19_AXI_wready[0] = \^HBM19_AXI_wready ;
  assign HBM20_AXI_arready[0] = \^HBM20_AXI_arready ;
  assign HBM20_AXI_awready[0] = \^HBM20_AXI_awready ;
  assign HBM20_AXI_bvalid[0] = \^HBM20_AXI_bvalid ;
  assign HBM20_AXI_rvalid[0] = \^HBM20_AXI_rvalid ;
  assign HBM20_AXI_wready[0] = \^HBM20_AXI_wready ;
  assign HBM21_AXI_arready[0] = \^HBM21_AXI_arready ;
  assign HBM21_AXI_awready[0] = \^HBM21_AXI_awready ;
  assign HBM21_AXI_bvalid[0] = \^HBM21_AXI_bvalid ;
  assign HBM21_AXI_rvalid[0] = \^HBM21_AXI_rvalid ;
  assign HBM21_AXI_wready[0] = \^HBM21_AXI_wready ;
  assign HBM22_AXI_arready[0] = \^HBM22_AXI_arready ;
  assign HBM22_AXI_awready[0] = \^HBM22_AXI_awready ;
  assign HBM22_AXI_bvalid[0] = \^HBM22_AXI_bvalid ;
  assign HBM22_AXI_rvalid[0] = \^HBM22_AXI_rvalid ;
  assign HBM22_AXI_wready[0] = \^HBM22_AXI_wready ;
  assign HBM23_AXI_arready[0] = \^HBM23_AXI_arready ;
  assign HBM23_AXI_awready[0] = \^HBM23_AXI_awready ;
  assign HBM23_AXI_bvalid[0] = \^HBM23_AXI_bvalid ;
  assign HBM23_AXI_rvalid[0] = \^HBM23_AXI_rvalid ;
  assign HBM23_AXI_wready[0] = \^HBM23_AXI_wready ;
  assign HBM24_AXI_arready[0] = \^HBM24_AXI_arready ;
  assign HBM24_AXI_awready[0] = \^HBM24_AXI_awready ;
  assign HBM24_AXI_bvalid[0] = \^HBM24_AXI_bvalid ;
  assign HBM24_AXI_rvalid[0] = \^HBM24_AXI_rvalid ;
  assign HBM24_AXI_wready[0] = \^HBM24_AXI_wready ;
  assign HBM25_AXI_arready[0] = \^HBM25_AXI_arready ;
  assign HBM25_AXI_awready[0] = \^HBM25_AXI_awready ;
  assign HBM25_AXI_bvalid[0] = \^HBM25_AXI_bvalid ;
  assign HBM25_AXI_rvalid[0] = \^HBM25_AXI_rvalid ;
  assign HBM25_AXI_wready[0] = \^HBM25_AXI_wready ;
  assign HBM26_AXI_arready[0] = \^HBM26_AXI_arready ;
  assign HBM26_AXI_awready[0] = \^HBM26_AXI_awready ;
  assign HBM26_AXI_bvalid[0] = \^HBM26_AXI_bvalid ;
  assign HBM26_AXI_rvalid[0] = \^HBM26_AXI_rvalid ;
  assign HBM26_AXI_wready[0] = \^HBM26_AXI_wready ;
  assign HBM27_AXI_arready[0] = \^HBM27_AXI_arready ;
  assign HBM27_AXI_awready[0] = \^HBM27_AXI_awready ;
  assign HBM27_AXI_bvalid[0] = \^HBM27_AXI_bvalid ;
  assign HBM27_AXI_rvalid[0] = \^HBM27_AXI_rvalid ;
  assign HBM27_AXI_wready[0] = \^HBM27_AXI_wready ;
  assign HBM28_AXI_arready[0] = \^HBM28_AXI_arready ;
  assign HBM28_AXI_awready[0] = \^HBM28_AXI_awready ;
  assign HBM28_AXI_bvalid[0] = \^HBM28_AXI_bvalid ;
  assign HBM28_AXI_rvalid[0] = \^HBM28_AXI_rvalid ;
  assign HBM28_AXI_wready[0] = \^HBM28_AXI_wready ;
  assign HBM29_AXI_arready[0] = \^HBM29_AXI_arready ;
  assign HBM29_AXI_awready[0] = \^HBM29_AXI_awready ;
  assign HBM29_AXI_bvalid[0] = \^HBM29_AXI_bvalid ;
  assign HBM29_AXI_rvalid[0] = \^HBM29_AXI_rvalid ;
  assign HBM29_AXI_wready[0] = \^HBM29_AXI_wready ;
  assign HBM30_AXI_arready[0] = \^HBM30_AXI_arready ;
  assign HBM30_AXI_awready[0] = \^HBM30_AXI_awready ;
  assign HBM30_AXI_bvalid[0] = \^HBM30_AXI_bvalid ;
  assign HBM30_AXI_rvalid[0] = \^HBM30_AXI_rvalid ;
  assign HBM30_AXI_wready[0] = \^HBM30_AXI_wready ;
  assign HBM31_AXI_arready[0] = \^HBM31_AXI_arready ;
  assign HBM31_AXI_awready[0] = \^HBM31_AXI_awready ;
  assign HBM31_AXI_bvalid[0] = \^HBM31_AXI_bvalid ;
  assign HBM31_AXI_rvalid[0] = \^HBM31_AXI_rvalid ;
  assign HBM31_AXI_wready[0] = \^HBM31_AXI_wready ;
  assign M00_AXI_arvalid[0] = \^M00_AXI_arvalid ;
  assign M00_AXI_awvalid[0] = \^M00_AXI_awvalid ;
  assign M00_AXI_bready[0] = \^M00_AXI_bready ;
  assign M00_AXI_rready[0] = \^M00_AXI_rready ;
  assign M00_AXI_wvalid[0] = \^M00_AXI_wvalid ;
  assign M01_AXI_arvalid[0] = \^M01_AXI_arvalid ;
  assign M01_AXI_awvalid[0] = \^M01_AXI_awvalid ;
  assign M01_AXI_bready[0] = \^M01_AXI_bready ;
  assign M01_AXI_rready[0] = \^M01_AXI_rready ;
  assign M01_AXI_wvalid[0] = \^M01_AXI_wvalid ;
  assign M02_AXI_arvalid[0] = \^M02_AXI_arvalid ;
  assign M02_AXI_awvalid[0] = \^M02_AXI_awvalid ;
  assign M02_AXI_bready[0] = \^M02_AXI_bready ;
  assign M02_AXI_rready[0] = \^M02_AXI_rready ;
  assign M02_AXI_wvalid[0] = \^M02_AXI_wvalid ;
  assign M03_AXI_arvalid[0] = \^M03_AXI_arvalid ;
  assign M03_AXI_awvalid[0] = \^M03_AXI_awvalid ;
  assign M03_AXI_bready[0] = \^M03_AXI_bready ;
  assign M03_AXI_rready[0] = \^M03_AXI_rready ;
  assign M03_AXI_wvalid[0] = \^M03_AXI_wvalid ;
  assign S00_AXI_arready[0] = \^S00_AXI_arready ;
  assign S00_AXI_awready[0] = \^S00_AXI_awready ;
  assign S00_AXI_bvalid[0] = \^S00_AXI_bvalid ;
  assign S00_AXI_rvalid[0] = \^S00_AXI_rvalid ;
  assign S00_AXI_wready[0] = \^S00_AXI_wready ;
  assign S01_AXI_arready[0] = \^S01_AXI_arready ;
  assign S01_AXI_awready[0] = \^S01_AXI_awready ;
  assign S01_AXI_bvalid[0] = \^S01_AXI_bvalid ;
  assign S01_AXI_rvalid[0] = \^S01_AXI_rvalid ;
  assign S01_AXI_wready[0] = \^S01_AXI_wready ;
  (* DONT_TOUCH *) 
  bd_6a72_HBM00_AXI_nmu_0 HBM00_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM00_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM00_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM00_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM00_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM00_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM00_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM00_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM00_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM00_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM00_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM00_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM00_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM00_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM00_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM00_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM00_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM00_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM00_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM00_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM00_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM00_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM00_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM00_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM00_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM00_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM00_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM00_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM00_AXI_rdata),
        .IF_NOC_AXI_RID(HBM00_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM00_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM00_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM00_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM00_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM00_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM00_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM00_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM00_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM00_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm00_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm00_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm00_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm00_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm00_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm00_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm00_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm00_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM01_AXI_nmu_0 HBM01_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM01_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM01_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM01_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM01_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM01_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM01_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM01_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM01_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM01_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM01_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM01_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM01_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM01_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM01_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM01_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM01_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM01_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM01_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM01_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM01_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM01_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM01_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM01_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM01_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM01_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM01_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM01_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM01_AXI_rdata),
        .IF_NOC_AXI_RID(HBM01_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM01_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM01_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM01_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM01_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM01_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM01_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM01_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM01_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM01_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm01_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm01_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm01_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm01_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm01_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm01_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm01_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm01_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM02_AXI_nmu_0 HBM02_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM02_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM02_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM02_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM02_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM02_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM02_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM02_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM02_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM02_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM02_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM02_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM02_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM02_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM02_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM02_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM02_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM02_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM02_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM02_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM02_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM02_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM02_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM02_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM02_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM02_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM02_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM02_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM02_AXI_rdata),
        .IF_NOC_AXI_RID(HBM02_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM02_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM02_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM02_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM02_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM02_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM02_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM02_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM02_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM02_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm02_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm02_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm02_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm02_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm02_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm02_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm02_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm02_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM03_AXI_nmu_0 HBM03_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM03_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM03_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM03_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM03_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM03_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM03_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM03_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM03_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM03_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM03_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM03_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM03_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM03_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM03_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM03_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM03_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM03_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM03_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM03_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM03_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM03_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM03_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM03_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM03_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM03_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM03_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM03_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM03_AXI_rdata),
        .IF_NOC_AXI_RID(HBM03_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM03_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM03_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM03_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM03_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM03_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM03_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM03_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM03_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM03_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm03_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm03_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm03_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm03_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm03_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm03_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm03_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm03_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM04_AXI_nmu_0 HBM04_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM04_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM04_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM04_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM04_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM04_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM04_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM04_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM04_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM04_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM04_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM04_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM04_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM04_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM04_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM04_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM04_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM04_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM04_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM04_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM04_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM04_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM04_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM04_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM04_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM04_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM04_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM04_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM04_AXI_rdata),
        .IF_NOC_AXI_RID(HBM04_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM04_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM04_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM04_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM04_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM04_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM04_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM04_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM04_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM04_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm04_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm04_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm04_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm04_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm04_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm04_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm04_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm04_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM05_AXI_nmu_0 HBM05_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM05_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM05_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM05_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM05_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM05_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM05_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM05_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM05_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM05_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM05_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM05_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM05_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM05_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM05_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM05_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM05_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM05_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM05_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM05_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM05_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM05_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM05_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM05_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM05_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM05_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM05_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM05_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM05_AXI_rdata),
        .IF_NOC_AXI_RID(HBM05_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM05_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM05_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM05_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM05_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM05_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM05_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM05_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM05_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM05_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm05_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm05_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm05_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm05_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm05_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm05_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm05_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm05_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM06_AXI_nmu_0 HBM06_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM06_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM06_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM06_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM06_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM06_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM06_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM06_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM06_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM06_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM06_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM06_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM06_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM06_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM06_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM06_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM06_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM06_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM06_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM06_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM06_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM06_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM06_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM06_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM06_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM06_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM06_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM06_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM06_AXI_rdata),
        .IF_NOC_AXI_RID(HBM06_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM06_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM06_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM06_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM06_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM06_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM06_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM06_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM06_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM06_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm06_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm06_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm06_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm06_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm06_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm06_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm06_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm06_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM07_AXI_nmu_0 HBM07_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM07_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM07_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM07_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM07_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM07_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM07_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM07_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM07_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM07_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM07_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM07_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM07_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM07_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM07_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM07_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM07_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM07_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM07_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM07_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM07_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM07_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM07_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM07_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM07_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM07_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM07_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM07_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM07_AXI_rdata),
        .IF_NOC_AXI_RID(HBM07_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM07_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM07_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM07_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM07_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM07_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM07_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM07_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM07_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM07_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm07_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm07_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm07_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm07_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm07_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm07_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm07_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm07_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM08_AXI_nmu_0 HBM08_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM08_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM08_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM08_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM08_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM08_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM08_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM08_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM08_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM08_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM08_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM08_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM08_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM08_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM08_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM08_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM08_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM08_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM08_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM08_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM08_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM08_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM08_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM08_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM08_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM08_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM08_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM08_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM08_AXI_rdata),
        .IF_NOC_AXI_RID(HBM08_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM08_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM08_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM08_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM08_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM08_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM08_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM08_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM08_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM08_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm08_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm08_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm08_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm08_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm08_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm08_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm08_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm08_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM09_AXI_nmu_0 HBM09_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM09_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM09_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM09_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM09_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM09_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM09_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM09_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM09_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM09_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM09_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM09_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM09_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM09_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM09_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM09_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM09_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM09_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM09_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM09_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM09_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM09_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM09_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM09_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM09_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM09_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM09_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM09_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM09_AXI_rdata),
        .IF_NOC_AXI_RID(HBM09_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM09_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM09_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM09_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM09_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM09_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM09_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM09_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM09_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM09_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm09_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm09_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm09_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm09_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm09_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm09_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm09_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm09_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM10_AXI_nmu_0 HBM10_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM10_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM10_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM10_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM10_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM10_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM10_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM10_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM10_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM10_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM10_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM10_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM10_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM10_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM10_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM10_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM10_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM10_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM10_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM10_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM10_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM10_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM10_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM10_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM10_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM10_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM10_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM10_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM10_AXI_rdata),
        .IF_NOC_AXI_RID(HBM10_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM10_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM10_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM10_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM10_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM10_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM10_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM10_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM10_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM10_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm10_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm10_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm10_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm10_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm10_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm10_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm10_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm10_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM11_AXI_nmu_0 HBM11_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM11_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM11_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM11_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM11_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM11_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM11_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM11_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM11_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM11_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM11_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM11_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM11_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM11_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM11_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM11_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM11_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM11_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM11_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM11_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM11_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM11_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM11_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM11_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM11_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM11_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM11_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM11_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM11_AXI_rdata),
        .IF_NOC_AXI_RID(HBM11_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM11_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM11_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM11_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM11_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM11_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM11_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM11_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM11_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM11_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm11_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm11_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm11_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm11_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm11_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm11_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm11_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm11_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM12_AXI_nmu_0 HBM12_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM12_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM12_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM12_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM12_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM12_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM12_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM12_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM12_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM12_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM12_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM12_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM12_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM12_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM12_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM12_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM12_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM12_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM12_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM12_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM12_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM12_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM12_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM12_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM12_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM12_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM12_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM12_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM12_AXI_rdata),
        .IF_NOC_AXI_RID(HBM12_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM12_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM12_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM12_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM12_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM12_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM12_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM12_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM12_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM12_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm12_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm12_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm12_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm12_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm12_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm12_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm12_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm12_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM13_AXI_nmu_0 HBM13_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM13_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM13_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM13_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM13_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM13_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM13_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM13_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM13_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM13_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM13_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM13_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM13_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM13_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM13_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM13_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM13_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM13_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM13_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM13_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM13_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM13_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM13_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM13_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM13_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM13_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM13_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM13_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM13_AXI_rdata),
        .IF_NOC_AXI_RID(HBM13_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM13_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM13_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM13_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM13_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM13_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM13_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM13_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM13_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM13_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm13_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm13_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm13_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm13_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm13_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm13_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm13_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm13_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM14_AXI_nmu_0 HBM14_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM14_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM14_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM14_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM14_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM14_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM14_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM14_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM14_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM14_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM14_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM14_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM14_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM14_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM14_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM14_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM14_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM14_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM14_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM14_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM14_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM14_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM14_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM14_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM14_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM14_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM14_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM14_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM14_AXI_rdata),
        .IF_NOC_AXI_RID(HBM14_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM14_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM14_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM14_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM14_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM14_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM14_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM14_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM14_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM14_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm14_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm14_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm14_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm14_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm14_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm14_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm14_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm14_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM15_AXI_nmu_0 HBM15_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM15_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM15_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM15_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM15_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM15_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM15_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM15_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM15_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM15_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM15_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM15_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM15_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM15_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM15_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM15_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM15_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM15_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM15_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM15_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM15_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM15_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM15_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM15_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM15_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM15_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM15_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM15_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM15_AXI_rdata),
        .IF_NOC_AXI_RID(HBM15_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM15_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM15_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM15_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM15_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM15_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM15_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM15_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM15_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM15_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm15_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm15_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm15_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm15_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm15_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm15_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm15_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm15_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM16_AXI_nmu_0 HBM16_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM16_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM16_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM16_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM16_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM16_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM16_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM16_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM16_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM16_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM16_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM16_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM16_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM16_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM16_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM16_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM16_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM16_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM16_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM16_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM16_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM16_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM16_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM16_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM16_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM16_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM16_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM16_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM16_AXI_rdata),
        .IF_NOC_AXI_RID(HBM16_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM16_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM16_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM16_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM16_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM16_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM16_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM16_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM16_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM16_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm16_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm16_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm16_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm16_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm16_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm16_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm16_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm16_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM17_AXI_nmu_0 HBM17_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM17_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM17_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM17_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM17_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM17_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM17_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM17_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM17_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM17_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM17_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM17_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM17_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM17_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM17_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM17_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM17_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM17_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM17_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM17_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM17_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM17_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM17_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM17_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM17_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM17_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM17_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM17_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM17_AXI_rdata),
        .IF_NOC_AXI_RID(HBM17_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM17_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM17_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM17_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM17_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM17_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM17_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM17_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM17_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM17_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm17_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm17_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm17_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm17_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm17_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm17_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm17_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm17_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM18_AXI_nmu_0 HBM18_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM18_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM18_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM18_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM18_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM18_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM18_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM18_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM18_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM18_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM18_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM18_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM18_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM18_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM18_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM18_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM18_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM18_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM18_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM18_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM18_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM18_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM18_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM18_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM18_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM18_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM18_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM18_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM18_AXI_rdata),
        .IF_NOC_AXI_RID(HBM18_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM18_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM18_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM18_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM18_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM18_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM18_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM18_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM18_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM18_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm18_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm18_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm18_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm18_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm18_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm18_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm18_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm18_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM19_AXI_nmu_0 HBM19_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM19_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM19_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM19_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM19_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM19_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM19_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM19_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM19_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM19_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM19_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM19_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM19_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM19_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM19_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM19_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM19_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM19_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM19_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM19_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM19_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM19_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM19_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM19_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM19_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM19_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM19_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM19_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM19_AXI_rdata),
        .IF_NOC_AXI_RID(HBM19_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM19_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM19_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM19_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM19_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM19_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM19_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM19_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM19_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM19_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm19_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm19_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm19_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm19_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm19_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm19_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm19_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm19_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM20_AXI_nmu_0 HBM20_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM20_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM20_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM20_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM20_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM20_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM20_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM20_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM20_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM20_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM20_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM20_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM20_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM20_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM20_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM20_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM20_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM20_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM20_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM20_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM20_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM20_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM20_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM20_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM20_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM20_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM20_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM20_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM20_AXI_rdata),
        .IF_NOC_AXI_RID(HBM20_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM20_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM20_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM20_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM20_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM20_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM20_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM20_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM20_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM20_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm20_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm20_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm20_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm20_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm20_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm20_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm20_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm20_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM21_AXI_nmu_0 HBM21_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM21_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM21_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM21_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM21_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM21_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM21_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM21_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM21_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM21_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM21_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM21_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM21_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM21_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM21_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM21_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM21_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM21_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM21_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM21_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM21_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM21_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM21_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM21_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM21_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM21_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM21_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM21_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM21_AXI_rdata),
        .IF_NOC_AXI_RID(HBM21_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM21_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM21_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM21_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM21_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM21_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM21_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM21_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM21_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM21_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm21_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm21_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm21_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm21_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm21_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm21_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm21_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm21_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM22_AXI_nmu_0 HBM22_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM22_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM22_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM22_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM22_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM22_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM22_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM22_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM22_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM22_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM22_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM22_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM22_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM22_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM22_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM22_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM22_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM22_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM22_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM22_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM22_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM22_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM22_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM22_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM22_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM22_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM22_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM22_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM22_AXI_rdata),
        .IF_NOC_AXI_RID(HBM22_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM22_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM22_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM22_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM22_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM22_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM22_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM22_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM22_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM22_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm22_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm22_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm22_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm22_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm22_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm22_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm22_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm22_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM23_AXI_nmu_0 HBM23_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM23_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM23_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM23_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM23_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM23_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM23_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM23_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM23_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM23_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM23_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM23_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM23_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM23_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM23_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM23_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM23_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM23_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM23_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM23_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM23_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM23_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM23_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM23_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM23_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM23_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM23_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM23_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM23_AXI_rdata),
        .IF_NOC_AXI_RID(HBM23_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM23_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM23_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM23_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM23_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM23_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM23_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM23_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM23_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM23_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm23_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm23_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm23_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm23_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm23_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm23_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm23_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm23_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM24_AXI_nmu_0 HBM24_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM24_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM24_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM24_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM24_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM24_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM24_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM24_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM24_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM24_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM24_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM24_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM24_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM24_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM24_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM24_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM24_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM24_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM24_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM24_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM24_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM24_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM24_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM24_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM24_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM24_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM24_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM24_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM24_AXI_rdata),
        .IF_NOC_AXI_RID(HBM24_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM24_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM24_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM24_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM24_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM24_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM24_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM24_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM24_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM24_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm24_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm24_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm24_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm24_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm24_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm24_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm24_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm24_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM25_AXI_nmu_0 HBM25_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM25_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM25_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM25_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM25_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM25_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM25_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM25_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM25_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM25_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM25_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM25_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM25_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM25_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM25_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM25_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM25_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM25_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM25_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM25_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM25_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM25_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM25_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM25_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM25_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM25_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM25_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM25_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM25_AXI_rdata),
        .IF_NOC_AXI_RID(HBM25_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM25_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM25_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM25_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM25_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM25_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM25_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM25_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM25_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM25_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm25_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm25_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm25_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm25_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm25_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm25_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm25_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm25_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM26_AXI_nmu_0 HBM26_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM26_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM26_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM26_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM26_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM26_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM26_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM26_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM26_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM26_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM26_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM26_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM26_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM26_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM26_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM26_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM26_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM26_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM26_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM26_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM26_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM26_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM26_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM26_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM26_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM26_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM26_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM26_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM26_AXI_rdata),
        .IF_NOC_AXI_RID(HBM26_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM26_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM26_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM26_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM26_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM26_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM26_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM26_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM26_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM26_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm26_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm26_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm26_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm26_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm26_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm26_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm26_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm26_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM27_AXI_nmu_0 HBM27_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM27_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM27_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM27_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM27_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM27_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM27_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM27_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM27_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM27_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM27_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM27_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM27_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM27_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM27_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM27_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM27_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM27_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM27_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM27_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM27_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM27_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM27_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM27_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM27_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM27_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM27_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM27_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM27_AXI_rdata),
        .IF_NOC_AXI_RID(HBM27_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM27_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM27_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM27_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM27_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM27_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM27_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM27_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM27_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM27_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm27_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm27_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm27_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm27_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm27_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm27_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm27_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm27_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM28_AXI_nmu_0 HBM28_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM28_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM28_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM28_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM28_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM28_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM28_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM28_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM28_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM28_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM28_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM28_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM28_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM28_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM28_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM28_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM28_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM28_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM28_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM28_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM28_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM28_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM28_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM28_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM28_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM28_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM28_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM28_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM28_AXI_rdata),
        .IF_NOC_AXI_RID(HBM28_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM28_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM28_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM28_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM28_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM28_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM28_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM28_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM28_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM28_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm28_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm28_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm28_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm28_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm28_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm28_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm28_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm28_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM29_AXI_nmu_0 HBM29_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM29_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM29_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM29_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM29_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM29_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM29_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM29_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM29_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM29_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM29_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM29_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM29_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM29_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM29_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM29_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM29_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM29_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM29_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM29_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM29_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM29_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM29_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM29_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM29_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM29_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM29_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM29_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM29_AXI_rdata),
        .IF_NOC_AXI_RID(HBM29_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM29_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM29_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM29_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM29_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM29_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM29_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM29_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM29_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM29_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm29_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm29_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm29_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm29_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm29_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm29_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm29_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm29_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM30_AXI_nmu_0 HBM30_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM30_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM30_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM30_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM30_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM30_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM30_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM30_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM30_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM30_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM30_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM30_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM30_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM30_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM30_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM30_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM30_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM30_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM30_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM30_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM30_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM30_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM30_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM30_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM30_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM30_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM30_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM30_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM30_AXI_rdata),
        .IF_NOC_AXI_RID(HBM30_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM30_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM30_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM30_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM30_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM30_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM30_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM30_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM30_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM30_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm30_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm30_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm30_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm30_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm30_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm30_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm30_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm30_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_HBM31_AXI_nmu_0 HBM31_AXI_nmu
       (.IF_NOC_AXI_ARADDR(HBM31_AXI_araddr),
        .IF_NOC_AXI_ARBURST(HBM31_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(HBM31_AXI_arcache),
        .IF_NOC_AXI_ARID(HBM31_AXI_arid),
        .IF_NOC_AXI_ARLEN(HBM31_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(HBM31_AXI_arlock),
        .IF_NOC_AXI_ARPROT(HBM31_AXI_arprot),
        .IF_NOC_AXI_ARREADY(\^HBM31_AXI_arready ),
        .IF_NOC_AXI_ARSIZE(HBM31_AXI_arsize),
        .IF_NOC_AXI_ARUSER(HBM31_AXI_aruser),
        .IF_NOC_AXI_ARVALID(HBM31_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(HBM31_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(HBM31_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(HBM31_AXI_awcache),
        .IF_NOC_AXI_AWID(HBM31_AXI_awid),
        .IF_NOC_AXI_AWLEN(HBM31_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(HBM31_AXI_awlock),
        .IF_NOC_AXI_AWPROT(HBM31_AXI_awprot),
        .IF_NOC_AXI_AWREADY(\^HBM31_AXI_awready ),
        .IF_NOC_AXI_AWSIZE(HBM31_AXI_awsize),
        .IF_NOC_AXI_AWUSER(HBM31_AXI_awuser),
        .IF_NOC_AXI_AWVALID(HBM31_AXI_awvalid),
        .IF_NOC_AXI_BID(HBM31_AXI_bid),
        .IF_NOC_AXI_BREADY(HBM31_AXI_bready),
        .IF_NOC_AXI_BRESP(HBM31_AXI_bresp),
        .IF_NOC_AXI_BUSER(HBM31_AXI_buser),
        .IF_NOC_AXI_BVALID(\^HBM31_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(HBM31_AXI_rdata),
        .IF_NOC_AXI_RID(HBM31_AXI_rid),
        .IF_NOC_AXI_RLAST(HBM31_AXI_rlast),
        .IF_NOC_AXI_RREADY(HBM31_AXI_rready),
        .IF_NOC_AXI_RRESP(HBM31_AXI_rresp),
        .IF_NOC_AXI_RVALID(\^HBM31_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(HBM31_AXI_wdata),
        .IF_NOC_AXI_WLAST(HBM31_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^HBM31_AXI_wready ),
        .IF_NOC_AXI_WSTRB(HBM31_AXI_wstrb),
        .IF_NOC_AXI_WVALID(HBM31_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(hbm31_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(hbm31_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(hbm31_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(hbm31_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(hbm31_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(hbm31_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(hbm31_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(hbm31_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0}),
        .aclk(aclk3));
  (* DONT_TOUCH *) 
  bd_6a72_M00_AXI_nsu_0 M00_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M00_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M00_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M00_AXI_arcache),
        .IF_NOC_AXI_ARCID(M00_AXI_arid),
        .IF_NOC_AXI_ARLEN(M00_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M00_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M00_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M00_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M00_AXI_arready),
        .IF_NOC_AXI_ARREGION(M00_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M00_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M00_AXI_aruser),
        .IF_NOC_AXI_ARVALID(\^M00_AXI_arvalid ),
        .IF_NOC_AXI_AWADDR(M00_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M00_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M00_AXI_awcache),
        .IF_NOC_AXI_AWCID(M00_AXI_awid),
        .IF_NOC_AXI_AWLEN(M00_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M00_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M00_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M00_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M00_AXI_awready),
        .IF_NOC_AXI_AWREGION(M00_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M00_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M00_AXI_awuser),
        .IF_NOC_AXI_AWVALID(\^M00_AXI_awvalid ),
        .IF_NOC_AXI_BCID(M00_AXI_bid),
        .IF_NOC_AXI_BREADY(\^M00_AXI_bready ),
        .IF_NOC_AXI_BRESP(M00_AXI_bresp),
        .IF_NOC_AXI_BVALID(M00_AXI_bvalid),
        .IF_NOC_AXI_RCID(M00_AXI_rid),
        .IF_NOC_AXI_RDATA(M00_AXI_rdata),
        .IF_NOC_AXI_RLAST(M00_AXI_rlast),
        .IF_NOC_AXI_RREADY(\^M00_AXI_rready ),
        .IF_NOC_AXI_RRESP(M00_AXI_rresp),
        .IF_NOC_AXI_RVALID(M00_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M00_AXI_wdata),
        .IF_NOC_AXI_WLAST(M00_AXI_wlast),
        .IF_NOC_AXI_WREADY(M00_AXI_wready),
        .IF_NOC_AXI_WSTRB(M00_AXI_wstrb),
        .IF_NOC_AXI_WVALID(\^M00_AXI_wvalid ),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m00_axi_nsu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m00_axi_nsu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m00_axi_nsu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m00_axi_nsu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m00_axi_nsu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m00_axi_nsu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m00_axi_nsu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m00_axi_nsu_if_noc_npp_out_noc_valid),
        .NSU(1'b0),
        .aclk(aclk2));
  (* DONT_TOUCH *) 
  bd_6a72_M01_AXI_nsu_0 M01_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M01_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M01_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M01_AXI_arcache),
        .IF_NOC_AXI_ARCID(M01_AXI_arid),
        .IF_NOC_AXI_ARLEN(M01_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M01_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M01_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M01_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M01_AXI_arready),
        .IF_NOC_AXI_ARREGION(M01_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M01_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M01_AXI_aruser),
        .IF_NOC_AXI_ARVALID(\^M01_AXI_arvalid ),
        .IF_NOC_AXI_AWADDR(M01_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M01_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M01_AXI_awcache),
        .IF_NOC_AXI_AWCID(M01_AXI_awid),
        .IF_NOC_AXI_AWLEN(M01_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M01_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M01_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M01_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M01_AXI_awready),
        .IF_NOC_AXI_AWREGION(M01_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M01_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M01_AXI_awuser),
        .IF_NOC_AXI_AWVALID(\^M01_AXI_awvalid ),
        .IF_NOC_AXI_BCID(M01_AXI_bid),
        .IF_NOC_AXI_BREADY(\^M01_AXI_bready ),
        .IF_NOC_AXI_BRESP(M01_AXI_bresp),
        .IF_NOC_AXI_BVALID(M01_AXI_bvalid),
        .IF_NOC_AXI_RCID(M01_AXI_rid),
        .IF_NOC_AXI_RDATA(M01_AXI_rdata),
        .IF_NOC_AXI_RLAST(M01_AXI_rlast),
        .IF_NOC_AXI_RREADY(\^M01_AXI_rready ),
        .IF_NOC_AXI_RRESP(M01_AXI_rresp),
        .IF_NOC_AXI_RVALID(M01_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M01_AXI_wdata),
        .IF_NOC_AXI_WLAST(M01_AXI_wlast),
        .IF_NOC_AXI_WREADY(M01_AXI_wready),
        .IF_NOC_AXI_WSTRB(M01_AXI_wstrb),
        .IF_NOC_AXI_WVALID(\^M01_AXI_wvalid ),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m01_axi_nsu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m01_axi_nsu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m01_axi_nsu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m01_axi_nsu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m01_axi_nsu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m01_axi_nsu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m01_axi_nsu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m01_axi_nsu_if_noc_npp_out_noc_valid),
        .NSU(1'b0),
        .aclk(aclk2));
  (* DONT_TOUCH *) 
  bd_6a72_M02_AXI_nsu_0 M02_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M02_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M02_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M02_AXI_arcache),
        .IF_NOC_AXI_ARCID(M02_AXI_arid),
        .IF_NOC_AXI_ARLEN(M02_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M02_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M02_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M02_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M02_AXI_arready),
        .IF_NOC_AXI_ARREGION(M02_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M02_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M02_AXI_aruser),
        .IF_NOC_AXI_ARVALID(\^M02_AXI_arvalid ),
        .IF_NOC_AXI_AWADDR(M02_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M02_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M02_AXI_awcache),
        .IF_NOC_AXI_AWCID(M02_AXI_awid),
        .IF_NOC_AXI_AWLEN(M02_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M02_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M02_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M02_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M02_AXI_awready),
        .IF_NOC_AXI_AWREGION(M02_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M02_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M02_AXI_awuser),
        .IF_NOC_AXI_AWVALID(\^M02_AXI_awvalid ),
        .IF_NOC_AXI_BCID(M02_AXI_bid),
        .IF_NOC_AXI_BREADY(\^M02_AXI_bready ),
        .IF_NOC_AXI_BRESP(M02_AXI_bresp),
        .IF_NOC_AXI_BVALID(M02_AXI_bvalid),
        .IF_NOC_AXI_RCID(M02_AXI_rid),
        .IF_NOC_AXI_RDATA(M02_AXI_rdata),
        .IF_NOC_AXI_RLAST(M02_AXI_rlast),
        .IF_NOC_AXI_RREADY(\^M02_AXI_rready ),
        .IF_NOC_AXI_RRESP(M02_AXI_rresp),
        .IF_NOC_AXI_RVALID(M02_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M02_AXI_wdata),
        .IF_NOC_AXI_WLAST(M02_AXI_wlast),
        .IF_NOC_AXI_WREADY(M02_AXI_wready),
        .IF_NOC_AXI_WSTRB(M02_AXI_wstrb),
        .IF_NOC_AXI_WVALID(\^M02_AXI_wvalid ),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m02_axi_nsu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m02_axi_nsu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m02_axi_nsu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m02_axi_nsu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m02_axi_nsu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m02_axi_nsu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m02_axi_nsu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m02_axi_nsu_if_noc_npp_out_noc_valid),
        .NSU(1'b0),
        .aclk(aclk2));
  (* DONT_TOUCH *) 
  bd_6a72_M03_AXI_nsu_0 M03_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M03_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M03_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M03_AXI_arcache),
        .IF_NOC_AXI_ARCID(M03_AXI_arid),
        .IF_NOC_AXI_ARLEN(M03_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M03_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M03_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M03_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M03_AXI_arready),
        .IF_NOC_AXI_ARREGION(M03_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M03_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M03_AXI_aruser),
        .IF_NOC_AXI_ARVALID(\^M03_AXI_arvalid ),
        .IF_NOC_AXI_AWADDR(M03_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M03_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M03_AXI_awcache),
        .IF_NOC_AXI_AWCID(M03_AXI_awid),
        .IF_NOC_AXI_AWLEN(M03_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M03_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M03_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M03_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M03_AXI_awready),
        .IF_NOC_AXI_AWREGION(M03_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M03_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M03_AXI_awuser),
        .IF_NOC_AXI_AWVALID(\^M03_AXI_awvalid ),
        .IF_NOC_AXI_BCID(M03_AXI_bid),
        .IF_NOC_AXI_BREADY(\^M03_AXI_bready ),
        .IF_NOC_AXI_BRESP(M03_AXI_bresp),
        .IF_NOC_AXI_BVALID(M03_AXI_bvalid),
        .IF_NOC_AXI_RCID(M03_AXI_rid),
        .IF_NOC_AXI_RDATA(M03_AXI_rdata),
        .IF_NOC_AXI_RLAST(M03_AXI_rlast),
        .IF_NOC_AXI_RREADY(\^M03_AXI_rready ),
        .IF_NOC_AXI_RRESP(M03_AXI_rresp),
        .IF_NOC_AXI_RVALID(M03_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M03_AXI_wdata),
        .IF_NOC_AXI_WLAST(M03_AXI_wlast),
        .IF_NOC_AXI_WREADY(M03_AXI_wready),
        .IF_NOC_AXI_WSTRB(M03_AXI_wstrb),
        .IF_NOC_AXI_WVALID(\^M03_AXI_wvalid ),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m03_axi_nsu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m03_axi_nsu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m03_axi_nsu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m03_axi_nsu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m03_axi_nsu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m03_axi_nsu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m03_axi_nsu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m03_axi_nsu_if_noc_npp_out_noc_valid),
        .NSU(1'b0),
        .aclk(aclk2));
  (* DONT_TOUCH *) 
  bd_6a72_MC0_ddrc_0 MC0_ddrc
       (.ch0_ddr4_act_n(\^CH0_DDR4_0_act_n ),
        .ch0_ddr4_adr(CH0_DDR4_0_adr),
        .ch0_ddr4_alert_n(CH0_DDR4_0_alert_n),
        .ch0_ddr4_ba(CH0_DDR4_0_ba),
        .ch0_ddr4_bg(CH0_DDR4_0_bg),
        .ch0_ddr4_ck_c(CH0_DDR4_0_ck_c),
        .ch0_ddr4_ck_t(CH0_DDR4_0_ck_t),
        .ch0_ddr4_cke(CH0_DDR4_0_cke),
        .ch0_ddr4_cs_n(CH0_DDR4_0_cs_n),
        .ch0_ddr4_dq(CH0_DDR4_0_dq),
        .ch0_ddr4_dqs_c(CH0_DDR4_0_dqs_c),
        .ch0_ddr4_dqs_t(CH0_DDR4_0_dqs_t),
        .ch0_ddr4_odt(CH0_DDR4_0_odt),
        .ch0_ddr4_parity(\^CH0_DDR4_0_par ),
        .ch0_ddr4_reset_n(\^CH0_DDR4_0_reset_n ),
        .dmc2noc_credit_rdy_0(mc0_ddrc_dmc2noc_credit_rdy_0),
        .dmc2noc_credit_rdy_1(mc0_ddrc_dmc2noc_credit_rdy_1),
        .dmc2noc_credit_rdy_2(mc0_ddrc_dmc2noc_credit_rdy_2),
        .dmc2noc_credit_rdy_3(mc0_ddrc_dmc2noc_credit_rdy_3),
        .dmc2noc_credit_rtn_0(mc0_ddrc_dmc2noc_credit_rtn_0),
        .dmc2noc_credit_rtn_1(mc0_ddrc_dmc2noc_credit_rtn_1),
        .dmc2noc_credit_rtn_2(mc0_ddrc_dmc2noc_credit_rtn_2),
        .dmc2noc_credit_rtn_3(mc0_ddrc_dmc2noc_credit_rtn_3),
        .dmc2noc_data_out_0(mc0_ddrc_dmc2noc_data_out_0),
        .dmc2noc_data_out_1(mc0_ddrc_dmc2noc_data_out_1),
        .dmc2noc_data_out_2(mc0_ddrc_dmc2noc_data_out_2),
        .dmc2noc_data_out_3(mc0_ddrc_dmc2noc_data_out_3),
        .dmc2noc_valid_out_0(mc0_ddrc_dmc2noc_valid_out_0),
        .dmc2noc_valid_out_1(mc0_ddrc_dmc2noc_valid_out_1),
        .dmc2noc_valid_out_2(mc0_ddrc_dmc2noc_valid_out_2),
        .dmc2noc_valid_out_3(mc0_ddrc_dmc2noc_valid_out_3),
        .from_noc_0(1'b0),
        .from_noc_1(1'b0),
        .from_noc_2(1'b0),
        .from_noc_3(1'b0),
        .noc2dmc_credit_rdy_0(mc0_ddrc_noc2dmc_credit_rdy_0),
        .noc2dmc_credit_rdy_1(mc0_ddrc_noc2dmc_credit_rdy_1),
        .noc2dmc_credit_rdy_2(mc0_ddrc_noc2dmc_credit_rdy_2),
        .noc2dmc_credit_rdy_3(mc0_ddrc_noc2dmc_credit_rdy_3),
        .noc2dmc_credit_rtn_0(mc0_ddrc_noc2dmc_credit_rtn_0),
        .noc2dmc_credit_rtn_1(mc0_ddrc_noc2dmc_credit_rtn_1),
        .noc2dmc_credit_rtn_2(mc0_ddrc_noc2dmc_credit_rtn_2),
        .noc2dmc_credit_rtn_3(mc0_ddrc_noc2dmc_credit_rtn_3),
        .noc2dmc_data_in_0(mc0_ddrc_noc2dmc_data_in_0),
        .noc2dmc_data_in_1(mc0_ddrc_noc2dmc_data_in_1),
        .noc2dmc_data_in_2(mc0_ddrc_noc2dmc_data_in_2),
        .noc2dmc_data_in_3(mc0_ddrc_noc2dmc_data_in_3),
        .noc2dmc_valid_in_0(mc0_ddrc_noc2dmc_valid_in_0),
        .noc2dmc_valid_in_1(mc0_ddrc_noc2dmc_valid_in_1),
        .noc2dmc_valid_in_2(mc0_ddrc_noc2dmc_valid_in_2),
        .noc2dmc_valid_in_3(mc0_ddrc_noc2dmc_valid_in_3),
        .sys_clk_n(sys_clk0_clk_n),
        .sys_clk_p(sys_clk0_clk_p));
  (* DONT_TOUCH *) 
  bd_6a72_MC1_ddrc_0 MC1_ddrc
       (.ch0_ddr4_act_n(\^CH0_DDR4_1_act_n ),
        .ch0_ddr4_adr(CH0_DDR4_1_adr),
        .ch0_ddr4_alert_n(CH0_DDR4_1_alert_n),
        .ch0_ddr4_ba(CH0_DDR4_1_ba),
        .ch0_ddr4_bg(CH0_DDR4_1_bg),
        .ch0_ddr4_ck_c(CH0_DDR4_1_ck_c),
        .ch0_ddr4_ck_t(CH0_DDR4_1_ck_t),
        .ch0_ddr4_cke(CH0_DDR4_1_cke),
        .ch0_ddr4_cs_n(CH0_DDR4_1_cs_n),
        .ch0_ddr4_dq(CH0_DDR4_1_dq),
        .ch0_ddr4_dqs_c(CH0_DDR4_1_dqs_c),
        .ch0_ddr4_dqs_t(CH0_DDR4_1_dqs_t),
        .ch0_ddr4_odt(CH0_DDR4_1_odt),
        .ch0_ddr4_parity(\^CH0_DDR4_1_par ),
        .ch0_ddr4_reset_n(\^CH0_DDR4_1_reset_n ),
        .dmc2noc_credit_rdy_0(mc1_ddrc_dmc2noc_credit_rdy_0),
        .dmc2noc_credit_rdy_1(mc1_ddrc_dmc2noc_credit_rdy_1),
        .dmc2noc_credit_rdy_2(mc1_ddrc_dmc2noc_credit_rdy_2),
        .dmc2noc_credit_rdy_3(mc1_ddrc_dmc2noc_credit_rdy_3),
        .dmc2noc_credit_rtn_0(mc1_ddrc_dmc2noc_credit_rtn_0),
        .dmc2noc_credit_rtn_1(mc1_ddrc_dmc2noc_credit_rtn_1),
        .dmc2noc_credit_rtn_2(mc1_ddrc_dmc2noc_credit_rtn_2),
        .dmc2noc_credit_rtn_3(mc1_ddrc_dmc2noc_credit_rtn_3),
        .dmc2noc_data_out_0(mc1_ddrc_dmc2noc_data_out_0),
        .dmc2noc_data_out_1(mc1_ddrc_dmc2noc_data_out_1),
        .dmc2noc_data_out_2(mc1_ddrc_dmc2noc_data_out_2),
        .dmc2noc_data_out_3(mc1_ddrc_dmc2noc_data_out_3),
        .dmc2noc_valid_out_0(mc1_ddrc_dmc2noc_valid_out_0),
        .dmc2noc_valid_out_1(mc1_ddrc_dmc2noc_valid_out_1),
        .dmc2noc_valid_out_2(mc1_ddrc_dmc2noc_valid_out_2),
        .dmc2noc_valid_out_3(mc1_ddrc_dmc2noc_valid_out_3),
        .from_noc_0(1'b0),
        .from_noc_1(1'b0),
        .from_noc_2(1'b0),
        .from_noc_3(1'b0),
        .noc2dmc_credit_rdy_0(mc1_ddrc_noc2dmc_credit_rdy_0),
        .noc2dmc_credit_rdy_1(mc1_ddrc_noc2dmc_credit_rdy_1),
        .noc2dmc_credit_rdy_2(mc1_ddrc_noc2dmc_credit_rdy_2),
        .noc2dmc_credit_rdy_3(mc1_ddrc_noc2dmc_credit_rdy_3),
        .noc2dmc_credit_rtn_0(mc1_ddrc_noc2dmc_credit_rtn_0),
        .noc2dmc_credit_rtn_1(mc1_ddrc_noc2dmc_credit_rtn_1),
        .noc2dmc_credit_rtn_2(mc1_ddrc_noc2dmc_credit_rtn_2),
        .noc2dmc_credit_rtn_3(mc1_ddrc_noc2dmc_credit_rtn_3),
        .noc2dmc_data_in_0(mc1_ddrc_noc2dmc_data_in_0),
        .noc2dmc_data_in_1(mc1_ddrc_noc2dmc_data_in_1),
        .noc2dmc_data_in_2(mc1_ddrc_noc2dmc_data_in_2),
        .noc2dmc_data_in_3(mc1_ddrc_noc2dmc_data_in_3),
        .noc2dmc_valid_in_0(mc1_ddrc_noc2dmc_valid_in_0),
        .noc2dmc_valid_in_1(mc1_ddrc_noc2dmc_valid_in_1),
        .noc2dmc_valid_in_2(mc1_ddrc_noc2dmc_valid_in_2),
        .noc2dmc_valid_in_3(mc1_ddrc_noc2dmc_valid_in_3),
        .sys_clk_n(sys_clk1_clk_n),
        .sys_clk_p(sys_clk1_clk_p));
  (* DONT_TOUCH *) 
  bd_6a72_MC_hbmc_0 MC_hbmc
       (.ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch0_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch0_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch0_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch0_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch0_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch0_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch0_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch0_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch0_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch0_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch0_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch0_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch0_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch0_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch0_hbmmc_noc_credit_return_mc_nocout_0),
        .ch0_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch0_hbmmc_noc_credit_return_mc_nocout_1),
        .ch0_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch0_hbmmc_noc_credit_return_mc_nocout_2),
        .ch0_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch0_hbmmc_noc_credit_return_mc_nocout_3),
        .ch0_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch0_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch0_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch0_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch0_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch0_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch0_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch0_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch0_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch0_hbmmc_noc_flit_mc_nocout_0),
        .ch0_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch0_hbmmc_noc_flit_mc_nocout_1),
        .ch0_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch0_hbmmc_noc_flit_mc_nocout_2),
        .ch0_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch0_hbmmc_noc_flit_mc_nocout_3),
        .ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch0_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch0_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch0_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch0_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch0_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch0_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch0_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch0_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch0_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch0_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch0_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch0_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch0_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch0_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch0_hbmmc_noc_valid_mc_nocout_0),
        .ch0_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch0_hbmmc_noc_valid_mc_nocout_1),
        .ch0_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch0_hbmmc_noc_valid_mc_nocout_2),
        .ch0_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch0_hbmmc_noc_valid_mc_nocout_3),
        .ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch10_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch10_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch10_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch10_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch10_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch10_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch10_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch10_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch10_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch10_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch10_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch10_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch10_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch10_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch10_hbmmc_noc_credit_return_mc_nocout_0),
        .ch10_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch10_hbmmc_noc_credit_return_mc_nocout_1),
        .ch10_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch10_hbmmc_noc_credit_return_mc_nocout_2),
        .ch10_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch10_hbmmc_noc_credit_return_mc_nocout_3),
        .ch10_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch10_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch10_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch10_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch10_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch10_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch10_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch10_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch10_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch10_hbmmc_noc_flit_mc_nocout_0),
        .ch10_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch10_hbmmc_noc_flit_mc_nocout_1),
        .ch10_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch10_hbmmc_noc_flit_mc_nocout_2),
        .ch10_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch10_hbmmc_noc_flit_mc_nocout_3),
        .ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch10_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch10_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch10_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch10_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch10_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch10_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch10_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch10_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch10_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch10_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch10_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch10_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch10_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch10_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch10_hbmmc_noc_valid_mc_nocout_0),
        .ch10_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch10_hbmmc_noc_valid_mc_nocout_1),
        .ch10_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch10_hbmmc_noc_valid_mc_nocout_2),
        .ch10_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch10_hbmmc_noc_valid_mc_nocout_3),
        .ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch11_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch11_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch11_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch11_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch11_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch11_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch11_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch11_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch11_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch11_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch11_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch11_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch11_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch11_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch11_hbmmc_noc_credit_return_mc_nocout_0),
        .ch11_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch11_hbmmc_noc_credit_return_mc_nocout_1),
        .ch11_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch11_hbmmc_noc_credit_return_mc_nocout_2),
        .ch11_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch11_hbmmc_noc_credit_return_mc_nocout_3),
        .ch11_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch11_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch11_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch11_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch11_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch11_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch11_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch11_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch11_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch11_hbmmc_noc_flit_mc_nocout_0),
        .ch11_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch11_hbmmc_noc_flit_mc_nocout_1),
        .ch11_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch11_hbmmc_noc_flit_mc_nocout_2),
        .ch11_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch11_hbmmc_noc_flit_mc_nocout_3),
        .ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch11_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch11_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch11_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch11_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch11_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch11_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch11_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch11_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch11_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch11_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch11_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch11_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch11_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch11_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch11_hbmmc_noc_valid_mc_nocout_0),
        .ch11_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch11_hbmmc_noc_valid_mc_nocout_1),
        .ch11_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch11_hbmmc_noc_valid_mc_nocout_2),
        .ch11_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch11_hbmmc_noc_valid_mc_nocout_3),
        .ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch12_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch12_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch12_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch12_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch12_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch12_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch12_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch12_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch12_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch12_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch12_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch12_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch12_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch12_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch12_hbmmc_noc_credit_return_mc_nocout_0),
        .ch12_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch12_hbmmc_noc_credit_return_mc_nocout_1),
        .ch12_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch12_hbmmc_noc_credit_return_mc_nocout_2),
        .ch12_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch12_hbmmc_noc_credit_return_mc_nocout_3),
        .ch12_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch12_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch12_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch12_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch12_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch12_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch12_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch12_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch12_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch12_hbmmc_noc_flit_mc_nocout_0),
        .ch12_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch12_hbmmc_noc_flit_mc_nocout_1),
        .ch12_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch12_hbmmc_noc_flit_mc_nocout_2),
        .ch12_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch12_hbmmc_noc_flit_mc_nocout_3),
        .ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch12_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch12_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch12_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch12_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch12_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch12_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch12_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch12_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch12_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch12_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch12_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch12_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch12_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch12_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch12_hbmmc_noc_valid_mc_nocout_0),
        .ch12_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch12_hbmmc_noc_valid_mc_nocout_1),
        .ch12_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch12_hbmmc_noc_valid_mc_nocout_2),
        .ch12_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch12_hbmmc_noc_valid_mc_nocout_3),
        .ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch13_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch13_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch13_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch13_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch13_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch13_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch13_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch13_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch13_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch13_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch13_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch13_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch13_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch13_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch13_hbmmc_noc_credit_return_mc_nocout_0),
        .ch13_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch13_hbmmc_noc_credit_return_mc_nocout_1),
        .ch13_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch13_hbmmc_noc_credit_return_mc_nocout_2),
        .ch13_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch13_hbmmc_noc_credit_return_mc_nocout_3),
        .ch13_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch13_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch13_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch13_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch13_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch13_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch13_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch13_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch13_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch13_hbmmc_noc_flit_mc_nocout_0),
        .ch13_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch13_hbmmc_noc_flit_mc_nocout_1),
        .ch13_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch13_hbmmc_noc_flit_mc_nocout_2),
        .ch13_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch13_hbmmc_noc_flit_mc_nocout_3),
        .ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch13_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch13_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch13_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch13_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch13_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch13_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch13_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch13_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch13_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch13_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch13_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch13_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch13_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch13_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch13_hbmmc_noc_valid_mc_nocout_0),
        .ch13_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch13_hbmmc_noc_valid_mc_nocout_1),
        .ch13_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch13_hbmmc_noc_valid_mc_nocout_2),
        .ch13_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch13_hbmmc_noc_valid_mc_nocout_3),
        .ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch14_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch14_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch14_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch14_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch14_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch14_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch14_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch14_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch14_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch14_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch14_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch14_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch14_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch14_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch14_hbmmc_noc_credit_return_mc_nocout_0),
        .ch14_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch14_hbmmc_noc_credit_return_mc_nocout_1),
        .ch14_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch14_hbmmc_noc_credit_return_mc_nocout_2),
        .ch14_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch14_hbmmc_noc_credit_return_mc_nocout_3),
        .ch14_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch14_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch14_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch14_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch14_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch14_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch14_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch14_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch14_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch14_hbmmc_noc_flit_mc_nocout_0),
        .ch14_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch14_hbmmc_noc_flit_mc_nocout_1),
        .ch14_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch14_hbmmc_noc_flit_mc_nocout_2),
        .ch14_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch14_hbmmc_noc_flit_mc_nocout_3),
        .ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch14_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch14_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch14_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch14_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch14_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch14_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch14_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch14_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch14_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch14_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch14_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch14_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch14_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch14_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch14_hbmmc_noc_valid_mc_nocout_0),
        .ch14_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch14_hbmmc_noc_valid_mc_nocout_1),
        .ch14_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch14_hbmmc_noc_valid_mc_nocout_2),
        .ch14_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch14_hbmmc_noc_valid_mc_nocout_3),
        .ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch15_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch15_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch15_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch15_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch15_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch15_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch15_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch15_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch15_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch15_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch15_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch15_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch15_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch15_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch15_hbmmc_noc_credit_return_mc_nocout_0),
        .ch15_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch15_hbmmc_noc_credit_return_mc_nocout_1),
        .ch15_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch15_hbmmc_noc_credit_return_mc_nocout_2),
        .ch15_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch15_hbmmc_noc_credit_return_mc_nocout_3),
        .ch15_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch15_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch15_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch15_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch15_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch15_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch15_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch15_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch15_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch15_hbmmc_noc_flit_mc_nocout_0),
        .ch15_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch15_hbmmc_noc_flit_mc_nocout_1),
        .ch15_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch15_hbmmc_noc_flit_mc_nocout_2),
        .ch15_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch15_hbmmc_noc_flit_mc_nocout_3),
        .ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch15_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch15_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch15_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch15_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch15_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch15_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch15_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch15_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch15_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch15_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch15_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch15_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch15_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch15_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch15_hbmmc_noc_valid_mc_nocout_0),
        .ch15_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch15_hbmmc_noc_valid_mc_nocout_1),
        .ch15_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch15_hbmmc_noc_valid_mc_nocout_2),
        .ch15_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch15_hbmmc_noc_valid_mc_nocout_3),
        .ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch1_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch1_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch1_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch1_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch1_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch1_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch1_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch1_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch1_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch1_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch1_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch1_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch1_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch1_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch1_hbmmc_noc_credit_return_mc_nocout_0),
        .ch1_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch1_hbmmc_noc_credit_return_mc_nocout_1),
        .ch1_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch1_hbmmc_noc_credit_return_mc_nocout_2),
        .ch1_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch1_hbmmc_noc_credit_return_mc_nocout_3),
        .ch1_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch1_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch1_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch1_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch1_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch1_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch1_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch1_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch1_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch1_hbmmc_noc_flit_mc_nocout_0),
        .ch1_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch1_hbmmc_noc_flit_mc_nocout_1),
        .ch1_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch1_hbmmc_noc_flit_mc_nocout_2),
        .ch1_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch1_hbmmc_noc_flit_mc_nocout_3),
        .ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch1_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch1_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch1_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch1_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch1_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch1_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch1_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch1_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch1_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch1_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch1_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch1_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch1_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch1_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch1_hbmmc_noc_valid_mc_nocout_0),
        .ch1_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch1_hbmmc_noc_valid_mc_nocout_1),
        .ch1_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch1_hbmmc_noc_valid_mc_nocout_2),
        .ch1_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch1_hbmmc_noc_valid_mc_nocout_3),
        .ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch2_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch2_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch2_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch2_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch2_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch2_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch2_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch2_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch2_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch2_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch2_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch2_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch2_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch2_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch2_hbmmc_noc_credit_return_mc_nocout_0),
        .ch2_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch2_hbmmc_noc_credit_return_mc_nocout_1),
        .ch2_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch2_hbmmc_noc_credit_return_mc_nocout_2),
        .ch2_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch2_hbmmc_noc_credit_return_mc_nocout_3),
        .ch2_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch2_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch2_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch2_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch2_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch2_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch2_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch2_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch2_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch2_hbmmc_noc_flit_mc_nocout_0),
        .ch2_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch2_hbmmc_noc_flit_mc_nocout_1),
        .ch2_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch2_hbmmc_noc_flit_mc_nocout_2),
        .ch2_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch2_hbmmc_noc_flit_mc_nocout_3),
        .ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch2_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch2_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch2_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch2_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch2_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch2_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch2_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch2_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch2_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch2_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch2_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch2_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch2_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch2_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch2_hbmmc_noc_valid_mc_nocout_0),
        .ch2_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch2_hbmmc_noc_valid_mc_nocout_1),
        .ch2_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch2_hbmmc_noc_valid_mc_nocout_2),
        .ch2_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch2_hbmmc_noc_valid_mc_nocout_3),
        .ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch3_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch3_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch3_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch3_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch3_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch3_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch3_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch3_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch3_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch3_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch3_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch3_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch3_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch3_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch3_hbmmc_noc_credit_return_mc_nocout_0),
        .ch3_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch3_hbmmc_noc_credit_return_mc_nocout_1),
        .ch3_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch3_hbmmc_noc_credit_return_mc_nocout_2),
        .ch3_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch3_hbmmc_noc_credit_return_mc_nocout_3),
        .ch3_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch3_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch3_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch3_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch3_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch3_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch3_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch3_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch3_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch3_hbmmc_noc_flit_mc_nocout_0),
        .ch3_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch3_hbmmc_noc_flit_mc_nocout_1),
        .ch3_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch3_hbmmc_noc_flit_mc_nocout_2),
        .ch3_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch3_hbmmc_noc_flit_mc_nocout_3),
        .ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch3_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch3_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch3_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch3_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch3_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch3_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch3_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch3_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch3_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch3_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch3_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch3_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch3_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch3_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch3_hbmmc_noc_valid_mc_nocout_0),
        .ch3_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch3_hbmmc_noc_valid_mc_nocout_1),
        .ch3_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch3_hbmmc_noc_valid_mc_nocout_2),
        .ch3_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch3_hbmmc_noc_valid_mc_nocout_3),
        .ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch4_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch4_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch4_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch4_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch4_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch4_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch4_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch4_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch4_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch4_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch4_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch4_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch4_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch4_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch4_hbmmc_noc_credit_return_mc_nocout_0),
        .ch4_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch4_hbmmc_noc_credit_return_mc_nocout_1),
        .ch4_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch4_hbmmc_noc_credit_return_mc_nocout_2),
        .ch4_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch4_hbmmc_noc_credit_return_mc_nocout_3),
        .ch4_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch4_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch4_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch4_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch4_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch4_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch4_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch4_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch4_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch4_hbmmc_noc_flit_mc_nocout_0),
        .ch4_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch4_hbmmc_noc_flit_mc_nocout_1),
        .ch4_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch4_hbmmc_noc_flit_mc_nocout_2),
        .ch4_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch4_hbmmc_noc_flit_mc_nocout_3),
        .ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch4_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch4_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch4_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch4_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch4_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch4_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch4_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch4_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch4_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch4_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch4_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch4_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch4_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch4_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch4_hbmmc_noc_valid_mc_nocout_0),
        .ch4_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch4_hbmmc_noc_valid_mc_nocout_1),
        .ch4_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch4_hbmmc_noc_valid_mc_nocout_2),
        .ch4_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch4_hbmmc_noc_valid_mc_nocout_3),
        .ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch5_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch5_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch5_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch5_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch5_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch5_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch5_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch5_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch5_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch5_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch5_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch5_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch5_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch5_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch5_hbmmc_noc_credit_return_mc_nocout_0),
        .ch5_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch5_hbmmc_noc_credit_return_mc_nocout_1),
        .ch5_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch5_hbmmc_noc_credit_return_mc_nocout_2),
        .ch5_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch5_hbmmc_noc_credit_return_mc_nocout_3),
        .ch5_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch5_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch5_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch5_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch5_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch5_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch5_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch5_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch5_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch5_hbmmc_noc_flit_mc_nocout_0),
        .ch5_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch5_hbmmc_noc_flit_mc_nocout_1),
        .ch5_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch5_hbmmc_noc_flit_mc_nocout_2),
        .ch5_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch5_hbmmc_noc_flit_mc_nocout_3),
        .ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch5_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch5_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch5_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch5_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch5_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch5_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch5_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch5_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch5_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch5_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch5_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch5_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch5_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch5_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch5_hbmmc_noc_valid_mc_nocout_0),
        .ch5_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch5_hbmmc_noc_valid_mc_nocout_1),
        .ch5_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch5_hbmmc_noc_valid_mc_nocout_2),
        .ch5_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch5_hbmmc_noc_valid_mc_nocout_3),
        .ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch6_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch6_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch6_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch6_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch6_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch6_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch6_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch6_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch6_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch6_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch6_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch6_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch6_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch6_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch6_hbmmc_noc_credit_return_mc_nocout_0),
        .ch6_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch6_hbmmc_noc_credit_return_mc_nocout_1),
        .ch6_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch6_hbmmc_noc_credit_return_mc_nocout_2),
        .ch6_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch6_hbmmc_noc_credit_return_mc_nocout_3),
        .ch6_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch6_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch6_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch6_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch6_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch6_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch6_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch6_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch6_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch6_hbmmc_noc_flit_mc_nocout_0),
        .ch6_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch6_hbmmc_noc_flit_mc_nocout_1),
        .ch6_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch6_hbmmc_noc_flit_mc_nocout_2),
        .ch6_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch6_hbmmc_noc_flit_mc_nocout_3),
        .ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch6_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch6_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch6_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch6_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch6_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch6_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch6_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch6_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch6_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch6_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch6_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch6_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch6_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch6_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch6_hbmmc_noc_valid_mc_nocout_0),
        .ch6_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch6_hbmmc_noc_valid_mc_nocout_1),
        .ch6_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch6_hbmmc_noc_valid_mc_nocout_2),
        .ch6_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch6_hbmmc_noc_valid_mc_nocout_3),
        .ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch7_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch7_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch7_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch7_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch7_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch7_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch7_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch7_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch7_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch7_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch7_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch7_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch7_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch7_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch7_hbmmc_noc_credit_return_mc_nocout_0),
        .ch7_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch7_hbmmc_noc_credit_return_mc_nocout_1),
        .ch7_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch7_hbmmc_noc_credit_return_mc_nocout_2),
        .ch7_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch7_hbmmc_noc_credit_return_mc_nocout_3),
        .ch7_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch7_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch7_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch7_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch7_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch7_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch7_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch7_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch7_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch7_hbmmc_noc_flit_mc_nocout_0),
        .ch7_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch7_hbmmc_noc_flit_mc_nocout_1),
        .ch7_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch7_hbmmc_noc_flit_mc_nocout_2),
        .ch7_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch7_hbmmc_noc_flit_mc_nocout_3),
        .ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch7_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch7_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch7_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch7_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch7_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch7_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch7_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch7_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch7_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch7_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch7_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch7_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch7_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch7_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch7_hbmmc_noc_valid_mc_nocout_0),
        .ch7_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch7_hbmmc_noc_valid_mc_nocout_1),
        .ch7_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch7_hbmmc_noc_valid_mc_nocout_2),
        .ch7_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch7_hbmmc_noc_valid_mc_nocout_3),
        .ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch8_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch8_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch8_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch8_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch8_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch8_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch8_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch8_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch8_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch8_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch8_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch8_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch8_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch8_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch8_hbmmc_noc_credit_return_mc_nocout_0),
        .ch8_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch8_hbmmc_noc_credit_return_mc_nocout_1),
        .ch8_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch8_hbmmc_noc_credit_return_mc_nocout_2),
        .ch8_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch8_hbmmc_noc_credit_return_mc_nocout_3),
        .ch8_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch8_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch8_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch8_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch8_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch8_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch8_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch8_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch8_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch8_hbmmc_noc_flit_mc_nocout_0),
        .ch8_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch8_hbmmc_noc_flit_mc_nocout_1),
        .ch8_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch8_hbmmc_noc_flit_mc_nocout_2),
        .ch8_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch8_hbmmc_noc_flit_mc_nocout_3),
        .ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch8_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch8_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch8_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch8_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch8_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch8_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch8_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch8_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch8_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch8_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch8_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch8_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch8_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch8_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch8_hbmmc_noc_valid_mc_nocout_0),
        .ch8_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch8_hbmmc_noc_valid_mc_nocout_1),
        .ch8_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch8_hbmmc_noc_valid_mc_nocout_2),
        .ch8_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch8_hbmmc_noc_valid_mc_nocout_3),
        .ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_0),
        .ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_1),
        .ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_2),
        .ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_3),
        .ch9_hbmmc_noc_credit_rdy_mc_nocout_0(mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_nocout_0),
        .ch9_hbmmc_noc_credit_rdy_mc_nocout_1(mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_nocout_1),
        .ch9_hbmmc_noc_credit_rdy_mc_nocout_2(mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_nocout_2),
        .ch9_hbmmc_noc_credit_rdy_mc_nocout_3(mc_hbmc_ch9_hbmmc_noc_credit_rdy_mc_nocout_3),
        .ch9_hbmmc_noc_credit_return_mc_noc2mc_in_0(mc_hbmc_ch9_hbmmc_noc_credit_return_mc_noc2mc_in_0),
        .ch9_hbmmc_noc_credit_return_mc_noc2mc_in_1(mc_hbmc_ch9_hbmmc_noc_credit_return_mc_noc2mc_in_1),
        .ch9_hbmmc_noc_credit_return_mc_noc2mc_in_2(mc_hbmc_ch9_hbmmc_noc_credit_return_mc_noc2mc_in_2),
        .ch9_hbmmc_noc_credit_return_mc_noc2mc_in_3(mc_hbmc_ch9_hbmmc_noc_credit_return_mc_noc2mc_in_3),
        .ch9_hbmmc_noc_credit_return_mc_nocout_0(mc_hbmc_ch9_hbmmc_noc_credit_return_mc_nocout_0),
        .ch9_hbmmc_noc_credit_return_mc_nocout_1(mc_hbmc_ch9_hbmmc_noc_credit_return_mc_nocout_1),
        .ch9_hbmmc_noc_credit_return_mc_nocout_2(mc_hbmc_ch9_hbmmc_noc_credit_return_mc_nocout_2),
        .ch9_hbmmc_noc_credit_return_mc_nocout_3(mc_hbmc_ch9_hbmmc_noc_credit_return_mc_nocout_3),
        .ch9_hbmmc_noc_flit_mc_noc2mc_in_0(mc_hbmc_ch9_hbmmc_noc_flit_mc_noc2mc_in_0),
        .ch9_hbmmc_noc_flit_mc_noc2mc_in_1(mc_hbmc_ch9_hbmmc_noc_flit_mc_noc2mc_in_1),
        .ch9_hbmmc_noc_flit_mc_noc2mc_in_2(mc_hbmc_ch9_hbmmc_noc_flit_mc_noc2mc_in_2),
        .ch9_hbmmc_noc_flit_mc_noc2mc_in_3(mc_hbmc_ch9_hbmmc_noc_flit_mc_noc2mc_in_3),
        .ch9_hbmmc_noc_flit_mc_nocout_0(mc_hbmc_ch9_hbmmc_noc_flit_mc_nocout_0),
        .ch9_hbmmc_noc_flit_mc_nocout_1(mc_hbmc_ch9_hbmmc_noc_flit_mc_nocout_1),
        .ch9_hbmmc_noc_flit_mc_nocout_2(mc_hbmc_ch9_hbmmc_noc_flit_mc_nocout_2),
        .ch9_hbmmc_noc_flit_mc_nocout_3(mc_hbmc_ch9_hbmmc_noc_flit_mc_nocout_3),
        .ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_0(mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_0),
        .ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_1(mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_1),
        .ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_2(mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_2),
        .ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_3(mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_3),
        .ch9_hbmmc_noc_pdest_id_mc_nocout_0(mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_nocout_0),
        .ch9_hbmmc_noc_pdest_id_mc_nocout_1(mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_nocout_1),
        .ch9_hbmmc_noc_pdest_id_mc_nocout_2(mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_nocout_2),
        .ch9_hbmmc_noc_pdest_id_mc_nocout_3(mc_hbmc_ch9_hbmmc_noc_pdest_id_mc_nocout_3),
        .ch9_hbmmc_noc_valid_mc_noc2mc_in_0(mc_hbmc_ch9_hbmmc_noc_valid_mc_noc2mc_in_0),
        .ch9_hbmmc_noc_valid_mc_noc2mc_in_1(mc_hbmc_ch9_hbmmc_noc_valid_mc_noc2mc_in_1),
        .ch9_hbmmc_noc_valid_mc_noc2mc_in_2(mc_hbmc_ch9_hbmmc_noc_valid_mc_noc2mc_in_2),
        .ch9_hbmmc_noc_valid_mc_noc2mc_in_3(mc_hbmc_ch9_hbmmc_noc_valid_mc_noc2mc_in_3),
        .ch9_hbmmc_noc_valid_mc_nocout_0(mc_hbmc_ch9_hbmmc_noc_valid_mc_nocout_0),
        .ch9_hbmmc_noc_valid_mc_nocout_1(mc_hbmc_ch9_hbmmc_noc_valid_mc_nocout_1),
        .ch9_hbmmc_noc_valid_mc_nocout_2(mc_hbmc_ch9_hbmmc_noc_valid_mc_nocout_2),
        .ch9_hbmmc_noc_valid_mc_nocout_3(mc_hbmc_ch9_hbmmc_noc_valid_mc_nocout_3));
  (* DONT_TOUCH *) 
  bd_6a72_S00_AXI_nmu_0 S00_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S00_AXI_araddr),
        .IF_NOC_AXI_ARBURST(S00_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(S00_AXI_arcache),
        .IF_NOC_AXI_ARID(S00_AXI_arid),
        .IF_NOC_AXI_ARLEN(S00_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(S00_AXI_arlock),
        .IF_NOC_AXI_ARPROT(S00_AXI_arprot),
        .IF_NOC_AXI_ARQOS(S00_AXI_arqos),
        .IF_NOC_AXI_ARREADY(\^S00_AXI_arready ),
        .IF_NOC_AXI_ARREGION(S00_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(S00_AXI_arsize),
        .IF_NOC_AXI_ARUSER(S00_AXI_aruser),
        .IF_NOC_AXI_ARVALID(S00_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(S00_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(S00_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(S00_AXI_awcache),
        .IF_NOC_AXI_AWID(S00_AXI_awid),
        .IF_NOC_AXI_AWLEN(S00_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(S00_AXI_awlock),
        .IF_NOC_AXI_AWPROT(S00_AXI_awprot),
        .IF_NOC_AXI_AWQOS(S00_AXI_awqos),
        .IF_NOC_AXI_AWREADY(\^S00_AXI_awready ),
        .IF_NOC_AXI_AWREGION(S00_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(S00_AXI_awsize),
        .IF_NOC_AXI_AWUSER(S00_AXI_awuser),
        .IF_NOC_AXI_AWVALID(S00_AXI_awvalid),
        .IF_NOC_AXI_BID(S00_AXI_bid),
        .IF_NOC_AXI_BREADY(S00_AXI_bready),
        .IF_NOC_AXI_BRESP(S00_AXI_bresp),
        .IF_NOC_AXI_BVALID(\^S00_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(S00_AXI_rdata),
        .IF_NOC_AXI_RID(S00_AXI_rid),
        .IF_NOC_AXI_RLAST(S00_AXI_rlast),
        .IF_NOC_AXI_RREADY(S00_AXI_rready),
        .IF_NOC_AXI_RRESP(S00_AXI_rresp),
        .IF_NOC_AXI_RUSER(S00_AXI_ruser),
        .IF_NOC_AXI_RVALID(\^S00_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(S00_AXI_wdata),
        .IF_NOC_AXI_WLAST(S00_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^S00_AXI_wready ),
        .IF_NOC_AXI_WSTRB(S00_AXI_wstrb),
        .IF_NOC_AXI_WUSER(S00_AXI_wuser),
        .IF_NOC_AXI_WVALID(S00_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s00_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s00_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s00_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s00_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s00_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s00_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s00_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s00_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk0));
  (* DONT_TOUCH *) 
  bd_6a72_S01_AXI_nmu_0 S01_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S01_AXI_araddr),
        .IF_NOC_AXI_ARBURST(S01_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(S01_AXI_arcache),
        .IF_NOC_AXI_ARID(S01_AXI_arid),
        .IF_NOC_AXI_ARLEN(S01_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(S01_AXI_arlock),
        .IF_NOC_AXI_ARPROT(S01_AXI_arprot),
        .IF_NOC_AXI_ARQOS(S01_AXI_arqos),
        .IF_NOC_AXI_ARREADY(\^S01_AXI_arready ),
        .IF_NOC_AXI_ARREGION(S01_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(S01_AXI_arsize),
        .IF_NOC_AXI_ARUSER(S01_AXI_aruser),
        .IF_NOC_AXI_ARVALID(S01_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(S01_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(S01_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(S01_AXI_awcache),
        .IF_NOC_AXI_AWID(S01_AXI_awid),
        .IF_NOC_AXI_AWLEN(S01_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(S01_AXI_awlock),
        .IF_NOC_AXI_AWPROT(S01_AXI_awprot),
        .IF_NOC_AXI_AWQOS(S01_AXI_awqos),
        .IF_NOC_AXI_AWREADY(\^S01_AXI_awready ),
        .IF_NOC_AXI_AWREGION(S01_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(S01_AXI_awsize),
        .IF_NOC_AXI_AWUSER(S01_AXI_awuser),
        .IF_NOC_AXI_AWVALID(S01_AXI_awvalid),
        .IF_NOC_AXI_BID(S01_AXI_bid),
        .IF_NOC_AXI_BREADY(S01_AXI_bready),
        .IF_NOC_AXI_BRESP(S01_AXI_bresp),
        .IF_NOC_AXI_BVALID(\^S01_AXI_bvalid ),
        .IF_NOC_AXI_RDATA(S01_AXI_rdata),
        .IF_NOC_AXI_RID(S01_AXI_rid),
        .IF_NOC_AXI_RLAST(S01_AXI_rlast),
        .IF_NOC_AXI_RREADY(S01_AXI_rready),
        .IF_NOC_AXI_RRESP(S01_AXI_rresp),
        .IF_NOC_AXI_RUSER(S01_AXI_ruser),
        .IF_NOC_AXI_RVALID(\^S01_AXI_rvalid ),
        .IF_NOC_AXI_WDATA(S01_AXI_wdata),
        .IF_NOC_AXI_WLAST(S01_AXI_wlast),
        .IF_NOC_AXI_WREADY(\^S01_AXI_wready ),
        .IF_NOC_AXI_WSTRB(S01_AXI_wstrb),
        .IF_NOC_AXI_WUSER(S01_AXI_wuser),
        .IF_NOC_AXI_WVALID(S01_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s01_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s01_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s01_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s01_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s01_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s01_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s01_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s01_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk1));
  (* DONT_TOUCH *) 
  bd_6a72_const_0_0 const_0
       (.dout(const_0_dout));
endmodule
