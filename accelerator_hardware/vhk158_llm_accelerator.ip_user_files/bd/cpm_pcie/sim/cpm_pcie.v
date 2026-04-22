//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Mon Apr 20 12:37:29 2026
//Host        : dcs-cpu01.dcs.lab running 64-bit Rocky Linux release 8.10 (Green Obsidian)
//Command     : generate_target cpm_pcie.bd
//Design      : cpm_pcie
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cpm_pcie,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cpm_pcie,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=7,da_cips_cnt=1,synth_mode=None}" *) (* HW_HANDOFF = "cpm_pcie.hwdef" *) 
module cpm_pcie
   (HBM00_AXI_araddr_0,
    HBM00_AXI_arburst_0,
    HBM00_AXI_arid_0,
    HBM00_AXI_arlen_0,
    HBM00_AXI_arready_0,
    HBM00_AXI_arsize_0,
    HBM00_AXI_arvalid_0,
    HBM00_AXI_awaddr_0,
    HBM00_AXI_awburst_0,
    HBM00_AXI_awid_0,
    HBM00_AXI_awlen_0,
    HBM00_AXI_awready_0,
    HBM00_AXI_awsize_0,
    HBM00_AXI_awvalid_0,
    HBM00_AXI_bready_0,
    HBM00_AXI_bresp_0,
    HBM00_AXI_bvalid_0,
    HBM00_AXI_rdata_0,
    HBM00_AXI_rlast_0,
    HBM00_AXI_rready_0,
    HBM00_AXI_rvalid_0,
    HBM00_AXI_wdata_0,
    HBM00_AXI_wlast_0,
    HBM00_AXI_wready_0,
    HBM00_AXI_wstrb_0,
    HBM00_AXI_wvalid_0,
    HBM01_AXI_araddr_0,
    HBM01_AXI_arburst_0,
    HBM01_AXI_arid_0,
    HBM01_AXI_arlen_0,
    HBM01_AXI_arready_0,
    HBM01_AXI_arsize_0,
    HBM01_AXI_arvalid_0,
    HBM01_AXI_awaddr_0,
    HBM01_AXI_awburst_0,
    HBM01_AXI_awid_0,
    HBM01_AXI_awlen_0,
    HBM01_AXI_awready_0,
    HBM01_AXI_awsize_0,
    HBM01_AXI_awvalid_0,
    HBM01_AXI_bready_0,
    HBM01_AXI_bresp_0,
    HBM01_AXI_bvalid_0,
    HBM01_AXI_rdata_0,
    HBM01_AXI_rlast_0,
    HBM01_AXI_rready_0,
    HBM01_AXI_rvalid_0,
    HBM01_AXI_wdata_0,
    HBM01_AXI_wlast_0,
    HBM01_AXI_wready_0,
    HBM01_AXI_wstrb_0,
    HBM01_AXI_wvalid_0,
    HBM02_AXI_araddr_0,
    HBM02_AXI_arburst_0,
    HBM02_AXI_arid_0,
    HBM02_AXI_arlen_0,
    HBM02_AXI_arready_0,
    HBM02_AXI_arsize_0,
    HBM02_AXI_arvalid_0,
    HBM02_AXI_awaddr_0,
    HBM02_AXI_awburst_0,
    HBM02_AXI_awid_0,
    HBM02_AXI_awlen_0,
    HBM02_AXI_awready_0,
    HBM02_AXI_awsize_0,
    HBM02_AXI_awvalid_0,
    HBM02_AXI_bready_0,
    HBM02_AXI_bresp_0,
    HBM02_AXI_bvalid_0,
    HBM02_AXI_rdata_0,
    HBM02_AXI_rlast_0,
    HBM02_AXI_rready_0,
    HBM02_AXI_rvalid_0,
    HBM02_AXI_wdata_0,
    HBM02_AXI_wlast_0,
    HBM02_AXI_wready_0,
    HBM02_AXI_wstrb_0,
    HBM02_AXI_wvalid_0,
    HBM03_AXI_araddr_0,
    HBM03_AXI_arburst_0,
    HBM03_AXI_arid_0,
    HBM03_AXI_arlen_0,
    HBM03_AXI_arready_0,
    HBM03_AXI_arsize_0,
    HBM03_AXI_arvalid_0,
    HBM03_AXI_awaddr_0,
    HBM03_AXI_awburst_0,
    HBM03_AXI_awid_0,
    HBM03_AXI_awlen_0,
    HBM03_AXI_awready_0,
    HBM03_AXI_awsize_0,
    HBM03_AXI_awvalid_0,
    HBM03_AXI_bready_0,
    HBM03_AXI_bresp_0,
    HBM03_AXI_bvalid_0,
    HBM03_AXI_rdata_0,
    HBM03_AXI_rlast_0,
    HBM03_AXI_rready_0,
    HBM03_AXI_rvalid_0,
    HBM03_AXI_wdata_0,
    HBM03_AXI_wlast_0,
    HBM03_AXI_wready_0,
    HBM03_AXI_wstrb_0,
    HBM03_AXI_wvalid_0,
    HBM04_AXI_araddr_0,
    HBM04_AXI_arburst_0,
    HBM04_AXI_arid_0,
    HBM04_AXI_arlen_0,
    HBM04_AXI_arready_0,
    HBM04_AXI_arsize_0,
    HBM04_AXI_arvalid_0,
    HBM04_AXI_awaddr_0,
    HBM04_AXI_awburst_0,
    HBM04_AXI_awid_0,
    HBM04_AXI_awlen_0,
    HBM04_AXI_awready_0,
    HBM04_AXI_awsize_0,
    HBM04_AXI_awvalid_0,
    HBM04_AXI_bready_0,
    HBM04_AXI_bresp_0,
    HBM04_AXI_bvalid_0,
    HBM04_AXI_rdata_0,
    HBM04_AXI_rlast_0,
    HBM04_AXI_rready_0,
    HBM04_AXI_rvalid_0,
    HBM04_AXI_wdata_0,
    HBM04_AXI_wlast_0,
    HBM04_AXI_wready_0,
    HBM04_AXI_wstrb_0,
    HBM04_AXI_wvalid_0,
    HBM05_AXI_araddr_0,
    HBM05_AXI_arburst_0,
    HBM05_AXI_arid_0,
    HBM05_AXI_arlen_0,
    HBM05_AXI_arready_0,
    HBM05_AXI_arsize_0,
    HBM05_AXI_arvalid_0,
    HBM05_AXI_awaddr_0,
    HBM05_AXI_awburst_0,
    HBM05_AXI_awid_0,
    HBM05_AXI_awlen_0,
    HBM05_AXI_awready_0,
    HBM05_AXI_awsize_0,
    HBM05_AXI_awvalid_0,
    HBM05_AXI_bready_0,
    HBM05_AXI_bresp_0,
    HBM05_AXI_bvalid_0,
    HBM05_AXI_rdata_0,
    HBM05_AXI_rlast_0,
    HBM05_AXI_rready_0,
    HBM05_AXI_rvalid_0,
    HBM05_AXI_wdata_0,
    HBM05_AXI_wlast_0,
    HBM05_AXI_wready_0,
    HBM05_AXI_wstrb_0,
    HBM05_AXI_wvalid_0,
    HBM06_AXI_araddr_0,
    HBM06_AXI_arburst_0,
    HBM06_AXI_arid_0,
    HBM06_AXI_arlen_0,
    HBM06_AXI_arready_0,
    HBM06_AXI_arsize_0,
    HBM06_AXI_arvalid_0,
    HBM06_AXI_awaddr_0,
    HBM06_AXI_awburst_0,
    HBM06_AXI_awid_0,
    HBM06_AXI_awlen_0,
    HBM06_AXI_awready_0,
    HBM06_AXI_awsize_0,
    HBM06_AXI_awvalid_0,
    HBM06_AXI_bready_0,
    HBM06_AXI_bresp_0,
    HBM06_AXI_bvalid_0,
    HBM06_AXI_rdata_0,
    HBM06_AXI_rlast_0,
    HBM06_AXI_rready_0,
    HBM06_AXI_rvalid_0,
    HBM06_AXI_wdata_0,
    HBM06_AXI_wlast_0,
    HBM06_AXI_wready_0,
    HBM06_AXI_wstrb_0,
    HBM06_AXI_wvalid_0,
    HBM07_AXI_araddr_0,
    HBM07_AXI_arburst_0,
    HBM07_AXI_arid_0,
    HBM07_AXI_arlen_0,
    HBM07_AXI_arready_0,
    HBM07_AXI_arsize_0,
    HBM07_AXI_arvalid_0,
    HBM07_AXI_awaddr_0,
    HBM07_AXI_awburst_0,
    HBM07_AXI_awid_0,
    HBM07_AXI_awlen_0,
    HBM07_AXI_awready_0,
    HBM07_AXI_awsize_0,
    HBM07_AXI_awvalid_0,
    HBM07_AXI_bready_0,
    HBM07_AXI_bresp_0,
    HBM07_AXI_bvalid_0,
    HBM07_AXI_rdata_0,
    HBM07_AXI_rlast_0,
    HBM07_AXI_rready_0,
    HBM07_AXI_rvalid_0,
    HBM07_AXI_wdata_0,
    HBM07_AXI_wlast_0,
    HBM07_AXI_wready_0,
    HBM07_AXI_wstrb_0,
    HBM07_AXI_wvalid_0,
    HBM08_AXI_araddr_0,
    HBM08_AXI_arburst_0,
    HBM08_AXI_arid_0,
    HBM08_AXI_arlen_0,
    HBM08_AXI_arready_0,
    HBM08_AXI_arsize_0,
    HBM08_AXI_arvalid_0,
    HBM08_AXI_awaddr_0,
    HBM08_AXI_awburst_0,
    HBM08_AXI_awid_0,
    HBM08_AXI_awlen_0,
    HBM08_AXI_awready_0,
    HBM08_AXI_awsize_0,
    HBM08_AXI_awvalid_0,
    HBM08_AXI_bready_0,
    HBM08_AXI_bresp_0,
    HBM08_AXI_bvalid_0,
    HBM08_AXI_rdata_0,
    HBM08_AXI_rlast_0,
    HBM08_AXI_rready_0,
    HBM08_AXI_rvalid_0,
    HBM08_AXI_wdata_0,
    HBM08_AXI_wlast_0,
    HBM08_AXI_wready_0,
    HBM08_AXI_wstrb_0,
    HBM08_AXI_wvalid_0,
    HBM09_AXI_araddr_0,
    HBM09_AXI_arburst_0,
    HBM09_AXI_arid_0,
    HBM09_AXI_arlen_0,
    HBM09_AXI_arready_0,
    HBM09_AXI_arsize_0,
    HBM09_AXI_arvalid_0,
    HBM09_AXI_awaddr_0,
    HBM09_AXI_awburst_0,
    HBM09_AXI_awid_0,
    HBM09_AXI_awlen_0,
    HBM09_AXI_awready_0,
    HBM09_AXI_awsize_0,
    HBM09_AXI_awvalid_0,
    HBM09_AXI_bready_0,
    HBM09_AXI_bresp_0,
    HBM09_AXI_bvalid_0,
    HBM09_AXI_rdata_0,
    HBM09_AXI_rlast_0,
    HBM09_AXI_rready_0,
    HBM09_AXI_rvalid_0,
    HBM09_AXI_wdata_0,
    HBM09_AXI_wlast_0,
    HBM09_AXI_wready_0,
    HBM09_AXI_wstrb_0,
    HBM09_AXI_wvalid_0,
    HBM10_AXI_araddr_0,
    HBM10_AXI_arburst_0,
    HBM10_AXI_arid_0,
    HBM10_AXI_arlen_0,
    HBM10_AXI_arready_0,
    HBM10_AXI_arsize_0,
    HBM10_AXI_arvalid_0,
    HBM10_AXI_awaddr_0,
    HBM10_AXI_awburst_0,
    HBM10_AXI_awid_0,
    HBM10_AXI_awlen_0,
    HBM10_AXI_awready_0,
    HBM10_AXI_awsize_0,
    HBM10_AXI_awvalid_0,
    HBM10_AXI_bready_0,
    HBM10_AXI_bresp_0,
    HBM10_AXI_bvalid_0,
    HBM10_AXI_rdata_0,
    HBM10_AXI_rlast_0,
    HBM10_AXI_rready_0,
    HBM10_AXI_rvalid_0,
    HBM10_AXI_wdata_0,
    HBM10_AXI_wlast_0,
    HBM10_AXI_wready_0,
    HBM10_AXI_wstrb_0,
    HBM10_AXI_wvalid_0,
    HBM11_AXI_araddr_0,
    HBM11_AXI_arburst_0,
    HBM11_AXI_arid_0,
    HBM11_AXI_arlen_0,
    HBM11_AXI_arready_0,
    HBM11_AXI_arsize_0,
    HBM11_AXI_arvalid_0,
    HBM11_AXI_awaddr_0,
    HBM11_AXI_awburst_0,
    HBM11_AXI_awid_0,
    HBM11_AXI_awlen_0,
    HBM11_AXI_awready_0,
    HBM11_AXI_awsize_0,
    HBM11_AXI_awvalid_0,
    HBM11_AXI_bready_0,
    HBM11_AXI_bresp_0,
    HBM11_AXI_bvalid_0,
    HBM11_AXI_rdata_0,
    HBM11_AXI_rlast_0,
    HBM11_AXI_rready_0,
    HBM11_AXI_rvalid_0,
    HBM11_AXI_wdata_0,
    HBM11_AXI_wlast_0,
    HBM11_AXI_wready_0,
    HBM11_AXI_wstrb_0,
    HBM11_AXI_wvalid_0,
    HBM12_AXI_araddr_0,
    HBM12_AXI_arburst_0,
    HBM12_AXI_arid_0,
    HBM12_AXI_arlen_0,
    HBM12_AXI_arready_0,
    HBM12_AXI_arsize_0,
    HBM12_AXI_arvalid_0,
    HBM12_AXI_awaddr_0,
    HBM12_AXI_awburst_0,
    HBM12_AXI_awid_0,
    HBM12_AXI_awlen_0,
    HBM12_AXI_awready_0,
    HBM12_AXI_awsize_0,
    HBM12_AXI_awvalid_0,
    HBM12_AXI_bready_0,
    HBM12_AXI_bresp_0,
    HBM12_AXI_bvalid_0,
    HBM12_AXI_rdata_0,
    HBM12_AXI_rlast_0,
    HBM12_AXI_rready_0,
    HBM12_AXI_rvalid_0,
    HBM12_AXI_wdata_0,
    HBM12_AXI_wlast_0,
    HBM12_AXI_wready_0,
    HBM12_AXI_wstrb_0,
    HBM12_AXI_wvalid_0,
    HBM13_AXI_araddr_0,
    HBM13_AXI_arburst_0,
    HBM13_AXI_arid_0,
    HBM13_AXI_arlen_0,
    HBM13_AXI_arready_0,
    HBM13_AXI_arsize_0,
    HBM13_AXI_arvalid_0,
    HBM13_AXI_awaddr_0,
    HBM13_AXI_awburst_0,
    HBM13_AXI_awid_0,
    HBM13_AXI_awlen_0,
    HBM13_AXI_awready_0,
    HBM13_AXI_awsize_0,
    HBM13_AXI_awvalid_0,
    HBM13_AXI_bready_0,
    HBM13_AXI_bresp_0,
    HBM13_AXI_bvalid_0,
    HBM13_AXI_rdata_0,
    HBM13_AXI_rlast_0,
    HBM13_AXI_rready_0,
    HBM13_AXI_rvalid_0,
    HBM13_AXI_wdata_0,
    HBM13_AXI_wlast_0,
    HBM13_AXI_wready_0,
    HBM13_AXI_wstrb_0,
    HBM13_AXI_wvalid_0,
    HBM14_AXI_araddr_0,
    HBM14_AXI_arburst_0,
    HBM14_AXI_arid_0,
    HBM14_AXI_arlen_0,
    HBM14_AXI_arready_0,
    HBM14_AXI_arsize_0,
    HBM14_AXI_arvalid_0,
    HBM14_AXI_awaddr_0,
    HBM14_AXI_awburst_0,
    HBM14_AXI_awid_0,
    HBM14_AXI_awlen_0,
    HBM14_AXI_awready_0,
    HBM14_AXI_awsize_0,
    HBM14_AXI_awvalid_0,
    HBM14_AXI_bready_0,
    HBM14_AXI_bresp_0,
    HBM14_AXI_bvalid_0,
    HBM14_AXI_rdata_0,
    HBM14_AXI_rlast_0,
    HBM14_AXI_rready_0,
    HBM14_AXI_rvalid_0,
    HBM14_AXI_wdata_0,
    HBM14_AXI_wlast_0,
    HBM14_AXI_wready_0,
    HBM14_AXI_wstrb_0,
    HBM14_AXI_wvalid_0,
    HBM15_AXI_araddr_0,
    HBM15_AXI_arburst_0,
    HBM15_AXI_arid_0,
    HBM15_AXI_arlen_0,
    HBM15_AXI_arready_0,
    HBM15_AXI_arsize_0,
    HBM15_AXI_arvalid_0,
    HBM15_AXI_awaddr_0,
    HBM15_AXI_awburst_0,
    HBM15_AXI_awid_0,
    HBM15_AXI_awlen_0,
    HBM15_AXI_awready_0,
    HBM15_AXI_awsize_0,
    HBM15_AXI_awvalid_0,
    HBM15_AXI_bready_0,
    HBM15_AXI_bresp_0,
    HBM15_AXI_bvalid_0,
    HBM15_AXI_rdata_0,
    HBM15_AXI_rlast_0,
    HBM15_AXI_rready_0,
    HBM15_AXI_rvalid_0,
    HBM15_AXI_wdata_0,
    HBM15_AXI_wlast_0,
    HBM15_AXI_wready_0,
    HBM15_AXI_wstrb_0,
    HBM15_AXI_wvalid_0,
    HBM16_AXI_araddr_0,
    HBM16_AXI_arburst_0,
    HBM16_AXI_arid_0,
    HBM16_AXI_arlen_0,
    HBM16_AXI_arready_0,
    HBM16_AXI_arsize_0,
    HBM16_AXI_arvalid_0,
    HBM16_AXI_awaddr_0,
    HBM16_AXI_awburst_0,
    HBM16_AXI_awid_0,
    HBM16_AXI_awlen_0,
    HBM16_AXI_awready_0,
    HBM16_AXI_awsize_0,
    HBM16_AXI_awvalid_0,
    HBM16_AXI_bready_0,
    HBM16_AXI_bresp_0,
    HBM16_AXI_bvalid_0,
    HBM16_AXI_rdata_0,
    HBM16_AXI_rlast_0,
    HBM16_AXI_rready_0,
    HBM16_AXI_rvalid_0,
    HBM16_AXI_wdata_0,
    HBM16_AXI_wlast_0,
    HBM16_AXI_wready_0,
    HBM16_AXI_wstrb_0,
    HBM16_AXI_wvalid_0,
    HBM17_AXI_araddr_0,
    HBM17_AXI_arburst_0,
    HBM17_AXI_arid_0,
    HBM17_AXI_arlen_0,
    HBM17_AXI_arready_0,
    HBM17_AXI_arsize_0,
    HBM17_AXI_arvalid_0,
    HBM17_AXI_awaddr_0,
    HBM17_AXI_awburst_0,
    HBM17_AXI_awid_0,
    HBM17_AXI_awlen_0,
    HBM17_AXI_awready_0,
    HBM17_AXI_awsize_0,
    HBM17_AXI_awvalid_0,
    HBM17_AXI_bready_0,
    HBM17_AXI_bresp_0,
    HBM17_AXI_bvalid_0,
    HBM17_AXI_rdata_0,
    HBM17_AXI_rlast_0,
    HBM17_AXI_rready_0,
    HBM17_AXI_rvalid_0,
    HBM17_AXI_wdata_0,
    HBM17_AXI_wlast_0,
    HBM17_AXI_wready_0,
    HBM17_AXI_wstrb_0,
    HBM17_AXI_wvalid_0,
    HBM18_AXI_araddr_0,
    HBM18_AXI_arburst_0,
    HBM18_AXI_arid_0,
    HBM18_AXI_arlen_0,
    HBM18_AXI_arready_0,
    HBM18_AXI_arsize_0,
    HBM18_AXI_arvalid_0,
    HBM18_AXI_awaddr_0,
    HBM18_AXI_awburst_0,
    HBM18_AXI_awid_0,
    HBM18_AXI_awlen_0,
    HBM18_AXI_awready_0,
    HBM18_AXI_awsize_0,
    HBM18_AXI_awvalid_0,
    HBM18_AXI_bready_0,
    HBM18_AXI_bresp_0,
    HBM18_AXI_bvalid_0,
    HBM18_AXI_rdata_0,
    HBM18_AXI_rlast_0,
    HBM18_AXI_rready_0,
    HBM18_AXI_rvalid_0,
    HBM18_AXI_wdata_0,
    HBM18_AXI_wlast_0,
    HBM18_AXI_wready_0,
    HBM18_AXI_wstrb_0,
    HBM18_AXI_wvalid_0,
    HBM19_AXI_araddr_0,
    HBM19_AXI_arburst_0,
    HBM19_AXI_arid_0,
    HBM19_AXI_arlen_0,
    HBM19_AXI_arready_0,
    HBM19_AXI_arsize_0,
    HBM19_AXI_arvalid_0,
    HBM19_AXI_awaddr_0,
    HBM19_AXI_awburst_0,
    HBM19_AXI_awid_0,
    HBM19_AXI_awlen_0,
    HBM19_AXI_awready_0,
    HBM19_AXI_awsize_0,
    HBM19_AXI_awvalid_0,
    HBM19_AXI_bready_0,
    HBM19_AXI_bresp_0,
    HBM19_AXI_bvalid_0,
    HBM19_AXI_rdata_0,
    HBM19_AXI_rlast_0,
    HBM19_AXI_rready_0,
    HBM19_AXI_rvalid_0,
    HBM19_AXI_wdata_0,
    HBM19_AXI_wlast_0,
    HBM19_AXI_wready_0,
    HBM19_AXI_wstrb_0,
    HBM19_AXI_wvalid_0,
    HBM20_AXI_araddr_0,
    HBM20_AXI_arburst_0,
    HBM20_AXI_arid_0,
    HBM20_AXI_arlen_0,
    HBM20_AXI_arready_0,
    HBM20_AXI_arsize_0,
    HBM20_AXI_arvalid_0,
    HBM20_AXI_awaddr_0,
    HBM20_AXI_awburst_0,
    HBM20_AXI_awid_0,
    HBM20_AXI_awlen_0,
    HBM20_AXI_awready_0,
    HBM20_AXI_awsize_0,
    HBM20_AXI_awvalid_0,
    HBM20_AXI_bready_0,
    HBM20_AXI_bresp_0,
    HBM20_AXI_bvalid_0,
    HBM20_AXI_rdata_0,
    HBM20_AXI_rlast_0,
    HBM20_AXI_rready_0,
    HBM20_AXI_rvalid_0,
    HBM20_AXI_wdata_0,
    HBM20_AXI_wlast_0,
    HBM20_AXI_wready_0,
    HBM20_AXI_wstrb_0,
    HBM20_AXI_wvalid_0,
    HBM21_AXI_araddr_0,
    HBM21_AXI_arburst_0,
    HBM21_AXI_arid_0,
    HBM21_AXI_arlen_0,
    HBM21_AXI_arready_0,
    HBM21_AXI_arsize_0,
    HBM21_AXI_arvalid_0,
    HBM21_AXI_awaddr_0,
    HBM21_AXI_awburst_0,
    HBM21_AXI_awid_0,
    HBM21_AXI_awlen_0,
    HBM21_AXI_awready_0,
    HBM21_AXI_awsize_0,
    HBM21_AXI_awvalid_0,
    HBM21_AXI_bready_0,
    HBM21_AXI_bresp_0,
    HBM21_AXI_bvalid_0,
    HBM21_AXI_rdata_0,
    HBM21_AXI_rlast_0,
    HBM21_AXI_rready_0,
    HBM21_AXI_rvalid_0,
    HBM21_AXI_wdata_0,
    HBM21_AXI_wlast_0,
    HBM21_AXI_wready_0,
    HBM21_AXI_wstrb_0,
    HBM21_AXI_wvalid_0,
    HBM22_AXI_araddr_0,
    HBM22_AXI_arburst_0,
    HBM22_AXI_arid_0,
    HBM22_AXI_arlen_0,
    HBM22_AXI_arready_0,
    HBM22_AXI_arsize_0,
    HBM22_AXI_arvalid_0,
    HBM22_AXI_awaddr_0,
    HBM22_AXI_awburst_0,
    HBM22_AXI_awid_0,
    HBM22_AXI_awlen_0,
    HBM22_AXI_awready_0,
    HBM22_AXI_awsize_0,
    HBM22_AXI_awvalid_0,
    HBM22_AXI_bready_0,
    HBM22_AXI_bresp_0,
    HBM22_AXI_bvalid_0,
    HBM22_AXI_rdata_0,
    HBM22_AXI_rlast_0,
    HBM22_AXI_rready_0,
    HBM22_AXI_rvalid_0,
    HBM22_AXI_wdata_0,
    HBM22_AXI_wlast_0,
    HBM22_AXI_wready_0,
    HBM22_AXI_wstrb_0,
    HBM22_AXI_wvalid_0,
    HBM23_AXI_araddr_0,
    HBM23_AXI_arburst_0,
    HBM23_AXI_arid_0,
    HBM23_AXI_arlen_0,
    HBM23_AXI_arready_0,
    HBM23_AXI_arsize_0,
    HBM23_AXI_arvalid_0,
    HBM23_AXI_awaddr_0,
    HBM23_AXI_awburst_0,
    HBM23_AXI_awid_0,
    HBM23_AXI_awlen_0,
    HBM23_AXI_awready_0,
    HBM23_AXI_awsize_0,
    HBM23_AXI_awvalid_0,
    HBM23_AXI_bready_0,
    HBM23_AXI_bresp_0,
    HBM23_AXI_bvalid_0,
    HBM23_AXI_rdata_0,
    HBM23_AXI_rlast_0,
    HBM23_AXI_rready_0,
    HBM23_AXI_rvalid_0,
    HBM23_AXI_wdata_0,
    HBM23_AXI_wlast_0,
    HBM23_AXI_wready_0,
    HBM23_AXI_wstrb_0,
    HBM23_AXI_wvalid_0,
    HBM24_AXI_araddr_0,
    HBM24_AXI_arburst_0,
    HBM24_AXI_arid_0,
    HBM24_AXI_arlen_0,
    HBM24_AXI_arready_0,
    HBM24_AXI_arsize_0,
    HBM24_AXI_arvalid_0,
    HBM24_AXI_awaddr_0,
    HBM24_AXI_awburst_0,
    HBM24_AXI_awid_0,
    HBM24_AXI_awlen_0,
    HBM24_AXI_awready_0,
    HBM24_AXI_awsize_0,
    HBM24_AXI_awvalid_0,
    HBM24_AXI_bready_0,
    HBM24_AXI_bresp_0,
    HBM24_AXI_bvalid_0,
    HBM24_AXI_rdata_0,
    HBM24_AXI_rlast_0,
    HBM24_AXI_rready_0,
    HBM24_AXI_rvalid_0,
    HBM24_AXI_wdata_0,
    HBM24_AXI_wlast_0,
    HBM24_AXI_wready_0,
    HBM24_AXI_wstrb_0,
    HBM24_AXI_wvalid_0,
    HBM25_AXI_araddr_0,
    HBM25_AXI_arburst_0,
    HBM25_AXI_arid_0,
    HBM25_AXI_arlen_0,
    HBM25_AXI_arready_0,
    HBM25_AXI_arsize_0,
    HBM25_AXI_arvalid_0,
    HBM25_AXI_awaddr_0,
    HBM25_AXI_awburst_0,
    HBM25_AXI_awid_0,
    HBM25_AXI_awlen_0,
    HBM25_AXI_awready_0,
    HBM25_AXI_awsize_0,
    HBM25_AXI_awvalid_0,
    HBM25_AXI_bready_0,
    HBM25_AXI_bresp_0,
    HBM25_AXI_bvalid_0,
    HBM25_AXI_rdata_0,
    HBM25_AXI_rlast_0,
    HBM25_AXI_rready_0,
    HBM25_AXI_rvalid_0,
    HBM25_AXI_wdata_0,
    HBM25_AXI_wlast_0,
    HBM25_AXI_wready_0,
    HBM25_AXI_wstrb_0,
    HBM25_AXI_wvalid_0,
    HBM26_AXI_araddr_0,
    HBM26_AXI_arburst_0,
    HBM26_AXI_arid_0,
    HBM26_AXI_arlen_0,
    HBM26_AXI_arready_0,
    HBM26_AXI_arsize_0,
    HBM26_AXI_arvalid_0,
    HBM26_AXI_awaddr_0,
    HBM26_AXI_awburst_0,
    HBM26_AXI_awid_0,
    HBM26_AXI_awlen_0,
    HBM26_AXI_awready_0,
    HBM26_AXI_awsize_0,
    HBM26_AXI_awvalid_0,
    HBM26_AXI_bready_0,
    HBM26_AXI_bresp_0,
    HBM26_AXI_bvalid_0,
    HBM26_AXI_rdata_0,
    HBM26_AXI_rlast_0,
    HBM26_AXI_rready_0,
    HBM26_AXI_rvalid_0,
    HBM26_AXI_wdata_0,
    HBM26_AXI_wlast_0,
    HBM26_AXI_wready_0,
    HBM26_AXI_wstrb_0,
    HBM26_AXI_wvalid_0,
    HBM27_AXI_araddr_0,
    HBM27_AXI_arburst_0,
    HBM27_AXI_arid_0,
    HBM27_AXI_arlen_0,
    HBM27_AXI_arready_0,
    HBM27_AXI_arsize_0,
    HBM27_AXI_arvalid_0,
    HBM27_AXI_awaddr_0,
    HBM27_AXI_awburst_0,
    HBM27_AXI_awid_0,
    HBM27_AXI_awlen_0,
    HBM27_AXI_awready_0,
    HBM27_AXI_awsize_0,
    HBM27_AXI_awvalid_0,
    HBM27_AXI_bready_0,
    HBM27_AXI_bresp_0,
    HBM27_AXI_bvalid_0,
    HBM27_AXI_rdata_0,
    HBM27_AXI_rlast_0,
    HBM27_AXI_rready_0,
    HBM27_AXI_rvalid_0,
    HBM27_AXI_wdata_0,
    HBM27_AXI_wlast_0,
    HBM27_AXI_wready_0,
    HBM27_AXI_wstrb_0,
    HBM27_AXI_wvalid_0,
    HBM28_AXI_araddr_0,
    HBM28_AXI_arburst_0,
    HBM28_AXI_arid_0,
    HBM28_AXI_arlen_0,
    HBM28_AXI_arready_0,
    HBM28_AXI_arsize_0,
    HBM28_AXI_arvalid_0,
    HBM28_AXI_awaddr_0,
    HBM28_AXI_awburst_0,
    HBM28_AXI_awid_0,
    HBM28_AXI_awlen_0,
    HBM28_AXI_awready_0,
    HBM28_AXI_awsize_0,
    HBM28_AXI_awvalid_0,
    HBM28_AXI_bready_0,
    HBM28_AXI_bresp_0,
    HBM28_AXI_bvalid_0,
    HBM28_AXI_rdata_0,
    HBM28_AXI_rlast_0,
    HBM28_AXI_rready_0,
    HBM28_AXI_rvalid_0,
    HBM28_AXI_wdata_0,
    HBM28_AXI_wlast_0,
    HBM28_AXI_wready_0,
    HBM28_AXI_wstrb_0,
    HBM28_AXI_wvalid_0,
    HBM29_AXI_araddr_0,
    HBM29_AXI_arburst_0,
    HBM29_AXI_arid_0,
    HBM29_AXI_arlen_0,
    HBM29_AXI_arready_0,
    HBM29_AXI_arsize_0,
    HBM29_AXI_arvalid_0,
    HBM29_AXI_awaddr_0,
    HBM29_AXI_awburst_0,
    HBM29_AXI_awid_0,
    HBM29_AXI_awlen_0,
    HBM29_AXI_awready_0,
    HBM29_AXI_awsize_0,
    HBM29_AXI_awvalid_0,
    HBM29_AXI_bready_0,
    HBM29_AXI_bresp_0,
    HBM29_AXI_bvalid_0,
    HBM29_AXI_rdata_0,
    HBM29_AXI_rlast_0,
    HBM29_AXI_rready_0,
    HBM29_AXI_rvalid_0,
    HBM29_AXI_wdata_0,
    HBM29_AXI_wlast_0,
    HBM29_AXI_wready_0,
    HBM29_AXI_wstrb_0,
    HBM29_AXI_wvalid_0,
    HBM30_AXI_araddr_0,
    HBM30_AXI_arburst_0,
    HBM30_AXI_arid_0,
    HBM30_AXI_arlen_0,
    HBM30_AXI_arready_0,
    HBM30_AXI_arsize_0,
    HBM30_AXI_arvalid_0,
    HBM30_AXI_awaddr_0,
    HBM30_AXI_awburst_0,
    HBM30_AXI_awid_0,
    HBM30_AXI_awlen_0,
    HBM30_AXI_awready_0,
    HBM30_AXI_awsize_0,
    HBM30_AXI_awvalid_0,
    HBM30_AXI_bready_0,
    HBM30_AXI_bresp_0,
    HBM30_AXI_bvalid_0,
    HBM30_AXI_rdata_0,
    HBM30_AXI_rlast_0,
    HBM30_AXI_rready_0,
    HBM30_AXI_rvalid_0,
    HBM30_AXI_wdata_0,
    HBM30_AXI_wlast_0,
    HBM30_AXI_wready_0,
    HBM30_AXI_wstrb_0,
    HBM30_AXI_wvalid_0,
    HBM31_AXI_araddr_0,
    HBM31_AXI_arburst_0,
    HBM31_AXI_arid_0,
    HBM31_AXI_arlen_0,
    HBM31_AXI_arready_0,
    HBM31_AXI_arsize_0,
    HBM31_AXI_arvalid_0,
    HBM31_AXI_awaddr_0,
    HBM31_AXI_awburst_0,
    HBM31_AXI_awid_0,
    HBM31_AXI_awlen_0,
    HBM31_AXI_awready_0,
    HBM31_AXI_awsize_0,
    HBM31_AXI_awvalid_0,
    HBM31_AXI_bready_0,
    HBM31_AXI_bresp_0,
    HBM31_AXI_bvalid_0,
    HBM31_AXI_rdata_0,
    HBM31_AXI_rlast_0,
    HBM31_AXI_rready_0,
    HBM31_AXI_rvalid_0,
    HBM31_AXI_wdata_0,
    HBM31_AXI_wlast_0,
    HBM31_AXI_wready_0,
    HBM31_AXI_wstrb_0,
    HBM31_AXI_wvalid_0,
    M_AXIL_araddr,
    M_AXIL_arburst,
    M_AXIL_arcache,
    M_AXIL_arlen,
    M_AXIL_arlock,
    M_AXIL_arprot,
    M_AXIL_arqos,
    M_AXIL_arready,
    M_AXIL_arsize,
    M_AXIL_aruser,
    M_AXIL_arvalid,
    M_AXIL_awaddr,
    M_AXIL_awburst,
    M_AXIL_awcache,
    M_AXIL_awlen,
    M_AXIL_awlock,
    M_AXIL_awprot,
    M_AXIL_awqos,
    M_AXIL_awready,
    M_AXIL_awsize,
    M_AXIL_awuser,
    M_AXIL_awvalid,
    M_AXIL_bready,
    M_AXIL_bresp,
    M_AXIL_bvalid,
    M_AXIL_rdata,
    M_AXIL_rlast,
    M_AXIL_rready,
    M_AXIL_rresp,
    M_AXIL_rvalid,
    M_AXIL_wdata,
    M_AXIL_wlast,
    M_AXIL_wready,
    M_AXIL_wstrb,
    M_AXIL_wvalid,
    PCIE1_GT_0_grx_n,
    PCIE1_GT_0_grx_p,
    PCIE1_GT_0_gtx_n,
    PCIE1_GT_0_gtx_p,
    S_AXIL_araddr,
    S_AXIL_arprot,
    S_AXIL_arready,
    S_AXIL_arvalid,
    S_AXIL_awaddr,
    S_AXIL_awprot,
    S_AXIL_awready,
    S_AXIL_awvalid,
    S_AXIL_bready,
    S_AXIL_bresp,
    S_AXIL_bvalid,
    S_AXIL_rdata,
    S_AXIL_rready,
    S_AXIL_rresp,
    S_AXIL_rvalid,
    S_AXIL_wdata,
    S_AXIL_wready,
    S_AXIL_wstrb,
    S_AXIL_wvalid,
    clk_out1_0,
    clk_out2_0,
    clk_out3_0,
    clk_out4_0,
    clk_out5_0,
    cpm_cor_irq_0,
    cpm_irq0_0,
    cpm_irq1_0,
    cpm_misc_irq_0,
    cpm_uncor_irq_0,
    ddr4_dimm0_act_n,
    ddr4_dimm0_adr,
    ddr4_dimm0_alert_n,
    ddr4_dimm0_ba,
    ddr4_dimm0_bg,
    ddr4_dimm0_ck_c,
    ddr4_dimm0_ck_t,
    ddr4_dimm0_cke,
    ddr4_dimm0_cs_n,
    ddr4_dimm0_dq,
    ddr4_dimm0_dqs_c,
    ddr4_dimm0_dqs_t,
    ddr4_dimm0_odt,
    ddr4_dimm0_par,
    ddr4_dimm0_reset_n,
    ddr4_dimm0_sma_clk_clk_n,
    ddr4_dimm0_sma_clk_clk_p,
    ddr4_dimm1_act_n,
    ddr4_dimm1_adr,
    ddr4_dimm1_alert_n,
    ddr4_dimm1_ba,
    ddr4_dimm1_bg,
    ddr4_dimm1_ck_c,
    ddr4_dimm1_ck_t,
    ddr4_dimm1_cke,
    ddr4_dimm1_cs_n,
    ddr4_dimm1_dq,
    ddr4_dimm1_dqs_c,
    ddr4_dimm1_dqs_t,
    ddr4_dimm1_odt,
    ddr4_dimm1_par,
    ddr4_dimm1_reset_n,
    ddr4_dimm1_sma_clk_clk_n,
    ddr4_dimm1_sma_clk_clk_p,
    dest_out_0,
    dma1_axi_aresetn_0,
    dma1_axis_c2h_dmawr_0_cmp,
    dma1_axis_c2h_dmawr_0_port_id,
    dma1_axis_c2h_dmawr_0_target_vch,
    dma1_axis_c2h_status_0_drop,
    dma1_axis_c2h_status_0_error,
    dma1_axis_c2h_status_0_last,
    dma1_axis_c2h_status_0_qid,
    dma1_axis_c2h_status_0_status_cmp,
    dma1_axis_c2h_status_0_valid,
    dma1_c2h_byp_in_mm_0_0_cidx,
    dma1_c2h_byp_in_mm_0_0_error,
    dma1_c2h_byp_in_mm_0_0_func,
    dma1_c2h_byp_in_mm_0_0_len,
    dma1_c2h_byp_in_mm_0_0_mrkr_req,
    dma1_c2h_byp_in_mm_0_0_no_dma,
    dma1_c2h_byp_in_mm_0_0_port_id,
    dma1_c2h_byp_in_mm_0_0_qid,
    dma1_c2h_byp_in_mm_0_0_radr,
    dma1_c2h_byp_in_mm_0_0_ready,
    dma1_c2h_byp_in_mm_0_0_sdi,
    dma1_c2h_byp_in_mm_0_0_valid,
    dma1_c2h_byp_in_mm_0_0_wadr,
    dma1_c2h_byp_in_mm_1_0_cidx,
    dma1_c2h_byp_in_mm_1_0_error,
    dma1_c2h_byp_in_mm_1_0_func,
    dma1_c2h_byp_in_mm_1_0_len,
    dma1_c2h_byp_in_mm_1_0_mrkr_req,
    dma1_c2h_byp_in_mm_1_0_no_dma,
    dma1_c2h_byp_in_mm_1_0_port_id,
    dma1_c2h_byp_in_mm_1_0_qid,
    dma1_c2h_byp_in_mm_1_0_radr,
    dma1_c2h_byp_in_mm_1_0_ready,
    dma1_c2h_byp_in_mm_1_0_sdi,
    dma1_c2h_byp_in_mm_1_0_valid,
    dma1_c2h_byp_in_mm_1_0_wadr,
    dma1_c2h_byp_in_st_csh_0_addr,
    dma1_c2h_byp_in_st_csh_0_error,
    dma1_c2h_byp_in_st_csh_0_func,
    dma1_c2h_byp_in_st_csh_0_pfch_tag,
    dma1_c2h_byp_in_st_csh_0_port_id,
    dma1_c2h_byp_in_st_csh_0_qid,
    dma1_c2h_byp_in_st_csh_0_ready,
    dma1_c2h_byp_in_st_csh_0_valid,
    dma1_c2h_byp_out_0_cidx,
    dma1_c2h_byp_out_0_dsc,
    dma1_c2h_byp_out_0_dsc_sz,
    dma1_c2h_byp_out_0_error,
    dma1_c2h_byp_out_0_fmt,
    dma1_c2h_byp_out_0_func,
    dma1_c2h_byp_out_0_mm_chn,
    dma1_c2h_byp_out_0_pfch_tag,
    dma1_c2h_byp_out_0_port_id,
    dma1_c2h_byp_out_0_qid,
    dma1_c2h_byp_out_0_ready,
    dma1_c2h_byp_out_0_st_mm,
    dma1_c2h_byp_out_0_valid,
    dma1_dsc_crdt_in_0_crdt,
    dma1_dsc_crdt_in_0_dir,
    dma1_dsc_crdt_in_0_fence,
    dma1_dsc_crdt_in_0_qid,
    dma1_dsc_crdt_in_0_rdy,
    dma1_dsc_crdt_in_0_valid,
    dma1_h2c_byp_in_mm_0_0_cidx,
    dma1_h2c_byp_in_mm_0_0_error,
    dma1_h2c_byp_in_mm_0_0_func,
    dma1_h2c_byp_in_mm_0_0_len,
    dma1_h2c_byp_in_mm_0_0_mrkr_req,
    dma1_h2c_byp_in_mm_0_0_no_dma,
    dma1_h2c_byp_in_mm_0_0_port_id,
    dma1_h2c_byp_in_mm_0_0_qid,
    dma1_h2c_byp_in_mm_0_0_radr,
    dma1_h2c_byp_in_mm_0_0_ready,
    dma1_h2c_byp_in_mm_0_0_sdi,
    dma1_h2c_byp_in_mm_0_0_valid,
    dma1_h2c_byp_in_mm_0_0_wadr,
    dma1_h2c_byp_in_mm_1_0_cidx,
    dma1_h2c_byp_in_mm_1_0_error,
    dma1_h2c_byp_in_mm_1_0_func,
    dma1_h2c_byp_in_mm_1_0_len,
    dma1_h2c_byp_in_mm_1_0_mrkr_req,
    dma1_h2c_byp_in_mm_1_0_no_dma,
    dma1_h2c_byp_in_mm_1_0_port_id,
    dma1_h2c_byp_in_mm_1_0_qid,
    dma1_h2c_byp_in_mm_1_0_radr,
    dma1_h2c_byp_in_mm_1_0_ready,
    dma1_h2c_byp_in_mm_1_0_sdi,
    dma1_h2c_byp_in_mm_1_0_valid,
    dma1_h2c_byp_in_mm_1_0_wadr,
    dma1_h2c_byp_in_st_0_addr,
    dma1_h2c_byp_in_st_0_cidx,
    dma1_h2c_byp_in_st_0_eop,
    dma1_h2c_byp_in_st_0_error,
    dma1_h2c_byp_in_st_0_func,
    dma1_h2c_byp_in_st_0_len,
    dma1_h2c_byp_in_st_0_mrkr_req,
    dma1_h2c_byp_in_st_0_no_dma,
    dma1_h2c_byp_in_st_0_port_id,
    dma1_h2c_byp_in_st_0_qid,
    dma1_h2c_byp_in_st_0_ready,
    dma1_h2c_byp_in_st_0_sdi,
    dma1_h2c_byp_in_st_0_sop,
    dma1_h2c_byp_in_st_0_valid,
    dma1_h2c_byp_out_0_cidx,
    dma1_h2c_byp_out_0_dsc,
    dma1_h2c_byp_out_0_dsc_sz,
    dma1_h2c_byp_out_0_error,
    dma1_h2c_byp_out_0_fmt,
    dma1_h2c_byp_out_0_func,
    dma1_h2c_byp_out_0_mm_chn,
    dma1_h2c_byp_out_0_port_id,
    dma1_h2c_byp_out_0_qid,
    dma1_h2c_byp_out_0_ready,
    dma1_h2c_byp_out_0_st_mm,
    dma1_h2c_byp_out_0_valid,
    dma1_intrfc_clk_0,
    dma1_intrfc_resetn_0,
    dma1_m_axis_h2c_0_err,
    dma1_m_axis_h2c_0_mdata,
    dma1_m_axis_h2c_0_mty,
    dma1_m_axis_h2c_0_port_id,
    dma1_m_axis_h2c_0_qid,
    dma1_m_axis_h2c_0_tcrc,
    dma1_m_axis_h2c_0_tdata,
    dma1_m_axis_h2c_0_tlast,
    dma1_m_axis_h2c_0_tready,
    dma1_m_axis_h2c_0_tvalid,
    dma1_m_axis_h2c_0_zero_byte,
    dma1_qsts_out_0_data,
    dma1_qsts_out_0_op,
    dma1_qsts_out_0_port_id,
    dma1_qsts_out_0_qid,
    dma1_qsts_out_0_rdy,
    dma1_qsts_out_0_vld,
    dma1_s_axis_c2h_0_ctrl_has_cmpt,
    dma1_s_axis_c2h_0_ctrl_len,
    dma1_s_axis_c2h_0_ctrl_marker,
    dma1_s_axis_c2h_0_ctrl_port_id,
    dma1_s_axis_c2h_0_ctrl_qid,
    dma1_s_axis_c2h_0_ecc,
    dma1_s_axis_c2h_0_mty,
    dma1_s_axis_c2h_0_tcrc,
    dma1_s_axis_c2h_0_tdata,
    dma1_s_axis_c2h_0_tlast,
    dma1_s_axis_c2h_0_tready,
    dma1_s_axis_c2h_0_tvalid,
    dma1_s_axis_c2h_cmpt_0_cmpt_type,
    dma1_s_axis_c2h_cmpt_0_col_idx,
    dma1_s_axis_c2h_cmpt_0_data,
    dma1_s_axis_c2h_cmpt_0_dpar,
    dma1_s_axis_c2h_cmpt_0_err_idx,
    dma1_s_axis_c2h_cmpt_0_marker,
    dma1_s_axis_c2h_cmpt_0_no_wrb_marker,
    dma1_s_axis_c2h_cmpt_0_port_id,
    dma1_s_axis_c2h_cmpt_0_qid,
    dma1_s_axis_c2h_cmpt_0_size,
    dma1_s_axis_c2h_cmpt_0_tready,
    dma1_s_axis_c2h_cmpt_0_tvalid,
    dma1_s_axis_c2h_cmpt_0_user_trig,
    dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id,
    dma1_st_rx_msg_0_tdata,
    dma1_st_rx_msg_0_tlast,
    dma1_st_rx_msg_0_tready,
    dma1_st_rx_msg_0_tvalid,
    dma1_tm_dsc_sts_0_avl,
    dma1_tm_dsc_sts_0_byp,
    dma1_tm_dsc_sts_0_dir,
    dma1_tm_dsc_sts_0_error,
    dma1_tm_dsc_sts_0_irq_arm,
    dma1_tm_dsc_sts_0_mm,
    dma1_tm_dsc_sts_0_pidx,
    dma1_tm_dsc_sts_0_port_id,
    dma1_tm_dsc_sts_0_qen,
    dma1_tm_dsc_sts_0_qid,
    dma1_tm_dsc_sts_0_qinv,
    dma1_tm_dsc_sts_0_rdy,
    dma1_tm_dsc_sts_0_valid,
    gt_refclk1_0_clk_n,
    gt_refclk1_0_clk_p,
    locked_0,
    reset_0,
    usr_flr_0_clear,
    usr_flr_0_done_fnc,
    usr_flr_0_done_vld,
    usr_flr_0_fnc,
    usr_flr_0_set,
    usr_irq_0_ack,
    usr_irq_0_fail,
    usr_irq_0_fnc,
    usr_irq_0_valid,
    usr_irq_0_vec);
  input [63:0]HBM00_AXI_araddr_0;
  input [1:0]HBM00_AXI_arburst_0;
  input [5:0]HBM00_AXI_arid_0;
  input [7:0]HBM00_AXI_arlen_0;
  output [0:0]HBM00_AXI_arready_0;
  input [2:0]HBM00_AXI_arsize_0;
  input [0:0]HBM00_AXI_arvalid_0;
  input [63:0]HBM00_AXI_awaddr_0;
  input [1:0]HBM00_AXI_awburst_0;
  input [5:0]HBM00_AXI_awid_0;
  input [7:0]HBM00_AXI_awlen_0;
  output [0:0]HBM00_AXI_awready_0;
  input [2:0]HBM00_AXI_awsize_0;
  input [0:0]HBM00_AXI_awvalid_0;
  input [0:0]HBM00_AXI_bready_0;
  output [1:0]HBM00_AXI_bresp_0;
  output [0:0]HBM00_AXI_bvalid_0;
  output [255:0]HBM00_AXI_rdata_0;
  output [0:0]HBM00_AXI_rlast_0;
  input [0:0]HBM00_AXI_rready_0;
  output [0:0]HBM00_AXI_rvalid_0;
  input [255:0]HBM00_AXI_wdata_0;
  input [0:0]HBM00_AXI_wlast_0;
  output [0:0]HBM00_AXI_wready_0;
  input [31:0]HBM00_AXI_wstrb_0;
  input [0:0]HBM00_AXI_wvalid_0;
  input [63:0]HBM01_AXI_araddr_0;
  input [1:0]HBM01_AXI_arburst_0;
  input [5:0]HBM01_AXI_arid_0;
  input [7:0]HBM01_AXI_arlen_0;
  output [0:0]HBM01_AXI_arready_0;
  input [2:0]HBM01_AXI_arsize_0;
  input [0:0]HBM01_AXI_arvalid_0;
  input [63:0]HBM01_AXI_awaddr_0;
  input [1:0]HBM01_AXI_awburst_0;
  input [5:0]HBM01_AXI_awid_0;
  input [7:0]HBM01_AXI_awlen_0;
  output [0:0]HBM01_AXI_awready_0;
  input [2:0]HBM01_AXI_awsize_0;
  input [0:0]HBM01_AXI_awvalid_0;
  input [0:0]HBM01_AXI_bready_0;
  output [1:0]HBM01_AXI_bresp_0;
  output [0:0]HBM01_AXI_bvalid_0;
  output [255:0]HBM01_AXI_rdata_0;
  output [0:0]HBM01_AXI_rlast_0;
  input [0:0]HBM01_AXI_rready_0;
  output [0:0]HBM01_AXI_rvalid_0;
  input [255:0]HBM01_AXI_wdata_0;
  input [0:0]HBM01_AXI_wlast_0;
  output [0:0]HBM01_AXI_wready_0;
  input [31:0]HBM01_AXI_wstrb_0;
  input [0:0]HBM01_AXI_wvalid_0;
  input [63:0]HBM02_AXI_araddr_0;
  input [1:0]HBM02_AXI_arburst_0;
  input [5:0]HBM02_AXI_arid_0;
  input [7:0]HBM02_AXI_arlen_0;
  output [0:0]HBM02_AXI_arready_0;
  input [2:0]HBM02_AXI_arsize_0;
  input [0:0]HBM02_AXI_arvalid_0;
  input [63:0]HBM02_AXI_awaddr_0;
  input [1:0]HBM02_AXI_awburst_0;
  input [5:0]HBM02_AXI_awid_0;
  input [7:0]HBM02_AXI_awlen_0;
  output [0:0]HBM02_AXI_awready_0;
  input [2:0]HBM02_AXI_awsize_0;
  input [0:0]HBM02_AXI_awvalid_0;
  input [0:0]HBM02_AXI_bready_0;
  output [1:0]HBM02_AXI_bresp_0;
  output [0:0]HBM02_AXI_bvalid_0;
  output [255:0]HBM02_AXI_rdata_0;
  output [0:0]HBM02_AXI_rlast_0;
  input [0:0]HBM02_AXI_rready_0;
  output [0:0]HBM02_AXI_rvalid_0;
  input [255:0]HBM02_AXI_wdata_0;
  input [0:0]HBM02_AXI_wlast_0;
  output [0:0]HBM02_AXI_wready_0;
  input [31:0]HBM02_AXI_wstrb_0;
  input [0:0]HBM02_AXI_wvalid_0;
  input [63:0]HBM03_AXI_araddr_0;
  input [1:0]HBM03_AXI_arburst_0;
  input [5:0]HBM03_AXI_arid_0;
  input [7:0]HBM03_AXI_arlen_0;
  output [0:0]HBM03_AXI_arready_0;
  input [2:0]HBM03_AXI_arsize_0;
  input [0:0]HBM03_AXI_arvalid_0;
  input [63:0]HBM03_AXI_awaddr_0;
  input [1:0]HBM03_AXI_awburst_0;
  input [5:0]HBM03_AXI_awid_0;
  input [7:0]HBM03_AXI_awlen_0;
  output [0:0]HBM03_AXI_awready_0;
  input [2:0]HBM03_AXI_awsize_0;
  input [0:0]HBM03_AXI_awvalid_0;
  input [0:0]HBM03_AXI_bready_0;
  output [1:0]HBM03_AXI_bresp_0;
  output [0:0]HBM03_AXI_bvalid_0;
  output [255:0]HBM03_AXI_rdata_0;
  output [0:0]HBM03_AXI_rlast_0;
  input [0:0]HBM03_AXI_rready_0;
  output [0:0]HBM03_AXI_rvalid_0;
  input [255:0]HBM03_AXI_wdata_0;
  input [0:0]HBM03_AXI_wlast_0;
  output [0:0]HBM03_AXI_wready_0;
  input [31:0]HBM03_AXI_wstrb_0;
  input [0:0]HBM03_AXI_wvalid_0;
  input [63:0]HBM04_AXI_araddr_0;
  input [1:0]HBM04_AXI_arburst_0;
  input [5:0]HBM04_AXI_arid_0;
  input [7:0]HBM04_AXI_arlen_0;
  output [0:0]HBM04_AXI_arready_0;
  input [2:0]HBM04_AXI_arsize_0;
  input [0:0]HBM04_AXI_arvalid_0;
  input [63:0]HBM04_AXI_awaddr_0;
  input [1:0]HBM04_AXI_awburst_0;
  input [5:0]HBM04_AXI_awid_0;
  input [7:0]HBM04_AXI_awlen_0;
  output [0:0]HBM04_AXI_awready_0;
  input [2:0]HBM04_AXI_awsize_0;
  input [0:0]HBM04_AXI_awvalid_0;
  input [0:0]HBM04_AXI_bready_0;
  output [1:0]HBM04_AXI_bresp_0;
  output [0:0]HBM04_AXI_bvalid_0;
  output [255:0]HBM04_AXI_rdata_0;
  output [0:0]HBM04_AXI_rlast_0;
  input [0:0]HBM04_AXI_rready_0;
  output [0:0]HBM04_AXI_rvalid_0;
  input [255:0]HBM04_AXI_wdata_0;
  input [0:0]HBM04_AXI_wlast_0;
  output [0:0]HBM04_AXI_wready_0;
  input [31:0]HBM04_AXI_wstrb_0;
  input [0:0]HBM04_AXI_wvalid_0;
  input [63:0]HBM05_AXI_araddr_0;
  input [1:0]HBM05_AXI_arburst_0;
  input [5:0]HBM05_AXI_arid_0;
  input [7:0]HBM05_AXI_arlen_0;
  output [0:0]HBM05_AXI_arready_0;
  input [2:0]HBM05_AXI_arsize_0;
  input [0:0]HBM05_AXI_arvalid_0;
  input [63:0]HBM05_AXI_awaddr_0;
  input [1:0]HBM05_AXI_awburst_0;
  input [5:0]HBM05_AXI_awid_0;
  input [7:0]HBM05_AXI_awlen_0;
  output [0:0]HBM05_AXI_awready_0;
  input [2:0]HBM05_AXI_awsize_0;
  input [0:0]HBM05_AXI_awvalid_0;
  input [0:0]HBM05_AXI_bready_0;
  output [1:0]HBM05_AXI_bresp_0;
  output [0:0]HBM05_AXI_bvalid_0;
  output [255:0]HBM05_AXI_rdata_0;
  output [0:0]HBM05_AXI_rlast_0;
  input [0:0]HBM05_AXI_rready_0;
  output [0:0]HBM05_AXI_rvalid_0;
  input [255:0]HBM05_AXI_wdata_0;
  input [0:0]HBM05_AXI_wlast_0;
  output [0:0]HBM05_AXI_wready_0;
  input [31:0]HBM05_AXI_wstrb_0;
  input [0:0]HBM05_AXI_wvalid_0;
  input [63:0]HBM06_AXI_araddr_0;
  input [1:0]HBM06_AXI_arburst_0;
  input [5:0]HBM06_AXI_arid_0;
  input [7:0]HBM06_AXI_arlen_0;
  output [0:0]HBM06_AXI_arready_0;
  input [2:0]HBM06_AXI_arsize_0;
  input [0:0]HBM06_AXI_arvalid_0;
  input [63:0]HBM06_AXI_awaddr_0;
  input [1:0]HBM06_AXI_awburst_0;
  input [5:0]HBM06_AXI_awid_0;
  input [7:0]HBM06_AXI_awlen_0;
  output [0:0]HBM06_AXI_awready_0;
  input [2:0]HBM06_AXI_awsize_0;
  input [0:0]HBM06_AXI_awvalid_0;
  input [0:0]HBM06_AXI_bready_0;
  output [1:0]HBM06_AXI_bresp_0;
  output [0:0]HBM06_AXI_bvalid_0;
  output [255:0]HBM06_AXI_rdata_0;
  output [0:0]HBM06_AXI_rlast_0;
  input [0:0]HBM06_AXI_rready_0;
  output [0:0]HBM06_AXI_rvalid_0;
  input [255:0]HBM06_AXI_wdata_0;
  input [0:0]HBM06_AXI_wlast_0;
  output [0:0]HBM06_AXI_wready_0;
  input [31:0]HBM06_AXI_wstrb_0;
  input [0:0]HBM06_AXI_wvalid_0;
  input [63:0]HBM07_AXI_araddr_0;
  input [1:0]HBM07_AXI_arburst_0;
  input [5:0]HBM07_AXI_arid_0;
  input [7:0]HBM07_AXI_arlen_0;
  output [0:0]HBM07_AXI_arready_0;
  input [2:0]HBM07_AXI_arsize_0;
  input [0:0]HBM07_AXI_arvalid_0;
  input [63:0]HBM07_AXI_awaddr_0;
  input [1:0]HBM07_AXI_awburst_0;
  input [5:0]HBM07_AXI_awid_0;
  input [7:0]HBM07_AXI_awlen_0;
  output [0:0]HBM07_AXI_awready_0;
  input [2:0]HBM07_AXI_awsize_0;
  input [0:0]HBM07_AXI_awvalid_0;
  input [0:0]HBM07_AXI_bready_0;
  output [1:0]HBM07_AXI_bresp_0;
  output [0:0]HBM07_AXI_bvalid_0;
  output [255:0]HBM07_AXI_rdata_0;
  output [0:0]HBM07_AXI_rlast_0;
  input [0:0]HBM07_AXI_rready_0;
  output [0:0]HBM07_AXI_rvalid_0;
  input [255:0]HBM07_AXI_wdata_0;
  input [0:0]HBM07_AXI_wlast_0;
  output [0:0]HBM07_AXI_wready_0;
  input [31:0]HBM07_AXI_wstrb_0;
  input [0:0]HBM07_AXI_wvalid_0;
  input [63:0]HBM08_AXI_araddr_0;
  input [1:0]HBM08_AXI_arburst_0;
  input [5:0]HBM08_AXI_arid_0;
  input [7:0]HBM08_AXI_arlen_0;
  output [0:0]HBM08_AXI_arready_0;
  input [2:0]HBM08_AXI_arsize_0;
  input [0:0]HBM08_AXI_arvalid_0;
  input [63:0]HBM08_AXI_awaddr_0;
  input [1:0]HBM08_AXI_awburst_0;
  input [5:0]HBM08_AXI_awid_0;
  input [7:0]HBM08_AXI_awlen_0;
  output [0:0]HBM08_AXI_awready_0;
  input [2:0]HBM08_AXI_awsize_0;
  input [0:0]HBM08_AXI_awvalid_0;
  input [0:0]HBM08_AXI_bready_0;
  output [1:0]HBM08_AXI_bresp_0;
  output [0:0]HBM08_AXI_bvalid_0;
  output [255:0]HBM08_AXI_rdata_0;
  output [0:0]HBM08_AXI_rlast_0;
  input [0:0]HBM08_AXI_rready_0;
  output [0:0]HBM08_AXI_rvalid_0;
  input [255:0]HBM08_AXI_wdata_0;
  input [0:0]HBM08_AXI_wlast_0;
  output [0:0]HBM08_AXI_wready_0;
  input [31:0]HBM08_AXI_wstrb_0;
  input [0:0]HBM08_AXI_wvalid_0;
  input [63:0]HBM09_AXI_araddr_0;
  input [1:0]HBM09_AXI_arburst_0;
  input [5:0]HBM09_AXI_arid_0;
  input [7:0]HBM09_AXI_arlen_0;
  output [0:0]HBM09_AXI_arready_0;
  input [2:0]HBM09_AXI_arsize_0;
  input [0:0]HBM09_AXI_arvalid_0;
  input [63:0]HBM09_AXI_awaddr_0;
  input [1:0]HBM09_AXI_awburst_0;
  input [5:0]HBM09_AXI_awid_0;
  input [7:0]HBM09_AXI_awlen_0;
  output [0:0]HBM09_AXI_awready_0;
  input [2:0]HBM09_AXI_awsize_0;
  input [0:0]HBM09_AXI_awvalid_0;
  input [0:0]HBM09_AXI_bready_0;
  output [1:0]HBM09_AXI_bresp_0;
  output [0:0]HBM09_AXI_bvalid_0;
  output [255:0]HBM09_AXI_rdata_0;
  output [0:0]HBM09_AXI_rlast_0;
  input [0:0]HBM09_AXI_rready_0;
  output [0:0]HBM09_AXI_rvalid_0;
  input [255:0]HBM09_AXI_wdata_0;
  input [0:0]HBM09_AXI_wlast_0;
  output [0:0]HBM09_AXI_wready_0;
  input [31:0]HBM09_AXI_wstrb_0;
  input [0:0]HBM09_AXI_wvalid_0;
  input [63:0]HBM10_AXI_araddr_0;
  input [1:0]HBM10_AXI_arburst_0;
  input [5:0]HBM10_AXI_arid_0;
  input [7:0]HBM10_AXI_arlen_0;
  output [0:0]HBM10_AXI_arready_0;
  input [2:0]HBM10_AXI_arsize_0;
  input [0:0]HBM10_AXI_arvalid_0;
  input [63:0]HBM10_AXI_awaddr_0;
  input [1:0]HBM10_AXI_awburst_0;
  input [5:0]HBM10_AXI_awid_0;
  input [7:0]HBM10_AXI_awlen_0;
  output [0:0]HBM10_AXI_awready_0;
  input [2:0]HBM10_AXI_awsize_0;
  input [0:0]HBM10_AXI_awvalid_0;
  input [0:0]HBM10_AXI_bready_0;
  output [1:0]HBM10_AXI_bresp_0;
  output [0:0]HBM10_AXI_bvalid_0;
  output [255:0]HBM10_AXI_rdata_0;
  output [0:0]HBM10_AXI_rlast_0;
  input [0:0]HBM10_AXI_rready_0;
  output [0:0]HBM10_AXI_rvalid_0;
  input [255:0]HBM10_AXI_wdata_0;
  input [0:0]HBM10_AXI_wlast_0;
  output [0:0]HBM10_AXI_wready_0;
  input [31:0]HBM10_AXI_wstrb_0;
  input [0:0]HBM10_AXI_wvalid_0;
  input [63:0]HBM11_AXI_araddr_0;
  input [1:0]HBM11_AXI_arburst_0;
  input [5:0]HBM11_AXI_arid_0;
  input [7:0]HBM11_AXI_arlen_0;
  output [0:0]HBM11_AXI_arready_0;
  input [2:0]HBM11_AXI_arsize_0;
  input [0:0]HBM11_AXI_arvalid_0;
  input [63:0]HBM11_AXI_awaddr_0;
  input [1:0]HBM11_AXI_awburst_0;
  input [5:0]HBM11_AXI_awid_0;
  input [7:0]HBM11_AXI_awlen_0;
  output [0:0]HBM11_AXI_awready_0;
  input [2:0]HBM11_AXI_awsize_0;
  input [0:0]HBM11_AXI_awvalid_0;
  input [0:0]HBM11_AXI_bready_0;
  output [1:0]HBM11_AXI_bresp_0;
  output [0:0]HBM11_AXI_bvalid_0;
  output [255:0]HBM11_AXI_rdata_0;
  output [0:0]HBM11_AXI_rlast_0;
  input [0:0]HBM11_AXI_rready_0;
  output [0:0]HBM11_AXI_rvalid_0;
  input [255:0]HBM11_AXI_wdata_0;
  input [0:0]HBM11_AXI_wlast_0;
  output [0:0]HBM11_AXI_wready_0;
  input [31:0]HBM11_AXI_wstrb_0;
  input [0:0]HBM11_AXI_wvalid_0;
  input [63:0]HBM12_AXI_araddr_0;
  input [1:0]HBM12_AXI_arburst_0;
  input [5:0]HBM12_AXI_arid_0;
  input [7:0]HBM12_AXI_arlen_0;
  output [0:0]HBM12_AXI_arready_0;
  input [2:0]HBM12_AXI_arsize_0;
  input [0:0]HBM12_AXI_arvalid_0;
  input [63:0]HBM12_AXI_awaddr_0;
  input [1:0]HBM12_AXI_awburst_0;
  input [5:0]HBM12_AXI_awid_0;
  input [7:0]HBM12_AXI_awlen_0;
  output [0:0]HBM12_AXI_awready_0;
  input [2:0]HBM12_AXI_awsize_0;
  input [0:0]HBM12_AXI_awvalid_0;
  input [0:0]HBM12_AXI_bready_0;
  output [1:0]HBM12_AXI_bresp_0;
  output [0:0]HBM12_AXI_bvalid_0;
  output [255:0]HBM12_AXI_rdata_0;
  output [0:0]HBM12_AXI_rlast_0;
  input [0:0]HBM12_AXI_rready_0;
  output [0:0]HBM12_AXI_rvalid_0;
  input [255:0]HBM12_AXI_wdata_0;
  input [0:0]HBM12_AXI_wlast_0;
  output [0:0]HBM12_AXI_wready_0;
  input [31:0]HBM12_AXI_wstrb_0;
  input [0:0]HBM12_AXI_wvalid_0;
  input [63:0]HBM13_AXI_araddr_0;
  input [1:0]HBM13_AXI_arburst_0;
  input [5:0]HBM13_AXI_arid_0;
  input [7:0]HBM13_AXI_arlen_0;
  output [0:0]HBM13_AXI_arready_0;
  input [2:0]HBM13_AXI_arsize_0;
  input [0:0]HBM13_AXI_arvalid_0;
  input [63:0]HBM13_AXI_awaddr_0;
  input [1:0]HBM13_AXI_awburst_0;
  input [5:0]HBM13_AXI_awid_0;
  input [7:0]HBM13_AXI_awlen_0;
  output [0:0]HBM13_AXI_awready_0;
  input [2:0]HBM13_AXI_awsize_0;
  input [0:0]HBM13_AXI_awvalid_0;
  input [0:0]HBM13_AXI_bready_0;
  output [1:0]HBM13_AXI_bresp_0;
  output [0:0]HBM13_AXI_bvalid_0;
  output [255:0]HBM13_AXI_rdata_0;
  output [0:0]HBM13_AXI_rlast_0;
  input [0:0]HBM13_AXI_rready_0;
  output [0:0]HBM13_AXI_rvalid_0;
  input [255:0]HBM13_AXI_wdata_0;
  input [0:0]HBM13_AXI_wlast_0;
  output [0:0]HBM13_AXI_wready_0;
  input [31:0]HBM13_AXI_wstrb_0;
  input [0:0]HBM13_AXI_wvalid_0;
  input [63:0]HBM14_AXI_araddr_0;
  input [1:0]HBM14_AXI_arburst_0;
  input [5:0]HBM14_AXI_arid_0;
  input [7:0]HBM14_AXI_arlen_0;
  output [0:0]HBM14_AXI_arready_0;
  input [2:0]HBM14_AXI_arsize_0;
  input [0:0]HBM14_AXI_arvalid_0;
  input [63:0]HBM14_AXI_awaddr_0;
  input [1:0]HBM14_AXI_awburst_0;
  input [5:0]HBM14_AXI_awid_0;
  input [7:0]HBM14_AXI_awlen_0;
  output [0:0]HBM14_AXI_awready_0;
  input [2:0]HBM14_AXI_awsize_0;
  input [0:0]HBM14_AXI_awvalid_0;
  input [0:0]HBM14_AXI_bready_0;
  output [1:0]HBM14_AXI_bresp_0;
  output [0:0]HBM14_AXI_bvalid_0;
  output [255:0]HBM14_AXI_rdata_0;
  output [0:0]HBM14_AXI_rlast_0;
  input [0:0]HBM14_AXI_rready_0;
  output [0:0]HBM14_AXI_rvalid_0;
  input [255:0]HBM14_AXI_wdata_0;
  input [0:0]HBM14_AXI_wlast_0;
  output [0:0]HBM14_AXI_wready_0;
  input [31:0]HBM14_AXI_wstrb_0;
  input [0:0]HBM14_AXI_wvalid_0;
  input [63:0]HBM15_AXI_araddr_0;
  input [1:0]HBM15_AXI_arburst_0;
  input [5:0]HBM15_AXI_arid_0;
  input [7:0]HBM15_AXI_arlen_0;
  output [0:0]HBM15_AXI_arready_0;
  input [2:0]HBM15_AXI_arsize_0;
  input [0:0]HBM15_AXI_arvalid_0;
  input [63:0]HBM15_AXI_awaddr_0;
  input [1:0]HBM15_AXI_awburst_0;
  input [5:0]HBM15_AXI_awid_0;
  input [7:0]HBM15_AXI_awlen_0;
  output [0:0]HBM15_AXI_awready_0;
  input [2:0]HBM15_AXI_awsize_0;
  input [0:0]HBM15_AXI_awvalid_0;
  input [0:0]HBM15_AXI_bready_0;
  output [1:0]HBM15_AXI_bresp_0;
  output [0:0]HBM15_AXI_bvalid_0;
  output [255:0]HBM15_AXI_rdata_0;
  output [0:0]HBM15_AXI_rlast_0;
  input [0:0]HBM15_AXI_rready_0;
  output [0:0]HBM15_AXI_rvalid_0;
  input [255:0]HBM15_AXI_wdata_0;
  input [0:0]HBM15_AXI_wlast_0;
  output [0:0]HBM15_AXI_wready_0;
  input [31:0]HBM15_AXI_wstrb_0;
  input [0:0]HBM15_AXI_wvalid_0;
  input [63:0]HBM16_AXI_araddr_0;
  input [1:0]HBM16_AXI_arburst_0;
  input [5:0]HBM16_AXI_arid_0;
  input [7:0]HBM16_AXI_arlen_0;
  output [0:0]HBM16_AXI_arready_0;
  input [2:0]HBM16_AXI_arsize_0;
  input [0:0]HBM16_AXI_arvalid_0;
  input [63:0]HBM16_AXI_awaddr_0;
  input [1:0]HBM16_AXI_awburst_0;
  input [5:0]HBM16_AXI_awid_0;
  input [7:0]HBM16_AXI_awlen_0;
  output [0:0]HBM16_AXI_awready_0;
  input [2:0]HBM16_AXI_awsize_0;
  input [0:0]HBM16_AXI_awvalid_0;
  input [0:0]HBM16_AXI_bready_0;
  output [1:0]HBM16_AXI_bresp_0;
  output [0:0]HBM16_AXI_bvalid_0;
  output [255:0]HBM16_AXI_rdata_0;
  output [0:0]HBM16_AXI_rlast_0;
  input [0:0]HBM16_AXI_rready_0;
  output [0:0]HBM16_AXI_rvalid_0;
  input [255:0]HBM16_AXI_wdata_0;
  input [0:0]HBM16_AXI_wlast_0;
  output [0:0]HBM16_AXI_wready_0;
  input [31:0]HBM16_AXI_wstrb_0;
  input [0:0]HBM16_AXI_wvalid_0;
  input [63:0]HBM17_AXI_araddr_0;
  input [1:0]HBM17_AXI_arburst_0;
  input [5:0]HBM17_AXI_arid_0;
  input [7:0]HBM17_AXI_arlen_0;
  output [0:0]HBM17_AXI_arready_0;
  input [2:0]HBM17_AXI_arsize_0;
  input [0:0]HBM17_AXI_arvalid_0;
  input [63:0]HBM17_AXI_awaddr_0;
  input [1:0]HBM17_AXI_awburst_0;
  input [5:0]HBM17_AXI_awid_0;
  input [7:0]HBM17_AXI_awlen_0;
  output [0:0]HBM17_AXI_awready_0;
  input [2:0]HBM17_AXI_awsize_0;
  input [0:0]HBM17_AXI_awvalid_0;
  input [0:0]HBM17_AXI_bready_0;
  output [1:0]HBM17_AXI_bresp_0;
  output [0:0]HBM17_AXI_bvalid_0;
  output [255:0]HBM17_AXI_rdata_0;
  output [0:0]HBM17_AXI_rlast_0;
  input [0:0]HBM17_AXI_rready_0;
  output [0:0]HBM17_AXI_rvalid_0;
  input [255:0]HBM17_AXI_wdata_0;
  input [0:0]HBM17_AXI_wlast_0;
  output [0:0]HBM17_AXI_wready_0;
  input [31:0]HBM17_AXI_wstrb_0;
  input [0:0]HBM17_AXI_wvalid_0;
  input [63:0]HBM18_AXI_araddr_0;
  input [1:0]HBM18_AXI_arburst_0;
  input [5:0]HBM18_AXI_arid_0;
  input [7:0]HBM18_AXI_arlen_0;
  output [0:0]HBM18_AXI_arready_0;
  input [2:0]HBM18_AXI_arsize_0;
  input [0:0]HBM18_AXI_arvalid_0;
  input [63:0]HBM18_AXI_awaddr_0;
  input [1:0]HBM18_AXI_awburst_0;
  input [5:0]HBM18_AXI_awid_0;
  input [7:0]HBM18_AXI_awlen_0;
  output [0:0]HBM18_AXI_awready_0;
  input [2:0]HBM18_AXI_awsize_0;
  input [0:0]HBM18_AXI_awvalid_0;
  input [0:0]HBM18_AXI_bready_0;
  output [1:0]HBM18_AXI_bresp_0;
  output [0:0]HBM18_AXI_bvalid_0;
  output [255:0]HBM18_AXI_rdata_0;
  output [0:0]HBM18_AXI_rlast_0;
  input [0:0]HBM18_AXI_rready_0;
  output [0:0]HBM18_AXI_rvalid_0;
  input [255:0]HBM18_AXI_wdata_0;
  input [0:0]HBM18_AXI_wlast_0;
  output [0:0]HBM18_AXI_wready_0;
  input [31:0]HBM18_AXI_wstrb_0;
  input [0:0]HBM18_AXI_wvalid_0;
  input [63:0]HBM19_AXI_araddr_0;
  input [1:0]HBM19_AXI_arburst_0;
  input [5:0]HBM19_AXI_arid_0;
  input [7:0]HBM19_AXI_arlen_0;
  output [0:0]HBM19_AXI_arready_0;
  input [2:0]HBM19_AXI_arsize_0;
  input [0:0]HBM19_AXI_arvalid_0;
  input [63:0]HBM19_AXI_awaddr_0;
  input [1:0]HBM19_AXI_awburst_0;
  input [5:0]HBM19_AXI_awid_0;
  input [7:0]HBM19_AXI_awlen_0;
  output [0:0]HBM19_AXI_awready_0;
  input [2:0]HBM19_AXI_awsize_0;
  input [0:0]HBM19_AXI_awvalid_0;
  input [0:0]HBM19_AXI_bready_0;
  output [1:0]HBM19_AXI_bresp_0;
  output [0:0]HBM19_AXI_bvalid_0;
  output [255:0]HBM19_AXI_rdata_0;
  output [0:0]HBM19_AXI_rlast_0;
  input [0:0]HBM19_AXI_rready_0;
  output [0:0]HBM19_AXI_rvalid_0;
  input [255:0]HBM19_AXI_wdata_0;
  input [0:0]HBM19_AXI_wlast_0;
  output [0:0]HBM19_AXI_wready_0;
  input [31:0]HBM19_AXI_wstrb_0;
  input [0:0]HBM19_AXI_wvalid_0;
  input [63:0]HBM20_AXI_araddr_0;
  input [1:0]HBM20_AXI_arburst_0;
  input [5:0]HBM20_AXI_arid_0;
  input [7:0]HBM20_AXI_arlen_0;
  output [0:0]HBM20_AXI_arready_0;
  input [2:0]HBM20_AXI_arsize_0;
  input [0:0]HBM20_AXI_arvalid_0;
  input [63:0]HBM20_AXI_awaddr_0;
  input [1:0]HBM20_AXI_awburst_0;
  input [5:0]HBM20_AXI_awid_0;
  input [7:0]HBM20_AXI_awlen_0;
  output [0:0]HBM20_AXI_awready_0;
  input [2:0]HBM20_AXI_awsize_0;
  input [0:0]HBM20_AXI_awvalid_0;
  input [0:0]HBM20_AXI_bready_0;
  output [1:0]HBM20_AXI_bresp_0;
  output [0:0]HBM20_AXI_bvalid_0;
  output [255:0]HBM20_AXI_rdata_0;
  output [0:0]HBM20_AXI_rlast_0;
  input [0:0]HBM20_AXI_rready_0;
  output [0:0]HBM20_AXI_rvalid_0;
  input [255:0]HBM20_AXI_wdata_0;
  input [0:0]HBM20_AXI_wlast_0;
  output [0:0]HBM20_AXI_wready_0;
  input [31:0]HBM20_AXI_wstrb_0;
  input [0:0]HBM20_AXI_wvalid_0;
  input [63:0]HBM21_AXI_araddr_0;
  input [1:0]HBM21_AXI_arburst_0;
  input [5:0]HBM21_AXI_arid_0;
  input [7:0]HBM21_AXI_arlen_0;
  output [0:0]HBM21_AXI_arready_0;
  input [2:0]HBM21_AXI_arsize_0;
  input [0:0]HBM21_AXI_arvalid_0;
  input [63:0]HBM21_AXI_awaddr_0;
  input [1:0]HBM21_AXI_awburst_0;
  input [5:0]HBM21_AXI_awid_0;
  input [7:0]HBM21_AXI_awlen_0;
  output [0:0]HBM21_AXI_awready_0;
  input [2:0]HBM21_AXI_awsize_0;
  input [0:0]HBM21_AXI_awvalid_0;
  input [0:0]HBM21_AXI_bready_0;
  output [1:0]HBM21_AXI_bresp_0;
  output [0:0]HBM21_AXI_bvalid_0;
  output [255:0]HBM21_AXI_rdata_0;
  output [0:0]HBM21_AXI_rlast_0;
  input [0:0]HBM21_AXI_rready_0;
  output [0:0]HBM21_AXI_rvalid_0;
  input [255:0]HBM21_AXI_wdata_0;
  input [0:0]HBM21_AXI_wlast_0;
  output [0:0]HBM21_AXI_wready_0;
  input [31:0]HBM21_AXI_wstrb_0;
  input [0:0]HBM21_AXI_wvalid_0;
  input [63:0]HBM22_AXI_araddr_0;
  input [1:0]HBM22_AXI_arburst_0;
  input [5:0]HBM22_AXI_arid_0;
  input [7:0]HBM22_AXI_arlen_0;
  output [0:0]HBM22_AXI_arready_0;
  input [2:0]HBM22_AXI_arsize_0;
  input [0:0]HBM22_AXI_arvalid_0;
  input [63:0]HBM22_AXI_awaddr_0;
  input [1:0]HBM22_AXI_awburst_0;
  input [5:0]HBM22_AXI_awid_0;
  input [7:0]HBM22_AXI_awlen_0;
  output [0:0]HBM22_AXI_awready_0;
  input [2:0]HBM22_AXI_awsize_0;
  input [0:0]HBM22_AXI_awvalid_0;
  input [0:0]HBM22_AXI_bready_0;
  output [1:0]HBM22_AXI_bresp_0;
  output [0:0]HBM22_AXI_bvalid_0;
  output [255:0]HBM22_AXI_rdata_0;
  output [0:0]HBM22_AXI_rlast_0;
  input [0:0]HBM22_AXI_rready_0;
  output [0:0]HBM22_AXI_rvalid_0;
  input [255:0]HBM22_AXI_wdata_0;
  input [0:0]HBM22_AXI_wlast_0;
  output [0:0]HBM22_AXI_wready_0;
  input [31:0]HBM22_AXI_wstrb_0;
  input [0:0]HBM22_AXI_wvalid_0;
  input [63:0]HBM23_AXI_araddr_0;
  input [1:0]HBM23_AXI_arburst_0;
  input [5:0]HBM23_AXI_arid_0;
  input [7:0]HBM23_AXI_arlen_0;
  output [0:0]HBM23_AXI_arready_0;
  input [2:0]HBM23_AXI_arsize_0;
  input [0:0]HBM23_AXI_arvalid_0;
  input [63:0]HBM23_AXI_awaddr_0;
  input [1:0]HBM23_AXI_awburst_0;
  input [5:0]HBM23_AXI_awid_0;
  input [7:0]HBM23_AXI_awlen_0;
  output [0:0]HBM23_AXI_awready_0;
  input [2:0]HBM23_AXI_awsize_0;
  input [0:0]HBM23_AXI_awvalid_0;
  input [0:0]HBM23_AXI_bready_0;
  output [1:0]HBM23_AXI_bresp_0;
  output [0:0]HBM23_AXI_bvalid_0;
  output [255:0]HBM23_AXI_rdata_0;
  output [0:0]HBM23_AXI_rlast_0;
  input [0:0]HBM23_AXI_rready_0;
  output [0:0]HBM23_AXI_rvalid_0;
  input [255:0]HBM23_AXI_wdata_0;
  input [0:0]HBM23_AXI_wlast_0;
  output [0:0]HBM23_AXI_wready_0;
  input [31:0]HBM23_AXI_wstrb_0;
  input [0:0]HBM23_AXI_wvalid_0;
  input [63:0]HBM24_AXI_araddr_0;
  input [1:0]HBM24_AXI_arburst_0;
  input [5:0]HBM24_AXI_arid_0;
  input [7:0]HBM24_AXI_arlen_0;
  output [0:0]HBM24_AXI_arready_0;
  input [2:0]HBM24_AXI_arsize_0;
  input [0:0]HBM24_AXI_arvalid_0;
  input [63:0]HBM24_AXI_awaddr_0;
  input [1:0]HBM24_AXI_awburst_0;
  input [5:0]HBM24_AXI_awid_0;
  input [7:0]HBM24_AXI_awlen_0;
  output [0:0]HBM24_AXI_awready_0;
  input [2:0]HBM24_AXI_awsize_0;
  input [0:0]HBM24_AXI_awvalid_0;
  input [0:0]HBM24_AXI_bready_0;
  output [1:0]HBM24_AXI_bresp_0;
  output [0:0]HBM24_AXI_bvalid_0;
  output [255:0]HBM24_AXI_rdata_0;
  output [0:0]HBM24_AXI_rlast_0;
  input [0:0]HBM24_AXI_rready_0;
  output [0:0]HBM24_AXI_rvalid_0;
  input [255:0]HBM24_AXI_wdata_0;
  input [0:0]HBM24_AXI_wlast_0;
  output [0:0]HBM24_AXI_wready_0;
  input [31:0]HBM24_AXI_wstrb_0;
  input [0:0]HBM24_AXI_wvalid_0;
  input [63:0]HBM25_AXI_araddr_0;
  input [1:0]HBM25_AXI_arburst_0;
  input [5:0]HBM25_AXI_arid_0;
  input [7:0]HBM25_AXI_arlen_0;
  output [0:0]HBM25_AXI_arready_0;
  input [2:0]HBM25_AXI_arsize_0;
  input [0:0]HBM25_AXI_arvalid_0;
  input [63:0]HBM25_AXI_awaddr_0;
  input [1:0]HBM25_AXI_awburst_0;
  input [5:0]HBM25_AXI_awid_0;
  input [7:0]HBM25_AXI_awlen_0;
  output [0:0]HBM25_AXI_awready_0;
  input [2:0]HBM25_AXI_awsize_0;
  input [0:0]HBM25_AXI_awvalid_0;
  input [0:0]HBM25_AXI_bready_0;
  output [1:0]HBM25_AXI_bresp_0;
  output [0:0]HBM25_AXI_bvalid_0;
  output [255:0]HBM25_AXI_rdata_0;
  output [0:0]HBM25_AXI_rlast_0;
  input [0:0]HBM25_AXI_rready_0;
  output [0:0]HBM25_AXI_rvalid_0;
  input [255:0]HBM25_AXI_wdata_0;
  input [0:0]HBM25_AXI_wlast_0;
  output [0:0]HBM25_AXI_wready_0;
  input [31:0]HBM25_AXI_wstrb_0;
  input [0:0]HBM25_AXI_wvalid_0;
  input [63:0]HBM26_AXI_araddr_0;
  input [1:0]HBM26_AXI_arburst_0;
  input [5:0]HBM26_AXI_arid_0;
  input [7:0]HBM26_AXI_arlen_0;
  output [0:0]HBM26_AXI_arready_0;
  input [2:0]HBM26_AXI_arsize_0;
  input [0:0]HBM26_AXI_arvalid_0;
  input [63:0]HBM26_AXI_awaddr_0;
  input [1:0]HBM26_AXI_awburst_0;
  input [5:0]HBM26_AXI_awid_0;
  input [7:0]HBM26_AXI_awlen_0;
  output [0:0]HBM26_AXI_awready_0;
  input [2:0]HBM26_AXI_awsize_0;
  input [0:0]HBM26_AXI_awvalid_0;
  input [0:0]HBM26_AXI_bready_0;
  output [1:0]HBM26_AXI_bresp_0;
  output [0:0]HBM26_AXI_bvalid_0;
  output [255:0]HBM26_AXI_rdata_0;
  output [0:0]HBM26_AXI_rlast_0;
  input [0:0]HBM26_AXI_rready_0;
  output [0:0]HBM26_AXI_rvalid_0;
  input [255:0]HBM26_AXI_wdata_0;
  input [0:0]HBM26_AXI_wlast_0;
  output [0:0]HBM26_AXI_wready_0;
  input [31:0]HBM26_AXI_wstrb_0;
  input [0:0]HBM26_AXI_wvalid_0;
  input [63:0]HBM27_AXI_araddr_0;
  input [1:0]HBM27_AXI_arburst_0;
  input [5:0]HBM27_AXI_arid_0;
  input [7:0]HBM27_AXI_arlen_0;
  output [0:0]HBM27_AXI_arready_0;
  input [2:0]HBM27_AXI_arsize_0;
  input [0:0]HBM27_AXI_arvalid_0;
  input [63:0]HBM27_AXI_awaddr_0;
  input [1:0]HBM27_AXI_awburst_0;
  input [5:0]HBM27_AXI_awid_0;
  input [7:0]HBM27_AXI_awlen_0;
  output [0:0]HBM27_AXI_awready_0;
  input [2:0]HBM27_AXI_awsize_0;
  input [0:0]HBM27_AXI_awvalid_0;
  input [0:0]HBM27_AXI_bready_0;
  output [1:0]HBM27_AXI_bresp_0;
  output [0:0]HBM27_AXI_bvalid_0;
  output [255:0]HBM27_AXI_rdata_0;
  output [0:0]HBM27_AXI_rlast_0;
  input [0:0]HBM27_AXI_rready_0;
  output [0:0]HBM27_AXI_rvalid_0;
  input [255:0]HBM27_AXI_wdata_0;
  input [0:0]HBM27_AXI_wlast_0;
  output [0:0]HBM27_AXI_wready_0;
  input [31:0]HBM27_AXI_wstrb_0;
  input [0:0]HBM27_AXI_wvalid_0;
  input [63:0]HBM28_AXI_araddr_0;
  input [1:0]HBM28_AXI_arburst_0;
  input [5:0]HBM28_AXI_arid_0;
  input [7:0]HBM28_AXI_arlen_0;
  output [0:0]HBM28_AXI_arready_0;
  input [2:0]HBM28_AXI_arsize_0;
  input [0:0]HBM28_AXI_arvalid_0;
  input [63:0]HBM28_AXI_awaddr_0;
  input [1:0]HBM28_AXI_awburst_0;
  input [5:0]HBM28_AXI_awid_0;
  input [7:0]HBM28_AXI_awlen_0;
  output [0:0]HBM28_AXI_awready_0;
  input [2:0]HBM28_AXI_awsize_0;
  input [0:0]HBM28_AXI_awvalid_0;
  input [0:0]HBM28_AXI_bready_0;
  output [1:0]HBM28_AXI_bresp_0;
  output [0:0]HBM28_AXI_bvalid_0;
  output [255:0]HBM28_AXI_rdata_0;
  output [0:0]HBM28_AXI_rlast_0;
  input [0:0]HBM28_AXI_rready_0;
  output [0:0]HBM28_AXI_rvalid_0;
  input [255:0]HBM28_AXI_wdata_0;
  input [0:0]HBM28_AXI_wlast_0;
  output [0:0]HBM28_AXI_wready_0;
  input [31:0]HBM28_AXI_wstrb_0;
  input [0:0]HBM28_AXI_wvalid_0;
  input [63:0]HBM29_AXI_araddr_0;
  input [1:0]HBM29_AXI_arburst_0;
  input [5:0]HBM29_AXI_arid_0;
  input [7:0]HBM29_AXI_arlen_0;
  output [0:0]HBM29_AXI_arready_0;
  input [2:0]HBM29_AXI_arsize_0;
  input [0:0]HBM29_AXI_arvalid_0;
  input [63:0]HBM29_AXI_awaddr_0;
  input [1:0]HBM29_AXI_awburst_0;
  input [5:0]HBM29_AXI_awid_0;
  input [7:0]HBM29_AXI_awlen_0;
  output [0:0]HBM29_AXI_awready_0;
  input [2:0]HBM29_AXI_awsize_0;
  input [0:0]HBM29_AXI_awvalid_0;
  input [0:0]HBM29_AXI_bready_0;
  output [1:0]HBM29_AXI_bresp_0;
  output [0:0]HBM29_AXI_bvalid_0;
  output [255:0]HBM29_AXI_rdata_0;
  output [0:0]HBM29_AXI_rlast_0;
  input [0:0]HBM29_AXI_rready_0;
  output [0:0]HBM29_AXI_rvalid_0;
  input [255:0]HBM29_AXI_wdata_0;
  input [0:0]HBM29_AXI_wlast_0;
  output [0:0]HBM29_AXI_wready_0;
  input [31:0]HBM29_AXI_wstrb_0;
  input [0:0]HBM29_AXI_wvalid_0;
  input [63:0]HBM30_AXI_araddr_0;
  input [1:0]HBM30_AXI_arburst_0;
  input [5:0]HBM30_AXI_arid_0;
  input [7:0]HBM30_AXI_arlen_0;
  output [0:0]HBM30_AXI_arready_0;
  input [2:0]HBM30_AXI_arsize_0;
  input [0:0]HBM30_AXI_arvalid_0;
  input [63:0]HBM30_AXI_awaddr_0;
  input [1:0]HBM30_AXI_awburst_0;
  input [5:0]HBM30_AXI_awid_0;
  input [7:0]HBM30_AXI_awlen_0;
  output [0:0]HBM30_AXI_awready_0;
  input [2:0]HBM30_AXI_awsize_0;
  input [0:0]HBM30_AXI_awvalid_0;
  input [0:0]HBM30_AXI_bready_0;
  output [1:0]HBM30_AXI_bresp_0;
  output [0:0]HBM30_AXI_bvalid_0;
  output [255:0]HBM30_AXI_rdata_0;
  output [0:0]HBM30_AXI_rlast_0;
  input [0:0]HBM30_AXI_rready_0;
  output [0:0]HBM30_AXI_rvalid_0;
  input [255:0]HBM30_AXI_wdata_0;
  input [0:0]HBM30_AXI_wlast_0;
  output [0:0]HBM30_AXI_wready_0;
  input [31:0]HBM30_AXI_wstrb_0;
  input [0:0]HBM30_AXI_wvalid_0;
  input [63:0]HBM31_AXI_araddr_0;
  input [1:0]HBM31_AXI_arburst_0;
  input [5:0]HBM31_AXI_arid_0;
  input [7:0]HBM31_AXI_arlen_0;
  output [0:0]HBM31_AXI_arready_0;
  input [2:0]HBM31_AXI_arsize_0;
  input [0:0]HBM31_AXI_arvalid_0;
  input [63:0]HBM31_AXI_awaddr_0;
  input [1:0]HBM31_AXI_awburst_0;
  input [5:0]HBM31_AXI_awid_0;
  input [7:0]HBM31_AXI_awlen_0;
  output [0:0]HBM31_AXI_awready_0;
  input [2:0]HBM31_AXI_awsize_0;
  input [0:0]HBM31_AXI_awvalid_0;
  input [0:0]HBM31_AXI_bready_0;
  output [1:0]HBM31_AXI_bresp_0;
  output [0:0]HBM31_AXI_bvalid_0;
  output [255:0]HBM31_AXI_rdata_0;
  output [0:0]HBM31_AXI_rlast_0;
  input [0:0]HBM31_AXI_rready_0;
  output [0:0]HBM31_AXI_rvalid_0;
  input [255:0]HBM31_AXI_wdata_0;
  input [0:0]HBM31_AXI_wlast_0;
  output [0:0]HBM31_AXI_wready_0;
  input [31:0]HBM31_AXI_wstrb_0;
  input [0:0]HBM31_AXI_wvalid_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIL, ADDR_WIDTH 42, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 249997498, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [41:0]M_AXIL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARBURST" *) output [1:0]M_AXIL_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARCACHE" *) output [3:0]M_AXIL_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARLEN" *) output [7:0]M_AXIL_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARLOCK" *) output [0:0]M_AXIL_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARPROT" *) output [2:0]M_AXIL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARQOS" *) output [3:0]M_AXIL_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARREADY" *) input M_AXIL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARSIZE" *) output [2:0]M_AXIL_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARUSER" *) output [17:0]M_AXIL_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARVALID" *) output M_AXIL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWADDR" *) output [41:0]M_AXIL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWBURST" *) output [1:0]M_AXIL_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWCACHE" *) output [3:0]M_AXIL_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWLEN" *) output [7:0]M_AXIL_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWLOCK" *) output [0:0]M_AXIL_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWPROT" *) output [2:0]M_AXIL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWQOS" *) output [3:0]M_AXIL_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWREADY" *) input M_AXIL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWSIZE" *) output [2:0]M_AXIL_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWUSER" *) output [17:0]M_AXIL_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWVALID" *) output M_AXIL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BREADY" *) output M_AXIL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BRESP" *) input [1:0]M_AXIL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BVALID" *) input M_AXIL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RDATA" *) input [31:0]M_AXIL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RLAST" *) input M_AXIL_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RREADY" *) output M_AXIL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RRESP" *) input [1:0]M_AXIL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RVALID" *) input M_AXIL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WDATA" *) output [31:0]M_AXIL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WLAST" *) output M_AXIL_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WREADY" *) input M_AXIL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WSTRB" *) output [3:0]M_AXIL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WVALID" *) output M_AXIL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT_0, CAN_DEBUG false" *) input [7:0]PCIE1_GT_0_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GRX_P" *) input [7:0]PCIE1_GT_0_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GTX_N" *) output [7:0]PCIE1_GT_0_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GTX_P" *) output [7:0]PCIE1_GT_0_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIL, ADDR_WIDTH 15, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 249997498, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [11:0]S_AXIL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARPROT" *) input [2:0]S_AXIL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARREADY" *) output S_AXIL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARVALID" *) input S_AXIL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWADDR" *) input [11:0]S_AXIL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWPROT" *) input [2:0]S_AXIL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWREADY" *) output S_AXIL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWVALID" *) input S_AXIL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BREADY" *) input S_AXIL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BRESP" *) output [1:0]S_AXIL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BVALID" *) output S_AXIL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RDATA" *) output [31:0]S_AXIL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RREADY" *) input S_AXIL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RRESP" *) output [1:0]S_AXIL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RVALID" *) output S_AXIL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WDATA" *) input [31:0]S_AXIL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WREADY" *) output S_AXIL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WSTRB" *) input [3:0]S_AXIL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WVALID" *) input S_AXIL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, FREQ_HZ 100000005, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT2_0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, FREQ_HZ 25000001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out2_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT3_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT3_0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, FREQ_HZ 25000001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out3_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT4_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT4_0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, FREQ_HZ 50000002, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out4_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT5_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT5_0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, FREQ_HZ 100000005, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out5_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_COR_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_COR_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_cor_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ0_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ0_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ1_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ1_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_MISC_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_MISC_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_misc_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_UNCOR_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_UNCOR_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_uncor_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 ACT_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_dimm0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output ddr4_dimm0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 ADR" *) output [16:0]ddr4_dimm0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 ALERT_N" *) input ddr4_dimm0_alert_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 BA" *) output [1:0]ddr4_dimm0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 BG" *) output [1:0]ddr4_dimm0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 CK_C" *) output ddr4_dimm0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 CK_T" *) output ddr4_dimm0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 CKE" *) output ddr4_dimm0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 CS_N" *) output ddr4_dimm0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 DQ" *) inout [71:0]ddr4_dimm0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 DQS_C" *) inout [8:0]ddr4_dimm0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 DQS_T" *) inout [8:0]ddr4_dimm0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 ODT" *) output ddr4_dimm0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 PAR" *) output ddr4_dimm0_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 RESET_N" *) output ddr4_dimm0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_dimm0_sma_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_dimm0_sma_clk, CAN_DEBUG false, FREQ_HZ 200000000" *) input ddr4_dimm0_sma_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_dimm0_sma_clk CLK_P" *) input ddr4_dimm0_sma_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 ACT_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_dimm1, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output ddr4_dimm1_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 ADR" *) output [16:0]ddr4_dimm1_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 ALERT_N" *) input ddr4_dimm1_alert_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 BA" *) output [1:0]ddr4_dimm1_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 BG" *) output [1:0]ddr4_dimm1_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 CK_C" *) output ddr4_dimm1_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 CK_T" *) output ddr4_dimm1_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 CKE" *) output ddr4_dimm1_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 CS_N" *) output ddr4_dimm1_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 DQ" *) inout [71:0]ddr4_dimm1_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 DQS_C" *) inout [8:0]ddr4_dimm1_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 DQS_T" *) inout [8:0]ddr4_dimm1_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 ODT" *) output ddr4_dimm1_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 PAR" *) output ddr4_dimm1_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 RESET_N" *) output ddr4_dimm1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_dimm1_sma_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_dimm1_sma_clk, CAN_DEBUG false, FREQ_HZ 200000000" *) input ddr4_dimm1_sma_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_dimm1_sma_clk CLK_P" *) input ddr4_dimm1_sma_clk_clk_p;
  output [7:0]dest_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output dma1_axi_aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 cmp" *) (* X_INTERFACE_MODE = "Master" *) output dma1_axis_c2h_dmawr_0_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 port_id" *) output [2:0]dma1_axis_c2h_dmawr_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 target_vch" *) output dma1_axis_c2h_dmawr_0_target_vch;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 drop" *) (* X_INTERFACE_MODE = "Master" *) output dma1_axis_c2h_status_0_drop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 error" *) output dma1_axis_c2h_status_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 last" *) output dma1_axis_c2h_status_0_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 qid" *) output [11:0]dma1_axis_c2h_status_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 status_cmp" *) output dma1_axis_c2h_status_0_status_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 valid" *) output dma1_axis_c2h_status_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 cidx" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_c2h_byp_in_mm_0_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 error" *) input dma1_c2h_byp_in_mm_0_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 func" *) input [11:0]dma1_c2h_byp_in_mm_0_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 len" *) input [15:0]dma1_c2h_byp_in_mm_0_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 mrkr_req" *) input dma1_c2h_byp_in_mm_0_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 no_dma" *) input dma1_c2h_byp_in_mm_0_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 port_id" *) input [2:0]dma1_c2h_byp_in_mm_0_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 qid" *) input [11:0]dma1_c2h_byp_in_mm_0_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 radr" *) input [63:0]dma1_c2h_byp_in_mm_0_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 ready" *) output dma1_c2h_byp_in_mm_0_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 sdi" *) input dma1_c2h_byp_in_mm_0_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 valid" *) input dma1_c2h_byp_in_mm_0_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 wadr" *) input [63:0]dma1_c2h_byp_in_mm_0_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 cidx" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_c2h_byp_in_mm_1_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 error" *) input dma1_c2h_byp_in_mm_1_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 func" *) input [11:0]dma1_c2h_byp_in_mm_1_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 len" *) input [15:0]dma1_c2h_byp_in_mm_1_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 mrkr_req" *) input dma1_c2h_byp_in_mm_1_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 no_dma" *) input dma1_c2h_byp_in_mm_1_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 port_id" *) input [2:0]dma1_c2h_byp_in_mm_1_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 qid" *) input [11:0]dma1_c2h_byp_in_mm_1_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 radr" *) input [63:0]dma1_c2h_byp_in_mm_1_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 ready" *) output dma1_c2h_byp_in_mm_1_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 sdi" *) input dma1_c2h_byp_in_mm_1_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 valid" *) input dma1_c2h_byp_in_mm_1_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 wadr" *) input [63:0]dma1_c2h_byp_in_mm_1_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 addr" *) (* X_INTERFACE_MODE = "Slave" *) input [63:0]dma1_c2h_byp_in_st_csh_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 error" *) input dma1_c2h_byp_in_st_csh_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 func" *) input [11:0]dma1_c2h_byp_in_st_csh_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 pfch_tag" *) input [6:0]dma1_c2h_byp_in_st_csh_0_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 port_id" *) input [2:0]dma1_c2h_byp_in_st_csh_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 qid" *) input [11:0]dma1_c2h_byp_in_st_csh_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 ready" *) output dma1_c2h_byp_in_st_csh_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 valid" *) input dma1_c2h_byp_in_st_csh_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 cidx" *) (* X_INTERFACE_MODE = "Master" *) output [15:0]dma1_c2h_byp_out_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 dsc" *) output [255:0]dma1_c2h_byp_out_0_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 dsc_sz" *) output [1:0]dma1_c2h_byp_out_0_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 error" *) output dma1_c2h_byp_out_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 fmt" *) output [2:0]dma1_c2h_byp_out_0_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 func" *) output [11:0]dma1_c2h_byp_out_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 mm_chn" *) output dma1_c2h_byp_out_0_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 pfch_tag" *) output [6:0]dma1_c2h_byp_out_0_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 port_id" *) output [2:0]dma1_c2h_byp_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 qid" *) output [11:0]dma1_c2h_byp_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 ready" *) input dma1_c2h_byp_out_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 st_mm" *) output dma1_c2h_byp_out_0_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 valid" *) output dma1_c2h_byp_out_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 crdt" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_dsc_crdt_in_0_crdt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 dir" *) input dma1_dsc_crdt_in_0_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 fence" *) input dma1_dsc_crdt_in_0_fence;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 qid" *) input [11:0]dma1_dsc_crdt_in_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 rdy" *) output dma1_dsc_crdt_in_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 valid" *) input dma1_dsc_crdt_in_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 cidx" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_h2c_byp_in_mm_0_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 error" *) input dma1_h2c_byp_in_mm_0_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 func" *) input [11:0]dma1_h2c_byp_in_mm_0_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 len" *) input [15:0]dma1_h2c_byp_in_mm_0_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 mrkr_req" *) input dma1_h2c_byp_in_mm_0_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 no_dma" *) input dma1_h2c_byp_in_mm_0_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 port_id" *) input [2:0]dma1_h2c_byp_in_mm_0_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 qid" *) input [11:0]dma1_h2c_byp_in_mm_0_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 radr" *) input [63:0]dma1_h2c_byp_in_mm_0_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 ready" *) output dma1_h2c_byp_in_mm_0_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 sdi" *) input dma1_h2c_byp_in_mm_0_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 valid" *) input dma1_h2c_byp_in_mm_0_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 wadr" *) input [63:0]dma1_h2c_byp_in_mm_0_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 cidx" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_h2c_byp_in_mm_1_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 error" *) input dma1_h2c_byp_in_mm_1_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 func" *) input [11:0]dma1_h2c_byp_in_mm_1_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 len" *) input [15:0]dma1_h2c_byp_in_mm_1_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 mrkr_req" *) input dma1_h2c_byp_in_mm_1_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 no_dma" *) input dma1_h2c_byp_in_mm_1_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 port_id" *) input [2:0]dma1_h2c_byp_in_mm_1_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 qid" *) input [11:0]dma1_h2c_byp_in_mm_1_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 radr" *) input [63:0]dma1_h2c_byp_in_mm_1_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 ready" *) output dma1_h2c_byp_in_mm_1_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 sdi" *) input dma1_h2c_byp_in_mm_1_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 valid" *) input dma1_h2c_byp_in_mm_1_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 wadr" *) input [63:0]dma1_h2c_byp_in_mm_1_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 addr" *) (* X_INTERFACE_MODE = "Slave" *) input [63:0]dma1_h2c_byp_in_st_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 cidx" *) input [15:0]dma1_h2c_byp_in_st_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 eop" *) input dma1_h2c_byp_in_st_0_eop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 error" *) input dma1_h2c_byp_in_st_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 func" *) input [11:0]dma1_h2c_byp_in_st_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 len" *) input [15:0]dma1_h2c_byp_in_st_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 mrkr_req" *) input dma1_h2c_byp_in_st_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 no_dma" *) input dma1_h2c_byp_in_st_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 port_id" *) input [2:0]dma1_h2c_byp_in_st_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 qid" *) input [11:0]dma1_h2c_byp_in_st_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 ready" *) output dma1_h2c_byp_in_st_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 sdi" *) input dma1_h2c_byp_in_st_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 sop" *) input dma1_h2c_byp_in_st_0_sop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 valid" *) input dma1_h2c_byp_in_st_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 cidx" *) (* X_INTERFACE_MODE = "Master" *) output [15:0]dma1_h2c_byp_out_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 dsc" *) output [255:0]dma1_h2c_byp_out_0_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 dsc_sz" *) output [1:0]dma1_h2c_byp_out_0_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 error" *) output dma1_h2c_byp_out_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 fmt" *) output [2:0]dma1_h2c_byp_out_0_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 func" *) output [11:0]dma1_h2c_byp_out_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 mm_chn" *) output dma1_h2c_byp_out_0_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 port_id" *) output [2:0]dma1_h2c_byp_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 qid" *) output [11:0]dma1_h2c_byp_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 ready" *) input dma1_h2c_byp_out_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 st_mm" *) output dma1_h2c_byp_out_0_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 valid" *) output dma1_h2c_byp_out_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DMA1_INTRFC_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DMA1_INTRFC_CLK_0, ASSOCIATED_BUSIF S_AXIL:dma1_st_rx_msg_0:M_AXIL, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output dma1_intrfc_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_INTRFC_RESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_INTRFC_RESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input dma1_intrfc_resetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 err" *) (* X_INTERFACE_MODE = "Master" *) output dma1_m_axis_h2c_0_err;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 mdata" *) output [31:0]dma1_m_axis_h2c_0_mdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 mty" *) output [5:0]dma1_m_axis_h2c_0_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 port_id" *) output [2:0]dma1_m_axis_h2c_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 qid" *) output [11:0]dma1_m_axis_h2c_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tcrc" *) output [31:0]dma1_m_axis_h2c_0_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tdata" *) output [511:0]dma1_m_axis_h2c_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tlast" *) output dma1_m_axis_h2c_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tready" *) input dma1_m_axis_h2c_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tvalid" *) output dma1_m_axis_h2c_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 zero_byte" *) output dma1_m_axis_h2c_0_zero_byte;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 data" *) (* X_INTERFACE_MODE = "Master" *) output [63:0]dma1_qsts_out_0_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 op" *) output [7:0]dma1_qsts_out_0_op;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 port_id" *) output [2:0]dma1_qsts_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 qid" *) output [12:0]dma1_qsts_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 rdy" *) input dma1_qsts_out_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 vld" *) output dma1_qsts_out_0_vld;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_has_cmpt" *) (* X_INTERFACE_MODE = "Slave" *) input dma1_s_axis_c2h_0_ctrl_has_cmpt;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_len" *) input [15:0]dma1_s_axis_c2h_0_ctrl_len;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_marker" *) input dma1_s_axis_c2h_0_ctrl_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_port_id" *) input [2:0]dma1_s_axis_c2h_0_ctrl_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_qid" *) input [11:0]dma1_s_axis_c2h_0_ctrl_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ecc" *) input [6:0]dma1_s_axis_c2h_0_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 mty" *) input [5:0]dma1_s_axis_c2h_0_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tcrc" *) input [31:0]dma1_s_axis_c2h_0_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tdata" *) input [511:0]dma1_s_axis_c2h_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tlast" *) input dma1_s_axis_c2h_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tready" *) output dma1_s_axis_c2h_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tvalid" *) input dma1_s_axis_c2h_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 cmpt_type" *) (* X_INTERFACE_MODE = "Slave" *) input [1:0]dma1_s_axis_c2h_cmpt_0_cmpt_type;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 col_idx" *) input [2:0]dma1_s_axis_c2h_cmpt_0_col_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 data" *) input [511:0]dma1_s_axis_c2h_cmpt_0_data;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 dpar" *) input [15:0]dma1_s_axis_c2h_cmpt_0_dpar;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 err_idx" *) input [2:0]dma1_s_axis_c2h_cmpt_0_err_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 marker" *) input dma1_s_axis_c2h_cmpt_0_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 no_wrb_marker" *) input dma1_s_axis_c2h_cmpt_0_no_wrb_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 port_id" *) input [2:0]dma1_s_axis_c2h_cmpt_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 qid" *) input [12:0]dma1_s_axis_c2h_cmpt_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 size" *) input [1:0]dma1_s_axis_c2h_cmpt_0_size;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 tready" *) output dma1_s_axis_c2h_cmpt_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 tvalid" *) input dma1_s_axis_c2h_cmpt_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 user_trig" *) input dma1_s_axis_c2h_cmpt_0_user_trig;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 wait_pld_pkt_id" *) input [15:0]dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma1_st_rx_msg_0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]dma1_st_rx_msg_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TLAST" *) output dma1_st_rx_msg_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TREADY" *) input dma1_st_rx_msg_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TVALID" *) output dma1_st_rx_msg_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 avl" *) (* X_INTERFACE_MODE = "Master" *) output [15:0]dma1_tm_dsc_sts_0_avl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 byp" *) output dma1_tm_dsc_sts_0_byp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 dir" *) output dma1_tm_dsc_sts_0_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 error" *) output dma1_tm_dsc_sts_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 irq_arm" *) output dma1_tm_dsc_sts_0_irq_arm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 mm" *) output dma1_tm_dsc_sts_0_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 pidx" *) output [15:0]dma1_tm_dsc_sts_0_pidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 port_id" *) output [2:0]dma1_tm_dsc_sts_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qen" *) output dma1_tm_dsc_sts_0_qen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qid" *) output [11:0]dma1_tm_dsc_sts_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qinv" *) output dma1_tm_dsc_sts_0_qinv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 rdy" *) input dma1_tm_dsc_sts_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 valid" *) output dma1_tm_dsc_sts_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1_0 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input gt_refclk1_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1_0 CLK_P" *) input gt_refclk1_0_clk_p;
  output locked_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 clear" *) (* X_INTERFACE_MODE = "Slave" *) output usr_flr_0_clear;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 done_fnc" *) input [11:0]usr_flr_0_done_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 done_vld" *) input usr_flr_0_done_vld;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 fnc" *) output [11:0]usr_flr_0_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 set" *) output usr_flr_0_set;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 ack" *) (* X_INTERFACE_MODE = "Slave" *) output usr_irq_0_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 fail" *) output usr_irq_0_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 fnc" *) input [11:0]usr_irq_0_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 valid" *) input usr_irq_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 vec" *) input [4:0]usr_irq_0_vec;

  wire [63:0]HBM00_AXI_araddr_0;
  wire [1:0]HBM00_AXI_arburst_0;
  wire [5:0]HBM00_AXI_arid_0;
  wire [7:0]HBM00_AXI_arlen_0;
  wire [0:0]HBM00_AXI_arready_0;
  wire [2:0]HBM00_AXI_arsize_0;
  wire [0:0]HBM00_AXI_arvalid_0;
  wire [63:0]HBM00_AXI_awaddr_0;
  wire [1:0]HBM00_AXI_awburst_0;
  wire [5:0]HBM00_AXI_awid_0;
  wire [7:0]HBM00_AXI_awlen_0;
  wire [0:0]HBM00_AXI_awready_0;
  wire [2:0]HBM00_AXI_awsize_0;
  wire [0:0]HBM00_AXI_awvalid_0;
  wire [0:0]HBM00_AXI_bready_0;
  wire [1:0]HBM00_AXI_bresp_0;
  wire [0:0]HBM00_AXI_bvalid_0;
  wire [255:0]HBM00_AXI_rdata_0;
  wire [0:0]HBM00_AXI_rlast_0;
  wire [0:0]HBM00_AXI_rready_0;
  wire [0:0]HBM00_AXI_rvalid_0;
  wire [255:0]HBM00_AXI_wdata_0;
  wire [0:0]HBM00_AXI_wlast_0;
  wire [0:0]HBM00_AXI_wready_0;
  wire [31:0]HBM00_AXI_wstrb_0;
  wire [0:0]HBM00_AXI_wvalid_0;
  wire [63:0]HBM01_AXI_araddr_0;
  wire [1:0]HBM01_AXI_arburst_0;
  wire [5:0]HBM01_AXI_arid_0;
  wire [7:0]HBM01_AXI_arlen_0;
  wire [0:0]HBM01_AXI_arready_0;
  wire [2:0]HBM01_AXI_arsize_0;
  wire [0:0]HBM01_AXI_arvalid_0;
  wire [63:0]HBM01_AXI_awaddr_0;
  wire [1:0]HBM01_AXI_awburst_0;
  wire [5:0]HBM01_AXI_awid_0;
  wire [7:0]HBM01_AXI_awlen_0;
  wire [0:0]HBM01_AXI_awready_0;
  wire [2:0]HBM01_AXI_awsize_0;
  wire [0:0]HBM01_AXI_awvalid_0;
  wire [0:0]HBM01_AXI_bready_0;
  wire [1:0]HBM01_AXI_bresp_0;
  wire [0:0]HBM01_AXI_bvalid_0;
  wire [255:0]HBM01_AXI_rdata_0;
  wire [0:0]HBM01_AXI_rlast_0;
  wire [0:0]HBM01_AXI_rready_0;
  wire [0:0]HBM01_AXI_rvalid_0;
  wire [255:0]HBM01_AXI_wdata_0;
  wire [0:0]HBM01_AXI_wlast_0;
  wire [0:0]HBM01_AXI_wready_0;
  wire [31:0]HBM01_AXI_wstrb_0;
  wire [0:0]HBM01_AXI_wvalid_0;
  wire [63:0]HBM02_AXI_araddr_0;
  wire [1:0]HBM02_AXI_arburst_0;
  wire [5:0]HBM02_AXI_arid_0;
  wire [7:0]HBM02_AXI_arlen_0;
  wire [0:0]HBM02_AXI_arready_0;
  wire [2:0]HBM02_AXI_arsize_0;
  wire [0:0]HBM02_AXI_arvalid_0;
  wire [63:0]HBM02_AXI_awaddr_0;
  wire [1:0]HBM02_AXI_awburst_0;
  wire [5:0]HBM02_AXI_awid_0;
  wire [7:0]HBM02_AXI_awlen_0;
  wire [0:0]HBM02_AXI_awready_0;
  wire [2:0]HBM02_AXI_awsize_0;
  wire [0:0]HBM02_AXI_awvalid_0;
  wire [0:0]HBM02_AXI_bready_0;
  wire [1:0]HBM02_AXI_bresp_0;
  wire [0:0]HBM02_AXI_bvalid_0;
  wire [255:0]HBM02_AXI_rdata_0;
  wire [0:0]HBM02_AXI_rlast_0;
  wire [0:0]HBM02_AXI_rready_0;
  wire [0:0]HBM02_AXI_rvalid_0;
  wire [255:0]HBM02_AXI_wdata_0;
  wire [0:0]HBM02_AXI_wlast_0;
  wire [0:0]HBM02_AXI_wready_0;
  wire [31:0]HBM02_AXI_wstrb_0;
  wire [0:0]HBM02_AXI_wvalid_0;
  wire [63:0]HBM03_AXI_araddr_0;
  wire [1:0]HBM03_AXI_arburst_0;
  wire [5:0]HBM03_AXI_arid_0;
  wire [7:0]HBM03_AXI_arlen_0;
  wire [0:0]HBM03_AXI_arready_0;
  wire [2:0]HBM03_AXI_arsize_0;
  wire [0:0]HBM03_AXI_arvalid_0;
  wire [63:0]HBM03_AXI_awaddr_0;
  wire [1:0]HBM03_AXI_awburst_0;
  wire [5:0]HBM03_AXI_awid_0;
  wire [7:0]HBM03_AXI_awlen_0;
  wire [0:0]HBM03_AXI_awready_0;
  wire [2:0]HBM03_AXI_awsize_0;
  wire [0:0]HBM03_AXI_awvalid_0;
  wire [0:0]HBM03_AXI_bready_0;
  wire [1:0]HBM03_AXI_bresp_0;
  wire [0:0]HBM03_AXI_bvalid_0;
  wire [255:0]HBM03_AXI_rdata_0;
  wire [0:0]HBM03_AXI_rlast_0;
  wire [0:0]HBM03_AXI_rready_0;
  wire [0:0]HBM03_AXI_rvalid_0;
  wire [255:0]HBM03_AXI_wdata_0;
  wire [0:0]HBM03_AXI_wlast_0;
  wire [0:0]HBM03_AXI_wready_0;
  wire [31:0]HBM03_AXI_wstrb_0;
  wire [0:0]HBM03_AXI_wvalid_0;
  wire [63:0]HBM04_AXI_araddr_0;
  wire [1:0]HBM04_AXI_arburst_0;
  wire [5:0]HBM04_AXI_arid_0;
  wire [7:0]HBM04_AXI_arlen_0;
  wire [0:0]HBM04_AXI_arready_0;
  wire [2:0]HBM04_AXI_arsize_0;
  wire [0:0]HBM04_AXI_arvalid_0;
  wire [63:0]HBM04_AXI_awaddr_0;
  wire [1:0]HBM04_AXI_awburst_0;
  wire [5:0]HBM04_AXI_awid_0;
  wire [7:0]HBM04_AXI_awlen_0;
  wire [0:0]HBM04_AXI_awready_0;
  wire [2:0]HBM04_AXI_awsize_0;
  wire [0:0]HBM04_AXI_awvalid_0;
  wire [0:0]HBM04_AXI_bready_0;
  wire [1:0]HBM04_AXI_bresp_0;
  wire [0:0]HBM04_AXI_bvalid_0;
  wire [255:0]HBM04_AXI_rdata_0;
  wire [0:0]HBM04_AXI_rlast_0;
  wire [0:0]HBM04_AXI_rready_0;
  wire [0:0]HBM04_AXI_rvalid_0;
  wire [255:0]HBM04_AXI_wdata_0;
  wire [0:0]HBM04_AXI_wlast_0;
  wire [0:0]HBM04_AXI_wready_0;
  wire [31:0]HBM04_AXI_wstrb_0;
  wire [0:0]HBM04_AXI_wvalid_0;
  wire [63:0]HBM05_AXI_araddr_0;
  wire [1:0]HBM05_AXI_arburst_0;
  wire [5:0]HBM05_AXI_arid_0;
  wire [7:0]HBM05_AXI_arlen_0;
  wire [0:0]HBM05_AXI_arready_0;
  wire [2:0]HBM05_AXI_arsize_0;
  wire [0:0]HBM05_AXI_arvalid_0;
  wire [63:0]HBM05_AXI_awaddr_0;
  wire [1:0]HBM05_AXI_awburst_0;
  wire [5:0]HBM05_AXI_awid_0;
  wire [7:0]HBM05_AXI_awlen_0;
  wire [0:0]HBM05_AXI_awready_0;
  wire [2:0]HBM05_AXI_awsize_0;
  wire [0:0]HBM05_AXI_awvalid_0;
  wire [0:0]HBM05_AXI_bready_0;
  wire [1:0]HBM05_AXI_bresp_0;
  wire [0:0]HBM05_AXI_bvalid_0;
  wire [255:0]HBM05_AXI_rdata_0;
  wire [0:0]HBM05_AXI_rlast_0;
  wire [0:0]HBM05_AXI_rready_0;
  wire [0:0]HBM05_AXI_rvalid_0;
  wire [255:0]HBM05_AXI_wdata_0;
  wire [0:0]HBM05_AXI_wlast_0;
  wire [0:0]HBM05_AXI_wready_0;
  wire [31:0]HBM05_AXI_wstrb_0;
  wire [0:0]HBM05_AXI_wvalid_0;
  wire [63:0]HBM06_AXI_araddr_0;
  wire [1:0]HBM06_AXI_arburst_0;
  wire [5:0]HBM06_AXI_arid_0;
  wire [7:0]HBM06_AXI_arlen_0;
  wire [0:0]HBM06_AXI_arready_0;
  wire [2:0]HBM06_AXI_arsize_0;
  wire [0:0]HBM06_AXI_arvalid_0;
  wire [63:0]HBM06_AXI_awaddr_0;
  wire [1:0]HBM06_AXI_awburst_0;
  wire [5:0]HBM06_AXI_awid_0;
  wire [7:0]HBM06_AXI_awlen_0;
  wire [0:0]HBM06_AXI_awready_0;
  wire [2:0]HBM06_AXI_awsize_0;
  wire [0:0]HBM06_AXI_awvalid_0;
  wire [0:0]HBM06_AXI_bready_0;
  wire [1:0]HBM06_AXI_bresp_0;
  wire [0:0]HBM06_AXI_bvalid_0;
  wire [255:0]HBM06_AXI_rdata_0;
  wire [0:0]HBM06_AXI_rlast_0;
  wire [0:0]HBM06_AXI_rready_0;
  wire [0:0]HBM06_AXI_rvalid_0;
  wire [255:0]HBM06_AXI_wdata_0;
  wire [0:0]HBM06_AXI_wlast_0;
  wire [0:0]HBM06_AXI_wready_0;
  wire [31:0]HBM06_AXI_wstrb_0;
  wire [0:0]HBM06_AXI_wvalid_0;
  wire [63:0]HBM07_AXI_araddr_0;
  wire [1:0]HBM07_AXI_arburst_0;
  wire [5:0]HBM07_AXI_arid_0;
  wire [7:0]HBM07_AXI_arlen_0;
  wire [0:0]HBM07_AXI_arready_0;
  wire [2:0]HBM07_AXI_arsize_0;
  wire [0:0]HBM07_AXI_arvalid_0;
  wire [63:0]HBM07_AXI_awaddr_0;
  wire [1:0]HBM07_AXI_awburst_0;
  wire [5:0]HBM07_AXI_awid_0;
  wire [7:0]HBM07_AXI_awlen_0;
  wire [0:0]HBM07_AXI_awready_0;
  wire [2:0]HBM07_AXI_awsize_0;
  wire [0:0]HBM07_AXI_awvalid_0;
  wire [0:0]HBM07_AXI_bready_0;
  wire [1:0]HBM07_AXI_bresp_0;
  wire [0:0]HBM07_AXI_bvalid_0;
  wire [255:0]HBM07_AXI_rdata_0;
  wire [0:0]HBM07_AXI_rlast_0;
  wire [0:0]HBM07_AXI_rready_0;
  wire [0:0]HBM07_AXI_rvalid_0;
  wire [255:0]HBM07_AXI_wdata_0;
  wire [0:0]HBM07_AXI_wlast_0;
  wire [0:0]HBM07_AXI_wready_0;
  wire [31:0]HBM07_AXI_wstrb_0;
  wire [0:0]HBM07_AXI_wvalid_0;
  wire [63:0]HBM08_AXI_araddr_0;
  wire [1:0]HBM08_AXI_arburst_0;
  wire [5:0]HBM08_AXI_arid_0;
  wire [7:0]HBM08_AXI_arlen_0;
  wire [0:0]HBM08_AXI_arready_0;
  wire [2:0]HBM08_AXI_arsize_0;
  wire [0:0]HBM08_AXI_arvalid_0;
  wire [63:0]HBM08_AXI_awaddr_0;
  wire [1:0]HBM08_AXI_awburst_0;
  wire [5:0]HBM08_AXI_awid_0;
  wire [7:0]HBM08_AXI_awlen_0;
  wire [0:0]HBM08_AXI_awready_0;
  wire [2:0]HBM08_AXI_awsize_0;
  wire [0:0]HBM08_AXI_awvalid_0;
  wire [0:0]HBM08_AXI_bready_0;
  wire [1:0]HBM08_AXI_bresp_0;
  wire [0:0]HBM08_AXI_bvalid_0;
  wire [255:0]HBM08_AXI_rdata_0;
  wire [0:0]HBM08_AXI_rlast_0;
  wire [0:0]HBM08_AXI_rready_0;
  wire [0:0]HBM08_AXI_rvalid_0;
  wire [255:0]HBM08_AXI_wdata_0;
  wire [0:0]HBM08_AXI_wlast_0;
  wire [0:0]HBM08_AXI_wready_0;
  wire [31:0]HBM08_AXI_wstrb_0;
  wire [0:0]HBM08_AXI_wvalid_0;
  wire [63:0]HBM09_AXI_araddr_0;
  wire [1:0]HBM09_AXI_arburst_0;
  wire [5:0]HBM09_AXI_arid_0;
  wire [7:0]HBM09_AXI_arlen_0;
  wire [0:0]HBM09_AXI_arready_0;
  wire [2:0]HBM09_AXI_arsize_0;
  wire [0:0]HBM09_AXI_arvalid_0;
  wire [63:0]HBM09_AXI_awaddr_0;
  wire [1:0]HBM09_AXI_awburst_0;
  wire [5:0]HBM09_AXI_awid_0;
  wire [7:0]HBM09_AXI_awlen_0;
  wire [0:0]HBM09_AXI_awready_0;
  wire [2:0]HBM09_AXI_awsize_0;
  wire [0:0]HBM09_AXI_awvalid_0;
  wire [0:0]HBM09_AXI_bready_0;
  wire [1:0]HBM09_AXI_bresp_0;
  wire [0:0]HBM09_AXI_bvalid_0;
  wire [255:0]HBM09_AXI_rdata_0;
  wire [0:0]HBM09_AXI_rlast_0;
  wire [0:0]HBM09_AXI_rready_0;
  wire [0:0]HBM09_AXI_rvalid_0;
  wire [255:0]HBM09_AXI_wdata_0;
  wire [0:0]HBM09_AXI_wlast_0;
  wire [0:0]HBM09_AXI_wready_0;
  wire [31:0]HBM09_AXI_wstrb_0;
  wire [0:0]HBM09_AXI_wvalid_0;
  wire [63:0]HBM10_AXI_araddr_0;
  wire [1:0]HBM10_AXI_arburst_0;
  wire [5:0]HBM10_AXI_arid_0;
  wire [7:0]HBM10_AXI_arlen_0;
  wire [0:0]HBM10_AXI_arready_0;
  wire [2:0]HBM10_AXI_arsize_0;
  wire [0:0]HBM10_AXI_arvalid_0;
  wire [63:0]HBM10_AXI_awaddr_0;
  wire [1:0]HBM10_AXI_awburst_0;
  wire [5:0]HBM10_AXI_awid_0;
  wire [7:0]HBM10_AXI_awlen_0;
  wire [0:0]HBM10_AXI_awready_0;
  wire [2:0]HBM10_AXI_awsize_0;
  wire [0:0]HBM10_AXI_awvalid_0;
  wire [0:0]HBM10_AXI_bready_0;
  wire [1:0]HBM10_AXI_bresp_0;
  wire [0:0]HBM10_AXI_bvalid_0;
  wire [255:0]HBM10_AXI_rdata_0;
  wire [0:0]HBM10_AXI_rlast_0;
  wire [0:0]HBM10_AXI_rready_0;
  wire [0:0]HBM10_AXI_rvalid_0;
  wire [255:0]HBM10_AXI_wdata_0;
  wire [0:0]HBM10_AXI_wlast_0;
  wire [0:0]HBM10_AXI_wready_0;
  wire [31:0]HBM10_AXI_wstrb_0;
  wire [0:0]HBM10_AXI_wvalid_0;
  wire [63:0]HBM11_AXI_araddr_0;
  wire [1:0]HBM11_AXI_arburst_0;
  wire [5:0]HBM11_AXI_arid_0;
  wire [7:0]HBM11_AXI_arlen_0;
  wire [0:0]HBM11_AXI_arready_0;
  wire [2:0]HBM11_AXI_arsize_0;
  wire [0:0]HBM11_AXI_arvalid_0;
  wire [63:0]HBM11_AXI_awaddr_0;
  wire [1:0]HBM11_AXI_awburst_0;
  wire [5:0]HBM11_AXI_awid_0;
  wire [7:0]HBM11_AXI_awlen_0;
  wire [0:0]HBM11_AXI_awready_0;
  wire [2:0]HBM11_AXI_awsize_0;
  wire [0:0]HBM11_AXI_awvalid_0;
  wire [0:0]HBM11_AXI_bready_0;
  wire [1:0]HBM11_AXI_bresp_0;
  wire [0:0]HBM11_AXI_bvalid_0;
  wire [255:0]HBM11_AXI_rdata_0;
  wire [0:0]HBM11_AXI_rlast_0;
  wire [0:0]HBM11_AXI_rready_0;
  wire [0:0]HBM11_AXI_rvalid_0;
  wire [255:0]HBM11_AXI_wdata_0;
  wire [0:0]HBM11_AXI_wlast_0;
  wire [0:0]HBM11_AXI_wready_0;
  wire [31:0]HBM11_AXI_wstrb_0;
  wire [0:0]HBM11_AXI_wvalid_0;
  wire [63:0]HBM12_AXI_araddr_0;
  wire [1:0]HBM12_AXI_arburst_0;
  wire [5:0]HBM12_AXI_arid_0;
  wire [7:0]HBM12_AXI_arlen_0;
  wire [0:0]HBM12_AXI_arready_0;
  wire [2:0]HBM12_AXI_arsize_0;
  wire [0:0]HBM12_AXI_arvalid_0;
  wire [63:0]HBM12_AXI_awaddr_0;
  wire [1:0]HBM12_AXI_awburst_0;
  wire [5:0]HBM12_AXI_awid_0;
  wire [7:0]HBM12_AXI_awlen_0;
  wire [0:0]HBM12_AXI_awready_0;
  wire [2:0]HBM12_AXI_awsize_0;
  wire [0:0]HBM12_AXI_awvalid_0;
  wire [0:0]HBM12_AXI_bready_0;
  wire [1:0]HBM12_AXI_bresp_0;
  wire [0:0]HBM12_AXI_bvalid_0;
  wire [255:0]HBM12_AXI_rdata_0;
  wire [0:0]HBM12_AXI_rlast_0;
  wire [0:0]HBM12_AXI_rready_0;
  wire [0:0]HBM12_AXI_rvalid_0;
  wire [255:0]HBM12_AXI_wdata_0;
  wire [0:0]HBM12_AXI_wlast_0;
  wire [0:0]HBM12_AXI_wready_0;
  wire [31:0]HBM12_AXI_wstrb_0;
  wire [0:0]HBM12_AXI_wvalid_0;
  wire [63:0]HBM13_AXI_araddr_0;
  wire [1:0]HBM13_AXI_arburst_0;
  wire [5:0]HBM13_AXI_arid_0;
  wire [7:0]HBM13_AXI_arlen_0;
  wire [0:0]HBM13_AXI_arready_0;
  wire [2:0]HBM13_AXI_arsize_0;
  wire [0:0]HBM13_AXI_arvalid_0;
  wire [63:0]HBM13_AXI_awaddr_0;
  wire [1:0]HBM13_AXI_awburst_0;
  wire [5:0]HBM13_AXI_awid_0;
  wire [7:0]HBM13_AXI_awlen_0;
  wire [0:0]HBM13_AXI_awready_0;
  wire [2:0]HBM13_AXI_awsize_0;
  wire [0:0]HBM13_AXI_awvalid_0;
  wire [0:0]HBM13_AXI_bready_0;
  wire [1:0]HBM13_AXI_bresp_0;
  wire [0:0]HBM13_AXI_bvalid_0;
  wire [255:0]HBM13_AXI_rdata_0;
  wire [0:0]HBM13_AXI_rlast_0;
  wire [0:0]HBM13_AXI_rready_0;
  wire [0:0]HBM13_AXI_rvalid_0;
  wire [255:0]HBM13_AXI_wdata_0;
  wire [0:0]HBM13_AXI_wlast_0;
  wire [0:0]HBM13_AXI_wready_0;
  wire [31:0]HBM13_AXI_wstrb_0;
  wire [0:0]HBM13_AXI_wvalid_0;
  wire [63:0]HBM14_AXI_araddr_0;
  wire [1:0]HBM14_AXI_arburst_0;
  wire [5:0]HBM14_AXI_arid_0;
  wire [7:0]HBM14_AXI_arlen_0;
  wire [0:0]HBM14_AXI_arready_0;
  wire [2:0]HBM14_AXI_arsize_0;
  wire [0:0]HBM14_AXI_arvalid_0;
  wire [63:0]HBM14_AXI_awaddr_0;
  wire [1:0]HBM14_AXI_awburst_0;
  wire [5:0]HBM14_AXI_awid_0;
  wire [7:0]HBM14_AXI_awlen_0;
  wire [0:0]HBM14_AXI_awready_0;
  wire [2:0]HBM14_AXI_awsize_0;
  wire [0:0]HBM14_AXI_awvalid_0;
  wire [0:0]HBM14_AXI_bready_0;
  wire [1:0]HBM14_AXI_bresp_0;
  wire [0:0]HBM14_AXI_bvalid_0;
  wire [255:0]HBM14_AXI_rdata_0;
  wire [0:0]HBM14_AXI_rlast_0;
  wire [0:0]HBM14_AXI_rready_0;
  wire [0:0]HBM14_AXI_rvalid_0;
  wire [255:0]HBM14_AXI_wdata_0;
  wire [0:0]HBM14_AXI_wlast_0;
  wire [0:0]HBM14_AXI_wready_0;
  wire [31:0]HBM14_AXI_wstrb_0;
  wire [0:0]HBM14_AXI_wvalid_0;
  wire [63:0]HBM15_AXI_araddr_0;
  wire [1:0]HBM15_AXI_arburst_0;
  wire [5:0]HBM15_AXI_arid_0;
  wire [7:0]HBM15_AXI_arlen_0;
  wire [0:0]HBM15_AXI_arready_0;
  wire [2:0]HBM15_AXI_arsize_0;
  wire [0:0]HBM15_AXI_arvalid_0;
  wire [63:0]HBM15_AXI_awaddr_0;
  wire [1:0]HBM15_AXI_awburst_0;
  wire [5:0]HBM15_AXI_awid_0;
  wire [7:0]HBM15_AXI_awlen_0;
  wire [0:0]HBM15_AXI_awready_0;
  wire [2:0]HBM15_AXI_awsize_0;
  wire [0:0]HBM15_AXI_awvalid_0;
  wire [0:0]HBM15_AXI_bready_0;
  wire [1:0]HBM15_AXI_bresp_0;
  wire [0:0]HBM15_AXI_bvalid_0;
  wire [255:0]HBM15_AXI_rdata_0;
  wire [0:0]HBM15_AXI_rlast_0;
  wire [0:0]HBM15_AXI_rready_0;
  wire [0:0]HBM15_AXI_rvalid_0;
  wire [255:0]HBM15_AXI_wdata_0;
  wire [0:0]HBM15_AXI_wlast_0;
  wire [0:0]HBM15_AXI_wready_0;
  wire [31:0]HBM15_AXI_wstrb_0;
  wire [0:0]HBM15_AXI_wvalid_0;
  wire [63:0]HBM16_AXI_araddr_0;
  wire [1:0]HBM16_AXI_arburst_0;
  wire [5:0]HBM16_AXI_arid_0;
  wire [7:0]HBM16_AXI_arlen_0;
  wire [0:0]HBM16_AXI_arready_0;
  wire [2:0]HBM16_AXI_arsize_0;
  wire [0:0]HBM16_AXI_arvalid_0;
  wire [63:0]HBM16_AXI_awaddr_0;
  wire [1:0]HBM16_AXI_awburst_0;
  wire [5:0]HBM16_AXI_awid_0;
  wire [7:0]HBM16_AXI_awlen_0;
  wire [0:0]HBM16_AXI_awready_0;
  wire [2:0]HBM16_AXI_awsize_0;
  wire [0:0]HBM16_AXI_awvalid_0;
  wire [0:0]HBM16_AXI_bready_0;
  wire [1:0]HBM16_AXI_bresp_0;
  wire [0:0]HBM16_AXI_bvalid_0;
  wire [255:0]HBM16_AXI_rdata_0;
  wire [0:0]HBM16_AXI_rlast_0;
  wire [0:0]HBM16_AXI_rready_0;
  wire [0:0]HBM16_AXI_rvalid_0;
  wire [255:0]HBM16_AXI_wdata_0;
  wire [0:0]HBM16_AXI_wlast_0;
  wire [0:0]HBM16_AXI_wready_0;
  wire [31:0]HBM16_AXI_wstrb_0;
  wire [0:0]HBM16_AXI_wvalid_0;
  wire [63:0]HBM17_AXI_araddr_0;
  wire [1:0]HBM17_AXI_arburst_0;
  wire [5:0]HBM17_AXI_arid_0;
  wire [7:0]HBM17_AXI_arlen_0;
  wire [0:0]HBM17_AXI_arready_0;
  wire [2:0]HBM17_AXI_arsize_0;
  wire [0:0]HBM17_AXI_arvalid_0;
  wire [63:0]HBM17_AXI_awaddr_0;
  wire [1:0]HBM17_AXI_awburst_0;
  wire [5:0]HBM17_AXI_awid_0;
  wire [7:0]HBM17_AXI_awlen_0;
  wire [0:0]HBM17_AXI_awready_0;
  wire [2:0]HBM17_AXI_awsize_0;
  wire [0:0]HBM17_AXI_awvalid_0;
  wire [0:0]HBM17_AXI_bready_0;
  wire [1:0]HBM17_AXI_bresp_0;
  wire [0:0]HBM17_AXI_bvalid_0;
  wire [255:0]HBM17_AXI_rdata_0;
  wire [0:0]HBM17_AXI_rlast_0;
  wire [0:0]HBM17_AXI_rready_0;
  wire [0:0]HBM17_AXI_rvalid_0;
  wire [255:0]HBM17_AXI_wdata_0;
  wire [0:0]HBM17_AXI_wlast_0;
  wire [0:0]HBM17_AXI_wready_0;
  wire [31:0]HBM17_AXI_wstrb_0;
  wire [0:0]HBM17_AXI_wvalid_0;
  wire [63:0]HBM18_AXI_araddr_0;
  wire [1:0]HBM18_AXI_arburst_0;
  wire [5:0]HBM18_AXI_arid_0;
  wire [7:0]HBM18_AXI_arlen_0;
  wire [0:0]HBM18_AXI_arready_0;
  wire [2:0]HBM18_AXI_arsize_0;
  wire [0:0]HBM18_AXI_arvalid_0;
  wire [63:0]HBM18_AXI_awaddr_0;
  wire [1:0]HBM18_AXI_awburst_0;
  wire [5:0]HBM18_AXI_awid_0;
  wire [7:0]HBM18_AXI_awlen_0;
  wire [0:0]HBM18_AXI_awready_0;
  wire [2:0]HBM18_AXI_awsize_0;
  wire [0:0]HBM18_AXI_awvalid_0;
  wire [0:0]HBM18_AXI_bready_0;
  wire [1:0]HBM18_AXI_bresp_0;
  wire [0:0]HBM18_AXI_bvalid_0;
  wire [255:0]HBM18_AXI_rdata_0;
  wire [0:0]HBM18_AXI_rlast_0;
  wire [0:0]HBM18_AXI_rready_0;
  wire [0:0]HBM18_AXI_rvalid_0;
  wire [255:0]HBM18_AXI_wdata_0;
  wire [0:0]HBM18_AXI_wlast_0;
  wire [0:0]HBM18_AXI_wready_0;
  wire [31:0]HBM18_AXI_wstrb_0;
  wire [0:0]HBM18_AXI_wvalid_0;
  wire [63:0]HBM19_AXI_araddr_0;
  wire [1:0]HBM19_AXI_arburst_0;
  wire [5:0]HBM19_AXI_arid_0;
  wire [7:0]HBM19_AXI_arlen_0;
  wire [0:0]HBM19_AXI_arready_0;
  wire [2:0]HBM19_AXI_arsize_0;
  wire [0:0]HBM19_AXI_arvalid_0;
  wire [63:0]HBM19_AXI_awaddr_0;
  wire [1:0]HBM19_AXI_awburst_0;
  wire [5:0]HBM19_AXI_awid_0;
  wire [7:0]HBM19_AXI_awlen_0;
  wire [0:0]HBM19_AXI_awready_0;
  wire [2:0]HBM19_AXI_awsize_0;
  wire [0:0]HBM19_AXI_awvalid_0;
  wire [0:0]HBM19_AXI_bready_0;
  wire [1:0]HBM19_AXI_bresp_0;
  wire [0:0]HBM19_AXI_bvalid_0;
  wire [255:0]HBM19_AXI_rdata_0;
  wire [0:0]HBM19_AXI_rlast_0;
  wire [0:0]HBM19_AXI_rready_0;
  wire [0:0]HBM19_AXI_rvalid_0;
  wire [255:0]HBM19_AXI_wdata_0;
  wire [0:0]HBM19_AXI_wlast_0;
  wire [0:0]HBM19_AXI_wready_0;
  wire [31:0]HBM19_AXI_wstrb_0;
  wire [0:0]HBM19_AXI_wvalid_0;
  wire [63:0]HBM20_AXI_araddr_0;
  wire [1:0]HBM20_AXI_arburst_0;
  wire [5:0]HBM20_AXI_arid_0;
  wire [7:0]HBM20_AXI_arlen_0;
  wire [0:0]HBM20_AXI_arready_0;
  wire [2:0]HBM20_AXI_arsize_0;
  wire [0:0]HBM20_AXI_arvalid_0;
  wire [63:0]HBM20_AXI_awaddr_0;
  wire [1:0]HBM20_AXI_awburst_0;
  wire [5:0]HBM20_AXI_awid_0;
  wire [7:0]HBM20_AXI_awlen_0;
  wire [0:0]HBM20_AXI_awready_0;
  wire [2:0]HBM20_AXI_awsize_0;
  wire [0:0]HBM20_AXI_awvalid_0;
  wire [0:0]HBM20_AXI_bready_0;
  wire [1:0]HBM20_AXI_bresp_0;
  wire [0:0]HBM20_AXI_bvalid_0;
  wire [255:0]HBM20_AXI_rdata_0;
  wire [0:0]HBM20_AXI_rlast_0;
  wire [0:0]HBM20_AXI_rready_0;
  wire [0:0]HBM20_AXI_rvalid_0;
  wire [255:0]HBM20_AXI_wdata_0;
  wire [0:0]HBM20_AXI_wlast_0;
  wire [0:0]HBM20_AXI_wready_0;
  wire [31:0]HBM20_AXI_wstrb_0;
  wire [0:0]HBM20_AXI_wvalid_0;
  wire [63:0]HBM21_AXI_araddr_0;
  wire [1:0]HBM21_AXI_arburst_0;
  wire [5:0]HBM21_AXI_arid_0;
  wire [7:0]HBM21_AXI_arlen_0;
  wire [0:0]HBM21_AXI_arready_0;
  wire [2:0]HBM21_AXI_arsize_0;
  wire [0:0]HBM21_AXI_arvalid_0;
  wire [63:0]HBM21_AXI_awaddr_0;
  wire [1:0]HBM21_AXI_awburst_0;
  wire [5:0]HBM21_AXI_awid_0;
  wire [7:0]HBM21_AXI_awlen_0;
  wire [0:0]HBM21_AXI_awready_0;
  wire [2:0]HBM21_AXI_awsize_0;
  wire [0:0]HBM21_AXI_awvalid_0;
  wire [0:0]HBM21_AXI_bready_0;
  wire [1:0]HBM21_AXI_bresp_0;
  wire [0:0]HBM21_AXI_bvalid_0;
  wire [255:0]HBM21_AXI_rdata_0;
  wire [0:0]HBM21_AXI_rlast_0;
  wire [0:0]HBM21_AXI_rready_0;
  wire [0:0]HBM21_AXI_rvalid_0;
  wire [255:0]HBM21_AXI_wdata_0;
  wire [0:0]HBM21_AXI_wlast_0;
  wire [0:0]HBM21_AXI_wready_0;
  wire [31:0]HBM21_AXI_wstrb_0;
  wire [0:0]HBM21_AXI_wvalid_0;
  wire [63:0]HBM22_AXI_araddr_0;
  wire [1:0]HBM22_AXI_arburst_0;
  wire [5:0]HBM22_AXI_arid_0;
  wire [7:0]HBM22_AXI_arlen_0;
  wire [0:0]HBM22_AXI_arready_0;
  wire [2:0]HBM22_AXI_arsize_0;
  wire [0:0]HBM22_AXI_arvalid_0;
  wire [63:0]HBM22_AXI_awaddr_0;
  wire [1:0]HBM22_AXI_awburst_0;
  wire [5:0]HBM22_AXI_awid_0;
  wire [7:0]HBM22_AXI_awlen_0;
  wire [0:0]HBM22_AXI_awready_0;
  wire [2:0]HBM22_AXI_awsize_0;
  wire [0:0]HBM22_AXI_awvalid_0;
  wire [0:0]HBM22_AXI_bready_0;
  wire [1:0]HBM22_AXI_bresp_0;
  wire [0:0]HBM22_AXI_bvalid_0;
  wire [255:0]HBM22_AXI_rdata_0;
  wire [0:0]HBM22_AXI_rlast_0;
  wire [0:0]HBM22_AXI_rready_0;
  wire [0:0]HBM22_AXI_rvalid_0;
  wire [255:0]HBM22_AXI_wdata_0;
  wire [0:0]HBM22_AXI_wlast_0;
  wire [0:0]HBM22_AXI_wready_0;
  wire [31:0]HBM22_AXI_wstrb_0;
  wire [0:0]HBM22_AXI_wvalid_0;
  wire [63:0]HBM23_AXI_araddr_0;
  wire [1:0]HBM23_AXI_arburst_0;
  wire [5:0]HBM23_AXI_arid_0;
  wire [7:0]HBM23_AXI_arlen_0;
  wire [0:0]HBM23_AXI_arready_0;
  wire [2:0]HBM23_AXI_arsize_0;
  wire [0:0]HBM23_AXI_arvalid_0;
  wire [63:0]HBM23_AXI_awaddr_0;
  wire [1:0]HBM23_AXI_awburst_0;
  wire [5:0]HBM23_AXI_awid_0;
  wire [7:0]HBM23_AXI_awlen_0;
  wire [0:0]HBM23_AXI_awready_0;
  wire [2:0]HBM23_AXI_awsize_0;
  wire [0:0]HBM23_AXI_awvalid_0;
  wire [0:0]HBM23_AXI_bready_0;
  wire [1:0]HBM23_AXI_bresp_0;
  wire [0:0]HBM23_AXI_bvalid_0;
  wire [255:0]HBM23_AXI_rdata_0;
  wire [0:0]HBM23_AXI_rlast_0;
  wire [0:0]HBM23_AXI_rready_0;
  wire [0:0]HBM23_AXI_rvalid_0;
  wire [255:0]HBM23_AXI_wdata_0;
  wire [0:0]HBM23_AXI_wlast_0;
  wire [0:0]HBM23_AXI_wready_0;
  wire [31:0]HBM23_AXI_wstrb_0;
  wire [0:0]HBM23_AXI_wvalid_0;
  wire [63:0]HBM24_AXI_araddr_0;
  wire [1:0]HBM24_AXI_arburst_0;
  wire [5:0]HBM24_AXI_arid_0;
  wire [7:0]HBM24_AXI_arlen_0;
  wire [0:0]HBM24_AXI_arready_0;
  wire [2:0]HBM24_AXI_arsize_0;
  wire [0:0]HBM24_AXI_arvalid_0;
  wire [63:0]HBM24_AXI_awaddr_0;
  wire [1:0]HBM24_AXI_awburst_0;
  wire [5:0]HBM24_AXI_awid_0;
  wire [7:0]HBM24_AXI_awlen_0;
  wire [0:0]HBM24_AXI_awready_0;
  wire [2:0]HBM24_AXI_awsize_0;
  wire [0:0]HBM24_AXI_awvalid_0;
  wire [0:0]HBM24_AXI_bready_0;
  wire [1:0]HBM24_AXI_bresp_0;
  wire [0:0]HBM24_AXI_bvalid_0;
  wire [255:0]HBM24_AXI_rdata_0;
  wire [0:0]HBM24_AXI_rlast_0;
  wire [0:0]HBM24_AXI_rready_0;
  wire [0:0]HBM24_AXI_rvalid_0;
  wire [255:0]HBM24_AXI_wdata_0;
  wire [0:0]HBM24_AXI_wlast_0;
  wire [0:0]HBM24_AXI_wready_0;
  wire [31:0]HBM24_AXI_wstrb_0;
  wire [0:0]HBM24_AXI_wvalid_0;
  wire [63:0]HBM25_AXI_araddr_0;
  wire [1:0]HBM25_AXI_arburst_0;
  wire [5:0]HBM25_AXI_arid_0;
  wire [7:0]HBM25_AXI_arlen_0;
  wire [0:0]HBM25_AXI_arready_0;
  wire [2:0]HBM25_AXI_arsize_0;
  wire [0:0]HBM25_AXI_arvalid_0;
  wire [63:0]HBM25_AXI_awaddr_0;
  wire [1:0]HBM25_AXI_awburst_0;
  wire [5:0]HBM25_AXI_awid_0;
  wire [7:0]HBM25_AXI_awlen_0;
  wire [0:0]HBM25_AXI_awready_0;
  wire [2:0]HBM25_AXI_awsize_0;
  wire [0:0]HBM25_AXI_awvalid_0;
  wire [0:0]HBM25_AXI_bready_0;
  wire [1:0]HBM25_AXI_bresp_0;
  wire [0:0]HBM25_AXI_bvalid_0;
  wire [255:0]HBM25_AXI_rdata_0;
  wire [0:0]HBM25_AXI_rlast_0;
  wire [0:0]HBM25_AXI_rready_0;
  wire [0:0]HBM25_AXI_rvalid_0;
  wire [255:0]HBM25_AXI_wdata_0;
  wire [0:0]HBM25_AXI_wlast_0;
  wire [0:0]HBM25_AXI_wready_0;
  wire [31:0]HBM25_AXI_wstrb_0;
  wire [0:0]HBM25_AXI_wvalid_0;
  wire [63:0]HBM26_AXI_araddr_0;
  wire [1:0]HBM26_AXI_arburst_0;
  wire [5:0]HBM26_AXI_arid_0;
  wire [7:0]HBM26_AXI_arlen_0;
  wire [0:0]HBM26_AXI_arready_0;
  wire [2:0]HBM26_AXI_arsize_0;
  wire [0:0]HBM26_AXI_arvalid_0;
  wire [63:0]HBM26_AXI_awaddr_0;
  wire [1:0]HBM26_AXI_awburst_0;
  wire [5:0]HBM26_AXI_awid_0;
  wire [7:0]HBM26_AXI_awlen_0;
  wire [0:0]HBM26_AXI_awready_0;
  wire [2:0]HBM26_AXI_awsize_0;
  wire [0:0]HBM26_AXI_awvalid_0;
  wire [0:0]HBM26_AXI_bready_0;
  wire [1:0]HBM26_AXI_bresp_0;
  wire [0:0]HBM26_AXI_bvalid_0;
  wire [255:0]HBM26_AXI_rdata_0;
  wire [0:0]HBM26_AXI_rlast_0;
  wire [0:0]HBM26_AXI_rready_0;
  wire [0:0]HBM26_AXI_rvalid_0;
  wire [255:0]HBM26_AXI_wdata_0;
  wire [0:0]HBM26_AXI_wlast_0;
  wire [0:0]HBM26_AXI_wready_0;
  wire [31:0]HBM26_AXI_wstrb_0;
  wire [0:0]HBM26_AXI_wvalid_0;
  wire [63:0]HBM27_AXI_araddr_0;
  wire [1:0]HBM27_AXI_arburst_0;
  wire [5:0]HBM27_AXI_arid_0;
  wire [7:0]HBM27_AXI_arlen_0;
  wire [0:0]HBM27_AXI_arready_0;
  wire [2:0]HBM27_AXI_arsize_0;
  wire [0:0]HBM27_AXI_arvalid_0;
  wire [63:0]HBM27_AXI_awaddr_0;
  wire [1:0]HBM27_AXI_awburst_0;
  wire [5:0]HBM27_AXI_awid_0;
  wire [7:0]HBM27_AXI_awlen_0;
  wire [0:0]HBM27_AXI_awready_0;
  wire [2:0]HBM27_AXI_awsize_0;
  wire [0:0]HBM27_AXI_awvalid_0;
  wire [0:0]HBM27_AXI_bready_0;
  wire [1:0]HBM27_AXI_bresp_0;
  wire [0:0]HBM27_AXI_bvalid_0;
  wire [255:0]HBM27_AXI_rdata_0;
  wire [0:0]HBM27_AXI_rlast_0;
  wire [0:0]HBM27_AXI_rready_0;
  wire [0:0]HBM27_AXI_rvalid_0;
  wire [255:0]HBM27_AXI_wdata_0;
  wire [0:0]HBM27_AXI_wlast_0;
  wire [0:0]HBM27_AXI_wready_0;
  wire [31:0]HBM27_AXI_wstrb_0;
  wire [0:0]HBM27_AXI_wvalid_0;
  wire [63:0]HBM28_AXI_araddr_0;
  wire [1:0]HBM28_AXI_arburst_0;
  wire [5:0]HBM28_AXI_arid_0;
  wire [7:0]HBM28_AXI_arlen_0;
  wire [0:0]HBM28_AXI_arready_0;
  wire [2:0]HBM28_AXI_arsize_0;
  wire [0:0]HBM28_AXI_arvalid_0;
  wire [63:0]HBM28_AXI_awaddr_0;
  wire [1:0]HBM28_AXI_awburst_0;
  wire [5:0]HBM28_AXI_awid_0;
  wire [7:0]HBM28_AXI_awlen_0;
  wire [0:0]HBM28_AXI_awready_0;
  wire [2:0]HBM28_AXI_awsize_0;
  wire [0:0]HBM28_AXI_awvalid_0;
  wire [0:0]HBM28_AXI_bready_0;
  wire [1:0]HBM28_AXI_bresp_0;
  wire [0:0]HBM28_AXI_bvalid_0;
  wire [255:0]HBM28_AXI_rdata_0;
  wire [0:0]HBM28_AXI_rlast_0;
  wire [0:0]HBM28_AXI_rready_0;
  wire [0:0]HBM28_AXI_rvalid_0;
  wire [255:0]HBM28_AXI_wdata_0;
  wire [0:0]HBM28_AXI_wlast_0;
  wire [0:0]HBM28_AXI_wready_0;
  wire [31:0]HBM28_AXI_wstrb_0;
  wire [0:0]HBM28_AXI_wvalid_0;
  wire [63:0]HBM29_AXI_araddr_0;
  wire [1:0]HBM29_AXI_arburst_0;
  wire [5:0]HBM29_AXI_arid_0;
  wire [7:0]HBM29_AXI_arlen_0;
  wire [0:0]HBM29_AXI_arready_0;
  wire [2:0]HBM29_AXI_arsize_0;
  wire [0:0]HBM29_AXI_arvalid_0;
  wire [63:0]HBM29_AXI_awaddr_0;
  wire [1:0]HBM29_AXI_awburst_0;
  wire [5:0]HBM29_AXI_awid_0;
  wire [7:0]HBM29_AXI_awlen_0;
  wire [0:0]HBM29_AXI_awready_0;
  wire [2:0]HBM29_AXI_awsize_0;
  wire [0:0]HBM29_AXI_awvalid_0;
  wire [0:0]HBM29_AXI_bready_0;
  wire [1:0]HBM29_AXI_bresp_0;
  wire [0:0]HBM29_AXI_bvalid_0;
  wire [255:0]HBM29_AXI_rdata_0;
  wire [0:0]HBM29_AXI_rlast_0;
  wire [0:0]HBM29_AXI_rready_0;
  wire [0:0]HBM29_AXI_rvalid_0;
  wire [255:0]HBM29_AXI_wdata_0;
  wire [0:0]HBM29_AXI_wlast_0;
  wire [0:0]HBM29_AXI_wready_0;
  wire [31:0]HBM29_AXI_wstrb_0;
  wire [0:0]HBM29_AXI_wvalid_0;
  wire [63:0]HBM30_AXI_araddr_0;
  wire [1:0]HBM30_AXI_arburst_0;
  wire [5:0]HBM30_AXI_arid_0;
  wire [7:0]HBM30_AXI_arlen_0;
  wire [0:0]HBM30_AXI_arready_0;
  wire [2:0]HBM30_AXI_arsize_0;
  wire [0:0]HBM30_AXI_arvalid_0;
  wire [63:0]HBM30_AXI_awaddr_0;
  wire [1:0]HBM30_AXI_awburst_0;
  wire [5:0]HBM30_AXI_awid_0;
  wire [7:0]HBM30_AXI_awlen_0;
  wire [0:0]HBM30_AXI_awready_0;
  wire [2:0]HBM30_AXI_awsize_0;
  wire [0:0]HBM30_AXI_awvalid_0;
  wire [0:0]HBM30_AXI_bready_0;
  wire [1:0]HBM30_AXI_bresp_0;
  wire [0:0]HBM30_AXI_bvalid_0;
  wire [255:0]HBM30_AXI_rdata_0;
  wire [0:0]HBM30_AXI_rlast_0;
  wire [0:0]HBM30_AXI_rready_0;
  wire [0:0]HBM30_AXI_rvalid_0;
  wire [255:0]HBM30_AXI_wdata_0;
  wire [0:0]HBM30_AXI_wlast_0;
  wire [0:0]HBM30_AXI_wready_0;
  wire [31:0]HBM30_AXI_wstrb_0;
  wire [0:0]HBM30_AXI_wvalid_0;
  wire [63:0]HBM31_AXI_araddr_0;
  wire [1:0]HBM31_AXI_arburst_0;
  wire [5:0]HBM31_AXI_arid_0;
  wire [7:0]HBM31_AXI_arlen_0;
  wire [0:0]HBM31_AXI_arready_0;
  wire [2:0]HBM31_AXI_arsize_0;
  wire [0:0]HBM31_AXI_arvalid_0;
  wire [63:0]HBM31_AXI_awaddr_0;
  wire [1:0]HBM31_AXI_awburst_0;
  wire [5:0]HBM31_AXI_awid_0;
  wire [7:0]HBM31_AXI_awlen_0;
  wire [0:0]HBM31_AXI_awready_0;
  wire [2:0]HBM31_AXI_awsize_0;
  wire [0:0]HBM31_AXI_awvalid_0;
  wire [0:0]HBM31_AXI_bready_0;
  wire [1:0]HBM31_AXI_bresp_0;
  wire [0:0]HBM31_AXI_bvalid_0;
  wire [255:0]HBM31_AXI_rdata_0;
  wire [0:0]HBM31_AXI_rlast_0;
  wire [0:0]HBM31_AXI_rready_0;
  wire [0:0]HBM31_AXI_rvalid_0;
  wire [255:0]HBM31_AXI_wdata_0;
  wire [0:0]HBM31_AXI_wlast_0;
  wire [0:0]HBM31_AXI_wready_0;
  wire [31:0]HBM31_AXI_wstrb_0;
  wire [0:0]HBM31_AXI_wvalid_0;
  wire [41:0]M_AXIL_araddr;
  wire [1:0]M_AXIL_arburst;
  wire [3:0]M_AXIL_arcache;
  wire [7:0]M_AXIL_arlen;
  wire [0:0]M_AXIL_arlock;
  wire [2:0]M_AXIL_arprot;
  wire [3:0]M_AXIL_arqos;
  wire M_AXIL_arready;
  wire [2:0]M_AXIL_arsize;
  wire [17:0]M_AXIL_aruser;
  wire M_AXIL_arvalid;
  wire [41:0]M_AXIL_awaddr;
  wire [1:0]M_AXIL_awburst;
  wire [3:0]M_AXIL_awcache;
  wire [7:0]M_AXIL_awlen;
  wire [0:0]M_AXIL_awlock;
  wire [2:0]M_AXIL_awprot;
  wire [3:0]M_AXIL_awqos;
  wire M_AXIL_awready;
  wire [2:0]M_AXIL_awsize;
  wire [17:0]M_AXIL_awuser;
  wire M_AXIL_awvalid;
  wire M_AXIL_bready;
  wire [1:0]M_AXIL_bresp;
  wire M_AXIL_bvalid;
  wire [31:0]M_AXIL_rdata;
  wire M_AXIL_rlast;
  wire M_AXIL_rready;
  wire [1:0]M_AXIL_rresp;
  wire M_AXIL_rvalid;
  wire [31:0]M_AXIL_wdata;
  wire M_AXIL_wlast;
  wire M_AXIL_wready;
  wire [3:0]M_AXIL_wstrb;
  wire M_AXIL_wvalid;
  wire [7:0]PCIE1_GT_0_grx_n;
  wire [7:0]PCIE1_GT_0_grx_p;
  wire [7:0]PCIE1_GT_0_gtx_n;
  wire [7:0]PCIE1_GT_0_gtx_p;
  wire [11:0]S_AXIL_araddr;
  wire [2:0]S_AXIL_arprot;
  wire S_AXIL_arready;
  wire S_AXIL_arvalid;
  wire [11:0]S_AXIL_awaddr;
  wire [2:0]S_AXIL_awprot;
  wire S_AXIL_awready;
  wire S_AXIL_awvalid;
  wire S_AXIL_bready;
  wire [1:0]S_AXIL_bresp;
  wire S_AXIL_bvalid;
  wire [31:0]S_AXIL_rdata;
  wire S_AXIL_rready;
  wire [1:0]S_AXIL_rresp;
  wire S_AXIL_rvalid;
  wire [31:0]S_AXIL_wdata;
  wire S_AXIL_wready;
  wire [3:0]S_AXIL_wstrb;
  wire S_AXIL_wvalid;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [14:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [511:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [511:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [63:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [7:0]axi_gpio_0_gpio_io_o;
  wire [63:0]axi_noc_1_M00_AXI_ARADDR;
  wire [1:0]axi_noc_1_M00_AXI_ARBURST;
  wire [3:0]axi_noc_1_M00_AXI_ARCACHE;
  wire [1:0]axi_noc_1_M00_AXI_ARID;
  wire [7:0]axi_noc_1_M00_AXI_ARLEN;
  wire [0:0]axi_noc_1_M00_AXI_ARLOCK;
  wire [2:0]axi_noc_1_M00_AXI_ARPROT;
  wire axi_noc_1_M00_AXI_ARREADY;
  wire [2:0]axi_noc_1_M00_AXI_ARSIZE;
  wire [0:0]axi_noc_1_M00_AXI_ARVALID;
  wire [63:0]axi_noc_1_M00_AXI_AWADDR;
  wire [1:0]axi_noc_1_M00_AXI_AWBURST;
  wire [3:0]axi_noc_1_M00_AXI_AWCACHE;
  wire [1:0]axi_noc_1_M00_AXI_AWID;
  wire [7:0]axi_noc_1_M00_AXI_AWLEN;
  wire [0:0]axi_noc_1_M00_AXI_AWLOCK;
  wire [2:0]axi_noc_1_M00_AXI_AWPROT;
  wire axi_noc_1_M00_AXI_AWREADY;
  wire [2:0]axi_noc_1_M00_AXI_AWSIZE;
  wire [0:0]axi_noc_1_M00_AXI_AWVALID;
  wire [1:0]axi_noc_1_M00_AXI_BID;
  wire [0:0]axi_noc_1_M00_AXI_BREADY;
  wire [1:0]axi_noc_1_M00_AXI_BRESP;
  wire axi_noc_1_M00_AXI_BVALID;
  wire [511:0]axi_noc_1_M00_AXI_RDATA;
  wire [1:0]axi_noc_1_M00_AXI_RID;
  wire axi_noc_1_M00_AXI_RLAST;
  wire [0:0]axi_noc_1_M00_AXI_RREADY;
  wire [1:0]axi_noc_1_M00_AXI_RRESP;
  wire axi_noc_1_M00_AXI_RVALID;
  wire [511:0]axi_noc_1_M00_AXI_WDATA;
  wire [0:0]axi_noc_1_M00_AXI_WLAST;
  wire axi_noc_1_M00_AXI_WREADY;
  wire [63:0]axi_noc_1_M00_AXI_WSTRB;
  wire [0:0]axi_noc_1_M00_AXI_WVALID;
  wire [63:0]axi_noc_1_M01_AXI_ARADDR;
  wire [1:0]axi_noc_1_M01_AXI_ARBURST;
  wire [3:0]axi_noc_1_M01_AXI_ARCACHE;
  wire [1:0]axi_noc_1_M01_AXI_ARID;
  wire [7:0]axi_noc_1_M01_AXI_ARLEN;
  wire [0:0]axi_noc_1_M01_AXI_ARLOCK;
  wire [2:0]axi_noc_1_M01_AXI_ARPROT;
  wire [3:0]axi_noc_1_M01_AXI_ARQOS;
  wire axi_noc_1_M01_AXI_ARREADY;
  wire [2:0]axi_noc_1_M01_AXI_ARSIZE;
  wire [17:0]axi_noc_1_M01_AXI_ARUSER;
  wire [0:0]axi_noc_1_M01_AXI_ARVALID;
  wire [63:0]axi_noc_1_M01_AXI_AWADDR;
  wire [1:0]axi_noc_1_M01_AXI_AWBURST;
  wire [3:0]axi_noc_1_M01_AXI_AWCACHE;
  wire [1:0]axi_noc_1_M01_AXI_AWID;
  wire [7:0]axi_noc_1_M01_AXI_AWLEN;
  wire [0:0]axi_noc_1_M01_AXI_AWLOCK;
  wire [2:0]axi_noc_1_M01_AXI_AWPROT;
  wire [3:0]axi_noc_1_M01_AXI_AWQOS;
  wire axi_noc_1_M01_AXI_AWREADY;
  wire [2:0]axi_noc_1_M01_AXI_AWSIZE;
  wire [17:0]axi_noc_1_M01_AXI_AWUSER;
  wire [0:0]axi_noc_1_M01_AXI_AWVALID;
  wire [1:0]axi_noc_1_M01_AXI_BID;
  wire [0:0]axi_noc_1_M01_AXI_BREADY;
  wire [1:0]axi_noc_1_M01_AXI_BRESP;
  wire axi_noc_1_M01_AXI_BVALID;
  wire [31:0]axi_noc_1_M01_AXI_RDATA;
  wire [1:0]axi_noc_1_M01_AXI_RID;
  wire axi_noc_1_M01_AXI_RLAST;
  wire [0:0]axi_noc_1_M01_AXI_RREADY;
  wire [1:0]axi_noc_1_M01_AXI_RRESP;
  wire axi_noc_1_M01_AXI_RVALID;
  wire [31:0]axi_noc_1_M01_AXI_WDATA;
  wire [0:0]axi_noc_1_M01_AXI_WLAST;
  wire axi_noc_1_M01_AXI_WREADY;
  wire [3:0]axi_noc_1_M01_AXI_WSTRB;
  wire [0:0]axi_noc_1_M01_AXI_WVALID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]axi_noc_1_M02_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]axi_noc_1_M02_AXI_ARBURST;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_noc_1_M02_AXI_ARCACHE;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [1:0]axi_noc_1_M02_AXI_ARID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]axi_noc_1_M02_AXI_ARLEN;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire [0:0]axi_noc_1_M02_AXI_ARLOCK;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]axi_noc_1_M02_AXI_ARPROT;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]axi_noc_1_M02_AXI_ARQOS;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire axi_noc_1_M02_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREGION" *) (* DONT_TOUCH *) wire [3:0]axi_noc_1_M02_AXI_ARREGION;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_noc_1_M02_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DONT_TOUCH *) wire [17:0]axi_noc_1_M02_AXI_ARUSER;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire [0:0]axi_noc_1_M02_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]axi_noc_1_M02_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]axi_noc_1_M02_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_noc_1_M02_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [1:0]axi_noc_1_M02_AXI_AWID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]axi_noc_1_M02_AXI_AWLEN;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire [0:0]axi_noc_1_M02_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]axi_noc_1_M02_AXI_AWPROT;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]axi_noc_1_M02_AXI_AWQOS;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire axi_noc_1_M02_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREGION" *) (* DONT_TOUCH *) wire [3:0]axi_noc_1_M02_AXI_AWREGION;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_noc_1_M02_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DONT_TOUCH *) wire [17:0]axi_noc_1_M02_AXI_AWUSER;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire [0:0]axi_noc_1_M02_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [1:0]axi_noc_1_M02_AXI_BID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire [0:0]axi_noc_1_M02_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]axi_noc_1_M02_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire axi_noc_1_M02_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [31:0]axi_noc_1_M02_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [1:0]axi_noc_1_M02_AXI_RID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire axi_noc_1_M02_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire [0:0]axi_noc_1_M02_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]axi_noc_1_M02_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire axi_noc_1_M02_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [31:0]axi_noc_1_M02_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire [0:0]axi_noc_1_M02_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire axi_noc_1_M02_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [3:0]axi_noc_1_M02_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_noc_1_M02_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire [0:0]axi_noc_1_M02_AXI_WVALID;
  wire [63:0]axi_noc_1_M03_AXI_ARADDR;
  wire [1:0]axi_noc_1_M03_AXI_ARBURST;
  wire [3:0]axi_noc_1_M03_AXI_ARCACHE;
  wire [1:0]axi_noc_1_M03_AXI_ARID;
  wire [7:0]axi_noc_1_M03_AXI_ARLEN;
  wire [0:0]axi_noc_1_M03_AXI_ARLOCK;
  wire [2:0]axi_noc_1_M03_AXI_ARPROT;
  wire [3:0]axi_noc_1_M03_AXI_ARQOS;
  wire axi_noc_1_M03_AXI_ARREADY;
  wire [2:0]axi_noc_1_M03_AXI_ARSIZE;
  wire [17:0]axi_noc_1_M03_AXI_ARUSER;
  wire [0:0]axi_noc_1_M03_AXI_ARVALID;
  wire [63:0]axi_noc_1_M03_AXI_AWADDR;
  wire [1:0]axi_noc_1_M03_AXI_AWBURST;
  wire [3:0]axi_noc_1_M03_AXI_AWCACHE;
  wire [1:0]axi_noc_1_M03_AXI_AWID;
  wire [7:0]axi_noc_1_M03_AXI_AWLEN;
  wire [0:0]axi_noc_1_M03_AXI_AWLOCK;
  wire [2:0]axi_noc_1_M03_AXI_AWPROT;
  wire [3:0]axi_noc_1_M03_AXI_AWQOS;
  wire axi_noc_1_M03_AXI_AWREADY;
  wire [2:0]axi_noc_1_M03_AXI_AWSIZE;
  wire [17:0]axi_noc_1_M03_AXI_AWUSER;
  wire [0:0]axi_noc_1_M03_AXI_AWVALID;
  wire [1:0]axi_noc_1_M03_AXI_BID;
  wire [0:0]axi_noc_1_M03_AXI_BREADY;
  wire [1:0]axi_noc_1_M03_AXI_BRESP;
  wire axi_noc_1_M03_AXI_BVALID;
  wire [31:0]axi_noc_1_M03_AXI_RDATA;
  wire [1:0]axi_noc_1_M03_AXI_RID;
  wire axi_noc_1_M03_AXI_RLAST;
  wire [0:0]axi_noc_1_M03_AXI_RREADY;
  wire [1:0]axi_noc_1_M03_AXI_RRESP;
  wire axi_noc_1_M03_AXI_RVALID;
  wire [31:0]axi_noc_1_M03_AXI_WDATA;
  wire [0:0]axi_noc_1_M03_AXI_WLAST;
  wire axi_noc_1_M03_AXI_WREADY;
  wire [3:0]axi_noc_1_M03_AXI_WSTRB;
  wire [0:0]axi_noc_1_M03_AXI_WVALID;
  wire clk_out1_0;
  wire clk_out2_0;
  wire clk_out3_0;
  wire clk_out4_0;
  wire clk_out5_0;
  wire cpm_cor_irq_0;
  wire cpm_irq0_0;
  wire cpm_irq1_0;
  wire cpm_misc_irq_0;
  wire cpm_uncor_irq_0;
  wire [0:0]\^ddr4_dimm0_act_n ;
  wire [16:0]ddr4_dimm0_adr;
  wire ddr4_dimm0_alert_n;
  wire [1:0]ddr4_dimm0_ba;
  wire [1:0]ddr4_dimm0_bg;
  wire [0:0]\^ddr4_dimm0_ck_c ;
  wire [0:0]\^ddr4_dimm0_ck_t ;
  wire [0:0]\^ddr4_dimm0_cke ;
  wire [0:0]\^ddr4_dimm0_cs_n ;
  wire [71:0]ddr4_dimm0_dq;
  wire [8:0]ddr4_dimm0_dqs_c;
  wire [8:0]ddr4_dimm0_dqs_t;
  wire [0:0]\^ddr4_dimm0_odt ;
  wire [0:0]\^ddr4_dimm0_par ;
  wire [0:0]\^ddr4_dimm0_reset_n ;
  wire ddr4_dimm0_sma_clk_clk_n;
  wire ddr4_dimm0_sma_clk_clk_p;
  wire [0:0]\^ddr4_dimm1_act_n ;
  wire [16:0]ddr4_dimm1_adr;
  wire ddr4_dimm1_alert_n;
  wire [1:0]ddr4_dimm1_ba;
  wire [1:0]ddr4_dimm1_bg;
  wire [0:0]\^ddr4_dimm1_ck_c ;
  wire [0:0]\^ddr4_dimm1_ck_t ;
  wire [0:0]\^ddr4_dimm1_cke ;
  wire [0:0]\^ddr4_dimm1_cs_n ;
  wire [71:0]ddr4_dimm1_dq;
  wire [8:0]ddr4_dimm1_dqs_c;
  wire [8:0]ddr4_dimm1_dqs_t;
  wire [0:0]\^ddr4_dimm1_odt ;
  wire [0:0]\^ddr4_dimm1_par ;
  wire [0:0]\^ddr4_dimm1_reset_n ;
  wire ddr4_dimm1_sma_clk_clk_n;
  wire ddr4_dimm1_sma_clk_clk_p;
  wire [7:0]dest_out_0;
  wire dma1_axi_aresetn_0;
  wire dma1_axis_c2h_dmawr_0_cmp;
  wire [2:0]dma1_axis_c2h_dmawr_0_port_id;
  wire dma1_axis_c2h_dmawr_0_target_vch;
  wire dma1_axis_c2h_status_0_drop;
  wire dma1_axis_c2h_status_0_error;
  wire dma1_axis_c2h_status_0_last;
  wire [11:0]dma1_axis_c2h_status_0_qid;
  wire dma1_axis_c2h_status_0_status_cmp;
  wire dma1_axis_c2h_status_0_valid;
  wire [15:0]dma1_c2h_byp_in_mm_0_0_cidx;
  wire dma1_c2h_byp_in_mm_0_0_error;
  wire [11:0]dma1_c2h_byp_in_mm_0_0_func;
  wire [15:0]dma1_c2h_byp_in_mm_0_0_len;
  wire dma1_c2h_byp_in_mm_0_0_mrkr_req;
  wire dma1_c2h_byp_in_mm_0_0_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_0_0_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_0_0_qid;
  wire [63:0]dma1_c2h_byp_in_mm_0_0_radr;
  wire dma1_c2h_byp_in_mm_0_0_ready;
  wire dma1_c2h_byp_in_mm_0_0_sdi;
  wire dma1_c2h_byp_in_mm_0_0_valid;
  wire [63:0]dma1_c2h_byp_in_mm_0_0_wadr;
  wire [15:0]dma1_c2h_byp_in_mm_1_0_cidx;
  wire dma1_c2h_byp_in_mm_1_0_error;
  wire [11:0]dma1_c2h_byp_in_mm_1_0_func;
  wire [15:0]dma1_c2h_byp_in_mm_1_0_len;
  wire dma1_c2h_byp_in_mm_1_0_mrkr_req;
  wire dma1_c2h_byp_in_mm_1_0_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_1_0_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_1_0_qid;
  wire [63:0]dma1_c2h_byp_in_mm_1_0_radr;
  wire dma1_c2h_byp_in_mm_1_0_ready;
  wire dma1_c2h_byp_in_mm_1_0_sdi;
  wire dma1_c2h_byp_in_mm_1_0_valid;
  wire [63:0]dma1_c2h_byp_in_mm_1_0_wadr;
  wire [63:0]dma1_c2h_byp_in_st_csh_0_addr;
  wire dma1_c2h_byp_in_st_csh_0_error;
  wire [11:0]dma1_c2h_byp_in_st_csh_0_func;
  wire [6:0]dma1_c2h_byp_in_st_csh_0_pfch_tag;
  wire [2:0]dma1_c2h_byp_in_st_csh_0_port_id;
  wire [11:0]dma1_c2h_byp_in_st_csh_0_qid;
  wire dma1_c2h_byp_in_st_csh_0_ready;
  wire dma1_c2h_byp_in_st_csh_0_valid;
  wire [15:0]dma1_c2h_byp_out_0_cidx;
  wire [255:0]dma1_c2h_byp_out_0_dsc;
  wire [1:0]dma1_c2h_byp_out_0_dsc_sz;
  wire dma1_c2h_byp_out_0_error;
  wire [2:0]dma1_c2h_byp_out_0_fmt;
  wire [11:0]dma1_c2h_byp_out_0_func;
  wire dma1_c2h_byp_out_0_mm_chn;
  wire [6:0]dma1_c2h_byp_out_0_pfch_tag;
  wire [2:0]dma1_c2h_byp_out_0_port_id;
  wire [11:0]dma1_c2h_byp_out_0_qid;
  wire dma1_c2h_byp_out_0_ready;
  wire dma1_c2h_byp_out_0_st_mm;
  wire dma1_c2h_byp_out_0_valid;
  wire [15:0]dma1_dsc_crdt_in_0_crdt;
  wire dma1_dsc_crdt_in_0_dir;
  wire dma1_dsc_crdt_in_0_fence;
  wire [11:0]dma1_dsc_crdt_in_0_qid;
  wire dma1_dsc_crdt_in_0_rdy;
  wire dma1_dsc_crdt_in_0_valid;
  wire [15:0]dma1_h2c_byp_in_mm_0_0_cidx;
  wire dma1_h2c_byp_in_mm_0_0_error;
  wire [11:0]dma1_h2c_byp_in_mm_0_0_func;
  wire [15:0]dma1_h2c_byp_in_mm_0_0_len;
  wire dma1_h2c_byp_in_mm_0_0_mrkr_req;
  wire dma1_h2c_byp_in_mm_0_0_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_0_0_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_0_0_qid;
  wire [63:0]dma1_h2c_byp_in_mm_0_0_radr;
  wire dma1_h2c_byp_in_mm_0_0_ready;
  wire dma1_h2c_byp_in_mm_0_0_sdi;
  wire dma1_h2c_byp_in_mm_0_0_valid;
  wire [63:0]dma1_h2c_byp_in_mm_0_0_wadr;
  wire [15:0]dma1_h2c_byp_in_mm_1_0_cidx;
  wire dma1_h2c_byp_in_mm_1_0_error;
  wire [11:0]dma1_h2c_byp_in_mm_1_0_func;
  wire [15:0]dma1_h2c_byp_in_mm_1_0_len;
  wire dma1_h2c_byp_in_mm_1_0_mrkr_req;
  wire dma1_h2c_byp_in_mm_1_0_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_1_0_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_1_0_qid;
  wire [63:0]dma1_h2c_byp_in_mm_1_0_radr;
  wire dma1_h2c_byp_in_mm_1_0_ready;
  wire dma1_h2c_byp_in_mm_1_0_sdi;
  wire dma1_h2c_byp_in_mm_1_0_valid;
  wire [63:0]dma1_h2c_byp_in_mm_1_0_wadr;
  wire [63:0]dma1_h2c_byp_in_st_0_addr;
  wire [15:0]dma1_h2c_byp_in_st_0_cidx;
  wire dma1_h2c_byp_in_st_0_eop;
  wire dma1_h2c_byp_in_st_0_error;
  wire [11:0]dma1_h2c_byp_in_st_0_func;
  wire [15:0]dma1_h2c_byp_in_st_0_len;
  wire dma1_h2c_byp_in_st_0_mrkr_req;
  wire dma1_h2c_byp_in_st_0_no_dma;
  wire [2:0]dma1_h2c_byp_in_st_0_port_id;
  wire [11:0]dma1_h2c_byp_in_st_0_qid;
  wire dma1_h2c_byp_in_st_0_ready;
  wire dma1_h2c_byp_in_st_0_sdi;
  wire dma1_h2c_byp_in_st_0_sop;
  wire dma1_h2c_byp_in_st_0_valid;
  wire [15:0]dma1_h2c_byp_out_0_cidx;
  wire [255:0]dma1_h2c_byp_out_0_dsc;
  wire [1:0]dma1_h2c_byp_out_0_dsc_sz;
  wire dma1_h2c_byp_out_0_error;
  wire [2:0]dma1_h2c_byp_out_0_fmt;
  wire [11:0]dma1_h2c_byp_out_0_func;
  wire dma1_h2c_byp_out_0_mm_chn;
  wire [2:0]dma1_h2c_byp_out_0_port_id;
  wire [11:0]dma1_h2c_byp_out_0_qid;
  wire dma1_h2c_byp_out_0_ready;
  wire dma1_h2c_byp_out_0_st_mm;
  wire dma1_h2c_byp_out_0_valid;
  wire dma1_intrfc_resetn_0;
  wire dma1_m_axis_h2c_0_err;
  wire [31:0]dma1_m_axis_h2c_0_mdata;
  wire [5:0]dma1_m_axis_h2c_0_mty;
  wire [2:0]dma1_m_axis_h2c_0_port_id;
  wire [11:0]dma1_m_axis_h2c_0_qid;
  wire [31:0]dma1_m_axis_h2c_0_tcrc;
  wire [511:0]dma1_m_axis_h2c_0_tdata;
  wire dma1_m_axis_h2c_0_tlast;
  wire dma1_m_axis_h2c_0_tready;
  wire dma1_m_axis_h2c_0_tvalid;
  wire dma1_m_axis_h2c_0_zero_byte;
  wire [63:0]dma1_qsts_out_0_data;
  wire [7:0]dma1_qsts_out_0_op;
  wire [2:0]dma1_qsts_out_0_port_id;
  wire [12:0]dma1_qsts_out_0_qid;
  wire dma1_qsts_out_0_rdy;
  wire dma1_qsts_out_0_vld;
  wire dma1_s_axis_c2h_0_ctrl_has_cmpt;
  wire [15:0]dma1_s_axis_c2h_0_ctrl_len;
  wire dma1_s_axis_c2h_0_ctrl_marker;
  wire [2:0]dma1_s_axis_c2h_0_ctrl_port_id;
  wire [11:0]dma1_s_axis_c2h_0_ctrl_qid;
  wire [6:0]dma1_s_axis_c2h_0_ecc;
  wire [5:0]dma1_s_axis_c2h_0_mty;
  wire [31:0]dma1_s_axis_c2h_0_tcrc;
  wire [511:0]dma1_s_axis_c2h_0_tdata;
  wire dma1_s_axis_c2h_0_tlast;
  wire dma1_s_axis_c2h_0_tready;
  wire dma1_s_axis_c2h_0_tvalid;
  wire [1:0]dma1_s_axis_c2h_cmpt_0_cmpt_type;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_col_idx;
  wire [511:0]dma1_s_axis_c2h_cmpt_0_data;
  wire [15:0]dma1_s_axis_c2h_cmpt_0_dpar;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_err_idx;
  wire dma1_s_axis_c2h_cmpt_0_marker;
  wire dma1_s_axis_c2h_cmpt_0_no_wrb_marker;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_port_id;
  wire [12:0]dma1_s_axis_c2h_cmpt_0_qid;
  wire [1:0]dma1_s_axis_c2h_cmpt_0_size;
  wire dma1_s_axis_c2h_cmpt_0_tready;
  wire dma1_s_axis_c2h_cmpt_0_tvalid;
  wire dma1_s_axis_c2h_cmpt_0_user_trig;
  wire [15:0]dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id;
  wire [31:0]dma1_st_rx_msg_0_tdata;
  wire dma1_st_rx_msg_0_tlast;
  wire dma1_st_rx_msg_0_tready;
  wire dma1_st_rx_msg_0_tvalid;
  wire [15:0]dma1_tm_dsc_sts_0_avl;
  wire dma1_tm_dsc_sts_0_byp;
  wire dma1_tm_dsc_sts_0_dir;
  wire dma1_tm_dsc_sts_0_error;
  wire dma1_tm_dsc_sts_0_irq_arm;
  wire dma1_tm_dsc_sts_0_mm;
  wire [15:0]dma1_tm_dsc_sts_0_pidx;
  wire [2:0]dma1_tm_dsc_sts_0_port_id;
  wire dma1_tm_dsc_sts_0_qen;
  wire [11:0]dma1_tm_dsc_sts_0_qid;
  wire dma1_tm_dsc_sts_0_qinv;
  wire dma1_tm_dsc_sts_0_rdy;
  wire dma1_tm_dsc_sts_0_valid;
  wire gt_refclk1_0_clk_n;
  wire gt_refclk1_0_clk_p;
  wire locked_0;
  wire pcie_qdma_mailbox_0_dma_flr_clear;
  wire [11:0]pcie_qdma_mailbox_0_dma_flr_done_fnc;
  wire pcie_qdma_mailbox_0_dma_flr_done_vld;
  wire [12:0]pcie_qdma_mailbox_0_dma_flr_fnc;
  wire pcie_qdma_mailbox_0_dma_flr_set;
  wire pcie_qdma_mailbox_0_dma_usr_irq_ack;
  wire pcie_qdma_mailbox_0_dma_usr_irq_fail;
  wire [11:0]pcie_qdma_mailbox_0_dma_usr_irq_fnc;
  wire pcie_qdma_mailbox_0_dma_usr_irq_valid;
  wire [4:0]pcie_qdma_mailbox_0_dma_usr_irq_vec;
  wire [31:0]pcie_qdma_mailbox_0_pcie_mgmt_cpl_dat;
  wire pcie_qdma_mailbox_0_pcie_mgmt_cpl_rdy;
  wire [1:0]pcie_qdma_mailbox_0_pcie_mgmt_cpl_sts;
  wire pcie_qdma_mailbox_0_pcie_mgmt_cpl_vld;
  wire [31:0]pcie_qdma_mailbox_0_pcie_mgmt_req_adr;
  wire [1:0]pcie_qdma_mailbox_0_pcie_mgmt_req_cmd;
  wire [31:0]pcie_qdma_mailbox_0_pcie_mgmt_req_dat;
  wire [11:0]pcie_qdma_mailbox_0_pcie_mgmt_req_fnc;
  wire [5:0]pcie_qdma_mailbox_0_pcie_mgmt_req_msc;
  wire pcie_qdma_mailbox_0_pcie_mgmt_req_rdy;
  wire pcie_qdma_mailbox_0_pcie_mgmt_req_vld;
  wire reset_0;
  wire [41:0]smartconnect_1_M00_AXI_ARADDR;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [41:0]smartconnect_1_M00_AXI_AWADDR;
  wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [31:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [31:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [3:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [8:0]smartconnect_2_M00_AXI_ARADDR;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [8:0]smartconnect_2_M00_AXI_AWADDR;
  wire smartconnect_2_M00_AXI_AWREADY;
  wire smartconnect_2_M00_AXI_AWVALID;
  wire smartconnect_2_M00_AXI_BREADY;
  wire [1:0]smartconnect_2_M00_AXI_BRESP;
  wire smartconnect_2_M00_AXI_BVALID;
  wire [31:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [31:0]smartconnect_2_M00_AXI_WDATA;
  wire smartconnect_2_M00_AXI_WREADY;
  wire [3:0]smartconnect_2_M00_AXI_WSTRB;
  wire smartconnect_2_M00_AXI_WVALID;
  wire usr_flr_0_clear;
  wire [11:0]usr_flr_0_done_fnc;
  wire usr_flr_0_done_vld;
  wire [11:0]usr_flr_0_fnc;
  wire usr_flr_0_set;
  wire usr_irq_0_ack;
  wire usr_irq_0_fail;
  wire [11:0]usr_irq_0_fnc;
  wire usr_irq_0_valid;
  wire [4:0]usr_irq_0_vec;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_CPM_PCIE_NOC_0_RUSER;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_CPM_PCIE_NOC_0_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_CPM_PCIE_NOC_1_RUSER;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_CPM_PCIE_NOC_1_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_WVALID;
  (* HARD_CONN = "true" *) wire versal_cips_0_cpm_pcie_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_cpm_pcie_noc_axi1_clk;
  wire versal_cips_0_pl0_ref_clk;
  wire versal_cips_0_pl1_ref_clk;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [3:0]xlconstant_2_dout;
  wire [2:0]xlconstant_3_dout;
  wire [3:0]xlconstant_4_dout;

  assign ddr4_dimm0_act_n = \^ddr4_dimm0_act_n [0];
  assign ddr4_dimm0_ck_c = \^ddr4_dimm0_ck_c [0];
  assign ddr4_dimm0_ck_t = \^ddr4_dimm0_ck_t [0];
  assign ddr4_dimm0_cke = \^ddr4_dimm0_cke [0];
  assign ddr4_dimm0_cs_n = \^ddr4_dimm0_cs_n [0];
  assign ddr4_dimm0_odt = \^ddr4_dimm0_odt [0];
  assign ddr4_dimm0_par = \^ddr4_dimm0_par [0];
  assign ddr4_dimm0_reset_n = \^ddr4_dimm0_reset_n [0];
  assign ddr4_dimm1_act_n = \^ddr4_dimm1_act_n [0];
  assign ddr4_dimm1_ck_c = \^ddr4_dimm1_ck_c [0];
  assign ddr4_dimm1_ck_t = \^ddr4_dimm1_ck_t [0];
  assign ddr4_dimm1_cke = \^ddr4_dimm1_cke [0];
  assign ddr4_dimm1_cs_n = \^ddr4_dimm1_cs_n [0];
  assign ddr4_dimm1_odt = \^ddr4_dimm1_odt [0];
  assign ddr4_dimm1_par = \^ddr4_dimm1_par [0];
  assign ddr4_dimm1_reset_n = \^ddr4_dimm1_reset_n [0];
  assign dma1_intrfc_clk_0 = versal_cips_0_pl0_ref_clk;
  cpm_pcie_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(S_AXIL_araddr),
        .s_axi_aresetn(dma1_axi_aresetn_0),
        .s_axi_arprot(S_AXIL_arprot),
        .s_axi_arready(S_AXIL_arready),
        .s_axi_arvalid(S_AXIL_arvalid),
        .s_axi_awaddr(S_AXIL_awaddr),
        .s_axi_awprot(S_AXIL_awprot),
        .s_axi_awready(S_AXIL_awready),
        .s_axi_awvalid(S_AXIL_awvalid),
        .s_axi_bready(S_AXIL_bready),
        .s_axi_bresp(S_AXIL_bresp),
        .s_axi_bvalid(S_AXIL_bvalid),
        .s_axi_rdata(S_AXIL_rdata),
        .s_axi_rready(S_AXIL_rready),
        .s_axi_rresp(S_AXIL_rresp),
        .s_axi_rvalid(S_AXIL_rvalid),
        .s_axi_wdata(S_AXIL_wdata),
        .s_axi_wready(S_AXIL_wready),
        .s_axi_wstrb(S_AXIL_wstrb),
        .s_axi_wvalid(S_AXIL_wvalid));
  cpm_pcie_axi_bram_ctrl_0_1 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(axi_noc_1_M00_AXI_ARADDR[14:0]),
        .s_axi_arburst(axi_noc_1_M00_AXI_ARBURST),
        .s_axi_arcache(axi_noc_1_M00_AXI_ARCACHE),
        .s_axi_aresetn(dma1_axi_aresetn_0),
        .s_axi_arid(axi_noc_1_M00_AXI_ARID),
        .s_axi_arlen(axi_noc_1_M00_AXI_ARLEN),
        .s_axi_arlock(axi_noc_1_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_noc_1_M00_AXI_ARPROT),
        .s_axi_arready(axi_noc_1_M00_AXI_ARREADY),
        .s_axi_arsize(axi_noc_1_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_noc_1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_noc_1_M00_AXI_AWADDR[14:0]),
        .s_axi_awburst(axi_noc_1_M00_AXI_AWBURST),
        .s_axi_awcache(axi_noc_1_M00_AXI_AWCACHE),
        .s_axi_awid(axi_noc_1_M00_AXI_AWID),
        .s_axi_awlen(axi_noc_1_M00_AXI_AWLEN),
        .s_axi_awlock(axi_noc_1_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_noc_1_M00_AXI_AWPROT),
        .s_axi_awready(axi_noc_1_M00_AXI_AWREADY),
        .s_axi_awsize(axi_noc_1_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_noc_1_M00_AXI_AWVALID),
        .s_axi_bid(axi_noc_1_M00_AXI_BID),
        .s_axi_bready(axi_noc_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_noc_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_noc_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_noc_1_M00_AXI_RDATA),
        .s_axi_rid(axi_noc_1_M00_AXI_RID),
        .s_axi_rlast(axi_noc_1_M00_AXI_RLAST),
        .s_axi_rready(axi_noc_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_noc_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_noc_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_noc_1_M00_AXI_WDATA),
        .s_axi_wlast(axi_noc_1_M00_AXI_WLAST),
        .s_axi_wready(axi_noc_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_noc_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_noc_1_M00_AXI_WVALID));
  cpm_pcie_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(smartconnect_2_M00_AXI_ARADDR),
        .s_axi_aresetn(dma1_axi_aresetn_0),
        .s_axi_arready(smartconnect_2_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .s_axi_awready(smartconnect_2_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_2_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_2_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_2_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_2_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_2_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_2_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_2_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_2_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_2_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_2_M00_AXI_WVALID));
  cpm_pcie_axi_noc_0_1 axi_noc_1
       (.CH0_DDR4_0_act_n(\^ddr4_dimm0_act_n ),
        .CH0_DDR4_0_adr(ddr4_dimm0_adr),
        .CH0_DDR4_0_alert_n(ddr4_dimm0_alert_n),
        .CH0_DDR4_0_ba(ddr4_dimm0_ba),
        .CH0_DDR4_0_bg(ddr4_dimm0_bg),
        .CH0_DDR4_0_ck_c(\^ddr4_dimm0_ck_c ),
        .CH0_DDR4_0_ck_t(\^ddr4_dimm0_ck_t ),
        .CH0_DDR4_0_cke(\^ddr4_dimm0_cke ),
        .CH0_DDR4_0_cs_n(\^ddr4_dimm0_cs_n ),
        .CH0_DDR4_0_dq(ddr4_dimm0_dq),
        .CH0_DDR4_0_dqs_c(ddr4_dimm0_dqs_c),
        .CH0_DDR4_0_dqs_t(ddr4_dimm0_dqs_t),
        .CH0_DDR4_0_odt(\^ddr4_dimm0_odt ),
        .CH0_DDR4_0_par(\^ddr4_dimm0_par ),
        .CH0_DDR4_0_reset_n(\^ddr4_dimm0_reset_n ),
        .CH0_DDR4_1_act_n(\^ddr4_dimm1_act_n ),
        .CH0_DDR4_1_adr(ddr4_dimm1_adr),
        .CH0_DDR4_1_alert_n(ddr4_dimm1_alert_n),
        .CH0_DDR4_1_ba(ddr4_dimm1_ba),
        .CH0_DDR4_1_bg(ddr4_dimm1_bg),
        .CH0_DDR4_1_ck_c(\^ddr4_dimm1_ck_c ),
        .CH0_DDR4_1_ck_t(\^ddr4_dimm1_ck_t ),
        .CH0_DDR4_1_cke(\^ddr4_dimm1_cke ),
        .CH0_DDR4_1_cs_n(\^ddr4_dimm1_cs_n ),
        .CH0_DDR4_1_dq(ddr4_dimm1_dq),
        .CH0_DDR4_1_dqs_c(ddr4_dimm1_dqs_c),
        .CH0_DDR4_1_dqs_t(ddr4_dimm1_dqs_t),
        .CH0_DDR4_1_odt(\^ddr4_dimm1_odt ),
        .CH0_DDR4_1_par(\^ddr4_dimm1_par ),
        .CH0_DDR4_1_reset_n(\^ddr4_dimm1_reset_n ),
        .HBM00_AXI_araddr(HBM00_AXI_araddr_0),
        .HBM00_AXI_arburst(HBM00_AXI_arburst_0),
        .HBM00_AXI_arcache(xlconstant_4_dout),
        .HBM00_AXI_arid({1'b0,HBM00_AXI_arid_0}),
        .HBM00_AXI_arlen(HBM00_AXI_arlen_0),
        .HBM00_AXI_arlock(xlconstant_1_dout),
        .HBM00_AXI_arprot(xlconstant_3_dout),
        .HBM00_AXI_arready(HBM00_AXI_arready_0),
        .HBM00_AXI_arsize(HBM00_AXI_arsize_0),
        .HBM00_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM00_AXI_arvalid(HBM00_AXI_arvalid_0),
        .HBM00_AXI_awaddr(HBM00_AXI_awaddr_0),
        .HBM00_AXI_awburst(HBM00_AXI_awburst_0),
        .HBM00_AXI_awcache(xlconstant_4_dout),
        .HBM00_AXI_awid({1'b0,HBM00_AXI_awid_0}),
        .HBM00_AXI_awlen(HBM00_AXI_awlen_0),
        .HBM00_AXI_awlock(xlconstant_1_dout),
        .HBM00_AXI_awprot(xlconstant_3_dout),
        .HBM00_AXI_awready(HBM00_AXI_awready_0),
        .HBM00_AXI_awsize(HBM00_AXI_awsize_0),
        .HBM00_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM00_AXI_awvalid(HBM00_AXI_awvalid_0),
        .HBM00_AXI_bready(HBM00_AXI_bready_0),
        .HBM00_AXI_bresp(HBM00_AXI_bresp_0),
        .HBM00_AXI_bvalid(HBM00_AXI_bvalid_0),
        .HBM00_AXI_rdata(HBM00_AXI_rdata_0),
        .HBM00_AXI_rlast(HBM00_AXI_rlast_0),
        .HBM00_AXI_rready(HBM00_AXI_rready_0),
        .HBM00_AXI_rvalid(HBM00_AXI_rvalid_0),
        .HBM00_AXI_wdata(HBM00_AXI_wdata_0),
        .HBM00_AXI_wlast(HBM00_AXI_wlast_0),
        .HBM00_AXI_wready(HBM00_AXI_wready_0),
        .HBM00_AXI_wstrb(HBM00_AXI_wstrb_0),
        .HBM00_AXI_wvalid(HBM00_AXI_wvalid_0),
        .HBM01_AXI_araddr(HBM01_AXI_araddr_0),
        .HBM01_AXI_arburst(HBM01_AXI_arburst_0),
        .HBM01_AXI_arcache(xlconstant_4_dout),
        .HBM01_AXI_arid({1'b0,HBM01_AXI_arid_0}),
        .HBM01_AXI_arlen(HBM01_AXI_arlen_0),
        .HBM01_AXI_arlock(xlconstant_1_dout),
        .HBM01_AXI_arprot(xlconstant_3_dout),
        .HBM01_AXI_arready(HBM01_AXI_arready_0),
        .HBM01_AXI_arsize(HBM01_AXI_arsize_0),
        .HBM01_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM01_AXI_arvalid(HBM01_AXI_arvalid_0),
        .HBM01_AXI_awaddr(HBM01_AXI_awaddr_0),
        .HBM01_AXI_awburst(HBM01_AXI_awburst_0),
        .HBM01_AXI_awcache(xlconstant_4_dout),
        .HBM01_AXI_awid({1'b0,HBM01_AXI_awid_0}),
        .HBM01_AXI_awlen(HBM01_AXI_awlen_0),
        .HBM01_AXI_awlock(xlconstant_1_dout),
        .HBM01_AXI_awprot(xlconstant_3_dout),
        .HBM01_AXI_awready(HBM01_AXI_awready_0),
        .HBM01_AXI_awsize(HBM01_AXI_awsize_0),
        .HBM01_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM01_AXI_awvalid(HBM01_AXI_awvalid_0),
        .HBM01_AXI_bready(HBM01_AXI_bready_0),
        .HBM01_AXI_bresp(HBM01_AXI_bresp_0),
        .HBM01_AXI_bvalid(HBM01_AXI_bvalid_0),
        .HBM01_AXI_rdata(HBM01_AXI_rdata_0),
        .HBM01_AXI_rlast(HBM01_AXI_rlast_0),
        .HBM01_AXI_rready(HBM01_AXI_rready_0),
        .HBM01_AXI_rvalid(HBM01_AXI_rvalid_0),
        .HBM01_AXI_wdata(HBM01_AXI_wdata_0),
        .HBM01_AXI_wlast(HBM01_AXI_wlast_0),
        .HBM01_AXI_wready(HBM01_AXI_wready_0),
        .HBM01_AXI_wstrb(HBM01_AXI_wstrb_0),
        .HBM01_AXI_wvalid(HBM01_AXI_wvalid_0),
        .HBM02_AXI_araddr(HBM02_AXI_araddr_0),
        .HBM02_AXI_arburst(HBM02_AXI_arburst_0),
        .HBM02_AXI_arcache(xlconstant_4_dout),
        .HBM02_AXI_arid({1'b0,HBM02_AXI_arid_0}),
        .HBM02_AXI_arlen(HBM02_AXI_arlen_0),
        .HBM02_AXI_arlock(xlconstant_1_dout),
        .HBM02_AXI_arprot(xlconstant_3_dout),
        .HBM02_AXI_arready(HBM02_AXI_arready_0),
        .HBM02_AXI_arsize(HBM02_AXI_arsize_0),
        .HBM02_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM02_AXI_arvalid(HBM02_AXI_arvalid_0),
        .HBM02_AXI_awaddr(HBM02_AXI_awaddr_0),
        .HBM02_AXI_awburst(HBM02_AXI_awburst_0),
        .HBM02_AXI_awcache(xlconstant_4_dout),
        .HBM02_AXI_awid({1'b0,HBM02_AXI_awid_0}),
        .HBM02_AXI_awlen(HBM02_AXI_awlen_0),
        .HBM02_AXI_awlock(xlconstant_1_dout),
        .HBM02_AXI_awprot(xlconstant_3_dout),
        .HBM02_AXI_awready(HBM02_AXI_awready_0),
        .HBM02_AXI_awsize(HBM02_AXI_awsize_0),
        .HBM02_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM02_AXI_awvalid(HBM02_AXI_awvalid_0),
        .HBM02_AXI_bready(HBM02_AXI_bready_0),
        .HBM02_AXI_bresp(HBM02_AXI_bresp_0),
        .HBM02_AXI_bvalid(HBM02_AXI_bvalid_0),
        .HBM02_AXI_rdata(HBM02_AXI_rdata_0),
        .HBM02_AXI_rlast(HBM02_AXI_rlast_0),
        .HBM02_AXI_rready(HBM02_AXI_rready_0),
        .HBM02_AXI_rvalid(HBM02_AXI_rvalid_0),
        .HBM02_AXI_wdata(HBM02_AXI_wdata_0),
        .HBM02_AXI_wlast(HBM02_AXI_wlast_0),
        .HBM02_AXI_wready(HBM02_AXI_wready_0),
        .HBM02_AXI_wstrb(HBM02_AXI_wstrb_0),
        .HBM02_AXI_wvalid(HBM02_AXI_wvalid_0),
        .HBM03_AXI_araddr(HBM03_AXI_araddr_0),
        .HBM03_AXI_arburst(HBM03_AXI_arburst_0),
        .HBM03_AXI_arcache(xlconstant_4_dout),
        .HBM03_AXI_arid({1'b0,HBM03_AXI_arid_0}),
        .HBM03_AXI_arlen(HBM03_AXI_arlen_0),
        .HBM03_AXI_arlock(xlconstant_1_dout),
        .HBM03_AXI_arprot(xlconstant_3_dout),
        .HBM03_AXI_arready(HBM03_AXI_arready_0),
        .HBM03_AXI_arsize(HBM03_AXI_arsize_0),
        .HBM03_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM03_AXI_arvalid(HBM03_AXI_arvalid_0),
        .HBM03_AXI_awaddr(HBM03_AXI_awaddr_0),
        .HBM03_AXI_awburst(HBM03_AXI_awburst_0),
        .HBM03_AXI_awcache(xlconstant_4_dout),
        .HBM03_AXI_awid({1'b0,HBM03_AXI_awid_0}),
        .HBM03_AXI_awlen(HBM03_AXI_awlen_0),
        .HBM03_AXI_awlock(xlconstant_1_dout),
        .HBM03_AXI_awprot(xlconstant_3_dout),
        .HBM03_AXI_awready(HBM03_AXI_awready_0),
        .HBM03_AXI_awsize(HBM03_AXI_awsize_0),
        .HBM03_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM03_AXI_awvalid(HBM03_AXI_awvalid_0),
        .HBM03_AXI_bready(HBM03_AXI_bready_0),
        .HBM03_AXI_bresp(HBM03_AXI_bresp_0),
        .HBM03_AXI_bvalid(HBM03_AXI_bvalid_0),
        .HBM03_AXI_rdata(HBM03_AXI_rdata_0),
        .HBM03_AXI_rlast(HBM03_AXI_rlast_0),
        .HBM03_AXI_rready(HBM03_AXI_rready_0),
        .HBM03_AXI_rvalid(HBM03_AXI_rvalid_0),
        .HBM03_AXI_wdata(HBM03_AXI_wdata_0),
        .HBM03_AXI_wlast(HBM03_AXI_wlast_0),
        .HBM03_AXI_wready(HBM03_AXI_wready_0),
        .HBM03_AXI_wstrb(HBM03_AXI_wstrb_0),
        .HBM03_AXI_wvalid(HBM03_AXI_wvalid_0),
        .HBM04_AXI_araddr(HBM04_AXI_araddr_0),
        .HBM04_AXI_arburst(HBM04_AXI_arburst_0),
        .HBM04_AXI_arcache(xlconstant_4_dout),
        .HBM04_AXI_arid({1'b0,HBM04_AXI_arid_0}),
        .HBM04_AXI_arlen(HBM04_AXI_arlen_0),
        .HBM04_AXI_arlock(xlconstant_1_dout),
        .HBM04_AXI_arprot(xlconstant_3_dout),
        .HBM04_AXI_arready(HBM04_AXI_arready_0),
        .HBM04_AXI_arsize(HBM04_AXI_arsize_0),
        .HBM04_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM04_AXI_arvalid(HBM04_AXI_arvalid_0),
        .HBM04_AXI_awaddr(HBM04_AXI_awaddr_0),
        .HBM04_AXI_awburst(HBM04_AXI_awburst_0),
        .HBM04_AXI_awcache(xlconstant_4_dout),
        .HBM04_AXI_awid({1'b0,HBM04_AXI_awid_0}),
        .HBM04_AXI_awlen(HBM04_AXI_awlen_0),
        .HBM04_AXI_awlock(xlconstant_1_dout),
        .HBM04_AXI_awprot(xlconstant_3_dout),
        .HBM04_AXI_awready(HBM04_AXI_awready_0),
        .HBM04_AXI_awsize(HBM04_AXI_awsize_0),
        .HBM04_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM04_AXI_awvalid(HBM04_AXI_awvalid_0),
        .HBM04_AXI_bready(HBM04_AXI_bready_0),
        .HBM04_AXI_bresp(HBM04_AXI_bresp_0),
        .HBM04_AXI_bvalid(HBM04_AXI_bvalid_0),
        .HBM04_AXI_rdata(HBM04_AXI_rdata_0),
        .HBM04_AXI_rlast(HBM04_AXI_rlast_0),
        .HBM04_AXI_rready(HBM04_AXI_rready_0),
        .HBM04_AXI_rvalid(HBM04_AXI_rvalid_0),
        .HBM04_AXI_wdata(HBM04_AXI_wdata_0),
        .HBM04_AXI_wlast(HBM04_AXI_wlast_0),
        .HBM04_AXI_wready(HBM04_AXI_wready_0),
        .HBM04_AXI_wstrb(HBM04_AXI_wstrb_0),
        .HBM04_AXI_wvalid(HBM04_AXI_wvalid_0),
        .HBM05_AXI_araddr(HBM05_AXI_araddr_0),
        .HBM05_AXI_arburst(HBM05_AXI_arburst_0),
        .HBM05_AXI_arcache(xlconstant_4_dout),
        .HBM05_AXI_arid({1'b0,HBM05_AXI_arid_0}),
        .HBM05_AXI_arlen(HBM05_AXI_arlen_0),
        .HBM05_AXI_arlock(xlconstant_1_dout),
        .HBM05_AXI_arprot(xlconstant_3_dout),
        .HBM05_AXI_arready(HBM05_AXI_arready_0),
        .HBM05_AXI_arsize(HBM05_AXI_arsize_0),
        .HBM05_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM05_AXI_arvalid(HBM05_AXI_arvalid_0),
        .HBM05_AXI_awaddr(HBM05_AXI_awaddr_0),
        .HBM05_AXI_awburst(HBM05_AXI_awburst_0),
        .HBM05_AXI_awcache(xlconstant_4_dout),
        .HBM05_AXI_awid({1'b0,HBM05_AXI_awid_0}),
        .HBM05_AXI_awlen(HBM05_AXI_awlen_0),
        .HBM05_AXI_awlock(xlconstant_1_dout),
        .HBM05_AXI_awprot(xlconstant_3_dout),
        .HBM05_AXI_awready(HBM05_AXI_awready_0),
        .HBM05_AXI_awsize(HBM05_AXI_awsize_0),
        .HBM05_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM05_AXI_awvalid(HBM05_AXI_awvalid_0),
        .HBM05_AXI_bready(HBM05_AXI_bready_0),
        .HBM05_AXI_bresp(HBM05_AXI_bresp_0),
        .HBM05_AXI_bvalid(HBM05_AXI_bvalid_0),
        .HBM05_AXI_rdata(HBM05_AXI_rdata_0),
        .HBM05_AXI_rlast(HBM05_AXI_rlast_0),
        .HBM05_AXI_rready(HBM05_AXI_rready_0),
        .HBM05_AXI_rvalid(HBM05_AXI_rvalid_0),
        .HBM05_AXI_wdata(HBM05_AXI_wdata_0),
        .HBM05_AXI_wlast(HBM05_AXI_wlast_0),
        .HBM05_AXI_wready(HBM05_AXI_wready_0),
        .HBM05_AXI_wstrb(HBM05_AXI_wstrb_0),
        .HBM05_AXI_wvalid(HBM05_AXI_wvalid_0),
        .HBM06_AXI_araddr(HBM06_AXI_araddr_0),
        .HBM06_AXI_arburst(HBM06_AXI_arburst_0),
        .HBM06_AXI_arcache(xlconstant_4_dout),
        .HBM06_AXI_arid({1'b0,HBM06_AXI_arid_0}),
        .HBM06_AXI_arlen(HBM06_AXI_arlen_0),
        .HBM06_AXI_arlock(xlconstant_1_dout),
        .HBM06_AXI_arprot(xlconstant_3_dout),
        .HBM06_AXI_arready(HBM06_AXI_arready_0),
        .HBM06_AXI_arsize(HBM06_AXI_arsize_0),
        .HBM06_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM06_AXI_arvalid(HBM06_AXI_arvalid_0),
        .HBM06_AXI_awaddr(HBM06_AXI_awaddr_0),
        .HBM06_AXI_awburst(HBM06_AXI_awburst_0),
        .HBM06_AXI_awcache(xlconstant_4_dout),
        .HBM06_AXI_awid({1'b0,HBM06_AXI_awid_0}),
        .HBM06_AXI_awlen(HBM06_AXI_awlen_0),
        .HBM06_AXI_awlock(xlconstant_1_dout),
        .HBM06_AXI_awprot(xlconstant_3_dout),
        .HBM06_AXI_awready(HBM06_AXI_awready_0),
        .HBM06_AXI_awsize(HBM06_AXI_awsize_0),
        .HBM06_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM06_AXI_awvalid(HBM06_AXI_awvalid_0),
        .HBM06_AXI_bready(HBM06_AXI_bready_0),
        .HBM06_AXI_bresp(HBM06_AXI_bresp_0),
        .HBM06_AXI_bvalid(HBM06_AXI_bvalid_0),
        .HBM06_AXI_rdata(HBM06_AXI_rdata_0),
        .HBM06_AXI_rlast(HBM06_AXI_rlast_0),
        .HBM06_AXI_rready(HBM06_AXI_rready_0),
        .HBM06_AXI_rvalid(HBM06_AXI_rvalid_0),
        .HBM06_AXI_wdata(HBM06_AXI_wdata_0),
        .HBM06_AXI_wlast(HBM06_AXI_wlast_0),
        .HBM06_AXI_wready(HBM06_AXI_wready_0),
        .HBM06_AXI_wstrb(HBM06_AXI_wstrb_0),
        .HBM06_AXI_wvalid(HBM06_AXI_wvalid_0),
        .HBM07_AXI_araddr(HBM07_AXI_araddr_0),
        .HBM07_AXI_arburst(HBM07_AXI_arburst_0),
        .HBM07_AXI_arcache(xlconstant_4_dout),
        .HBM07_AXI_arid({1'b0,HBM07_AXI_arid_0}),
        .HBM07_AXI_arlen(HBM07_AXI_arlen_0),
        .HBM07_AXI_arlock(xlconstant_1_dout),
        .HBM07_AXI_arprot(xlconstant_3_dout),
        .HBM07_AXI_arready(HBM07_AXI_arready_0),
        .HBM07_AXI_arsize(HBM07_AXI_arsize_0),
        .HBM07_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM07_AXI_arvalid(HBM07_AXI_arvalid_0),
        .HBM07_AXI_awaddr(HBM07_AXI_awaddr_0),
        .HBM07_AXI_awburst(HBM07_AXI_awburst_0),
        .HBM07_AXI_awcache(xlconstant_4_dout),
        .HBM07_AXI_awid({1'b0,HBM07_AXI_awid_0}),
        .HBM07_AXI_awlen(HBM07_AXI_awlen_0),
        .HBM07_AXI_awlock(xlconstant_1_dout),
        .HBM07_AXI_awprot(xlconstant_3_dout),
        .HBM07_AXI_awready(HBM07_AXI_awready_0),
        .HBM07_AXI_awsize(HBM07_AXI_awsize_0),
        .HBM07_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM07_AXI_awvalid(HBM07_AXI_awvalid_0),
        .HBM07_AXI_bready(HBM07_AXI_bready_0),
        .HBM07_AXI_bresp(HBM07_AXI_bresp_0),
        .HBM07_AXI_bvalid(HBM07_AXI_bvalid_0),
        .HBM07_AXI_rdata(HBM07_AXI_rdata_0),
        .HBM07_AXI_rlast(HBM07_AXI_rlast_0),
        .HBM07_AXI_rready(HBM07_AXI_rready_0),
        .HBM07_AXI_rvalid(HBM07_AXI_rvalid_0),
        .HBM07_AXI_wdata(HBM07_AXI_wdata_0),
        .HBM07_AXI_wlast(HBM07_AXI_wlast_0),
        .HBM07_AXI_wready(HBM07_AXI_wready_0),
        .HBM07_AXI_wstrb(HBM07_AXI_wstrb_0),
        .HBM07_AXI_wvalid(HBM07_AXI_wvalid_0),
        .HBM08_AXI_araddr(HBM08_AXI_araddr_0),
        .HBM08_AXI_arburst(HBM08_AXI_arburst_0),
        .HBM08_AXI_arcache(xlconstant_4_dout),
        .HBM08_AXI_arid({1'b0,HBM08_AXI_arid_0}),
        .HBM08_AXI_arlen(HBM08_AXI_arlen_0),
        .HBM08_AXI_arlock(xlconstant_1_dout),
        .HBM08_AXI_arprot(xlconstant_3_dout),
        .HBM08_AXI_arready(HBM08_AXI_arready_0),
        .HBM08_AXI_arsize(HBM08_AXI_arsize_0),
        .HBM08_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM08_AXI_arvalid(HBM08_AXI_arvalid_0),
        .HBM08_AXI_awaddr(HBM08_AXI_awaddr_0),
        .HBM08_AXI_awburst(HBM08_AXI_awburst_0),
        .HBM08_AXI_awcache(xlconstant_4_dout),
        .HBM08_AXI_awid({1'b0,HBM08_AXI_awid_0}),
        .HBM08_AXI_awlen(HBM08_AXI_awlen_0),
        .HBM08_AXI_awlock(xlconstant_1_dout),
        .HBM08_AXI_awprot(xlconstant_3_dout),
        .HBM08_AXI_awready(HBM08_AXI_awready_0),
        .HBM08_AXI_awsize(HBM08_AXI_awsize_0),
        .HBM08_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM08_AXI_awvalid(HBM08_AXI_awvalid_0),
        .HBM08_AXI_bready(HBM08_AXI_bready_0),
        .HBM08_AXI_bresp(HBM08_AXI_bresp_0),
        .HBM08_AXI_bvalid(HBM08_AXI_bvalid_0),
        .HBM08_AXI_rdata(HBM08_AXI_rdata_0),
        .HBM08_AXI_rlast(HBM08_AXI_rlast_0),
        .HBM08_AXI_rready(HBM08_AXI_rready_0),
        .HBM08_AXI_rvalid(HBM08_AXI_rvalid_0),
        .HBM08_AXI_wdata(HBM08_AXI_wdata_0),
        .HBM08_AXI_wlast(HBM08_AXI_wlast_0),
        .HBM08_AXI_wready(HBM08_AXI_wready_0),
        .HBM08_AXI_wstrb(HBM08_AXI_wstrb_0),
        .HBM08_AXI_wvalid(HBM08_AXI_wvalid_0),
        .HBM09_AXI_araddr(HBM09_AXI_araddr_0),
        .HBM09_AXI_arburst(HBM09_AXI_arburst_0),
        .HBM09_AXI_arcache(xlconstant_4_dout),
        .HBM09_AXI_arid({1'b0,HBM09_AXI_arid_0}),
        .HBM09_AXI_arlen(HBM09_AXI_arlen_0),
        .HBM09_AXI_arlock(xlconstant_1_dout),
        .HBM09_AXI_arprot(xlconstant_3_dout),
        .HBM09_AXI_arready(HBM09_AXI_arready_0),
        .HBM09_AXI_arsize(HBM09_AXI_arsize_0),
        .HBM09_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM09_AXI_arvalid(HBM09_AXI_arvalid_0),
        .HBM09_AXI_awaddr(HBM09_AXI_awaddr_0),
        .HBM09_AXI_awburst(HBM09_AXI_awburst_0),
        .HBM09_AXI_awcache(xlconstant_4_dout),
        .HBM09_AXI_awid({1'b0,HBM09_AXI_awid_0}),
        .HBM09_AXI_awlen(HBM09_AXI_awlen_0),
        .HBM09_AXI_awlock(xlconstant_1_dout),
        .HBM09_AXI_awprot(xlconstant_3_dout),
        .HBM09_AXI_awready(HBM09_AXI_awready_0),
        .HBM09_AXI_awsize(HBM09_AXI_awsize_0),
        .HBM09_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM09_AXI_awvalid(HBM09_AXI_awvalid_0),
        .HBM09_AXI_bready(HBM09_AXI_bready_0),
        .HBM09_AXI_bresp(HBM09_AXI_bresp_0),
        .HBM09_AXI_bvalid(HBM09_AXI_bvalid_0),
        .HBM09_AXI_rdata(HBM09_AXI_rdata_0),
        .HBM09_AXI_rlast(HBM09_AXI_rlast_0),
        .HBM09_AXI_rready(HBM09_AXI_rready_0),
        .HBM09_AXI_rvalid(HBM09_AXI_rvalid_0),
        .HBM09_AXI_wdata(HBM09_AXI_wdata_0),
        .HBM09_AXI_wlast(HBM09_AXI_wlast_0),
        .HBM09_AXI_wready(HBM09_AXI_wready_0),
        .HBM09_AXI_wstrb(HBM09_AXI_wstrb_0),
        .HBM09_AXI_wvalid(HBM09_AXI_wvalid_0),
        .HBM10_AXI_araddr(HBM10_AXI_araddr_0),
        .HBM10_AXI_arburst(HBM10_AXI_arburst_0),
        .HBM10_AXI_arcache(xlconstant_4_dout),
        .HBM10_AXI_arid({1'b0,HBM10_AXI_arid_0}),
        .HBM10_AXI_arlen(HBM10_AXI_arlen_0),
        .HBM10_AXI_arlock(xlconstant_1_dout),
        .HBM10_AXI_arprot(xlconstant_3_dout),
        .HBM10_AXI_arready(HBM10_AXI_arready_0),
        .HBM10_AXI_arsize(HBM10_AXI_arsize_0),
        .HBM10_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM10_AXI_arvalid(HBM10_AXI_arvalid_0),
        .HBM10_AXI_awaddr(HBM10_AXI_awaddr_0),
        .HBM10_AXI_awburst(HBM10_AXI_awburst_0),
        .HBM10_AXI_awcache(xlconstant_4_dout),
        .HBM10_AXI_awid({1'b0,HBM10_AXI_awid_0}),
        .HBM10_AXI_awlen(HBM10_AXI_awlen_0),
        .HBM10_AXI_awlock(xlconstant_1_dout),
        .HBM10_AXI_awprot(xlconstant_3_dout),
        .HBM10_AXI_awready(HBM10_AXI_awready_0),
        .HBM10_AXI_awsize(HBM10_AXI_awsize_0),
        .HBM10_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM10_AXI_awvalid(HBM10_AXI_awvalid_0),
        .HBM10_AXI_bready(HBM10_AXI_bready_0),
        .HBM10_AXI_bresp(HBM10_AXI_bresp_0),
        .HBM10_AXI_bvalid(HBM10_AXI_bvalid_0),
        .HBM10_AXI_rdata(HBM10_AXI_rdata_0),
        .HBM10_AXI_rlast(HBM10_AXI_rlast_0),
        .HBM10_AXI_rready(HBM10_AXI_rready_0),
        .HBM10_AXI_rvalid(HBM10_AXI_rvalid_0),
        .HBM10_AXI_wdata(HBM10_AXI_wdata_0),
        .HBM10_AXI_wlast(HBM10_AXI_wlast_0),
        .HBM10_AXI_wready(HBM10_AXI_wready_0),
        .HBM10_AXI_wstrb(HBM10_AXI_wstrb_0),
        .HBM10_AXI_wvalid(HBM10_AXI_wvalid_0),
        .HBM11_AXI_araddr(HBM11_AXI_araddr_0),
        .HBM11_AXI_arburst(HBM11_AXI_arburst_0),
        .HBM11_AXI_arcache(xlconstant_4_dout),
        .HBM11_AXI_arid({1'b0,HBM11_AXI_arid_0}),
        .HBM11_AXI_arlen(HBM11_AXI_arlen_0),
        .HBM11_AXI_arlock(xlconstant_1_dout),
        .HBM11_AXI_arprot(xlconstant_3_dout),
        .HBM11_AXI_arready(HBM11_AXI_arready_0),
        .HBM11_AXI_arsize(HBM11_AXI_arsize_0),
        .HBM11_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM11_AXI_arvalid(HBM11_AXI_arvalid_0),
        .HBM11_AXI_awaddr(HBM11_AXI_awaddr_0),
        .HBM11_AXI_awburst(HBM11_AXI_awburst_0),
        .HBM11_AXI_awcache(xlconstant_4_dout),
        .HBM11_AXI_awid({1'b0,HBM11_AXI_awid_0}),
        .HBM11_AXI_awlen(HBM11_AXI_awlen_0),
        .HBM11_AXI_awlock(xlconstant_1_dout),
        .HBM11_AXI_awprot(xlconstant_3_dout),
        .HBM11_AXI_awready(HBM11_AXI_awready_0),
        .HBM11_AXI_awsize(HBM11_AXI_awsize_0),
        .HBM11_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM11_AXI_awvalid(HBM11_AXI_awvalid_0),
        .HBM11_AXI_bready(HBM11_AXI_bready_0),
        .HBM11_AXI_bresp(HBM11_AXI_bresp_0),
        .HBM11_AXI_bvalid(HBM11_AXI_bvalid_0),
        .HBM11_AXI_rdata(HBM11_AXI_rdata_0),
        .HBM11_AXI_rlast(HBM11_AXI_rlast_0),
        .HBM11_AXI_rready(HBM11_AXI_rready_0),
        .HBM11_AXI_rvalid(HBM11_AXI_rvalid_0),
        .HBM11_AXI_wdata(HBM11_AXI_wdata_0),
        .HBM11_AXI_wlast(HBM11_AXI_wlast_0),
        .HBM11_AXI_wready(HBM11_AXI_wready_0),
        .HBM11_AXI_wstrb(HBM11_AXI_wstrb_0),
        .HBM11_AXI_wvalid(HBM11_AXI_wvalid_0),
        .HBM12_AXI_araddr(HBM12_AXI_araddr_0),
        .HBM12_AXI_arburst(HBM12_AXI_arburst_0),
        .HBM12_AXI_arcache(xlconstant_4_dout),
        .HBM12_AXI_arid({1'b0,HBM12_AXI_arid_0}),
        .HBM12_AXI_arlen(HBM12_AXI_arlen_0),
        .HBM12_AXI_arlock(xlconstant_1_dout),
        .HBM12_AXI_arprot(xlconstant_3_dout),
        .HBM12_AXI_arready(HBM12_AXI_arready_0),
        .HBM12_AXI_arsize(HBM12_AXI_arsize_0),
        .HBM12_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM12_AXI_arvalid(HBM12_AXI_arvalid_0),
        .HBM12_AXI_awaddr(HBM12_AXI_awaddr_0),
        .HBM12_AXI_awburst(HBM12_AXI_awburst_0),
        .HBM12_AXI_awcache(xlconstant_4_dout),
        .HBM12_AXI_awid({1'b0,HBM12_AXI_awid_0}),
        .HBM12_AXI_awlen(HBM12_AXI_awlen_0),
        .HBM12_AXI_awlock(xlconstant_1_dout),
        .HBM12_AXI_awprot(xlconstant_3_dout),
        .HBM12_AXI_awready(HBM12_AXI_awready_0),
        .HBM12_AXI_awsize(HBM12_AXI_awsize_0),
        .HBM12_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM12_AXI_awvalid(HBM12_AXI_awvalid_0),
        .HBM12_AXI_bready(HBM12_AXI_bready_0),
        .HBM12_AXI_bresp(HBM12_AXI_bresp_0),
        .HBM12_AXI_bvalid(HBM12_AXI_bvalid_0),
        .HBM12_AXI_rdata(HBM12_AXI_rdata_0),
        .HBM12_AXI_rlast(HBM12_AXI_rlast_0),
        .HBM12_AXI_rready(HBM12_AXI_rready_0),
        .HBM12_AXI_rvalid(HBM12_AXI_rvalid_0),
        .HBM12_AXI_wdata(HBM12_AXI_wdata_0),
        .HBM12_AXI_wlast(HBM12_AXI_wlast_0),
        .HBM12_AXI_wready(HBM12_AXI_wready_0),
        .HBM12_AXI_wstrb(HBM12_AXI_wstrb_0),
        .HBM12_AXI_wvalid(HBM12_AXI_wvalid_0),
        .HBM13_AXI_araddr(HBM13_AXI_araddr_0),
        .HBM13_AXI_arburst(HBM13_AXI_arburst_0),
        .HBM13_AXI_arcache(xlconstant_4_dout),
        .HBM13_AXI_arid({1'b0,HBM13_AXI_arid_0}),
        .HBM13_AXI_arlen(HBM13_AXI_arlen_0),
        .HBM13_AXI_arlock(xlconstant_1_dout),
        .HBM13_AXI_arprot(xlconstant_3_dout),
        .HBM13_AXI_arready(HBM13_AXI_arready_0),
        .HBM13_AXI_arsize(HBM13_AXI_arsize_0),
        .HBM13_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM13_AXI_arvalid(HBM13_AXI_arvalid_0),
        .HBM13_AXI_awaddr(HBM13_AXI_awaddr_0),
        .HBM13_AXI_awburst(HBM13_AXI_awburst_0),
        .HBM13_AXI_awcache(xlconstant_4_dout),
        .HBM13_AXI_awid({1'b0,HBM13_AXI_awid_0}),
        .HBM13_AXI_awlen(HBM13_AXI_awlen_0),
        .HBM13_AXI_awlock(xlconstant_1_dout),
        .HBM13_AXI_awprot(xlconstant_3_dout),
        .HBM13_AXI_awready(HBM13_AXI_awready_0),
        .HBM13_AXI_awsize(HBM13_AXI_awsize_0),
        .HBM13_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM13_AXI_awvalid(HBM13_AXI_awvalid_0),
        .HBM13_AXI_bready(HBM13_AXI_bready_0),
        .HBM13_AXI_bresp(HBM13_AXI_bresp_0),
        .HBM13_AXI_bvalid(HBM13_AXI_bvalid_0),
        .HBM13_AXI_rdata(HBM13_AXI_rdata_0),
        .HBM13_AXI_rlast(HBM13_AXI_rlast_0),
        .HBM13_AXI_rready(HBM13_AXI_rready_0),
        .HBM13_AXI_rvalid(HBM13_AXI_rvalid_0),
        .HBM13_AXI_wdata(HBM13_AXI_wdata_0),
        .HBM13_AXI_wlast(HBM13_AXI_wlast_0),
        .HBM13_AXI_wready(HBM13_AXI_wready_0),
        .HBM13_AXI_wstrb(HBM13_AXI_wstrb_0),
        .HBM13_AXI_wvalid(HBM13_AXI_wvalid_0),
        .HBM14_AXI_araddr(HBM14_AXI_araddr_0),
        .HBM14_AXI_arburst(HBM14_AXI_arburst_0),
        .HBM14_AXI_arcache(xlconstant_4_dout),
        .HBM14_AXI_arid({1'b0,HBM14_AXI_arid_0}),
        .HBM14_AXI_arlen(HBM14_AXI_arlen_0),
        .HBM14_AXI_arlock(xlconstant_1_dout),
        .HBM14_AXI_arprot(xlconstant_3_dout),
        .HBM14_AXI_arready(HBM14_AXI_arready_0),
        .HBM14_AXI_arsize(HBM14_AXI_arsize_0),
        .HBM14_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM14_AXI_arvalid(HBM14_AXI_arvalid_0),
        .HBM14_AXI_awaddr(HBM14_AXI_awaddr_0),
        .HBM14_AXI_awburst(HBM14_AXI_awburst_0),
        .HBM14_AXI_awcache(xlconstant_4_dout),
        .HBM14_AXI_awid({1'b0,HBM14_AXI_awid_0}),
        .HBM14_AXI_awlen(HBM14_AXI_awlen_0),
        .HBM14_AXI_awlock(xlconstant_1_dout),
        .HBM14_AXI_awprot(xlconstant_3_dout),
        .HBM14_AXI_awready(HBM14_AXI_awready_0),
        .HBM14_AXI_awsize(HBM14_AXI_awsize_0),
        .HBM14_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM14_AXI_awvalid(HBM14_AXI_awvalid_0),
        .HBM14_AXI_bready(HBM14_AXI_bready_0),
        .HBM14_AXI_bresp(HBM14_AXI_bresp_0),
        .HBM14_AXI_bvalid(HBM14_AXI_bvalid_0),
        .HBM14_AXI_rdata(HBM14_AXI_rdata_0),
        .HBM14_AXI_rlast(HBM14_AXI_rlast_0),
        .HBM14_AXI_rready(HBM14_AXI_rready_0),
        .HBM14_AXI_rvalid(HBM14_AXI_rvalid_0),
        .HBM14_AXI_wdata(HBM14_AXI_wdata_0),
        .HBM14_AXI_wlast(HBM14_AXI_wlast_0),
        .HBM14_AXI_wready(HBM14_AXI_wready_0),
        .HBM14_AXI_wstrb(HBM14_AXI_wstrb_0),
        .HBM14_AXI_wvalid(HBM14_AXI_wvalid_0),
        .HBM15_AXI_araddr(HBM15_AXI_araddr_0),
        .HBM15_AXI_arburst(HBM15_AXI_arburst_0),
        .HBM15_AXI_arcache(xlconstant_4_dout),
        .HBM15_AXI_arid({1'b0,HBM15_AXI_arid_0}),
        .HBM15_AXI_arlen(HBM15_AXI_arlen_0),
        .HBM15_AXI_arlock(xlconstant_1_dout),
        .HBM15_AXI_arprot(xlconstant_3_dout),
        .HBM15_AXI_arready(HBM15_AXI_arready_0),
        .HBM15_AXI_arsize(HBM15_AXI_arsize_0),
        .HBM15_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM15_AXI_arvalid(HBM15_AXI_arvalid_0),
        .HBM15_AXI_awaddr(HBM15_AXI_awaddr_0),
        .HBM15_AXI_awburst(HBM15_AXI_awburst_0),
        .HBM15_AXI_awcache(xlconstant_4_dout),
        .HBM15_AXI_awid({1'b0,HBM15_AXI_awid_0}),
        .HBM15_AXI_awlen(HBM15_AXI_awlen_0),
        .HBM15_AXI_awlock(xlconstant_1_dout),
        .HBM15_AXI_awprot(xlconstant_3_dout),
        .HBM15_AXI_awready(HBM15_AXI_awready_0),
        .HBM15_AXI_awsize(HBM15_AXI_awsize_0),
        .HBM15_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM15_AXI_awvalid(HBM15_AXI_awvalid_0),
        .HBM15_AXI_bready(HBM15_AXI_bready_0),
        .HBM15_AXI_bresp(HBM15_AXI_bresp_0),
        .HBM15_AXI_bvalid(HBM15_AXI_bvalid_0),
        .HBM15_AXI_rdata(HBM15_AXI_rdata_0),
        .HBM15_AXI_rlast(HBM15_AXI_rlast_0),
        .HBM15_AXI_rready(HBM15_AXI_rready_0),
        .HBM15_AXI_rvalid(HBM15_AXI_rvalid_0),
        .HBM15_AXI_wdata(HBM15_AXI_wdata_0),
        .HBM15_AXI_wlast(HBM15_AXI_wlast_0),
        .HBM15_AXI_wready(HBM15_AXI_wready_0),
        .HBM15_AXI_wstrb(HBM15_AXI_wstrb_0),
        .HBM15_AXI_wvalid(HBM15_AXI_wvalid_0),
        .HBM16_AXI_araddr(HBM16_AXI_araddr_0),
        .HBM16_AXI_arburst(HBM16_AXI_arburst_0),
        .HBM16_AXI_arcache(xlconstant_4_dout),
        .HBM16_AXI_arid({1'b0,HBM16_AXI_arid_0}),
        .HBM16_AXI_arlen(HBM16_AXI_arlen_0),
        .HBM16_AXI_arlock(xlconstant_1_dout),
        .HBM16_AXI_arprot(xlconstant_3_dout),
        .HBM16_AXI_arready(HBM16_AXI_arready_0),
        .HBM16_AXI_arsize(HBM16_AXI_arsize_0),
        .HBM16_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM16_AXI_arvalid(HBM16_AXI_arvalid_0),
        .HBM16_AXI_awaddr(HBM16_AXI_awaddr_0),
        .HBM16_AXI_awburst(HBM16_AXI_awburst_0),
        .HBM16_AXI_awcache(xlconstant_4_dout),
        .HBM16_AXI_awid({1'b0,HBM16_AXI_awid_0}),
        .HBM16_AXI_awlen(HBM16_AXI_awlen_0),
        .HBM16_AXI_awlock(xlconstant_1_dout),
        .HBM16_AXI_awprot(xlconstant_3_dout),
        .HBM16_AXI_awready(HBM16_AXI_awready_0),
        .HBM16_AXI_awsize(HBM16_AXI_awsize_0),
        .HBM16_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM16_AXI_awvalid(HBM16_AXI_awvalid_0),
        .HBM16_AXI_bready(HBM16_AXI_bready_0),
        .HBM16_AXI_bresp(HBM16_AXI_bresp_0),
        .HBM16_AXI_bvalid(HBM16_AXI_bvalid_0),
        .HBM16_AXI_rdata(HBM16_AXI_rdata_0),
        .HBM16_AXI_rlast(HBM16_AXI_rlast_0),
        .HBM16_AXI_rready(HBM16_AXI_rready_0),
        .HBM16_AXI_rvalid(HBM16_AXI_rvalid_0),
        .HBM16_AXI_wdata(HBM16_AXI_wdata_0),
        .HBM16_AXI_wlast(HBM16_AXI_wlast_0),
        .HBM16_AXI_wready(HBM16_AXI_wready_0),
        .HBM16_AXI_wstrb(HBM16_AXI_wstrb_0),
        .HBM16_AXI_wvalid(HBM16_AXI_wvalid_0),
        .HBM17_AXI_araddr(HBM17_AXI_araddr_0),
        .HBM17_AXI_arburst(HBM17_AXI_arburst_0),
        .HBM17_AXI_arcache(xlconstant_4_dout),
        .HBM17_AXI_arid({1'b0,HBM17_AXI_arid_0}),
        .HBM17_AXI_arlen(HBM17_AXI_arlen_0),
        .HBM17_AXI_arlock(xlconstant_1_dout),
        .HBM17_AXI_arprot(xlconstant_3_dout),
        .HBM17_AXI_arready(HBM17_AXI_arready_0),
        .HBM17_AXI_arsize(HBM17_AXI_arsize_0),
        .HBM17_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM17_AXI_arvalid(HBM17_AXI_arvalid_0),
        .HBM17_AXI_awaddr(HBM17_AXI_awaddr_0),
        .HBM17_AXI_awburst(HBM17_AXI_awburst_0),
        .HBM17_AXI_awcache(xlconstant_4_dout),
        .HBM17_AXI_awid({1'b0,HBM17_AXI_awid_0}),
        .HBM17_AXI_awlen(HBM17_AXI_awlen_0),
        .HBM17_AXI_awlock(xlconstant_1_dout),
        .HBM17_AXI_awprot(xlconstant_3_dout),
        .HBM17_AXI_awready(HBM17_AXI_awready_0),
        .HBM17_AXI_awsize(HBM17_AXI_awsize_0),
        .HBM17_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM17_AXI_awvalid(HBM17_AXI_awvalid_0),
        .HBM17_AXI_bready(HBM17_AXI_bready_0),
        .HBM17_AXI_bresp(HBM17_AXI_bresp_0),
        .HBM17_AXI_bvalid(HBM17_AXI_bvalid_0),
        .HBM17_AXI_rdata(HBM17_AXI_rdata_0),
        .HBM17_AXI_rlast(HBM17_AXI_rlast_0),
        .HBM17_AXI_rready(HBM17_AXI_rready_0),
        .HBM17_AXI_rvalid(HBM17_AXI_rvalid_0),
        .HBM17_AXI_wdata(HBM17_AXI_wdata_0),
        .HBM17_AXI_wlast(HBM17_AXI_wlast_0),
        .HBM17_AXI_wready(HBM17_AXI_wready_0),
        .HBM17_AXI_wstrb(HBM17_AXI_wstrb_0),
        .HBM17_AXI_wvalid(HBM17_AXI_wvalid_0),
        .HBM18_AXI_araddr(HBM18_AXI_araddr_0),
        .HBM18_AXI_arburst(HBM18_AXI_arburst_0),
        .HBM18_AXI_arcache(xlconstant_4_dout),
        .HBM18_AXI_arid({1'b0,HBM18_AXI_arid_0}),
        .HBM18_AXI_arlen(HBM18_AXI_arlen_0),
        .HBM18_AXI_arlock(xlconstant_1_dout),
        .HBM18_AXI_arprot(xlconstant_3_dout),
        .HBM18_AXI_arready(HBM18_AXI_arready_0),
        .HBM18_AXI_arsize(HBM18_AXI_arsize_0),
        .HBM18_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM18_AXI_arvalid(HBM18_AXI_arvalid_0),
        .HBM18_AXI_awaddr(HBM18_AXI_awaddr_0),
        .HBM18_AXI_awburst(HBM18_AXI_awburst_0),
        .HBM18_AXI_awcache(xlconstant_4_dout),
        .HBM18_AXI_awid({1'b0,HBM18_AXI_awid_0}),
        .HBM18_AXI_awlen(HBM18_AXI_awlen_0),
        .HBM18_AXI_awlock(xlconstant_1_dout),
        .HBM18_AXI_awprot(xlconstant_3_dout),
        .HBM18_AXI_awready(HBM18_AXI_awready_0),
        .HBM18_AXI_awsize(HBM18_AXI_awsize_0),
        .HBM18_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM18_AXI_awvalid(HBM18_AXI_awvalid_0),
        .HBM18_AXI_bready(HBM18_AXI_bready_0),
        .HBM18_AXI_bresp(HBM18_AXI_bresp_0),
        .HBM18_AXI_bvalid(HBM18_AXI_bvalid_0),
        .HBM18_AXI_rdata(HBM18_AXI_rdata_0),
        .HBM18_AXI_rlast(HBM18_AXI_rlast_0),
        .HBM18_AXI_rready(HBM18_AXI_rready_0),
        .HBM18_AXI_rvalid(HBM18_AXI_rvalid_0),
        .HBM18_AXI_wdata(HBM18_AXI_wdata_0),
        .HBM18_AXI_wlast(HBM18_AXI_wlast_0),
        .HBM18_AXI_wready(HBM18_AXI_wready_0),
        .HBM18_AXI_wstrb(HBM18_AXI_wstrb_0),
        .HBM18_AXI_wvalid(HBM18_AXI_wvalid_0),
        .HBM19_AXI_araddr(HBM19_AXI_araddr_0),
        .HBM19_AXI_arburst(HBM19_AXI_arburst_0),
        .HBM19_AXI_arcache(xlconstant_4_dout),
        .HBM19_AXI_arid({1'b0,HBM19_AXI_arid_0}),
        .HBM19_AXI_arlen(HBM19_AXI_arlen_0),
        .HBM19_AXI_arlock(xlconstant_1_dout),
        .HBM19_AXI_arprot(xlconstant_3_dout),
        .HBM19_AXI_arready(HBM19_AXI_arready_0),
        .HBM19_AXI_arsize(HBM19_AXI_arsize_0),
        .HBM19_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM19_AXI_arvalid(HBM19_AXI_arvalid_0),
        .HBM19_AXI_awaddr(HBM19_AXI_awaddr_0),
        .HBM19_AXI_awburst(HBM19_AXI_awburst_0),
        .HBM19_AXI_awcache(xlconstant_4_dout),
        .HBM19_AXI_awid({1'b0,HBM19_AXI_awid_0}),
        .HBM19_AXI_awlen(HBM19_AXI_awlen_0),
        .HBM19_AXI_awlock(xlconstant_1_dout),
        .HBM19_AXI_awprot(xlconstant_3_dout),
        .HBM19_AXI_awready(HBM19_AXI_awready_0),
        .HBM19_AXI_awsize(HBM19_AXI_awsize_0),
        .HBM19_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM19_AXI_awvalid(HBM19_AXI_awvalid_0),
        .HBM19_AXI_bready(HBM19_AXI_bready_0),
        .HBM19_AXI_bresp(HBM19_AXI_bresp_0),
        .HBM19_AXI_bvalid(HBM19_AXI_bvalid_0),
        .HBM19_AXI_rdata(HBM19_AXI_rdata_0),
        .HBM19_AXI_rlast(HBM19_AXI_rlast_0),
        .HBM19_AXI_rready(HBM19_AXI_rready_0),
        .HBM19_AXI_rvalid(HBM19_AXI_rvalid_0),
        .HBM19_AXI_wdata(HBM19_AXI_wdata_0),
        .HBM19_AXI_wlast(HBM19_AXI_wlast_0),
        .HBM19_AXI_wready(HBM19_AXI_wready_0),
        .HBM19_AXI_wstrb(HBM19_AXI_wstrb_0),
        .HBM19_AXI_wvalid(HBM19_AXI_wvalid_0),
        .HBM20_AXI_araddr(HBM20_AXI_araddr_0),
        .HBM20_AXI_arburst(HBM20_AXI_arburst_0),
        .HBM20_AXI_arcache(xlconstant_4_dout),
        .HBM20_AXI_arid({1'b0,HBM20_AXI_arid_0}),
        .HBM20_AXI_arlen(HBM20_AXI_arlen_0),
        .HBM20_AXI_arlock(xlconstant_1_dout),
        .HBM20_AXI_arprot(xlconstant_3_dout),
        .HBM20_AXI_arready(HBM20_AXI_arready_0),
        .HBM20_AXI_arsize(HBM20_AXI_arsize_0),
        .HBM20_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM20_AXI_arvalid(HBM20_AXI_arvalid_0),
        .HBM20_AXI_awaddr(HBM20_AXI_awaddr_0),
        .HBM20_AXI_awburst(HBM20_AXI_awburst_0),
        .HBM20_AXI_awcache(xlconstant_4_dout),
        .HBM20_AXI_awid({1'b0,HBM20_AXI_awid_0}),
        .HBM20_AXI_awlen(HBM20_AXI_awlen_0),
        .HBM20_AXI_awlock(xlconstant_1_dout),
        .HBM20_AXI_awprot(xlconstant_3_dout),
        .HBM20_AXI_awready(HBM20_AXI_awready_0),
        .HBM20_AXI_awsize(HBM20_AXI_awsize_0),
        .HBM20_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM20_AXI_awvalid(HBM20_AXI_awvalid_0),
        .HBM20_AXI_bready(HBM20_AXI_bready_0),
        .HBM20_AXI_bresp(HBM20_AXI_bresp_0),
        .HBM20_AXI_bvalid(HBM20_AXI_bvalid_0),
        .HBM20_AXI_rdata(HBM20_AXI_rdata_0),
        .HBM20_AXI_rlast(HBM20_AXI_rlast_0),
        .HBM20_AXI_rready(HBM20_AXI_rready_0),
        .HBM20_AXI_rvalid(HBM20_AXI_rvalid_0),
        .HBM20_AXI_wdata(HBM20_AXI_wdata_0),
        .HBM20_AXI_wlast(HBM20_AXI_wlast_0),
        .HBM20_AXI_wready(HBM20_AXI_wready_0),
        .HBM20_AXI_wstrb(HBM20_AXI_wstrb_0),
        .HBM20_AXI_wvalid(HBM20_AXI_wvalid_0),
        .HBM21_AXI_araddr(HBM21_AXI_araddr_0),
        .HBM21_AXI_arburst(HBM21_AXI_arburst_0),
        .HBM21_AXI_arcache(xlconstant_4_dout),
        .HBM21_AXI_arid({1'b0,HBM21_AXI_arid_0}),
        .HBM21_AXI_arlen(HBM21_AXI_arlen_0),
        .HBM21_AXI_arlock(xlconstant_1_dout),
        .HBM21_AXI_arprot(xlconstant_3_dout),
        .HBM21_AXI_arready(HBM21_AXI_arready_0),
        .HBM21_AXI_arsize(HBM21_AXI_arsize_0),
        .HBM21_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM21_AXI_arvalid(HBM21_AXI_arvalid_0),
        .HBM21_AXI_awaddr(HBM21_AXI_awaddr_0),
        .HBM21_AXI_awburst(HBM21_AXI_awburst_0),
        .HBM21_AXI_awcache(xlconstant_4_dout),
        .HBM21_AXI_awid({1'b0,HBM21_AXI_awid_0}),
        .HBM21_AXI_awlen(HBM21_AXI_awlen_0),
        .HBM21_AXI_awlock(xlconstant_1_dout),
        .HBM21_AXI_awprot(xlconstant_3_dout),
        .HBM21_AXI_awready(HBM21_AXI_awready_0),
        .HBM21_AXI_awsize(HBM21_AXI_awsize_0),
        .HBM21_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM21_AXI_awvalid(HBM21_AXI_awvalid_0),
        .HBM21_AXI_bready(HBM21_AXI_bready_0),
        .HBM21_AXI_bresp(HBM21_AXI_bresp_0),
        .HBM21_AXI_bvalid(HBM21_AXI_bvalid_0),
        .HBM21_AXI_rdata(HBM21_AXI_rdata_0),
        .HBM21_AXI_rlast(HBM21_AXI_rlast_0),
        .HBM21_AXI_rready(HBM21_AXI_rready_0),
        .HBM21_AXI_rvalid(HBM21_AXI_rvalid_0),
        .HBM21_AXI_wdata(HBM21_AXI_wdata_0),
        .HBM21_AXI_wlast(HBM21_AXI_wlast_0),
        .HBM21_AXI_wready(HBM21_AXI_wready_0),
        .HBM21_AXI_wstrb(HBM21_AXI_wstrb_0),
        .HBM21_AXI_wvalid(HBM21_AXI_wvalid_0),
        .HBM22_AXI_araddr(HBM22_AXI_araddr_0),
        .HBM22_AXI_arburst(HBM22_AXI_arburst_0),
        .HBM22_AXI_arcache(xlconstant_4_dout),
        .HBM22_AXI_arid({1'b0,HBM22_AXI_arid_0}),
        .HBM22_AXI_arlen(HBM22_AXI_arlen_0),
        .HBM22_AXI_arlock(xlconstant_1_dout),
        .HBM22_AXI_arprot(xlconstant_3_dout),
        .HBM22_AXI_arready(HBM22_AXI_arready_0),
        .HBM22_AXI_arsize(HBM22_AXI_arsize_0),
        .HBM22_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM22_AXI_arvalid(HBM22_AXI_arvalid_0),
        .HBM22_AXI_awaddr(HBM22_AXI_awaddr_0),
        .HBM22_AXI_awburst(HBM22_AXI_awburst_0),
        .HBM22_AXI_awcache(xlconstant_4_dout),
        .HBM22_AXI_awid({1'b0,HBM22_AXI_awid_0}),
        .HBM22_AXI_awlen(HBM22_AXI_awlen_0),
        .HBM22_AXI_awlock(xlconstant_1_dout),
        .HBM22_AXI_awprot(xlconstant_3_dout),
        .HBM22_AXI_awready(HBM22_AXI_awready_0),
        .HBM22_AXI_awsize(HBM22_AXI_awsize_0),
        .HBM22_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM22_AXI_awvalid(HBM22_AXI_awvalid_0),
        .HBM22_AXI_bready(HBM22_AXI_bready_0),
        .HBM22_AXI_bresp(HBM22_AXI_bresp_0),
        .HBM22_AXI_bvalid(HBM22_AXI_bvalid_0),
        .HBM22_AXI_rdata(HBM22_AXI_rdata_0),
        .HBM22_AXI_rlast(HBM22_AXI_rlast_0),
        .HBM22_AXI_rready(HBM22_AXI_rready_0),
        .HBM22_AXI_rvalid(HBM22_AXI_rvalid_0),
        .HBM22_AXI_wdata(HBM22_AXI_wdata_0),
        .HBM22_AXI_wlast(HBM22_AXI_wlast_0),
        .HBM22_AXI_wready(HBM22_AXI_wready_0),
        .HBM22_AXI_wstrb(HBM22_AXI_wstrb_0),
        .HBM22_AXI_wvalid(HBM22_AXI_wvalid_0),
        .HBM23_AXI_araddr(HBM23_AXI_araddr_0),
        .HBM23_AXI_arburst(HBM23_AXI_arburst_0),
        .HBM23_AXI_arcache(xlconstant_4_dout),
        .HBM23_AXI_arid({1'b0,HBM23_AXI_arid_0}),
        .HBM23_AXI_arlen(HBM23_AXI_arlen_0),
        .HBM23_AXI_arlock(xlconstant_1_dout),
        .HBM23_AXI_arprot(xlconstant_3_dout),
        .HBM23_AXI_arready(HBM23_AXI_arready_0),
        .HBM23_AXI_arsize(HBM23_AXI_arsize_0),
        .HBM23_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM23_AXI_arvalid(HBM23_AXI_arvalid_0),
        .HBM23_AXI_awaddr(HBM23_AXI_awaddr_0),
        .HBM23_AXI_awburst(HBM23_AXI_awburst_0),
        .HBM23_AXI_awcache(xlconstant_4_dout),
        .HBM23_AXI_awid({1'b0,HBM23_AXI_awid_0}),
        .HBM23_AXI_awlen(HBM23_AXI_awlen_0),
        .HBM23_AXI_awlock(xlconstant_1_dout),
        .HBM23_AXI_awprot(xlconstant_3_dout),
        .HBM23_AXI_awready(HBM23_AXI_awready_0),
        .HBM23_AXI_awsize(HBM23_AXI_awsize_0),
        .HBM23_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM23_AXI_awvalid(HBM23_AXI_awvalid_0),
        .HBM23_AXI_bready(HBM23_AXI_bready_0),
        .HBM23_AXI_bresp(HBM23_AXI_bresp_0),
        .HBM23_AXI_bvalid(HBM23_AXI_bvalid_0),
        .HBM23_AXI_rdata(HBM23_AXI_rdata_0),
        .HBM23_AXI_rlast(HBM23_AXI_rlast_0),
        .HBM23_AXI_rready(HBM23_AXI_rready_0),
        .HBM23_AXI_rvalid(HBM23_AXI_rvalid_0),
        .HBM23_AXI_wdata(HBM23_AXI_wdata_0),
        .HBM23_AXI_wlast(HBM23_AXI_wlast_0),
        .HBM23_AXI_wready(HBM23_AXI_wready_0),
        .HBM23_AXI_wstrb(HBM23_AXI_wstrb_0),
        .HBM23_AXI_wvalid(HBM23_AXI_wvalid_0),
        .HBM24_AXI_araddr(HBM24_AXI_araddr_0),
        .HBM24_AXI_arburst(HBM24_AXI_arburst_0),
        .HBM24_AXI_arcache(xlconstant_4_dout),
        .HBM24_AXI_arid({1'b0,HBM24_AXI_arid_0}),
        .HBM24_AXI_arlen(HBM24_AXI_arlen_0),
        .HBM24_AXI_arlock(xlconstant_1_dout),
        .HBM24_AXI_arprot(xlconstant_3_dout),
        .HBM24_AXI_arready(HBM24_AXI_arready_0),
        .HBM24_AXI_arsize(HBM24_AXI_arsize_0),
        .HBM24_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM24_AXI_arvalid(HBM24_AXI_arvalid_0),
        .HBM24_AXI_awaddr(HBM24_AXI_awaddr_0),
        .HBM24_AXI_awburst(HBM24_AXI_awburst_0),
        .HBM24_AXI_awcache(xlconstant_4_dout),
        .HBM24_AXI_awid({1'b0,HBM24_AXI_awid_0}),
        .HBM24_AXI_awlen(HBM24_AXI_awlen_0),
        .HBM24_AXI_awlock(xlconstant_1_dout),
        .HBM24_AXI_awprot(xlconstant_3_dout),
        .HBM24_AXI_awready(HBM24_AXI_awready_0),
        .HBM24_AXI_awsize(HBM24_AXI_awsize_0),
        .HBM24_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM24_AXI_awvalid(HBM24_AXI_awvalid_0),
        .HBM24_AXI_bready(HBM24_AXI_bready_0),
        .HBM24_AXI_bresp(HBM24_AXI_bresp_0),
        .HBM24_AXI_bvalid(HBM24_AXI_bvalid_0),
        .HBM24_AXI_rdata(HBM24_AXI_rdata_0),
        .HBM24_AXI_rlast(HBM24_AXI_rlast_0),
        .HBM24_AXI_rready(HBM24_AXI_rready_0),
        .HBM24_AXI_rvalid(HBM24_AXI_rvalid_0),
        .HBM24_AXI_wdata(HBM24_AXI_wdata_0),
        .HBM24_AXI_wlast(HBM24_AXI_wlast_0),
        .HBM24_AXI_wready(HBM24_AXI_wready_0),
        .HBM24_AXI_wstrb(HBM24_AXI_wstrb_0),
        .HBM24_AXI_wvalid(HBM24_AXI_wvalid_0),
        .HBM25_AXI_araddr(HBM25_AXI_araddr_0),
        .HBM25_AXI_arburst(HBM25_AXI_arburst_0),
        .HBM25_AXI_arcache(xlconstant_4_dout),
        .HBM25_AXI_arid({1'b0,HBM25_AXI_arid_0}),
        .HBM25_AXI_arlen(HBM25_AXI_arlen_0),
        .HBM25_AXI_arlock(xlconstant_1_dout),
        .HBM25_AXI_arprot(xlconstant_3_dout),
        .HBM25_AXI_arready(HBM25_AXI_arready_0),
        .HBM25_AXI_arsize(HBM25_AXI_arsize_0),
        .HBM25_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM25_AXI_arvalid(HBM25_AXI_arvalid_0),
        .HBM25_AXI_awaddr(HBM25_AXI_awaddr_0),
        .HBM25_AXI_awburst(HBM25_AXI_awburst_0),
        .HBM25_AXI_awcache(xlconstant_4_dout),
        .HBM25_AXI_awid({1'b0,HBM25_AXI_awid_0}),
        .HBM25_AXI_awlen(HBM25_AXI_awlen_0),
        .HBM25_AXI_awlock(xlconstant_1_dout),
        .HBM25_AXI_awprot(xlconstant_3_dout),
        .HBM25_AXI_awready(HBM25_AXI_awready_0),
        .HBM25_AXI_awsize(HBM25_AXI_awsize_0),
        .HBM25_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM25_AXI_awvalid(HBM25_AXI_awvalid_0),
        .HBM25_AXI_bready(HBM25_AXI_bready_0),
        .HBM25_AXI_bresp(HBM25_AXI_bresp_0),
        .HBM25_AXI_bvalid(HBM25_AXI_bvalid_0),
        .HBM25_AXI_rdata(HBM25_AXI_rdata_0),
        .HBM25_AXI_rlast(HBM25_AXI_rlast_0),
        .HBM25_AXI_rready(HBM25_AXI_rready_0),
        .HBM25_AXI_rvalid(HBM25_AXI_rvalid_0),
        .HBM25_AXI_wdata(HBM25_AXI_wdata_0),
        .HBM25_AXI_wlast(HBM25_AXI_wlast_0),
        .HBM25_AXI_wready(HBM25_AXI_wready_0),
        .HBM25_AXI_wstrb(HBM25_AXI_wstrb_0),
        .HBM25_AXI_wvalid(HBM25_AXI_wvalid_0),
        .HBM26_AXI_araddr(HBM26_AXI_araddr_0),
        .HBM26_AXI_arburst(HBM26_AXI_arburst_0),
        .HBM26_AXI_arcache(xlconstant_4_dout),
        .HBM26_AXI_arid({1'b0,HBM26_AXI_arid_0}),
        .HBM26_AXI_arlen(HBM26_AXI_arlen_0),
        .HBM26_AXI_arlock(xlconstant_1_dout),
        .HBM26_AXI_arprot(xlconstant_3_dout),
        .HBM26_AXI_arready(HBM26_AXI_arready_0),
        .HBM26_AXI_arsize(HBM26_AXI_arsize_0),
        .HBM26_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM26_AXI_arvalid(HBM26_AXI_arvalid_0),
        .HBM26_AXI_awaddr(HBM26_AXI_awaddr_0),
        .HBM26_AXI_awburst(HBM26_AXI_awburst_0),
        .HBM26_AXI_awcache(xlconstant_4_dout),
        .HBM26_AXI_awid({1'b0,HBM26_AXI_awid_0}),
        .HBM26_AXI_awlen(HBM26_AXI_awlen_0),
        .HBM26_AXI_awlock(xlconstant_1_dout),
        .HBM26_AXI_awprot(xlconstant_3_dout),
        .HBM26_AXI_awready(HBM26_AXI_awready_0),
        .HBM26_AXI_awsize(HBM26_AXI_awsize_0),
        .HBM26_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM26_AXI_awvalid(HBM26_AXI_awvalid_0),
        .HBM26_AXI_bready(HBM26_AXI_bready_0),
        .HBM26_AXI_bresp(HBM26_AXI_bresp_0),
        .HBM26_AXI_bvalid(HBM26_AXI_bvalid_0),
        .HBM26_AXI_rdata(HBM26_AXI_rdata_0),
        .HBM26_AXI_rlast(HBM26_AXI_rlast_0),
        .HBM26_AXI_rready(HBM26_AXI_rready_0),
        .HBM26_AXI_rvalid(HBM26_AXI_rvalid_0),
        .HBM26_AXI_wdata(HBM26_AXI_wdata_0),
        .HBM26_AXI_wlast(HBM26_AXI_wlast_0),
        .HBM26_AXI_wready(HBM26_AXI_wready_0),
        .HBM26_AXI_wstrb(HBM26_AXI_wstrb_0),
        .HBM26_AXI_wvalid(HBM26_AXI_wvalid_0),
        .HBM27_AXI_araddr(HBM27_AXI_araddr_0),
        .HBM27_AXI_arburst(HBM27_AXI_arburst_0),
        .HBM27_AXI_arcache(xlconstant_4_dout),
        .HBM27_AXI_arid({1'b0,HBM27_AXI_arid_0}),
        .HBM27_AXI_arlen(HBM27_AXI_arlen_0),
        .HBM27_AXI_arlock(xlconstant_1_dout),
        .HBM27_AXI_arprot(xlconstant_3_dout),
        .HBM27_AXI_arready(HBM27_AXI_arready_0),
        .HBM27_AXI_arsize(HBM27_AXI_arsize_0),
        .HBM27_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM27_AXI_arvalid(HBM27_AXI_arvalid_0),
        .HBM27_AXI_awaddr(HBM27_AXI_awaddr_0),
        .HBM27_AXI_awburst(HBM27_AXI_awburst_0),
        .HBM27_AXI_awcache(xlconstant_4_dout),
        .HBM27_AXI_awid({1'b0,HBM27_AXI_awid_0}),
        .HBM27_AXI_awlen(HBM27_AXI_awlen_0),
        .HBM27_AXI_awlock(xlconstant_1_dout),
        .HBM27_AXI_awprot(xlconstant_3_dout),
        .HBM27_AXI_awready(HBM27_AXI_awready_0),
        .HBM27_AXI_awsize(HBM27_AXI_awsize_0),
        .HBM27_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM27_AXI_awvalid(HBM27_AXI_awvalid_0),
        .HBM27_AXI_bready(HBM27_AXI_bready_0),
        .HBM27_AXI_bresp(HBM27_AXI_bresp_0),
        .HBM27_AXI_bvalid(HBM27_AXI_bvalid_0),
        .HBM27_AXI_rdata(HBM27_AXI_rdata_0),
        .HBM27_AXI_rlast(HBM27_AXI_rlast_0),
        .HBM27_AXI_rready(HBM27_AXI_rready_0),
        .HBM27_AXI_rvalid(HBM27_AXI_rvalid_0),
        .HBM27_AXI_wdata(HBM27_AXI_wdata_0),
        .HBM27_AXI_wlast(HBM27_AXI_wlast_0),
        .HBM27_AXI_wready(HBM27_AXI_wready_0),
        .HBM27_AXI_wstrb(HBM27_AXI_wstrb_0),
        .HBM27_AXI_wvalid(HBM27_AXI_wvalid_0),
        .HBM28_AXI_araddr(HBM28_AXI_araddr_0),
        .HBM28_AXI_arburst(HBM28_AXI_arburst_0),
        .HBM28_AXI_arcache(xlconstant_4_dout),
        .HBM28_AXI_arid({1'b0,HBM28_AXI_arid_0}),
        .HBM28_AXI_arlen(HBM28_AXI_arlen_0),
        .HBM28_AXI_arlock(xlconstant_1_dout),
        .HBM28_AXI_arprot(xlconstant_3_dout),
        .HBM28_AXI_arready(HBM28_AXI_arready_0),
        .HBM28_AXI_arsize(HBM28_AXI_arsize_0),
        .HBM28_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM28_AXI_arvalid(HBM28_AXI_arvalid_0),
        .HBM28_AXI_awaddr(HBM28_AXI_awaddr_0),
        .HBM28_AXI_awburst(HBM28_AXI_awburst_0),
        .HBM28_AXI_awcache(xlconstant_4_dout),
        .HBM28_AXI_awid({1'b0,HBM28_AXI_awid_0}),
        .HBM28_AXI_awlen(HBM28_AXI_awlen_0),
        .HBM28_AXI_awlock(xlconstant_1_dout),
        .HBM28_AXI_awprot(xlconstant_3_dout),
        .HBM28_AXI_awready(HBM28_AXI_awready_0),
        .HBM28_AXI_awsize(HBM28_AXI_awsize_0),
        .HBM28_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM28_AXI_awvalid(HBM28_AXI_awvalid_0),
        .HBM28_AXI_bready(HBM28_AXI_bready_0),
        .HBM28_AXI_bresp(HBM28_AXI_bresp_0),
        .HBM28_AXI_bvalid(HBM28_AXI_bvalid_0),
        .HBM28_AXI_rdata(HBM28_AXI_rdata_0),
        .HBM28_AXI_rlast(HBM28_AXI_rlast_0),
        .HBM28_AXI_rready(HBM28_AXI_rready_0),
        .HBM28_AXI_rvalid(HBM28_AXI_rvalid_0),
        .HBM28_AXI_wdata(HBM28_AXI_wdata_0),
        .HBM28_AXI_wlast(HBM28_AXI_wlast_0),
        .HBM28_AXI_wready(HBM28_AXI_wready_0),
        .HBM28_AXI_wstrb(HBM28_AXI_wstrb_0),
        .HBM28_AXI_wvalid(HBM28_AXI_wvalid_0),
        .HBM29_AXI_araddr(HBM29_AXI_araddr_0),
        .HBM29_AXI_arburst(HBM29_AXI_arburst_0),
        .HBM29_AXI_arcache(xlconstant_4_dout),
        .HBM29_AXI_arid({1'b0,HBM29_AXI_arid_0}),
        .HBM29_AXI_arlen(HBM29_AXI_arlen_0),
        .HBM29_AXI_arlock(xlconstant_1_dout),
        .HBM29_AXI_arprot(xlconstant_3_dout),
        .HBM29_AXI_arready(HBM29_AXI_arready_0),
        .HBM29_AXI_arsize(HBM29_AXI_arsize_0),
        .HBM29_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM29_AXI_arvalid(HBM29_AXI_arvalid_0),
        .HBM29_AXI_awaddr(HBM29_AXI_awaddr_0),
        .HBM29_AXI_awburst(HBM29_AXI_awburst_0),
        .HBM29_AXI_awcache(xlconstant_4_dout),
        .HBM29_AXI_awid({1'b0,HBM29_AXI_awid_0}),
        .HBM29_AXI_awlen(HBM29_AXI_awlen_0),
        .HBM29_AXI_awlock(xlconstant_1_dout),
        .HBM29_AXI_awprot(xlconstant_3_dout),
        .HBM29_AXI_awready(HBM29_AXI_awready_0),
        .HBM29_AXI_awsize(HBM29_AXI_awsize_0),
        .HBM29_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM29_AXI_awvalid(HBM29_AXI_awvalid_0),
        .HBM29_AXI_bready(HBM29_AXI_bready_0),
        .HBM29_AXI_bresp(HBM29_AXI_bresp_0),
        .HBM29_AXI_bvalid(HBM29_AXI_bvalid_0),
        .HBM29_AXI_rdata(HBM29_AXI_rdata_0),
        .HBM29_AXI_rlast(HBM29_AXI_rlast_0),
        .HBM29_AXI_rready(HBM29_AXI_rready_0),
        .HBM29_AXI_rvalid(HBM29_AXI_rvalid_0),
        .HBM29_AXI_wdata(HBM29_AXI_wdata_0),
        .HBM29_AXI_wlast(HBM29_AXI_wlast_0),
        .HBM29_AXI_wready(HBM29_AXI_wready_0),
        .HBM29_AXI_wstrb(HBM29_AXI_wstrb_0),
        .HBM29_AXI_wvalid(HBM29_AXI_wvalid_0),
        .HBM30_AXI_araddr(HBM30_AXI_araddr_0),
        .HBM30_AXI_arburst(HBM30_AXI_arburst_0),
        .HBM30_AXI_arcache(xlconstant_4_dout),
        .HBM30_AXI_arid({1'b0,HBM30_AXI_arid_0}),
        .HBM30_AXI_arlen(HBM30_AXI_arlen_0),
        .HBM30_AXI_arlock(xlconstant_1_dout),
        .HBM30_AXI_arprot(xlconstant_3_dout),
        .HBM30_AXI_arready(HBM30_AXI_arready_0),
        .HBM30_AXI_arsize(HBM30_AXI_arsize_0),
        .HBM30_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM30_AXI_arvalid(HBM30_AXI_arvalid_0),
        .HBM30_AXI_awaddr(HBM30_AXI_awaddr_0),
        .HBM30_AXI_awburst(HBM30_AXI_awburst_0),
        .HBM30_AXI_awcache(xlconstant_4_dout),
        .HBM30_AXI_awid({1'b0,HBM30_AXI_awid_0}),
        .HBM30_AXI_awlen(HBM30_AXI_awlen_0),
        .HBM30_AXI_awlock(xlconstant_1_dout),
        .HBM30_AXI_awprot(xlconstant_3_dout),
        .HBM30_AXI_awready(HBM30_AXI_awready_0),
        .HBM30_AXI_awsize(HBM30_AXI_awsize_0),
        .HBM30_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM30_AXI_awvalid(HBM30_AXI_awvalid_0),
        .HBM30_AXI_bready(HBM30_AXI_bready_0),
        .HBM30_AXI_bresp(HBM30_AXI_bresp_0),
        .HBM30_AXI_bvalid(HBM30_AXI_bvalid_0),
        .HBM30_AXI_rdata(HBM30_AXI_rdata_0),
        .HBM30_AXI_rlast(HBM30_AXI_rlast_0),
        .HBM30_AXI_rready(HBM30_AXI_rready_0),
        .HBM30_AXI_rvalid(HBM30_AXI_rvalid_0),
        .HBM30_AXI_wdata(HBM30_AXI_wdata_0),
        .HBM30_AXI_wlast(HBM30_AXI_wlast_0),
        .HBM30_AXI_wready(HBM30_AXI_wready_0),
        .HBM30_AXI_wstrb(HBM30_AXI_wstrb_0),
        .HBM30_AXI_wvalid(HBM30_AXI_wvalid_0),
        .HBM31_AXI_araddr(HBM31_AXI_araddr_0),
        .HBM31_AXI_arburst(HBM31_AXI_arburst_0),
        .HBM31_AXI_arcache(xlconstant_4_dout),
        .HBM31_AXI_arid({1'b0,HBM31_AXI_arid_0}),
        .HBM31_AXI_arlen(HBM31_AXI_arlen_0),
        .HBM31_AXI_arlock(xlconstant_1_dout),
        .HBM31_AXI_arprot(xlconstant_3_dout),
        .HBM31_AXI_arready(HBM31_AXI_arready_0),
        .HBM31_AXI_arsize(HBM31_AXI_arsize_0),
        .HBM31_AXI_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM31_AXI_arvalid(HBM31_AXI_arvalid_0),
        .HBM31_AXI_awaddr(HBM31_AXI_awaddr_0),
        .HBM31_AXI_awburst(HBM31_AXI_awburst_0),
        .HBM31_AXI_awcache(xlconstant_4_dout),
        .HBM31_AXI_awid({1'b0,HBM31_AXI_awid_0}),
        .HBM31_AXI_awlen(HBM31_AXI_awlen_0),
        .HBM31_AXI_awlock(xlconstant_1_dout),
        .HBM31_AXI_awprot(xlconstant_3_dout),
        .HBM31_AXI_awready(HBM31_AXI_awready_0),
        .HBM31_AXI_awsize(HBM31_AXI_awsize_0),
        .HBM31_AXI_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .HBM31_AXI_awvalid(HBM31_AXI_awvalid_0),
        .HBM31_AXI_bready(HBM31_AXI_bready_0),
        .HBM31_AXI_bresp(HBM31_AXI_bresp_0),
        .HBM31_AXI_bvalid(HBM31_AXI_bvalid_0),
        .HBM31_AXI_rdata(HBM31_AXI_rdata_0),
        .HBM31_AXI_rlast(HBM31_AXI_rlast_0),
        .HBM31_AXI_rready(HBM31_AXI_rready_0),
        .HBM31_AXI_rvalid(HBM31_AXI_rvalid_0),
        .HBM31_AXI_wdata(HBM31_AXI_wdata_0),
        .HBM31_AXI_wlast(HBM31_AXI_wlast_0),
        .HBM31_AXI_wready(HBM31_AXI_wready_0),
        .HBM31_AXI_wstrb(HBM31_AXI_wstrb_0),
        .HBM31_AXI_wvalid(HBM31_AXI_wvalid_0),
        .M00_AXI_araddr(axi_noc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_noc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_noc_1_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_noc_1_M00_AXI_ARID),
        .M00_AXI_arlen(axi_noc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_noc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_noc_1_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_noc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_noc_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_noc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_noc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_noc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_noc_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_noc_1_M00_AXI_AWID),
        .M00_AXI_awlen(axi_noc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_noc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_noc_1_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_noc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_noc_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_noc_1_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_noc_1_M00_AXI_BID),
        .M00_AXI_bready(axi_noc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_noc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_noc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_noc_1_M00_AXI_RDATA),
        .M00_AXI_rid(axi_noc_1_M00_AXI_RID),
        .M00_AXI_rlast(axi_noc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_noc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_noc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_noc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_noc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_noc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_noc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_noc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_noc_1_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_noc_1_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_noc_1_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_noc_1_M01_AXI_ARCACHE),
        .M01_AXI_arid(axi_noc_1_M01_AXI_ARID),
        .M01_AXI_arlen(axi_noc_1_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_noc_1_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_noc_1_M01_AXI_ARPROT),
        .M01_AXI_arqos(axi_noc_1_M01_AXI_ARQOS),
        .M01_AXI_arready(axi_noc_1_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_noc_1_M01_AXI_ARSIZE),
        .M01_AXI_aruser(axi_noc_1_M01_AXI_ARUSER),
        .M01_AXI_arvalid(axi_noc_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_noc_1_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_noc_1_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_noc_1_M01_AXI_AWCACHE),
        .M01_AXI_awid(axi_noc_1_M01_AXI_AWID),
        .M01_AXI_awlen(axi_noc_1_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_noc_1_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_noc_1_M01_AXI_AWPROT),
        .M01_AXI_awqos(axi_noc_1_M01_AXI_AWQOS),
        .M01_AXI_awready(axi_noc_1_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_noc_1_M01_AXI_AWSIZE),
        .M01_AXI_awuser(axi_noc_1_M01_AXI_AWUSER),
        .M01_AXI_awvalid(axi_noc_1_M01_AXI_AWVALID),
        .M01_AXI_bid(axi_noc_1_M01_AXI_BID),
        .M01_AXI_bready(axi_noc_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_noc_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_noc_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_noc_1_M01_AXI_RDATA),
        .M01_AXI_rid(axi_noc_1_M01_AXI_RID),
        .M01_AXI_rlast(axi_noc_1_M01_AXI_RLAST),
        .M01_AXI_rready(axi_noc_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_noc_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_noc_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_noc_1_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_noc_1_M01_AXI_WLAST),
        .M01_AXI_wready(axi_noc_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_noc_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_noc_1_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_noc_1_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_noc_1_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_noc_1_M02_AXI_ARCACHE),
        .M02_AXI_arid(axi_noc_1_M02_AXI_ARID),
        .M02_AXI_arlen(axi_noc_1_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_noc_1_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_noc_1_M02_AXI_ARPROT),
        .M02_AXI_arqos(axi_noc_1_M02_AXI_ARQOS),
        .M02_AXI_arready(axi_noc_1_M02_AXI_ARREADY),
        .M02_AXI_arregion(axi_noc_1_M02_AXI_ARREGION),
        .M02_AXI_arsize(axi_noc_1_M02_AXI_ARSIZE),
        .M02_AXI_aruser(axi_noc_1_M02_AXI_ARUSER),
        .M02_AXI_arvalid(axi_noc_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_noc_1_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_noc_1_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_noc_1_M02_AXI_AWCACHE),
        .M02_AXI_awid(axi_noc_1_M02_AXI_AWID),
        .M02_AXI_awlen(axi_noc_1_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_noc_1_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_noc_1_M02_AXI_AWPROT),
        .M02_AXI_awqos(axi_noc_1_M02_AXI_AWQOS),
        .M02_AXI_awready(axi_noc_1_M02_AXI_AWREADY),
        .M02_AXI_awregion(axi_noc_1_M02_AXI_AWREGION),
        .M02_AXI_awsize(axi_noc_1_M02_AXI_AWSIZE),
        .M02_AXI_awuser(axi_noc_1_M02_AXI_AWUSER),
        .M02_AXI_awvalid(axi_noc_1_M02_AXI_AWVALID),
        .M02_AXI_bid(axi_noc_1_M02_AXI_BID),
        .M02_AXI_bready(axi_noc_1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_noc_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_noc_1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_noc_1_M02_AXI_RDATA),
        .M02_AXI_rid(axi_noc_1_M02_AXI_RID),
        .M02_AXI_rlast(axi_noc_1_M02_AXI_RLAST),
        .M02_AXI_rready(axi_noc_1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_noc_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_noc_1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_noc_1_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_noc_1_M02_AXI_WLAST),
        .M02_AXI_wready(axi_noc_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_noc_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_noc_1_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_noc_1_M03_AXI_ARADDR),
        .M03_AXI_arburst(axi_noc_1_M03_AXI_ARBURST),
        .M03_AXI_arcache(axi_noc_1_M03_AXI_ARCACHE),
        .M03_AXI_arid(axi_noc_1_M03_AXI_ARID),
        .M03_AXI_arlen(axi_noc_1_M03_AXI_ARLEN),
        .M03_AXI_arlock(axi_noc_1_M03_AXI_ARLOCK),
        .M03_AXI_arprot(axi_noc_1_M03_AXI_ARPROT),
        .M03_AXI_arqos(axi_noc_1_M03_AXI_ARQOS),
        .M03_AXI_arready(axi_noc_1_M03_AXI_ARREADY),
        .M03_AXI_arsize(axi_noc_1_M03_AXI_ARSIZE),
        .M03_AXI_aruser(axi_noc_1_M03_AXI_ARUSER),
        .M03_AXI_arvalid(axi_noc_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_noc_1_M03_AXI_AWADDR),
        .M03_AXI_awburst(axi_noc_1_M03_AXI_AWBURST),
        .M03_AXI_awcache(axi_noc_1_M03_AXI_AWCACHE),
        .M03_AXI_awid(axi_noc_1_M03_AXI_AWID),
        .M03_AXI_awlen(axi_noc_1_M03_AXI_AWLEN),
        .M03_AXI_awlock(axi_noc_1_M03_AXI_AWLOCK),
        .M03_AXI_awprot(axi_noc_1_M03_AXI_AWPROT),
        .M03_AXI_awqos(axi_noc_1_M03_AXI_AWQOS),
        .M03_AXI_awready(axi_noc_1_M03_AXI_AWREADY),
        .M03_AXI_awsize(axi_noc_1_M03_AXI_AWSIZE),
        .M03_AXI_awuser(axi_noc_1_M03_AXI_AWUSER),
        .M03_AXI_awvalid(axi_noc_1_M03_AXI_AWVALID),
        .M03_AXI_bid(axi_noc_1_M03_AXI_BID),
        .M03_AXI_bready(axi_noc_1_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_noc_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_noc_1_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_noc_1_M03_AXI_RDATA),
        .M03_AXI_rid(axi_noc_1_M03_AXI_RID),
        .M03_AXI_rlast(axi_noc_1_M03_AXI_RLAST),
        .M03_AXI_rready(axi_noc_1_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_noc_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_noc_1_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_noc_1_M03_AXI_WDATA),
        .M03_AXI_wlast(axi_noc_1_M03_AXI_WLAST),
        .M03_AXI_wready(axi_noc_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_noc_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_noc_1_M03_AXI_WVALID),
        .S00_AXI_araddr(versal_cips_0_CPM_PCIE_NOC_0_ARADDR),
        .S00_AXI_arburst(versal_cips_0_CPM_PCIE_NOC_0_ARBURST),
        .S00_AXI_arcache(versal_cips_0_CPM_PCIE_NOC_0_ARCACHE),
        .S00_AXI_arid(versal_cips_0_CPM_PCIE_NOC_0_ARID),
        .S00_AXI_arlen(versal_cips_0_CPM_PCIE_NOC_0_ARLEN),
        .S00_AXI_arlock(versal_cips_0_CPM_PCIE_NOC_0_ARLOCK),
        .S00_AXI_arprot(versal_cips_0_CPM_PCIE_NOC_0_ARPROT),
        .S00_AXI_arqos(versal_cips_0_CPM_PCIE_NOC_0_ARQOS),
        .S00_AXI_arready(versal_cips_0_CPM_PCIE_NOC_0_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(versal_cips_0_CPM_PCIE_NOC_0_ARSIZE),
        .S00_AXI_aruser(versal_cips_0_CPM_PCIE_NOC_0_ARUSER),
        .S00_AXI_arvalid(versal_cips_0_CPM_PCIE_NOC_0_ARVALID),
        .S00_AXI_awaddr(versal_cips_0_CPM_PCIE_NOC_0_AWADDR),
        .S00_AXI_awburst(versal_cips_0_CPM_PCIE_NOC_0_AWBURST),
        .S00_AXI_awcache(versal_cips_0_CPM_PCIE_NOC_0_AWCACHE),
        .S00_AXI_awid(versal_cips_0_CPM_PCIE_NOC_0_AWID),
        .S00_AXI_awlen(versal_cips_0_CPM_PCIE_NOC_0_AWLEN),
        .S00_AXI_awlock(versal_cips_0_CPM_PCIE_NOC_0_AWLOCK),
        .S00_AXI_awprot(versal_cips_0_CPM_PCIE_NOC_0_AWPROT),
        .S00_AXI_awqos(versal_cips_0_CPM_PCIE_NOC_0_AWQOS),
        .S00_AXI_awready(versal_cips_0_CPM_PCIE_NOC_0_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(versal_cips_0_CPM_PCIE_NOC_0_AWSIZE),
        .S00_AXI_awuser(versal_cips_0_CPM_PCIE_NOC_0_AWUSER),
        .S00_AXI_awvalid(versal_cips_0_CPM_PCIE_NOC_0_AWVALID),
        .S00_AXI_bid(versal_cips_0_CPM_PCIE_NOC_0_BID),
        .S00_AXI_bready(versal_cips_0_CPM_PCIE_NOC_0_BREADY),
        .S00_AXI_bresp(versal_cips_0_CPM_PCIE_NOC_0_BRESP),
        .S00_AXI_bvalid(versal_cips_0_CPM_PCIE_NOC_0_BVALID),
        .S00_AXI_rdata(versal_cips_0_CPM_PCIE_NOC_0_RDATA),
        .S00_AXI_rid(versal_cips_0_CPM_PCIE_NOC_0_RID),
        .S00_AXI_rlast(versal_cips_0_CPM_PCIE_NOC_0_RLAST),
        .S00_AXI_rready(versal_cips_0_CPM_PCIE_NOC_0_RREADY),
        .S00_AXI_rresp(versal_cips_0_CPM_PCIE_NOC_0_RRESP),
        .S00_AXI_ruser(versal_cips_0_CPM_PCIE_NOC_0_RUSER),
        .S00_AXI_rvalid(versal_cips_0_CPM_PCIE_NOC_0_RVALID),
        .S00_AXI_wdata(versal_cips_0_CPM_PCIE_NOC_0_WDATA),
        .S00_AXI_wlast(versal_cips_0_CPM_PCIE_NOC_0_WLAST),
        .S00_AXI_wready(versal_cips_0_CPM_PCIE_NOC_0_WREADY),
        .S00_AXI_wstrb(versal_cips_0_CPM_PCIE_NOC_0_WSTRB),
        .S00_AXI_wuser(versal_cips_0_CPM_PCIE_NOC_0_WUSER),
        .S00_AXI_wvalid(versal_cips_0_CPM_PCIE_NOC_0_WVALID),
        .S01_AXI_araddr(versal_cips_0_CPM_PCIE_NOC_1_ARADDR),
        .S01_AXI_arburst(versal_cips_0_CPM_PCIE_NOC_1_ARBURST),
        .S01_AXI_arcache(versal_cips_0_CPM_PCIE_NOC_1_ARCACHE),
        .S01_AXI_arid(versal_cips_0_CPM_PCIE_NOC_1_ARID),
        .S01_AXI_arlen(versal_cips_0_CPM_PCIE_NOC_1_ARLEN),
        .S01_AXI_arlock(versal_cips_0_CPM_PCIE_NOC_1_ARLOCK),
        .S01_AXI_arprot(versal_cips_0_CPM_PCIE_NOC_1_ARPROT),
        .S01_AXI_arqos(versal_cips_0_CPM_PCIE_NOC_1_ARQOS),
        .S01_AXI_arready(versal_cips_0_CPM_PCIE_NOC_1_ARREADY),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize(versal_cips_0_CPM_PCIE_NOC_1_ARSIZE),
        .S01_AXI_aruser(versal_cips_0_CPM_PCIE_NOC_1_ARUSER),
        .S01_AXI_arvalid(versal_cips_0_CPM_PCIE_NOC_1_ARVALID),
        .S01_AXI_awaddr(versal_cips_0_CPM_PCIE_NOC_1_AWADDR),
        .S01_AXI_awburst(versal_cips_0_CPM_PCIE_NOC_1_AWBURST),
        .S01_AXI_awcache(versal_cips_0_CPM_PCIE_NOC_1_AWCACHE),
        .S01_AXI_awid(versal_cips_0_CPM_PCIE_NOC_1_AWID),
        .S01_AXI_awlen(versal_cips_0_CPM_PCIE_NOC_1_AWLEN),
        .S01_AXI_awlock(versal_cips_0_CPM_PCIE_NOC_1_AWLOCK),
        .S01_AXI_awprot(versal_cips_0_CPM_PCIE_NOC_1_AWPROT),
        .S01_AXI_awqos(versal_cips_0_CPM_PCIE_NOC_1_AWQOS),
        .S01_AXI_awready(versal_cips_0_CPM_PCIE_NOC_1_AWREADY),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize(versal_cips_0_CPM_PCIE_NOC_1_AWSIZE),
        .S01_AXI_awuser(versal_cips_0_CPM_PCIE_NOC_1_AWUSER),
        .S01_AXI_awvalid(versal_cips_0_CPM_PCIE_NOC_1_AWVALID),
        .S01_AXI_bid(versal_cips_0_CPM_PCIE_NOC_1_BID),
        .S01_AXI_bready(versal_cips_0_CPM_PCIE_NOC_1_BREADY),
        .S01_AXI_bresp(versal_cips_0_CPM_PCIE_NOC_1_BRESP),
        .S01_AXI_bvalid(versal_cips_0_CPM_PCIE_NOC_1_BVALID),
        .S01_AXI_rdata(versal_cips_0_CPM_PCIE_NOC_1_RDATA),
        .S01_AXI_rid(versal_cips_0_CPM_PCIE_NOC_1_RID),
        .S01_AXI_rlast(versal_cips_0_CPM_PCIE_NOC_1_RLAST),
        .S01_AXI_rready(versal_cips_0_CPM_PCIE_NOC_1_RREADY),
        .S01_AXI_rresp(versal_cips_0_CPM_PCIE_NOC_1_RRESP),
        .S01_AXI_ruser(versal_cips_0_CPM_PCIE_NOC_1_RUSER),
        .S01_AXI_rvalid(versal_cips_0_CPM_PCIE_NOC_1_RVALID),
        .S01_AXI_wdata(versal_cips_0_CPM_PCIE_NOC_1_WDATA),
        .S01_AXI_wlast(versal_cips_0_CPM_PCIE_NOC_1_WLAST),
        .S01_AXI_wready(versal_cips_0_CPM_PCIE_NOC_1_WREADY),
        .S01_AXI_wstrb(versal_cips_0_CPM_PCIE_NOC_1_WSTRB),
        .S01_AXI_wuser(versal_cips_0_CPM_PCIE_NOC_1_WUSER),
        .S01_AXI_wvalid(versal_cips_0_CPM_PCIE_NOC_1_WVALID),
        .aclk0(versal_cips_0_cpm_pcie_noc_axi0_clk),
        .aclk1(versal_cips_0_cpm_pcie_noc_axi1_clk),
        .aclk2(versal_cips_0_pl0_ref_clk),
        .aclk3(versal_cips_0_pl1_ref_clk),
        .sys_clk0_clk_n(ddr4_dimm0_sma_clk_clk_n),
        .sys_clk0_clk_p(ddr4_dimm0_sma_clk_clk_p),
        .sys_clk1_clk_n(ddr4_dimm1_sma_clk_clk_n),
        .sys_clk1_clk_p(ddr4_dimm1_sma_clk_clk_p));
  cpm_pcie_axis_ila_0_0 axis_ila_0
       (.SLOT_0_AXI_araddr(axi_noc_1_M02_AXI_ARADDR),
        .SLOT_0_AXI_arburst(axi_noc_1_M02_AXI_ARBURST),
        .SLOT_0_AXI_arcache(axi_noc_1_M02_AXI_ARCACHE),
        .SLOT_0_AXI_arid(axi_noc_1_M02_AXI_ARID),
        .SLOT_0_AXI_arlen(axi_noc_1_M02_AXI_ARLEN),
        .SLOT_0_AXI_arlock(axi_noc_1_M02_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(axi_noc_1_M02_AXI_ARPROT),
        .SLOT_0_AXI_arqos(axi_noc_1_M02_AXI_ARQOS),
        .SLOT_0_AXI_arready(axi_noc_1_M02_AXI_ARREADY),
        .SLOT_0_AXI_arregion(axi_noc_1_M02_AXI_ARREGION),
        .SLOT_0_AXI_arsize(axi_noc_1_M02_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(axi_noc_1_M02_AXI_ARUSER),
        .SLOT_0_AXI_arvalid(axi_noc_1_M02_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(axi_noc_1_M02_AXI_AWADDR),
        .SLOT_0_AXI_awburst(axi_noc_1_M02_AXI_AWBURST),
        .SLOT_0_AXI_awcache(axi_noc_1_M02_AXI_AWCACHE),
        .SLOT_0_AXI_awid(axi_noc_1_M02_AXI_AWID),
        .SLOT_0_AXI_awlen(axi_noc_1_M02_AXI_AWLEN),
        .SLOT_0_AXI_awlock(axi_noc_1_M02_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(axi_noc_1_M02_AXI_AWPROT),
        .SLOT_0_AXI_awqos(axi_noc_1_M02_AXI_AWQOS),
        .SLOT_0_AXI_awready(axi_noc_1_M02_AXI_AWREADY),
        .SLOT_0_AXI_awregion(axi_noc_1_M02_AXI_AWREGION),
        .SLOT_0_AXI_awsize(axi_noc_1_M02_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(axi_noc_1_M02_AXI_AWUSER),
        .SLOT_0_AXI_awvalid(axi_noc_1_M02_AXI_AWVALID),
        .SLOT_0_AXI_bid(axi_noc_1_M02_AXI_BID),
        .SLOT_0_AXI_bready(axi_noc_1_M02_AXI_BREADY),
        .SLOT_0_AXI_bresp(axi_noc_1_M02_AXI_BRESP),
        .SLOT_0_AXI_bvalid(axi_noc_1_M02_AXI_BVALID),
        .SLOT_0_AXI_rdata(axi_noc_1_M02_AXI_RDATA),
        .SLOT_0_AXI_rid(axi_noc_1_M02_AXI_RID),
        .SLOT_0_AXI_rlast(axi_noc_1_M02_AXI_RLAST),
        .SLOT_0_AXI_rready(axi_noc_1_M02_AXI_RREADY),
        .SLOT_0_AXI_rresp(axi_noc_1_M02_AXI_RRESP),
        .SLOT_0_AXI_rvalid(axi_noc_1_M02_AXI_RVALID),
        .SLOT_0_AXI_wdata(axi_noc_1_M02_AXI_WDATA),
        .SLOT_0_AXI_wlast(axi_noc_1_M02_AXI_WLAST),
        .SLOT_0_AXI_wready(axi_noc_1_M02_AXI_WREADY),
        .SLOT_0_AXI_wstrb(axi_noc_1_M02_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(axi_noc_1_M02_AXI_WVALID),
        .clk(versal_cips_0_pl0_ref_clk),
        .resetn(xlconstant_0_dout));
  cpm_pcie_clk_wizard_0_0 clk_wizard_0
       (.clk_in1(versal_cips_0_pl0_ref_clk),
        .clk_out1(clk_out1_0),
        .clk_out2(clk_out2_0),
        .clk_out3(clk_out3_0),
        .clk_out4(clk_out4_0),
        .clk_out5(clk_out5_0),
        .locked(locked_0),
        .reset(reset_0));
  cpm_pcie_emb_mem_gen_0_0 emb_mem_gen_0
       (.addra(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .regcea(1'b1),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  cpm_pcie_emb_mem_gen_0_1 emb_mem_gen_1
       (.addra(axi_bram_ctrl_1_BRAM_PORTA_ADDR[12:0]),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .regcea(1'b1),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE));
  cpm_pcie_pcie_qdma_mailbox_0_0 pcie_qdma_mailbox_0
       (.S_AXI_0_araddr(smartconnect_1_M00_AXI_ARADDR),
        .S_AXI_0_arprot(smartconnect_1_M00_AXI_ARPROT),
        .S_AXI_0_arready(smartconnect_1_M00_AXI_ARREADY),
        .S_AXI_0_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .S_AXI_0_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .S_AXI_0_awprot(smartconnect_1_M00_AXI_AWPROT),
        .S_AXI_0_awready(smartconnect_1_M00_AXI_AWREADY),
        .S_AXI_0_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .S_AXI_0_bready(smartconnect_1_M00_AXI_BREADY),
        .S_AXI_0_bresp(smartconnect_1_M00_AXI_BRESP),
        .S_AXI_0_bvalid(smartconnect_1_M00_AXI_BVALID),
        .S_AXI_0_rdata(smartconnect_1_M00_AXI_RDATA),
        .S_AXI_0_rready(smartconnect_1_M00_AXI_RREADY),
        .S_AXI_0_rresp(smartconnect_1_M00_AXI_RRESP),
        .S_AXI_0_rvalid(smartconnect_1_M00_AXI_RVALID),
        .S_AXI_0_wdata(smartconnect_1_M00_AXI_WDATA),
        .S_AXI_0_wready(smartconnect_1_M00_AXI_WREADY),
        .S_AXI_0_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .S_AXI_0_wvalid(smartconnect_1_M00_AXI_WVALID),
        .axi_aclk(versal_cips_0_pl0_ref_clk),
        .axi_aresetn(dma1_axi_aresetn_0),
        .dma_flr_in_fnc(pcie_qdma_mailbox_0_dma_flr_done_fnc),
        .dma_flr_in_vld(pcie_qdma_mailbox_0_dma_flr_done_vld),
        .dma_flr_out_clr(pcie_qdma_mailbox_0_dma_flr_clear),
        .dma_flr_out_fnc(pcie_qdma_mailbox_0_dma_flr_fnc[11:0]),
        .dma_flr_out_set(pcie_qdma_mailbox_0_dma_flr_set),
        .dma_usr_irq_ack(pcie_qdma_mailbox_0_dma_usr_irq_ack),
        .dma_usr_irq_fail(pcie_qdma_mailbox_0_dma_usr_irq_fail),
        .dma_usr_irq_fnc(pcie_qdma_mailbox_0_dma_usr_irq_fnc),
        .dma_usr_irq_vec(pcie_qdma_mailbox_0_dma_usr_irq_vec),
        .dma_usr_irq_vld(pcie_qdma_mailbox_0_dma_usr_irq_valid),
        .ip_clk(versal_cips_0_pl0_ref_clk),
        .ip_resetn(dma1_axi_aresetn_0),
        .mgmt_cpl_dat(pcie_qdma_mailbox_0_pcie_mgmt_cpl_dat),
        .mgmt_cpl_rdy(pcie_qdma_mailbox_0_pcie_mgmt_cpl_rdy),
        .mgmt_cpl_sts(pcie_qdma_mailbox_0_pcie_mgmt_cpl_sts),
        .mgmt_cpl_vld(pcie_qdma_mailbox_0_pcie_mgmt_cpl_vld),
        .mgmt_req_adr(pcie_qdma_mailbox_0_pcie_mgmt_req_adr),
        .mgmt_req_cmd(pcie_qdma_mailbox_0_pcie_mgmt_req_cmd),
        .mgmt_req_dat(pcie_qdma_mailbox_0_pcie_mgmt_req_dat),
        .mgmt_req_fnc(pcie_qdma_mailbox_0_pcie_mgmt_req_fnc),
        .mgmt_req_msc(pcie_qdma_mailbox_0_pcie_mgmt_req_msc),
        .mgmt_req_rdy(pcie_qdma_mailbox_0_pcie_mgmt_req_rdy),
        .mgmt_req_vld(pcie_qdma_mailbox_0_pcie_mgmt_req_vld),
        .usr_flr_clr(usr_flr_0_clear),
        .usr_flr_done_fnc(usr_flr_0_done_fnc),
        .usr_flr_done_vld(usr_flr_0_done_vld),
        .usr_flr_fnc(usr_flr_0_fnc),
        .usr_flr_set(usr_flr_0_set),
        .usr_irq_ack(usr_irq_0_ack),
        .usr_irq_fail(usr_irq_0_fail),
        .usr_irq_fnc(usr_irq_0_fnc),
        .usr_irq_vec(usr_irq_0_vec),
        .usr_irq_vld(usr_irq_0_valid));
  cpm_pcie_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(M_AXIL_araddr),
        .M00_AXI_arburst(M_AXIL_arburst),
        .M00_AXI_arcache(M_AXIL_arcache),
        .M00_AXI_arlen(M_AXIL_arlen),
        .M00_AXI_arlock(M_AXIL_arlock),
        .M00_AXI_arprot(M_AXIL_arprot),
        .M00_AXI_arqos(M_AXIL_arqos),
        .M00_AXI_arready(M_AXIL_arready),
        .M00_AXI_arsize(M_AXIL_arsize),
        .M00_AXI_aruser(M_AXIL_aruser),
        .M00_AXI_arvalid(M_AXIL_arvalid),
        .M00_AXI_awaddr(M_AXIL_awaddr),
        .M00_AXI_awburst(M_AXIL_awburst),
        .M00_AXI_awcache(M_AXIL_awcache),
        .M00_AXI_awlen(M_AXIL_awlen),
        .M00_AXI_awlock(M_AXIL_awlock),
        .M00_AXI_awprot(M_AXIL_awprot),
        .M00_AXI_awqos(M_AXIL_awqos),
        .M00_AXI_awready(M_AXIL_awready),
        .M00_AXI_awsize(M_AXIL_awsize),
        .M00_AXI_awuser(M_AXIL_awuser),
        .M00_AXI_awvalid(M_AXIL_awvalid),
        .M00_AXI_bready(M_AXIL_bready),
        .M00_AXI_bresp(M_AXIL_bresp),
        .M00_AXI_bvalid(M_AXIL_bvalid),
        .M00_AXI_rdata(M_AXIL_rdata),
        .M00_AXI_rlast(M_AXIL_rlast),
        .M00_AXI_rready(M_AXIL_rready),
        .M00_AXI_rresp(M_AXIL_rresp),
        .M00_AXI_rvalid(M_AXIL_rvalid),
        .M00_AXI_wdata(M_AXIL_wdata),
        .M00_AXI_wlast(M_AXIL_wlast),
        .M00_AXI_wready(M_AXIL_wready),
        .M00_AXI_wstrb(M_AXIL_wstrb),
        .M00_AXI_wvalid(M_AXIL_wvalid),
        .S00_AXI_araddr(axi_noc_1_M01_AXI_ARADDR),
        .S00_AXI_arburst(axi_noc_1_M01_AXI_ARBURST),
        .S00_AXI_arcache(axi_noc_1_M01_AXI_ARCACHE),
        .S00_AXI_arid(axi_noc_1_M01_AXI_ARID),
        .S00_AXI_arlen(axi_noc_1_M01_AXI_ARLEN),
        .S00_AXI_arlock(axi_noc_1_M01_AXI_ARLOCK),
        .S00_AXI_arprot(axi_noc_1_M01_AXI_ARPROT),
        .S00_AXI_arqos(axi_noc_1_M01_AXI_ARQOS),
        .S00_AXI_arready(axi_noc_1_M01_AXI_ARREADY),
        .S00_AXI_arsize(axi_noc_1_M01_AXI_ARSIZE),
        .S00_AXI_aruser(axi_noc_1_M01_AXI_ARUSER),
        .S00_AXI_arvalid(axi_noc_1_M01_AXI_ARVALID),
        .S00_AXI_awaddr(axi_noc_1_M01_AXI_AWADDR),
        .S00_AXI_awburst(axi_noc_1_M01_AXI_AWBURST),
        .S00_AXI_awcache(axi_noc_1_M01_AXI_AWCACHE),
        .S00_AXI_awid(axi_noc_1_M01_AXI_AWID),
        .S00_AXI_awlen(axi_noc_1_M01_AXI_AWLEN),
        .S00_AXI_awlock(axi_noc_1_M01_AXI_AWLOCK),
        .S00_AXI_awprot(axi_noc_1_M01_AXI_AWPROT),
        .S00_AXI_awqos(axi_noc_1_M01_AXI_AWQOS),
        .S00_AXI_awready(axi_noc_1_M01_AXI_AWREADY),
        .S00_AXI_awsize(axi_noc_1_M01_AXI_AWSIZE),
        .S00_AXI_awuser(axi_noc_1_M01_AXI_AWUSER),
        .S00_AXI_awvalid(axi_noc_1_M01_AXI_AWVALID),
        .S00_AXI_bid(axi_noc_1_M01_AXI_BID),
        .S00_AXI_bready(axi_noc_1_M01_AXI_BREADY),
        .S00_AXI_bresp(axi_noc_1_M01_AXI_BRESP),
        .S00_AXI_bvalid(axi_noc_1_M01_AXI_BVALID),
        .S00_AXI_rdata(axi_noc_1_M01_AXI_RDATA),
        .S00_AXI_rid(axi_noc_1_M01_AXI_RID),
        .S00_AXI_rlast(axi_noc_1_M01_AXI_RLAST),
        .S00_AXI_rready(axi_noc_1_M01_AXI_RREADY),
        .S00_AXI_rresp(axi_noc_1_M01_AXI_RRESP),
        .S00_AXI_rvalid(axi_noc_1_M01_AXI_RVALID),
        .S00_AXI_wdata(axi_noc_1_M01_AXI_WDATA),
        .S00_AXI_wlast(axi_noc_1_M01_AXI_WLAST),
        .S00_AXI_wready(axi_noc_1_M01_AXI_WREADY),
        .S00_AXI_wstrb(axi_noc_1_M01_AXI_WSTRB),
        .S00_AXI_wvalid(axi_noc_1_M01_AXI_WVALID),
        .aclk(versal_cips_0_pl0_ref_clk),
        .aresetn(dma1_axi_aresetn_0));
  cpm_pcie_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_noc_1_M02_AXI_ARADDR),
        .S00_AXI_arburst(axi_noc_1_M02_AXI_ARBURST),
        .S00_AXI_arcache(axi_noc_1_M02_AXI_ARCACHE),
        .S00_AXI_arid(axi_noc_1_M02_AXI_ARID),
        .S00_AXI_arlen(axi_noc_1_M02_AXI_ARLEN),
        .S00_AXI_arlock(axi_noc_1_M02_AXI_ARLOCK),
        .S00_AXI_arprot(axi_noc_1_M02_AXI_ARPROT),
        .S00_AXI_arqos(axi_noc_1_M02_AXI_ARQOS),
        .S00_AXI_arready(axi_noc_1_M02_AXI_ARREADY),
        .S00_AXI_arsize(axi_noc_1_M02_AXI_ARSIZE),
        .S00_AXI_aruser(axi_noc_1_M02_AXI_ARUSER),
        .S00_AXI_arvalid(axi_noc_1_M02_AXI_ARVALID),
        .S00_AXI_awaddr(axi_noc_1_M02_AXI_AWADDR),
        .S00_AXI_awburst(axi_noc_1_M02_AXI_AWBURST),
        .S00_AXI_awcache(axi_noc_1_M02_AXI_AWCACHE),
        .S00_AXI_awid(axi_noc_1_M02_AXI_AWID),
        .S00_AXI_awlen(axi_noc_1_M02_AXI_AWLEN),
        .S00_AXI_awlock(axi_noc_1_M02_AXI_AWLOCK),
        .S00_AXI_awprot(axi_noc_1_M02_AXI_AWPROT),
        .S00_AXI_awqos(axi_noc_1_M02_AXI_AWQOS),
        .S00_AXI_awready(axi_noc_1_M02_AXI_AWREADY),
        .S00_AXI_awsize(axi_noc_1_M02_AXI_AWSIZE),
        .S00_AXI_awuser(axi_noc_1_M02_AXI_AWUSER),
        .S00_AXI_awvalid(axi_noc_1_M02_AXI_AWVALID),
        .S00_AXI_bid(axi_noc_1_M02_AXI_BID),
        .S00_AXI_bready(axi_noc_1_M02_AXI_BREADY),
        .S00_AXI_bresp(axi_noc_1_M02_AXI_BRESP),
        .S00_AXI_bvalid(axi_noc_1_M02_AXI_BVALID),
        .S00_AXI_rdata(axi_noc_1_M02_AXI_RDATA),
        .S00_AXI_rid(axi_noc_1_M02_AXI_RID),
        .S00_AXI_rlast(axi_noc_1_M02_AXI_RLAST),
        .S00_AXI_rready(axi_noc_1_M02_AXI_RREADY),
        .S00_AXI_rresp(axi_noc_1_M02_AXI_RRESP),
        .S00_AXI_rvalid(axi_noc_1_M02_AXI_RVALID),
        .S00_AXI_wdata(axi_noc_1_M02_AXI_WDATA),
        .S00_AXI_wlast(axi_noc_1_M02_AXI_WLAST),
        .S00_AXI_wready(axi_noc_1_M02_AXI_WREADY),
        .S00_AXI_wstrb(axi_noc_1_M02_AXI_WSTRB),
        .S00_AXI_wvalid(axi_noc_1_M02_AXI_WVALID),
        .aclk(versal_cips_0_pl0_ref_clk),
        .aresetn(dma1_axi_aresetn_0));
  cpm_pcie_smartconnect_2_0 smartconnect_2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_2_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_2_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_2_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_2_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_2_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_noc_1_M03_AXI_ARADDR),
        .S00_AXI_arburst(axi_noc_1_M03_AXI_ARBURST),
        .S00_AXI_arcache(axi_noc_1_M03_AXI_ARCACHE),
        .S00_AXI_arid(axi_noc_1_M03_AXI_ARID),
        .S00_AXI_arlen(axi_noc_1_M03_AXI_ARLEN),
        .S00_AXI_arlock(axi_noc_1_M03_AXI_ARLOCK),
        .S00_AXI_arprot(axi_noc_1_M03_AXI_ARPROT),
        .S00_AXI_arqos(axi_noc_1_M03_AXI_ARQOS),
        .S00_AXI_arready(axi_noc_1_M03_AXI_ARREADY),
        .S00_AXI_arsize(axi_noc_1_M03_AXI_ARSIZE),
        .S00_AXI_aruser(axi_noc_1_M03_AXI_ARUSER),
        .S00_AXI_arvalid(axi_noc_1_M03_AXI_ARVALID),
        .S00_AXI_awaddr(axi_noc_1_M03_AXI_AWADDR),
        .S00_AXI_awburst(axi_noc_1_M03_AXI_AWBURST),
        .S00_AXI_awcache(axi_noc_1_M03_AXI_AWCACHE),
        .S00_AXI_awid(axi_noc_1_M03_AXI_AWID),
        .S00_AXI_awlen(axi_noc_1_M03_AXI_AWLEN),
        .S00_AXI_awlock(axi_noc_1_M03_AXI_AWLOCK),
        .S00_AXI_awprot(axi_noc_1_M03_AXI_AWPROT),
        .S00_AXI_awqos(axi_noc_1_M03_AXI_AWQOS),
        .S00_AXI_awready(axi_noc_1_M03_AXI_AWREADY),
        .S00_AXI_awsize(axi_noc_1_M03_AXI_AWSIZE),
        .S00_AXI_awuser(axi_noc_1_M03_AXI_AWUSER),
        .S00_AXI_awvalid(axi_noc_1_M03_AXI_AWVALID),
        .S00_AXI_bid(axi_noc_1_M03_AXI_BID),
        .S00_AXI_bready(axi_noc_1_M03_AXI_BREADY),
        .S00_AXI_bresp(axi_noc_1_M03_AXI_BRESP),
        .S00_AXI_bvalid(axi_noc_1_M03_AXI_BVALID),
        .S00_AXI_rdata(axi_noc_1_M03_AXI_RDATA),
        .S00_AXI_rid(axi_noc_1_M03_AXI_RID),
        .S00_AXI_rlast(axi_noc_1_M03_AXI_RLAST),
        .S00_AXI_rready(axi_noc_1_M03_AXI_RREADY),
        .S00_AXI_rresp(axi_noc_1_M03_AXI_RRESP),
        .S00_AXI_rvalid(axi_noc_1_M03_AXI_RVALID),
        .S00_AXI_wdata(axi_noc_1_M03_AXI_WDATA),
        .S00_AXI_wlast(axi_noc_1_M03_AXI_WLAST),
        .S00_AXI_wready(axi_noc_1_M03_AXI_WREADY),
        .S00_AXI_wstrb(axi_noc_1_M03_AXI_WSTRB),
        .S00_AXI_wvalid(axi_noc_1_M03_AXI_WVALID),
        .aclk(versal_cips_0_pl0_ref_clk),
        .aresetn(dma1_axi_aresetn_0));
  cpm_pcie_versal_cips_0_0 versal_cips_0
       (.CPM_PCIE_NOC_0_araddr(versal_cips_0_CPM_PCIE_NOC_0_ARADDR),
        .CPM_PCIE_NOC_0_arburst(versal_cips_0_CPM_PCIE_NOC_0_ARBURST),
        .CPM_PCIE_NOC_0_arcache(versal_cips_0_CPM_PCIE_NOC_0_ARCACHE),
        .CPM_PCIE_NOC_0_arid(versal_cips_0_CPM_PCIE_NOC_0_ARID),
        .CPM_PCIE_NOC_0_arlen(versal_cips_0_CPM_PCIE_NOC_0_ARLEN),
        .CPM_PCIE_NOC_0_arlock(versal_cips_0_CPM_PCIE_NOC_0_ARLOCK),
        .CPM_PCIE_NOC_0_arprot(versal_cips_0_CPM_PCIE_NOC_0_ARPROT),
        .CPM_PCIE_NOC_0_arqos(versal_cips_0_CPM_PCIE_NOC_0_ARQOS),
        .CPM_PCIE_NOC_0_arready(versal_cips_0_CPM_PCIE_NOC_0_ARREADY),
        .CPM_PCIE_NOC_0_arsize(versal_cips_0_CPM_PCIE_NOC_0_ARSIZE),
        .CPM_PCIE_NOC_0_aruser(versal_cips_0_CPM_PCIE_NOC_0_ARUSER),
        .CPM_PCIE_NOC_0_arvalid(versal_cips_0_CPM_PCIE_NOC_0_ARVALID),
        .CPM_PCIE_NOC_0_awaddr(versal_cips_0_CPM_PCIE_NOC_0_AWADDR),
        .CPM_PCIE_NOC_0_awburst(versal_cips_0_CPM_PCIE_NOC_0_AWBURST),
        .CPM_PCIE_NOC_0_awcache(versal_cips_0_CPM_PCIE_NOC_0_AWCACHE),
        .CPM_PCIE_NOC_0_awid(versal_cips_0_CPM_PCIE_NOC_0_AWID),
        .CPM_PCIE_NOC_0_awlen(versal_cips_0_CPM_PCIE_NOC_0_AWLEN),
        .CPM_PCIE_NOC_0_awlock(versal_cips_0_CPM_PCIE_NOC_0_AWLOCK),
        .CPM_PCIE_NOC_0_awprot(versal_cips_0_CPM_PCIE_NOC_0_AWPROT),
        .CPM_PCIE_NOC_0_awqos(versal_cips_0_CPM_PCIE_NOC_0_AWQOS),
        .CPM_PCIE_NOC_0_awready(versal_cips_0_CPM_PCIE_NOC_0_AWREADY),
        .CPM_PCIE_NOC_0_awsize(versal_cips_0_CPM_PCIE_NOC_0_AWSIZE),
        .CPM_PCIE_NOC_0_awuser(versal_cips_0_CPM_PCIE_NOC_0_AWUSER),
        .CPM_PCIE_NOC_0_awvalid(versal_cips_0_CPM_PCIE_NOC_0_AWVALID),
        .CPM_PCIE_NOC_0_bid(versal_cips_0_CPM_PCIE_NOC_0_BID),
        .CPM_PCIE_NOC_0_bready(versal_cips_0_CPM_PCIE_NOC_0_BREADY),
        .CPM_PCIE_NOC_0_bresp(versal_cips_0_CPM_PCIE_NOC_0_BRESP),
        .CPM_PCIE_NOC_0_bvalid(versal_cips_0_CPM_PCIE_NOC_0_BVALID),
        .CPM_PCIE_NOC_0_rdata(versal_cips_0_CPM_PCIE_NOC_0_RDATA),
        .CPM_PCIE_NOC_0_rid(versal_cips_0_CPM_PCIE_NOC_0_RID),
        .CPM_PCIE_NOC_0_rlast(versal_cips_0_CPM_PCIE_NOC_0_RLAST),
        .CPM_PCIE_NOC_0_rready(versal_cips_0_CPM_PCIE_NOC_0_RREADY),
        .CPM_PCIE_NOC_0_rresp(versal_cips_0_CPM_PCIE_NOC_0_RRESP),
        .CPM_PCIE_NOC_0_ruser(versal_cips_0_CPM_PCIE_NOC_0_RUSER),
        .CPM_PCIE_NOC_0_rvalid(versal_cips_0_CPM_PCIE_NOC_0_RVALID),
        .CPM_PCIE_NOC_0_wdata(versal_cips_0_CPM_PCIE_NOC_0_WDATA),
        .CPM_PCIE_NOC_0_wlast(versal_cips_0_CPM_PCIE_NOC_0_WLAST),
        .CPM_PCIE_NOC_0_wready(versal_cips_0_CPM_PCIE_NOC_0_WREADY),
        .CPM_PCIE_NOC_0_wstrb(versal_cips_0_CPM_PCIE_NOC_0_WSTRB),
        .CPM_PCIE_NOC_0_wuser(versal_cips_0_CPM_PCIE_NOC_0_WUSER),
        .CPM_PCIE_NOC_0_wvalid(versal_cips_0_CPM_PCIE_NOC_0_WVALID),
        .CPM_PCIE_NOC_1_araddr(versal_cips_0_CPM_PCIE_NOC_1_ARADDR),
        .CPM_PCIE_NOC_1_arburst(versal_cips_0_CPM_PCIE_NOC_1_ARBURST),
        .CPM_PCIE_NOC_1_arcache(versal_cips_0_CPM_PCIE_NOC_1_ARCACHE),
        .CPM_PCIE_NOC_1_arid(versal_cips_0_CPM_PCIE_NOC_1_ARID),
        .CPM_PCIE_NOC_1_arlen(versal_cips_0_CPM_PCIE_NOC_1_ARLEN),
        .CPM_PCIE_NOC_1_arlock(versal_cips_0_CPM_PCIE_NOC_1_ARLOCK),
        .CPM_PCIE_NOC_1_arprot(versal_cips_0_CPM_PCIE_NOC_1_ARPROT),
        .CPM_PCIE_NOC_1_arqos(versal_cips_0_CPM_PCIE_NOC_1_ARQOS),
        .CPM_PCIE_NOC_1_arready(versal_cips_0_CPM_PCIE_NOC_1_ARREADY),
        .CPM_PCIE_NOC_1_arsize(versal_cips_0_CPM_PCIE_NOC_1_ARSIZE),
        .CPM_PCIE_NOC_1_aruser(versal_cips_0_CPM_PCIE_NOC_1_ARUSER),
        .CPM_PCIE_NOC_1_arvalid(versal_cips_0_CPM_PCIE_NOC_1_ARVALID),
        .CPM_PCIE_NOC_1_awaddr(versal_cips_0_CPM_PCIE_NOC_1_AWADDR),
        .CPM_PCIE_NOC_1_awburst(versal_cips_0_CPM_PCIE_NOC_1_AWBURST),
        .CPM_PCIE_NOC_1_awcache(versal_cips_0_CPM_PCIE_NOC_1_AWCACHE),
        .CPM_PCIE_NOC_1_awid(versal_cips_0_CPM_PCIE_NOC_1_AWID),
        .CPM_PCIE_NOC_1_awlen(versal_cips_0_CPM_PCIE_NOC_1_AWLEN),
        .CPM_PCIE_NOC_1_awlock(versal_cips_0_CPM_PCIE_NOC_1_AWLOCK),
        .CPM_PCIE_NOC_1_awprot(versal_cips_0_CPM_PCIE_NOC_1_AWPROT),
        .CPM_PCIE_NOC_1_awqos(versal_cips_0_CPM_PCIE_NOC_1_AWQOS),
        .CPM_PCIE_NOC_1_awready(versal_cips_0_CPM_PCIE_NOC_1_AWREADY),
        .CPM_PCIE_NOC_1_awsize(versal_cips_0_CPM_PCIE_NOC_1_AWSIZE),
        .CPM_PCIE_NOC_1_awuser(versal_cips_0_CPM_PCIE_NOC_1_AWUSER),
        .CPM_PCIE_NOC_1_awvalid(versal_cips_0_CPM_PCIE_NOC_1_AWVALID),
        .CPM_PCIE_NOC_1_bid(versal_cips_0_CPM_PCIE_NOC_1_BID),
        .CPM_PCIE_NOC_1_bready(versal_cips_0_CPM_PCIE_NOC_1_BREADY),
        .CPM_PCIE_NOC_1_bresp(versal_cips_0_CPM_PCIE_NOC_1_BRESP),
        .CPM_PCIE_NOC_1_bvalid(versal_cips_0_CPM_PCIE_NOC_1_BVALID),
        .CPM_PCIE_NOC_1_rdata(versal_cips_0_CPM_PCIE_NOC_1_RDATA),
        .CPM_PCIE_NOC_1_rid(versal_cips_0_CPM_PCIE_NOC_1_RID),
        .CPM_PCIE_NOC_1_rlast(versal_cips_0_CPM_PCIE_NOC_1_RLAST),
        .CPM_PCIE_NOC_1_rready(versal_cips_0_CPM_PCIE_NOC_1_RREADY),
        .CPM_PCIE_NOC_1_rresp(versal_cips_0_CPM_PCIE_NOC_1_RRESP),
        .CPM_PCIE_NOC_1_ruser(versal_cips_0_CPM_PCIE_NOC_1_RUSER),
        .CPM_PCIE_NOC_1_rvalid(versal_cips_0_CPM_PCIE_NOC_1_RVALID),
        .CPM_PCIE_NOC_1_wdata(versal_cips_0_CPM_PCIE_NOC_1_WDATA),
        .CPM_PCIE_NOC_1_wlast(versal_cips_0_CPM_PCIE_NOC_1_WLAST),
        .CPM_PCIE_NOC_1_wready(versal_cips_0_CPM_PCIE_NOC_1_WREADY),
        .CPM_PCIE_NOC_1_wstrb(versal_cips_0_CPM_PCIE_NOC_1_WSTRB),
        .CPM_PCIE_NOC_1_wuser(versal_cips_0_CPM_PCIE_NOC_1_WUSER),
        .CPM_PCIE_NOC_1_wvalid(versal_cips_0_CPM_PCIE_NOC_1_WVALID),
        .PCIE1_GT_grx_n(PCIE1_GT_0_grx_n),
        .PCIE1_GT_grx_p(PCIE1_GT_0_grx_p),
        .PCIE1_GT_gtx_n(PCIE1_GT_0_gtx_n),
        .PCIE1_GT_gtx_p(PCIE1_GT_0_gtx_p),
        .cpm_cor_irq(cpm_cor_irq_0),
        .cpm_irq0(cpm_irq0_0),
        .cpm_irq1(cpm_irq1_0),
        .cpm_misc_irq(cpm_misc_irq_0),
        .cpm_pcie_noc_axi0_clk(versal_cips_0_cpm_pcie_noc_axi0_clk),
        .cpm_pcie_noc_axi1_clk(versal_cips_0_cpm_pcie_noc_axi1_clk),
        .cpm_uncor_irq(cpm_uncor_irq_0),
        .dma1_axi_aresetn(dma1_axi_aresetn_0),
        .dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_0_cmp),
        .dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_0_port_id),
        .dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_0_target_vch),
        .dma1_axis_c2h_status_drop(dma1_axis_c2h_status_0_drop),
        .dma1_axis_c2h_status_error(dma1_axis_c2h_status_0_error),
        .dma1_axis_c2h_status_last(dma1_axis_c2h_status_0_last),
        .dma1_axis_c2h_status_qid(dma1_axis_c2h_status_0_qid),
        .dma1_axis_c2h_status_status_cmp(dma1_axis_c2h_status_0_status_cmp),
        .dma1_axis_c2h_status_valid(dma1_axis_c2h_status_0_valid),
        .dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_0_cidx),
        .dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_0_error),
        .dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_0_func),
        .dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_0_len),
        .dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_0_mrkr_req),
        .dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_0_no_dma),
        .dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_0_port_id),
        .dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_0_qid),
        .dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_0_radr),
        .dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_0_ready),
        .dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_0_sdi),
        .dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_0_valid),
        .dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_0_wadr),
        .dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_0_cidx),
        .dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_0_error),
        .dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_0_func),
        .dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_0_len),
        .dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_0_mrkr_req),
        .dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_0_no_dma),
        .dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_0_port_id),
        .dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_0_qid),
        .dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_0_radr),
        .dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_0_ready),
        .dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_0_sdi),
        .dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_0_valid),
        .dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_0_wadr),
        .dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_0_addr),
        .dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_0_error),
        .dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_0_func),
        .dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_0_pfch_tag),
        .dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_0_port_id),
        .dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_0_qid),
        .dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_0_ready),
        .dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_0_valid),
        .dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_0_cidx),
        .dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_0_dsc),
        .dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_0_dsc_sz),
        .dma1_c2h_byp_out_error(dma1_c2h_byp_out_0_error),
        .dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_0_fmt),
        .dma1_c2h_byp_out_func(dma1_c2h_byp_out_0_func),
        .dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_0_mm_chn),
        .dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_0_pfch_tag),
        .dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_0_port_id),
        .dma1_c2h_byp_out_qid(dma1_c2h_byp_out_0_qid),
        .dma1_c2h_byp_out_ready(dma1_c2h_byp_out_0_ready),
        .dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_0_st_mm),
        .dma1_c2h_byp_out_valid(dma1_c2h_byp_out_0_valid),
        .dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_0_crdt),
        .dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_0_dir),
        .dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_0_fence),
        .dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_0_qid),
        .dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_0_rdy),
        .dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_0_valid),
        .dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_0_cidx),
        .dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_0_error),
        .dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_0_func),
        .dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_0_len),
        .dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_0_mrkr_req),
        .dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_0_no_dma),
        .dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_0_port_id),
        .dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_0_qid),
        .dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_0_radr),
        .dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_0_ready),
        .dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_0_sdi),
        .dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_0_valid),
        .dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_0_wadr),
        .dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_0_cidx),
        .dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_0_error),
        .dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_0_func),
        .dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_0_len),
        .dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_0_mrkr_req),
        .dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_0_no_dma),
        .dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_0_port_id),
        .dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_0_qid),
        .dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_0_radr),
        .dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_0_ready),
        .dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_0_sdi),
        .dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_0_valid),
        .dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_0_wadr),
        .dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_0_addr),
        .dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_0_cidx),
        .dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_0_eop),
        .dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_0_error),
        .dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_0_func),
        .dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_0_len),
        .dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_0_mrkr_req),
        .dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_0_no_dma),
        .dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_0_port_id),
        .dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_0_qid),
        .dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_0_ready),
        .dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_0_sdi),
        .dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_0_sop),
        .dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_0_valid),
        .dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_0_cidx),
        .dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_0_dsc),
        .dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_0_dsc_sz),
        .dma1_h2c_byp_out_error(dma1_h2c_byp_out_0_error),
        .dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_0_fmt),
        .dma1_h2c_byp_out_func(dma1_h2c_byp_out_0_func),
        .dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_0_mm_chn),
        .dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_0_port_id),
        .dma1_h2c_byp_out_qid(dma1_h2c_byp_out_0_qid),
        .dma1_h2c_byp_out_ready(dma1_h2c_byp_out_0_ready),
        .dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_0_st_mm),
        .dma1_h2c_byp_out_valid(dma1_h2c_byp_out_0_valid),
        .dma1_intrfc_clk(versal_cips_0_pl0_ref_clk),
        .dma1_intrfc_resetn(dma1_intrfc_resetn_0),
        .dma1_m_axis_h2c_err(dma1_m_axis_h2c_0_err),
        .dma1_m_axis_h2c_mdata(dma1_m_axis_h2c_0_mdata),
        .dma1_m_axis_h2c_mty(dma1_m_axis_h2c_0_mty),
        .dma1_m_axis_h2c_port_id(dma1_m_axis_h2c_0_port_id),
        .dma1_m_axis_h2c_qid(dma1_m_axis_h2c_0_qid),
        .dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_0_tcrc),
        .dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_0_tdata),
        .dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_0_tlast),
        .dma1_m_axis_h2c_tready(dma1_m_axis_h2c_0_tready),
        .dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_0_tvalid),
        .dma1_m_axis_h2c_zero_byte(dma1_m_axis_h2c_0_zero_byte),
        .dma1_mgmt_cpl_dat(pcie_qdma_mailbox_0_pcie_mgmt_cpl_dat),
        .dma1_mgmt_cpl_rdy(pcie_qdma_mailbox_0_pcie_mgmt_cpl_rdy),
        .dma1_mgmt_cpl_sts(pcie_qdma_mailbox_0_pcie_mgmt_cpl_sts),
        .dma1_mgmt_cpl_vld(pcie_qdma_mailbox_0_pcie_mgmt_cpl_vld),
        .dma1_mgmt_req_adr(pcie_qdma_mailbox_0_pcie_mgmt_req_adr),
        .dma1_mgmt_req_cmd(pcie_qdma_mailbox_0_pcie_mgmt_req_cmd),
        .dma1_mgmt_req_dat(pcie_qdma_mailbox_0_pcie_mgmt_req_dat),
        .dma1_mgmt_req_fnc({1'b0,pcie_qdma_mailbox_0_pcie_mgmt_req_fnc}),
        .dma1_mgmt_req_msc(pcie_qdma_mailbox_0_pcie_mgmt_req_msc),
        .dma1_mgmt_req_rdy(pcie_qdma_mailbox_0_pcie_mgmt_req_rdy),
        .dma1_mgmt_req_vld(pcie_qdma_mailbox_0_pcie_mgmt_req_vld),
        .dma1_qsts_out_data(dma1_qsts_out_0_data),
        .dma1_qsts_out_op(dma1_qsts_out_0_op),
        .dma1_qsts_out_port_id(dma1_qsts_out_0_port_id),
        .dma1_qsts_out_qid(dma1_qsts_out_0_qid),
        .dma1_qsts_out_rdy(dma1_qsts_out_0_rdy),
        .dma1_qsts_out_vld(dma1_qsts_out_0_vld),
        .dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_0_cmpt_type),
        .dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_0_col_idx),
        .dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_0_data),
        .dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_0_dpar),
        .dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_0_err_idx),
        .dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_0_marker),
        .dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_0_no_wrb_marker),
        .dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_0_port_id),
        .dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_0_qid),
        .dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_0_size),
        .dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_0_tready),
        .dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_0_tvalid),
        .dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_0_user_trig),
        .dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id),
        .dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_0_ctrl_has_cmpt),
        .dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_0_ctrl_len),
        .dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_0_ctrl_marker),
        .dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_0_ctrl_port_id),
        .dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_0_ctrl_qid),
        .dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_0_ecc),
        .dma1_s_axis_c2h_mty(dma1_s_axis_c2h_0_mty),
        .dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_0_tcrc),
        .dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_0_tdata),
        .dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_0_tlast),
        .dma1_s_axis_c2h_tready(dma1_s_axis_c2h_0_tready),
        .dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_0_tvalid),
        .dma1_st_rx_msg_tdata(dma1_st_rx_msg_0_tdata),
        .dma1_st_rx_msg_tlast(dma1_st_rx_msg_0_tlast),
        .dma1_st_rx_msg_tready(dma1_st_rx_msg_0_tready),
        .dma1_st_rx_msg_tvalid(dma1_st_rx_msg_0_tvalid),
        .dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_0_avl),
        .dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_0_byp),
        .dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_0_dir),
        .dma1_tm_dsc_sts_error(dma1_tm_dsc_sts_0_error),
        .dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_0_irq_arm),
        .dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_0_mm),
        .dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_0_pidx),
        .dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_0_port_id),
        .dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_0_qen),
        .dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_0_qid),
        .dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_0_qinv),
        .dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_0_rdy),
        .dma1_tm_dsc_sts_valid(dma1_tm_dsc_sts_0_valid),
        .dma1_usr_flr_clear(pcie_qdma_mailbox_0_dma_flr_clear),
        .dma1_usr_flr_done_fnc({1'b0,pcie_qdma_mailbox_0_dma_flr_done_fnc}),
        .dma1_usr_flr_done_vld(pcie_qdma_mailbox_0_dma_flr_done_vld),
        .dma1_usr_flr_fnc(pcie_qdma_mailbox_0_dma_flr_fnc),
        .dma1_usr_flr_set(pcie_qdma_mailbox_0_dma_flr_set),
        .dma1_usr_irq_ack(pcie_qdma_mailbox_0_dma_usr_irq_ack),
        .dma1_usr_irq_fail(pcie_qdma_mailbox_0_dma_usr_irq_fail),
        .dma1_usr_irq_fnc({1'b0,pcie_qdma_mailbox_0_dma_usr_irq_fnc}),
        .dma1_usr_irq_valid(pcie_qdma_mailbox_0_dma_usr_irq_valid),
        .dma1_usr_irq_vec({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pcie_qdma_mailbox_0_dma_usr_irq_vec}),
        .gt_refclk1_clk_n(gt_refclk1_0_clk_n),
        .gt_refclk1_clk_p(gt_refclk1_0_clk_p),
        .pl0_ref_clk(versal_cips_0_pl0_ref_clk),
        .pl1_ref_clk(versal_cips_0_pl1_ref_clk));
  cpm_pcie_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  cpm_pcie_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  cpm_pcie_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  cpm_pcie_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  cpm_pcie_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  cpm_pcie_xpm_cdc_gen_0_0 xpm_cdc_gen_0
       (.dest_clk(clk_out2_0),
        .dest_out(dest_out_0),
        .src_clk(versal_cips_0_pl0_ref_clk),
        .src_in(axi_gpio_0_gpio_io_o));
endmodule
