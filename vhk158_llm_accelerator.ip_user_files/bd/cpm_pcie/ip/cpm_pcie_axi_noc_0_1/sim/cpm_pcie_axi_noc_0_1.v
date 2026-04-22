// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axi_noc:1.1
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module cpm_pcie_axi_noc_0_1 (
  S00_AXI_awaddr,
  S00_AXI_awlen,
  S00_AXI_awsize,
  S00_AXI_awburst,
  S00_AXI_awlock,
  S00_AXI_awcache,
  S00_AXI_awprot,
  S00_AXI_awregion,
  S00_AXI_awqos,
  S00_AXI_awvalid,
  S00_AXI_awready,
  S00_AXI_wdata,
  S00_AXI_wstrb,
  S00_AXI_wlast,
  S00_AXI_wvalid,
  S00_AXI_wready,
  S00_AXI_bresp,
  S00_AXI_bvalid,
  S00_AXI_bready,
  S00_AXI_araddr,
  S00_AXI_arlen,
  S00_AXI_arsize,
  S00_AXI_arburst,
  S00_AXI_arlock,
  S00_AXI_arcache,
  S00_AXI_arprot,
  S00_AXI_arregion,
  S00_AXI_arqos,
  S00_AXI_arvalid,
  S00_AXI_arready,
  S00_AXI_rdata,
  S00_AXI_rresp,
  S00_AXI_rlast,
  S00_AXI_rvalid,
  S00_AXI_rready,
  S01_AXI_awaddr,
  S01_AXI_awlen,
  S01_AXI_awsize,
  S01_AXI_awburst,
  S01_AXI_awlock,
  S01_AXI_awcache,
  S01_AXI_awprot,
  S01_AXI_awregion,
  S01_AXI_awqos,
  S01_AXI_awvalid,
  S01_AXI_awready,
  S01_AXI_wdata,
  S01_AXI_wstrb,
  S01_AXI_wlast,
  S01_AXI_wvalid,
  S01_AXI_wready,
  S01_AXI_bresp,
  S01_AXI_bvalid,
  S01_AXI_bready,
  S01_AXI_araddr,
  S01_AXI_arlen,
  S01_AXI_arsize,
  S01_AXI_arburst,
  S01_AXI_arlock,
  S01_AXI_arcache,
  S01_AXI_arprot,
  S01_AXI_arregion,
  S01_AXI_arqos,
  S01_AXI_arvalid,
  S01_AXI_arready,
  S01_AXI_rdata,
  S01_AXI_rresp,
  S01_AXI_rlast,
  S01_AXI_rvalid,
  S01_AXI_rready,
  HBM00_AXI_awaddr,
  HBM00_AXI_awlen,
  HBM00_AXI_awsize,
  HBM00_AXI_awburst,
  HBM00_AXI_awlock,
  HBM00_AXI_awcache,
  HBM00_AXI_awprot,
  HBM00_AXI_awvalid,
  HBM00_AXI_awready,
  HBM00_AXI_wdata,
  HBM00_AXI_wstrb,
  HBM00_AXI_wlast,
  HBM00_AXI_wvalid,
  HBM00_AXI_wready,
  HBM00_AXI_bresp,
  HBM00_AXI_bvalid,
  HBM00_AXI_bready,
  HBM00_AXI_araddr,
  HBM00_AXI_arlen,
  HBM00_AXI_arsize,
  HBM00_AXI_arburst,
  HBM00_AXI_arlock,
  HBM00_AXI_arcache,
  HBM00_AXI_arprot,
  HBM00_AXI_arvalid,
  HBM00_AXI_arready,
  HBM00_AXI_rdata,
  HBM00_AXI_rresp,
  HBM00_AXI_rlast,
  HBM00_AXI_rvalid,
  HBM00_AXI_rready,
  HBM01_AXI_awaddr,
  HBM01_AXI_awlen,
  HBM01_AXI_awsize,
  HBM01_AXI_awburst,
  HBM01_AXI_awlock,
  HBM01_AXI_awcache,
  HBM01_AXI_awprot,
  HBM01_AXI_awvalid,
  HBM01_AXI_awready,
  HBM01_AXI_wdata,
  HBM01_AXI_wstrb,
  HBM01_AXI_wlast,
  HBM01_AXI_wvalid,
  HBM01_AXI_wready,
  HBM01_AXI_bresp,
  HBM01_AXI_bvalid,
  HBM01_AXI_bready,
  HBM01_AXI_araddr,
  HBM01_AXI_arlen,
  HBM01_AXI_arsize,
  HBM01_AXI_arburst,
  HBM01_AXI_arlock,
  HBM01_AXI_arcache,
  HBM01_AXI_arprot,
  HBM01_AXI_arvalid,
  HBM01_AXI_arready,
  HBM01_AXI_rdata,
  HBM01_AXI_rresp,
  HBM01_AXI_rlast,
  HBM01_AXI_rvalid,
  HBM01_AXI_rready,
  HBM02_AXI_awaddr,
  HBM02_AXI_awlen,
  HBM02_AXI_awsize,
  HBM02_AXI_awburst,
  HBM02_AXI_awlock,
  HBM02_AXI_awcache,
  HBM02_AXI_awprot,
  HBM02_AXI_awvalid,
  HBM02_AXI_awready,
  HBM02_AXI_wdata,
  HBM02_AXI_wstrb,
  HBM02_AXI_wlast,
  HBM02_AXI_wvalid,
  HBM02_AXI_wready,
  HBM02_AXI_bresp,
  HBM02_AXI_bvalid,
  HBM02_AXI_bready,
  HBM02_AXI_araddr,
  HBM02_AXI_arlen,
  HBM02_AXI_arsize,
  HBM02_AXI_arburst,
  HBM02_AXI_arlock,
  HBM02_AXI_arcache,
  HBM02_AXI_arprot,
  HBM02_AXI_arvalid,
  HBM02_AXI_arready,
  HBM02_AXI_rdata,
  HBM02_AXI_rresp,
  HBM02_AXI_rlast,
  HBM02_AXI_rvalid,
  HBM02_AXI_rready,
  HBM03_AXI_awaddr,
  HBM03_AXI_awlen,
  HBM03_AXI_awsize,
  HBM03_AXI_awburst,
  HBM03_AXI_awlock,
  HBM03_AXI_awcache,
  HBM03_AXI_awprot,
  HBM03_AXI_awvalid,
  HBM03_AXI_awready,
  HBM03_AXI_wdata,
  HBM03_AXI_wstrb,
  HBM03_AXI_wlast,
  HBM03_AXI_wvalid,
  HBM03_AXI_wready,
  HBM03_AXI_bresp,
  HBM03_AXI_bvalid,
  HBM03_AXI_bready,
  HBM03_AXI_araddr,
  HBM03_AXI_arlen,
  HBM03_AXI_arsize,
  HBM03_AXI_arburst,
  HBM03_AXI_arlock,
  HBM03_AXI_arcache,
  HBM03_AXI_arprot,
  HBM03_AXI_arvalid,
  HBM03_AXI_arready,
  HBM03_AXI_rdata,
  HBM03_AXI_rresp,
  HBM03_AXI_rlast,
  HBM03_AXI_rvalid,
  HBM03_AXI_rready,
  HBM04_AXI_awaddr,
  HBM04_AXI_awlen,
  HBM04_AXI_awsize,
  HBM04_AXI_awburst,
  HBM04_AXI_awlock,
  HBM04_AXI_awcache,
  HBM04_AXI_awprot,
  HBM04_AXI_awvalid,
  HBM04_AXI_awready,
  HBM04_AXI_wdata,
  HBM04_AXI_wstrb,
  HBM04_AXI_wlast,
  HBM04_AXI_wvalid,
  HBM04_AXI_wready,
  HBM04_AXI_bresp,
  HBM04_AXI_bvalid,
  HBM04_AXI_bready,
  HBM04_AXI_araddr,
  HBM04_AXI_arlen,
  HBM04_AXI_arsize,
  HBM04_AXI_arburst,
  HBM04_AXI_arlock,
  HBM04_AXI_arcache,
  HBM04_AXI_arprot,
  HBM04_AXI_arvalid,
  HBM04_AXI_arready,
  HBM04_AXI_rdata,
  HBM04_AXI_rresp,
  HBM04_AXI_rlast,
  HBM04_AXI_rvalid,
  HBM04_AXI_rready,
  HBM05_AXI_awaddr,
  HBM05_AXI_awlen,
  HBM05_AXI_awsize,
  HBM05_AXI_awburst,
  HBM05_AXI_awlock,
  HBM05_AXI_awcache,
  HBM05_AXI_awprot,
  HBM05_AXI_awvalid,
  HBM05_AXI_awready,
  HBM05_AXI_wdata,
  HBM05_AXI_wstrb,
  HBM05_AXI_wlast,
  HBM05_AXI_wvalid,
  HBM05_AXI_wready,
  HBM05_AXI_bresp,
  HBM05_AXI_bvalid,
  HBM05_AXI_bready,
  HBM05_AXI_araddr,
  HBM05_AXI_arlen,
  HBM05_AXI_arsize,
  HBM05_AXI_arburst,
  HBM05_AXI_arlock,
  HBM05_AXI_arcache,
  HBM05_AXI_arprot,
  HBM05_AXI_arvalid,
  HBM05_AXI_arready,
  HBM05_AXI_rdata,
  HBM05_AXI_rresp,
  HBM05_AXI_rlast,
  HBM05_AXI_rvalid,
  HBM05_AXI_rready,
  HBM06_AXI_awaddr,
  HBM06_AXI_awlen,
  HBM06_AXI_awsize,
  HBM06_AXI_awburst,
  HBM06_AXI_awlock,
  HBM06_AXI_awcache,
  HBM06_AXI_awprot,
  HBM06_AXI_awvalid,
  HBM06_AXI_awready,
  HBM06_AXI_wdata,
  HBM06_AXI_wstrb,
  HBM06_AXI_wlast,
  HBM06_AXI_wvalid,
  HBM06_AXI_wready,
  HBM06_AXI_bresp,
  HBM06_AXI_bvalid,
  HBM06_AXI_bready,
  HBM06_AXI_araddr,
  HBM06_AXI_arlen,
  HBM06_AXI_arsize,
  HBM06_AXI_arburst,
  HBM06_AXI_arlock,
  HBM06_AXI_arcache,
  HBM06_AXI_arprot,
  HBM06_AXI_arvalid,
  HBM06_AXI_arready,
  HBM06_AXI_rdata,
  HBM06_AXI_rresp,
  HBM06_AXI_rlast,
  HBM06_AXI_rvalid,
  HBM06_AXI_rready,
  HBM07_AXI_awaddr,
  HBM07_AXI_awlen,
  HBM07_AXI_awsize,
  HBM07_AXI_awburst,
  HBM07_AXI_awlock,
  HBM07_AXI_awcache,
  HBM07_AXI_awprot,
  HBM07_AXI_awvalid,
  HBM07_AXI_awready,
  HBM07_AXI_wdata,
  HBM07_AXI_wstrb,
  HBM07_AXI_wlast,
  HBM07_AXI_wvalid,
  HBM07_AXI_wready,
  HBM07_AXI_bresp,
  HBM07_AXI_bvalid,
  HBM07_AXI_bready,
  HBM07_AXI_araddr,
  HBM07_AXI_arlen,
  HBM07_AXI_arsize,
  HBM07_AXI_arburst,
  HBM07_AXI_arlock,
  HBM07_AXI_arcache,
  HBM07_AXI_arprot,
  HBM07_AXI_arvalid,
  HBM07_AXI_arready,
  HBM07_AXI_rdata,
  HBM07_AXI_rresp,
  HBM07_AXI_rlast,
  HBM07_AXI_rvalid,
  HBM07_AXI_rready,
  HBM08_AXI_awaddr,
  HBM08_AXI_awlen,
  HBM08_AXI_awsize,
  HBM08_AXI_awburst,
  HBM08_AXI_awlock,
  HBM08_AXI_awcache,
  HBM08_AXI_awprot,
  HBM08_AXI_awvalid,
  HBM08_AXI_awready,
  HBM08_AXI_wdata,
  HBM08_AXI_wstrb,
  HBM08_AXI_wlast,
  HBM08_AXI_wvalid,
  HBM08_AXI_wready,
  HBM08_AXI_bresp,
  HBM08_AXI_bvalid,
  HBM08_AXI_bready,
  HBM08_AXI_araddr,
  HBM08_AXI_arlen,
  HBM08_AXI_arsize,
  HBM08_AXI_arburst,
  HBM08_AXI_arlock,
  HBM08_AXI_arcache,
  HBM08_AXI_arprot,
  HBM08_AXI_arvalid,
  HBM08_AXI_arready,
  HBM08_AXI_rdata,
  HBM08_AXI_rresp,
  HBM08_AXI_rlast,
  HBM08_AXI_rvalid,
  HBM08_AXI_rready,
  HBM09_AXI_awaddr,
  HBM09_AXI_awlen,
  HBM09_AXI_awsize,
  HBM09_AXI_awburst,
  HBM09_AXI_awlock,
  HBM09_AXI_awcache,
  HBM09_AXI_awprot,
  HBM09_AXI_awvalid,
  HBM09_AXI_awready,
  HBM09_AXI_wdata,
  HBM09_AXI_wstrb,
  HBM09_AXI_wlast,
  HBM09_AXI_wvalid,
  HBM09_AXI_wready,
  HBM09_AXI_bresp,
  HBM09_AXI_bvalid,
  HBM09_AXI_bready,
  HBM09_AXI_araddr,
  HBM09_AXI_arlen,
  HBM09_AXI_arsize,
  HBM09_AXI_arburst,
  HBM09_AXI_arlock,
  HBM09_AXI_arcache,
  HBM09_AXI_arprot,
  HBM09_AXI_arvalid,
  HBM09_AXI_arready,
  HBM09_AXI_rdata,
  HBM09_AXI_rresp,
  HBM09_AXI_rlast,
  HBM09_AXI_rvalid,
  HBM09_AXI_rready,
  HBM10_AXI_awaddr,
  HBM10_AXI_awlen,
  HBM10_AXI_awsize,
  HBM10_AXI_awburst,
  HBM10_AXI_awlock,
  HBM10_AXI_awcache,
  HBM10_AXI_awprot,
  HBM10_AXI_awvalid,
  HBM10_AXI_awready,
  HBM10_AXI_wdata,
  HBM10_AXI_wstrb,
  HBM10_AXI_wlast,
  HBM10_AXI_wvalid,
  HBM10_AXI_wready,
  HBM10_AXI_bresp,
  HBM10_AXI_bvalid,
  HBM10_AXI_bready,
  HBM10_AXI_araddr,
  HBM10_AXI_arlen,
  HBM10_AXI_arsize,
  HBM10_AXI_arburst,
  HBM10_AXI_arlock,
  HBM10_AXI_arcache,
  HBM10_AXI_arprot,
  HBM10_AXI_arvalid,
  HBM10_AXI_arready,
  HBM10_AXI_rdata,
  HBM10_AXI_rresp,
  HBM10_AXI_rlast,
  HBM10_AXI_rvalid,
  HBM10_AXI_rready,
  HBM11_AXI_awaddr,
  HBM11_AXI_awlen,
  HBM11_AXI_awsize,
  HBM11_AXI_awburst,
  HBM11_AXI_awlock,
  HBM11_AXI_awcache,
  HBM11_AXI_awprot,
  HBM11_AXI_awvalid,
  HBM11_AXI_awready,
  HBM11_AXI_wdata,
  HBM11_AXI_wstrb,
  HBM11_AXI_wlast,
  HBM11_AXI_wvalid,
  HBM11_AXI_wready,
  HBM11_AXI_bresp,
  HBM11_AXI_bvalid,
  HBM11_AXI_bready,
  HBM11_AXI_araddr,
  HBM11_AXI_arlen,
  HBM11_AXI_arsize,
  HBM11_AXI_arburst,
  HBM11_AXI_arlock,
  HBM11_AXI_arcache,
  HBM11_AXI_arprot,
  HBM11_AXI_arvalid,
  HBM11_AXI_arready,
  HBM11_AXI_rdata,
  HBM11_AXI_rresp,
  HBM11_AXI_rlast,
  HBM11_AXI_rvalid,
  HBM11_AXI_rready,
  HBM12_AXI_awaddr,
  HBM12_AXI_awlen,
  HBM12_AXI_awsize,
  HBM12_AXI_awburst,
  HBM12_AXI_awlock,
  HBM12_AXI_awcache,
  HBM12_AXI_awprot,
  HBM12_AXI_awvalid,
  HBM12_AXI_awready,
  HBM12_AXI_wdata,
  HBM12_AXI_wstrb,
  HBM12_AXI_wlast,
  HBM12_AXI_wvalid,
  HBM12_AXI_wready,
  HBM12_AXI_bresp,
  HBM12_AXI_bvalid,
  HBM12_AXI_bready,
  HBM12_AXI_araddr,
  HBM12_AXI_arlen,
  HBM12_AXI_arsize,
  HBM12_AXI_arburst,
  HBM12_AXI_arlock,
  HBM12_AXI_arcache,
  HBM12_AXI_arprot,
  HBM12_AXI_arvalid,
  HBM12_AXI_arready,
  HBM12_AXI_rdata,
  HBM12_AXI_rresp,
  HBM12_AXI_rlast,
  HBM12_AXI_rvalid,
  HBM12_AXI_rready,
  HBM13_AXI_awaddr,
  HBM13_AXI_awlen,
  HBM13_AXI_awsize,
  HBM13_AXI_awburst,
  HBM13_AXI_awlock,
  HBM13_AXI_awcache,
  HBM13_AXI_awprot,
  HBM13_AXI_awvalid,
  HBM13_AXI_awready,
  HBM13_AXI_wdata,
  HBM13_AXI_wstrb,
  HBM13_AXI_wlast,
  HBM13_AXI_wvalid,
  HBM13_AXI_wready,
  HBM13_AXI_bresp,
  HBM13_AXI_bvalid,
  HBM13_AXI_bready,
  HBM13_AXI_araddr,
  HBM13_AXI_arlen,
  HBM13_AXI_arsize,
  HBM13_AXI_arburst,
  HBM13_AXI_arlock,
  HBM13_AXI_arcache,
  HBM13_AXI_arprot,
  HBM13_AXI_arvalid,
  HBM13_AXI_arready,
  HBM13_AXI_rdata,
  HBM13_AXI_rresp,
  HBM13_AXI_rlast,
  HBM13_AXI_rvalid,
  HBM13_AXI_rready,
  HBM14_AXI_awaddr,
  HBM14_AXI_awlen,
  HBM14_AXI_awsize,
  HBM14_AXI_awburst,
  HBM14_AXI_awlock,
  HBM14_AXI_awcache,
  HBM14_AXI_awprot,
  HBM14_AXI_awvalid,
  HBM14_AXI_awready,
  HBM14_AXI_wdata,
  HBM14_AXI_wstrb,
  HBM14_AXI_wlast,
  HBM14_AXI_wvalid,
  HBM14_AXI_wready,
  HBM14_AXI_bresp,
  HBM14_AXI_bvalid,
  HBM14_AXI_bready,
  HBM14_AXI_araddr,
  HBM14_AXI_arlen,
  HBM14_AXI_arsize,
  HBM14_AXI_arburst,
  HBM14_AXI_arlock,
  HBM14_AXI_arcache,
  HBM14_AXI_arprot,
  HBM14_AXI_arvalid,
  HBM14_AXI_arready,
  HBM14_AXI_rdata,
  HBM14_AXI_rresp,
  HBM14_AXI_rlast,
  HBM14_AXI_rvalid,
  HBM14_AXI_rready,
  HBM15_AXI_awaddr,
  HBM15_AXI_awlen,
  HBM15_AXI_awsize,
  HBM15_AXI_awburst,
  HBM15_AXI_awlock,
  HBM15_AXI_awcache,
  HBM15_AXI_awprot,
  HBM15_AXI_awvalid,
  HBM15_AXI_awready,
  HBM15_AXI_wdata,
  HBM15_AXI_wstrb,
  HBM15_AXI_wlast,
  HBM15_AXI_wvalid,
  HBM15_AXI_wready,
  HBM15_AXI_bresp,
  HBM15_AXI_bvalid,
  HBM15_AXI_bready,
  HBM15_AXI_araddr,
  HBM15_AXI_arlen,
  HBM15_AXI_arsize,
  HBM15_AXI_arburst,
  HBM15_AXI_arlock,
  HBM15_AXI_arcache,
  HBM15_AXI_arprot,
  HBM15_AXI_arvalid,
  HBM15_AXI_arready,
  HBM15_AXI_rdata,
  HBM15_AXI_rresp,
  HBM15_AXI_rlast,
  HBM15_AXI_rvalid,
  HBM15_AXI_rready,
  HBM16_AXI_awaddr,
  HBM16_AXI_awlen,
  HBM16_AXI_awsize,
  HBM16_AXI_awburst,
  HBM16_AXI_awlock,
  HBM16_AXI_awcache,
  HBM16_AXI_awprot,
  HBM16_AXI_awvalid,
  HBM16_AXI_awready,
  HBM16_AXI_wdata,
  HBM16_AXI_wstrb,
  HBM16_AXI_wlast,
  HBM16_AXI_wvalid,
  HBM16_AXI_wready,
  HBM16_AXI_bresp,
  HBM16_AXI_bvalid,
  HBM16_AXI_bready,
  HBM16_AXI_araddr,
  HBM16_AXI_arlen,
  HBM16_AXI_arsize,
  HBM16_AXI_arburst,
  HBM16_AXI_arlock,
  HBM16_AXI_arcache,
  HBM16_AXI_arprot,
  HBM16_AXI_arvalid,
  HBM16_AXI_arready,
  HBM16_AXI_rdata,
  HBM16_AXI_rresp,
  HBM16_AXI_rlast,
  HBM16_AXI_rvalid,
  HBM16_AXI_rready,
  HBM17_AXI_awaddr,
  HBM17_AXI_awlen,
  HBM17_AXI_awsize,
  HBM17_AXI_awburst,
  HBM17_AXI_awlock,
  HBM17_AXI_awcache,
  HBM17_AXI_awprot,
  HBM17_AXI_awvalid,
  HBM17_AXI_awready,
  HBM17_AXI_wdata,
  HBM17_AXI_wstrb,
  HBM17_AXI_wlast,
  HBM17_AXI_wvalid,
  HBM17_AXI_wready,
  HBM17_AXI_bresp,
  HBM17_AXI_bvalid,
  HBM17_AXI_bready,
  HBM17_AXI_araddr,
  HBM17_AXI_arlen,
  HBM17_AXI_arsize,
  HBM17_AXI_arburst,
  HBM17_AXI_arlock,
  HBM17_AXI_arcache,
  HBM17_AXI_arprot,
  HBM17_AXI_arvalid,
  HBM17_AXI_arready,
  HBM17_AXI_rdata,
  HBM17_AXI_rresp,
  HBM17_AXI_rlast,
  HBM17_AXI_rvalid,
  HBM17_AXI_rready,
  HBM18_AXI_awaddr,
  HBM18_AXI_awlen,
  HBM18_AXI_awsize,
  HBM18_AXI_awburst,
  HBM18_AXI_awlock,
  HBM18_AXI_awcache,
  HBM18_AXI_awprot,
  HBM18_AXI_awvalid,
  HBM18_AXI_awready,
  HBM18_AXI_wdata,
  HBM18_AXI_wstrb,
  HBM18_AXI_wlast,
  HBM18_AXI_wvalid,
  HBM18_AXI_wready,
  HBM18_AXI_bresp,
  HBM18_AXI_bvalid,
  HBM18_AXI_bready,
  HBM18_AXI_araddr,
  HBM18_AXI_arlen,
  HBM18_AXI_arsize,
  HBM18_AXI_arburst,
  HBM18_AXI_arlock,
  HBM18_AXI_arcache,
  HBM18_AXI_arprot,
  HBM18_AXI_arvalid,
  HBM18_AXI_arready,
  HBM18_AXI_rdata,
  HBM18_AXI_rresp,
  HBM18_AXI_rlast,
  HBM18_AXI_rvalid,
  HBM18_AXI_rready,
  HBM19_AXI_awaddr,
  HBM19_AXI_awlen,
  HBM19_AXI_awsize,
  HBM19_AXI_awburst,
  HBM19_AXI_awlock,
  HBM19_AXI_awcache,
  HBM19_AXI_awprot,
  HBM19_AXI_awvalid,
  HBM19_AXI_awready,
  HBM19_AXI_wdata,
  HBM19_AXI_wstrb,
  HBM19_AXI_wlast,
  HBM19_AXI_wvalid,
  HBM19_AXI_wready,
  HBM19_AXI_bresp,
  HBM19_AXI_bvalid,
  HBM19_AXI_bready,
  HBM19_AXI_araddr,
  HBM19_AXI_arlen,
  HBM19_AXI_arsize,
  HBM19_AXI_arburst,
  HBM19_AXI_arlock,
  HBM19_AXI_arcache,
  HBM19_AXI_arprot,
  HBM19_AXI_arvalid,
  HBM19_AXI_arready,
  HBM19_AXI_rdata,
  HBM19_AXI_rresp,
  HBM19_AXI_rlast,
  HBM19_AXI_rvalid,
  HBM19_AXI_rready,
  HBM20_AXI_awaddr,
  HBM20_AXI_awlen,
  HBM20_AXI_awsize,
  HBM20_AXI_awburst,
  HBM20_AXI_awlock,
  HBM20_AXI_awcache,
  HBM20_AXI_awprot,
  HBM20_AXI_awvalid,
  HBM20_AXI_awready,
  HBM20_AXI_wdata,
  HBM20_AXI_wstrb,
  HBM20_AXI_wlast,
  HBM20_AXI_wvalid,
  HBM20_AXI_wready,
  HBM20_AXI_bresp,
  HBM20_AXI_bvalid,
  HBM20_AXI_bready,
  HBM20_AXI_araddr,
  HBM20_AXI_arlen,
  HBM20_AXI_arsize,
  HBM20_AXI_arburst,
  HBM20_AXI_arlock,
  HBM20_AXI_arcache,
  HBM20_AXI_arprot,
  HBM20_AXI_arvalid,
  HBM20_AXI_arready,
  HBM20_AXI_rdata,
  HBM20_AXI_rresp,
  HBM20_AXI_rlast,
  HBM20_AXI_rvalid,
  HBM20_AXI_rready,
  HBM21_AXI_awaddr,
  HBM21_AXI_awlen,
  HBM21_AXI_awsize,
  HBM21_AXI_awburst,
  HBM21_AXI_awlock,
  HBM21_AXI_awcache,
  HBM21_AXI_awprot,
  HBM21_AXI_awvalid,
  HBM21_AXI_awready,
  HBM21_AXI_wdata,
  HBM21_AXI_wstrb,
  HBM21_AXI_wlast,
  HBM21_AXI_wvalid,
  HBM21_AXI_wready,
  HBM21_AXI_bresp,
  HBM21_AXI_bvalid,
  HBM21_AXI_bready,
  HBM21_AXI_araddr,
  HBM21_AXI_arlen,
  HBM21_AXI_arsize,
  HBM21_AXI_arburst,
  HBM21_AXI_arlock,
  HBM21_AXI_arcache,
  HBM21_AXI_arprot,
  HBM21_AXI_arvalid,
  HBM21_AXI_arready,
  HBM21_AXI_rdata,
  HBM21_AXI_rresp,
  HBM21_AXI_rlast,
  HBM21_AXI_rvalid,
  HBM21_AXI_rready,
  HBM22_AXI_awaddr,
  HBM22_AXI_awlen,
  HBM22_AXI_awsize,
  HBM22_AXI_awburst,
  HBM22_AXI_awlock,
  HBM22_AXI_awcache,
  HBM22_AXI_awprot,
  HBM22_AXI_awvalid,
  HBM22_AXI_awready,
  HBM22_AXI_wdata,
  HBM22_AXI_wstrb,
  HBM22_AXI_wlast,
  HBM22_AXI_wvalid,
  HBM22_AXI_wready,
  HBM22_AXI_bresp,
  HBM22_AXI_bvalid,
  HBM22_AXI_bready,
  HBM22_AXI_araddr,
  HBM22_AXI_arlen,
  HBM22_AXI_arsize,
  HBM22_AXI_arburst,
  HBM22_AXI_arlock,
  HBM22_AXI_arcache,
  HBM22_AXI_arprot,
  HBM22_AXI_arvalid,
  HBM22_AXI_arready,
  HBM22_AXI_rdata,
  HBM22_AXI_rresp,
  HBM22_AXI_rlast,
  HBM22_AXI_rvalid,
  HBM22_AXI_rready,
  HBM23_AXI_awaddr,
  HBM23_AXI_awlen,
  HBM23_AXI_awsize,
  HBM23_AXI_awburst,
  HBM23_AXI_awlock,
  HBM23_AXI_awcache,
  HBM23_AXI_awprot,
  HBM23_AXI_awvalid,
  HBM23_AXI_awready,
  HBM23_AXI_wdata,
  HBM23_AXI_wstrb,
  HBM23_AXI_wlast,
  HBM23_AXI_wvalid,
  HBM23_AXI_wready,
  HBM23_AXI_bresp,
  HBM23_AXI_bvalid,
  HBM23_AXI_bready,
  HBM23_AXI_araddr,
  HBM23_AXI_arlen,
  HBM23_AXI_arsize,
  HBM23_AXI_arburst,
  HBM23_AXI_arlock,
  HBM23_AXI_arcache,
  HBM23_AXI_arprot,
  HBM23_AXI_arvalid,
  HBM23_AXI_arready,
  HBM23_AXI_rdata,
  HBM23_AXI_rresp,
  HBM23_AXI_rlast,
  HBM23_AXI_rvalid,
  HBM23_AXI_rready,
  HBM24_AXI_awaddr,
  HBM24_AXI_awlen,
  HBM24_AXI_awsize,
  HBM24_AXI_awburst,
  HBM24_AXI_awlock,
  HBM24_AXI_awcache,
  HBM24_AXI_awprot,
  HBM24_AXI_awvalid,
  HBM24_AXI_awready,
  HBM24_AXI_wdata,
  HBM24_AXI_wstrb,
  HBM24_AXI_wlast,
  HBM24_AXI_wvalid,
  HBM24_AXI_wready,
  HBM24_AXI_bresp,
  HBM24_AXI_bvalid,
  HBM24_AXI_bready,
  HBM24_AXI_araddr,
  HBM24_AXI_arlen,
  HBM24_AXI_arsize,
  HBM24_AXI_arburst,
  HBM24_AXI_arlock,
  HBM24_AXI_arcache,
  HBM24_AXI_arprot,
  HBM24_AXI_arvalid,
  HBM24_AXI_arready,
  HBM24_AXI_rdata,
  HBM24_AXI_rresp,
  HBM24_AXI_rlast,
  HBM24_AXI_rvalid,
  HBM24_AXI_rready,
  HBM25_AXI_awaddr,
  HBM25_AXI_awlen,
  HBM25_AXI_awsize,
  HBM25_AXI_awburst,
  HBM25_AXI_awlock,
  HBM25_AXI_awcache,
  HBM25_AXI_awprot,
  HBM25_AXI_awvalid,
  HBM25_AXI_awready,
  HBM25_AXI_wdata,
  HBM25_AXI_wstrb,
  HBM25_AXI_wlast,
  HBM25_AXI_wvalid,
  HBM25_AXI_wready,
  HBM25_AXI_bresp,
  HBM25_AXI_bvalid,
  HBM25_AXI_bready,
  HBM25_AXI_araddr,
  HBM25_AXI_arlen,
  HBM25_AXI_arsize,
  HBM25_AXI_arburst,
  HBM25_AXI_arlock,
  HBM25_AXI_arcache,
  HBM25_AXI_arprot,
  HBM25_AXI_arvalid,
  HBM25_AXI_arready,
  HBM25_AXI_rdata,
  HBM25_AXI_rresp,
  HBM25_AXI_rlast,
  HBM25_AXI_rvalid,
  HBM25_AXI_rready,
  HBM26_AXI_awaddr,
  HBM26_AXI_awlen,
  HBM26_AXI_awsize,
  HBM26_AXI_awburst,
  HBM26_AXI_awlock,
  HBM26_AXI_awcache,
  HBM26_AXI_awprot,
  HBM26_AXI_awvalid,
  HBM26_AXI_awready,
  HBM26_AXI_wdata,
  HBM26_AXI_wstrb,
  HBM26_AXI_wlast,
  HBM26_AXI_wvalid,
  HBM26_AXI_wready,
  HBM26_AXI_bresp,
  HBM26_AXI_bvalid,
  HBM26_AXI_bready,
  HBM26_AXI_araddr,
  HBM26_AXI_arlen,
  HBM26_AXI_arsize,
  HBM26_AXI_arburst,
  HBM26_AXI_arlock,
  HBM26_AXI_arcache,
  HBM26_AXI_arprot,
  HBM26_AXI_arvalid,
  HBM26_AXI_arready,
  HBM26_AXI_rdata,
  HBM26_AXI_rresp,
  HBM26_AXI_rlast,
  HBM26_AXI_rvalid,
  HBM26_AXI_rready,
  HBM27_AXI_awaddr,
  HBM27_AXI_awlen,
  HBM27_AXI_awsize,
  HBM27_AXI_awburst,
  HBM27_AXI_awlock,
  HBM27_AXI_awcache,
  HBM27_AXI_awprot,
  HBM27_AXI_awvalid,
  HBM27_AXI_awready,
  HBM27_AXI_wdata,
  HBM27_AXI_wstrb,
  HBM27_AXI_wlast,
  HBM27_AXI_wvalid,
  HBM27_AXI_wready,
  HBM27_AXI_bresp,
  HBM27_AXI_bvalid,
  HBM27_AXI_bready,
  HBM27_AXI_araddr,
  HBM27_AXI_arlen,
  HBM27_AXI_arsize,
  HBM27_AXI_arburst,
  HBM27_AXI_arlock,
  HBM27_AXI_arcache,
  HBM27_AXI_arprot,
  HBM27_AXI_arvalid,
  HBM27_AXI_arready,
  HBM27_AXI_rdata,
  HBM27_AXI_rresp,
  HBM27_AXI_rlast,
  HBM27_AXI_rvalid,
  HBM27_AXI_rready,
  HBM28_AXI_awaddr,
  HBM28_AXI_awlen,
  HBM28_AXI_awsize,
  HBM28_AXI_awburst,
  HBM28_AXI_awlock,
  HBM28_AXI_awcache,
  HBM28_AXI_awprot,
  HBM28_AXI_awvalid,
  HBM28_AXI_awready,
  HBM28_AXI_wdata,
  HBM28_AXI_wstrb,
  HBM28_AXI_wlast,
  HBM28_AXI_wvalid,
  HBM28_AXI_wready,
  HBM28_AXI_bresp,
  HBM28_AXI_bvalid,
  HBM28_AXI_bready,
  HBM28_AXI_araddr,
  HBM28_AXI_arlen,
  HBM28_AXI_arsize,
  HBM28_AXI_arburst,
  HBM28_AXI_arlock,
  HBM28_AXI_arcache,
  HBM28_AXI_arprot,
  HBM28_AXI_arvalid,
  HBM28_AXI_arready,
  HBM28_AXI_rdata,
  HBM28_AXI_rresp,
  HBM28_AXI_rlast,
  HBM28_AXI_rvalid,
  HBM28_AXI_rready,
  HBM29_AXI_awaddr,
  HBM29_AXI_awlen,
  HBM29_AXI_awsize,
  HBM29_AXI_awburst,
  HBM29_AXI_awlock,
  HBM29_AXI_awcache,
  HBM29_AXI_awprot,
  HBM29_AXI_awvalid,
  HBM29_AXI_awready,
  HBM29_AXI_wdata,
  HBM29_AXI_wstrb,
  HBM29_AXI_wlast,
  HBM29_AXI_wvalid,
  HBM29_AXI_wready,
  HBM29_AXI_bresp,
  HBM29_AXI_bvalid,
  HBM29_AXI_bready,
  HBM29_AXI_araddr,
  HBM29_AXI_arlen,
  HBM29_AXI_arsize,
  HBM29_AXI_arburst,
  HBM29_AXI_arlock,
  HBM29_AXI_arcache,
  HBM29_AXI_arprot,
  HBM29_AXI_arvalid,
  HBM29_AXI_arready,
  HBM29_AXI_rdata,
  HBM29_AXI_rresp,
  HBM29_AXI_rlast,
  HBM29_AXI_rvalid,
  HBM29_AXI_rready,
  HBM30_AXI_awaddr,
  HBM30_AXI_awlen,
  HBM30_AXI_awsize,
  HBM30_AXI_awburst,
  HBM30_AXI_awlock,
  HBM30_AXI_awcache,
  HBM30_AXI_awprot,
  HBM30_AXI_awvalid,
  HBM30_AXI_awready,
  HBM30_AXI_wdata,
  HBM30_AXI_wstrb,
  HBM30_AXI_wlast,
  HBM30_AXI_wvalid,
  HBM30_AXI_wready,
  HBM30_AXI_bresp,
  HBM30_AXI_bvalid,
  HBM30_AXI_bready,
  HBM30_AXI_araddr,
  HBM30_AXI_arlen,
  HBM30_AXI_arsize,
  HBM30_AXI_arburst,
  HBM30_AXI_arlock,
  HBM30_AXI_arcache,
  HBM30_AXI_arprot,
  HBM30_AXI_arvalid,
  HBM30_AXI_arready,
  HBM30_AXI_rdata,
  HBM30_AXI_rresp,
  HBM30_AXI_rlast,
  HBM30_AXI_rvalid,
  HBM30_AXI_rready,
  HBM31_AXI_awaddr,
  HBM31_AXI_awlen,
  HBM31_AXI_awsize,
  HBM31_AXI_awburst,
  HBM31_AXI_awlock,
  HBM31_AXI_awcache,
  HBM31_AXI_awprot,
  HBM31_AXI_awvalid,
  HBM31_AXI_awready,
  HBM31_AXI_wdata,
  HBM31_AXI_wstrb,
  HBM31_AXI_wlast,
  HBM31_AXI_wvalid,
  HBM31_AXI_wready,
  HBM31_AXI_bresp,
  HBM31_AXI_bvalid,
  HBM31_AXI_bready,
  HBM31_AXI_araddr,
  HBM31_AXI_arlen,
  HBM31_AXI_arsize,
  HBM31_AXI_arburst,
  HBM31_AXI_arlock,
  HBM31_AXI_arcache,
  HBM31_AXI_arprot,
  HBM31_AXI_arvalid,
  HBM31_AXI_arready,
  HBM31_AXI_rdata,
  HBM31_AXI_rresp,
  HBM31_AXI_rlast,
  HBM31_AXI_rvalid,
  HBM31_AXI_rready,
  M00_AXI_awaddr,
  M00_AXI_awlen,
  M00_AXI_awsize,
  M00_AXI_awburst,
  M00_AXI_awlock,
  M00_AXI_awcache,
  M00_AXI_awprot,
  M00_AXI_awregion,
  M00_AXI_awqos,
  M00_AXI_awvalid,
  M00_AXI_awready,
  M00_AXI_wdata,
  M00_AXI_wstrb,
  M00_AXI_wlast,
  M00_AXI_wvalid,
  M00_AXI_wready,
  M00_AXI_bresp,
  M00_AXI_bvalid,
  M00_AXI_bready,
  M00_AXI_araddr,
  M00_AXI_arlen,
  M00_AXI_arsize,
  M00_AXI_arburst,
  M00_AXI_arlock,
  M00_AXI_arcache,
  M00_AXI_arprot,
  M00_AXI_arregion,
  M00_AXI_arqos,
  M00_AXI_arvalid,
  M00_AXI_arready,
  M00_AXI_rdata,
  M00_AXI_rresp,
  M00_AXI_rlast,
  M00_AXI_rvalid,
  M00_AXI_rready,
  M01_AXI_awaddr,
  M01_AXI_awlen,
  M01_AXI_awsize,
  M01_AXI_awburst,
  M01_AXI_awlock,
  M01_AXI_awcache,
  M01_AXI_awprot,
  M01_AXI_awregion,
  M01_AXI_awqos,
  M01_AXI_awvalid,
  M01_AXI_awready,
  M01_AXI_wdata,
  M01_AXI_wstrb,
  M01_AXI_wlast,
  M01_AXI_wvalid,
  M01_AXI_wready,
  M01_AXI_bresp,
  M01_AXI_bvalid,
  M01_AXI_bready,
  M01_AXI_araddr,
  M01_AXI_arlen,
  M01_AXI_arsize,
  M01_AXI_arburst,
  M01_AXI_arlock,
  M01_AXI_arcache,
  M01_AXI_arprot,
  M01_AXI_arregion,
  M01_AXI_arqos,
  M01_AXI_arvalid,
  M01_AXI_arready,
  M01_AXI_rdata,
  M01_AXI_rresp,
  M01_AXI_rlast,
  M01_AXI_rvalid,
  M01_AXI_rready,
  M02_AXI_awaddr,
  M02_AXI_awlen,
  M02_AXI_awsize,
  M02_AXI_awburst,
  M02_AXI_awlock,
  M02_AXI_awcache,
  M02_AXI_awprot,
  M02_AXI_awregion,
  M02_AXI_awqos,
  M02_AXI_awvalid,
  M02_AXI_awready,
  M02_AXI_wdata,
  M02_AXI_wstrb,
  M02_AXI_wlast,
  M02_AXI_wvalid,
  M02_AXI_wready,
  M02_AXI_bresp,
  M02_AXI_bvalid,
  M02_AXI_bready,
  M02_AXI_araddr,
  M02_AXI_arlen,
  M02_AXI_arsize,
  M02_AXI_arburst,
  M02_AXI_arlock,
  M02_AXI_arcache,
  M02_AXI_arprot,
  M02_AXI_arregion,
  M02_AXI_arqos,
  M02_AXI_arvalid,
  M02_AXI_arready,
  M02_AXI_rdata,
  M02_AXI_rresp,
  M02_AXI_rlast,
  M02_AXI_rvalid,
  M02_AXI_rready,
  M03_AXI_awaddr,
  M03_AXI_awlen,
  M03_AXI_awsize,
  M03_AXI_awburst,
  M03_AXI_awlock,
  M03_AXI_awcache,
  M03_AXI_awprot,
  M03_AXI_awregion,
  M03_AXI_awqos,
  M03_AXI_awvalid,
  M03_AXI_awready,
  M03_AXI_wdata,
  M03_AXI_wstrb,
  M03_AXI_wlast,
  M03_AXI_wvalid,
  M03_AXI_wready,
  M03_AXI_bresp,
  M03_AXI_bvalid,
  M03_AXI_bready,
  M03_AXI_araddr,
  M03_AXI_arlen,
  M03_AXI_arsize,
  M03_AXI_arburst,
  M03_AXI_arlock,
  M03_AXI_arcache,
  M03_AXI_arprot,
  M03_AXI_arregion,
  M03_AXI_arqos,
  M03_AXI_arvalid,
  M03_AXI_arready,
  M03_AXI_rdata,
  M03_AXI_rresp,
  M03_AXI_rlast,
  M03_AXI_rvalid,
  M03_AXI_rready,
  aclk0,
  aclk1,
  aclk2,
  aclk3,
  sys_clk0_clk_p,
  sys_clk0_clk_n,
  CH0_DDR4_0_dq,
  CH0_DDR4_0_dqs_t,
  CH0_DDR4_0_dqs_c,
  CH0_DDR4_0_adr,
  CH0_DDR4_0_ba,
  CH0_DDR4_0_bg,
  CH0_DDR4_0_act_n,
  CH0_DDR4_0_reset_n,
  CH0_DDR4_0_ck_t,
  CH0_DDR4_0_ck_c,
  CH0_DDR4_0_cke,
  CH0_DDR4_0_cs_n,
  CH0_DDR4_0_odt,
  CH0_DDR4_0_par,
  CH0_DDR4_0_alert_n,
  sys_clk1_clk_p,
  sys_clk1_clk_n,
  CH0_DDR4_1_dq,
  CH0_DDR4_1_dqs_t,
  CH0_DDR4_1_dqs_c,
  CH0_DDR4_1_adr,
  CH0_DDR4_1_ba,
  CH0_DDR4_1_bg,
  CH0_DDR4_1_act_n,
  CH0_DDR4_1_reset_n,
  CH0_DDR4_1_ck_t,
  CH0_DDR4_1_ck_c,
  CH0_DDR4_1_cke,
  CH0_DDR4_1_cs_n,
  CH0_DDR4_1_odt,
  CH0_DDR4_1_par,
  CH0_DDR4_1_alert_n,
  S01_AXI_arid,
  S01_AXI_aruser,
  S01_AXI_awid,
  S01_AXI_awuser,
  S01_AXI_bid,
  S01_AXI_rid,
  S01_AXI_ruser,
  S01_AXI_wuser,
  S00_AXI_arid,
  S00_AXI_aruser,
  S00_AXI_awid,
  S00_AXI_awuser,
  S00_AXI_bid,
  S00_AXI_rid,
  S00_AXI_ruser,
  S00_AXI_wuser,
  HBM28_AXI_arid,
  HBM28_AXI_aruser,
  HBM28_AXI_awid,
  HBM28_AXI_awuser,
  HBM28_AXI_bid,
  HBM28_AXI_buser,
  HBM28_AXI_rid,
  HBM27_AXI_arid,
  HBM27_AXI_aruser,
  HBM27_AXI_awid,
  HBM27_AXI_awuser,
  HBM27_AXI_bid,
  HBM27_AXI_buser,
  HBM27_AXI_rid,
  HBM25_AXI_arid,
  HBM25_AXI_aruser,
  HBM25_AXI_awid,
  HBM25_AXI_awuser,
  HBM25_AXI_bid,
  HBM25_AXI_buser,
  HBM25_AXI_rid,
  HBM24_AXI_arid,
  HBM24_AXI_aruser,
  HBM24_AXI_awid,
  HBM24_AXI_awuser,
  HBM24_AXI_bid,
  HBM24_AXI_buser,
  HBM24_AXI_rid,
  HBM23_AXI_arid,
  HBM23_AXI_aruser,
  HBM23_AXI_awid,
  HBM23_AXI_awuser,
  HBM23_AXI_bid,
  HBM23_AXI_buser,
  HBM23_AXI_rid,
  HBM20_AXI_arid,
  HBM20_AXI_aruser,
  HBM20_AXI_awid,
  HBM20_AXI_awuser,
  HBM20_AXI_bid,
  HBM20_AXI_buser,
  HBM20_AXI_rid,
  HBM19_AXI_arid,
  HBM19_AXI_aruser,
  HBM19_AXI_awid,
  HBM19_AXI_awuser,
  HBM19_AXI_bid,
  HBM19_AXI_buser,
  HBM19_AXI_rid,
  HBM18_AXI_arid,
  HBM18_AXI_aruser,
  HBM18_AXI_awid,
  HBM18_AXI_awuser,
  HBM18_AXI_bid,
  HBM18_AXI_buser,
  HBM18_AXI_rid,
  HBM17_AXI_arid,
  HBM17_AXI_aruser,
  HBM17_AXI_awid,
  HBM17_AXI_awuser,
  HBM17_AXI_bid,
  HBM17_AXI_buser,
  HBM17_AXI_rid,
  HBM21_AXI_arid,
  HBM21_AXI_aruser,
  HBM21_AXI_awid,
  HBM21_AXI_awuser,
  HBM21_AXI_bid,
  HBM21_AXI_buser,
  HBM21_AXI_rid,
  HBM16_AXI_arid,
  HBM16_AXI_aruser,
  HBM16_AXI_awid,
  HBM16_AXI_awuser,
  HBM16_AXI_bid,
  HBM16_AXI_buser,
  HBM16_AXI_rid,
  HBM05_AXI_arid,
  HBM05_AXI_aruser,
  HBM05_AXI_awid,
  HBM05_AXI_awuser,
  HBM05_AXI_bid,
  HBM05_AXI_buser,
  HBM05_AXI_rid,
  HBM04_AXI_arid,
  HBM04_AXI_aruser,
  HBM04_AXI_awid,
  HBM04_AXI_awuser,
  HBM04_AXI_bid,
  HBM04_AXI_buser,
  HBM04_AXI_rid,
  HBM08_AXI_arid,
  HBM08_AXI_aruser,
  HBM08_AXI_awid,
  HBM08_AXI_awuser,
  HBM08_AXI_bid,
  HBM08_AXI_buser,
  HBM08_AXI_rid,
  HBM03_AXI_arid,
  HBM03_AXI_aruser,
  HBM03_AXI_awid,
  HBM03_AXI_awuser,
  HBM03_AXI_bid,
  HBM03_AXI_buser,
  HBM03_AXI_rid,
  HBM02_AXI_arid,
  HBM02_AXI_aruser,
  HBM02_AXI_awid,
  HBM02_AXI_awuser,
  HBM02_AXI_bid,
  HBM02_AXI_buser,
  HBM02_AXI_rid,
  HBM31_AXI_arid,
  HBM31_AXI_aruser,
  HBM31_AXI_awid,
  HBM31_AXI_awuser,
  HBM31_AXI_bid,
  HBM31_AXI_buser,
  HBM31_AXI_rid,
  HBM00_AXI_arid,
  HBM00_AXI_aruser,
  HBM00_AXI_awid,
  HBM00_AXI_awuser,
  HBM00_AXI_bid,
  HBM00_AXI_buser,
  HBM00_AXI_rid,
  HBM26_AXI_arid,
  HBM26_AXI_aruser,
  HBM26_AXI_awid,
  HBM26_AXI_awuser,
  HBM26_AXI_bid,
  HBM26_AXI_buser,
  HBM26_AXI_rid,
  HBM01_AXI_arid,
  HBM01_AXI_aruser,
  HBM01_AXI_awid,
  HBM01_AXI_awuser,
  HBM01_AXI_bid,
  HBM01_AXI_buser,
  HBM01_AXI_rid,
  HBM06_AXI_arid,
  HBM06_AXI_aruser,
  HBM06_AXI_awid,
  HBM06_AXI_awuser,
  HBM06_AXI_bid,
  HBM06_AXI_buser,
  HBM06_AXI_rid,
  HBM10_AXI_arid,
  HBM10_AXI_aruser,
  HBM10_AXI_awid,
  HBM10_AXI_awuser,
  HBM10_AXI_bid,
  HBM10_AXI_buser,
  HBM10_AXI_rid,
  HBM29_AXI_arid,
  HBM29_AXI_aruser,
  HBM29_AXI_awid,
  HBM29_AXI_awuser,
  HBM29_AXI_bid,
  HBM29_AXI_buser,
  HBM29_AXI_rid,
  HBM11_AXI_arid,
  HBM11_AXI_aruser,
  HBM11_AXI_awid,
  HBM11_AXI_awuser,
  HBM11_AXI_bid,
  HBM11_AXI_buser,
  HBM11_AXI_rid,
  HBM22_AXI_arid,
  HBM22_AXI_aruser,
  HBM22_AXI_awid,
  HBM22_AXI_awuser,
  HBM22_AXI_bid,
  HBM22_AXI_buser,
  HBM22_AXI_rid,
  HBM15_AXI_arid,
  HBM15_AXI_aruser,
  HBM15_AXI_awid,
  HBM15_AXI_awuser,
  HBM15_AXI_bid,
  HBM15_AXI_buser,
  HBM15_AXI_rid,
  HBM12_AXI_arid,
  HBM12_AXI_aruser,
  HBM12_AXI_awid,
  HBM12_AXI_awuser,
  HBM12_AXI_bid,
  HBM12_AXI_buser,
  HBM12_AXI_rid,
  HBM30_AXI_arid,
  HBM30_AXI_aruser,
  HBM30_AXI_awid,
  HBM30_AXI_awuser,
  HBM30_AXI_bid,
  HBM30_AXI_buser,
  HBM30_AXI_rid,
  HBM13_AXI_arid,
  HBM13_AXI_aruser,
  HBM13_AXI_awid,
  HBM13_AXI_awuser,
  HBM13_AXI_bid,
  HBM13_AXI_buser,
  HBM13_AXI_rid,
  HBM07_AXI_arid,
  HBM07_AXI_aruser,
  HBM07_AXI_awid,
  HBM07_AXI_awuser,
  HBM07_AXI_bid,
  HBM07_AXI_buser,
  HBM07_AXI_rid,
  HBM09_AXI_arid,
  HBM09_AXI_aruser,
  HBM09_AXI_awid,
  HBM09_AXI_awuser,
  HBM09_AXI_bid,
  HBM09_AXI_buser,
  HBM09_AXI_rid,
  HBM14_AXI_arid,
  HBM14_AXI_aruser,
  HBM14_AXI_awid,
  HBM14_AXI_awuser,
  HBM14_AXI_bid,
  HBM14_AXI_buser,
  HBM14_AXI_rid,
  M00_AXI_arid,
  M00_AXI_aruser,
  M00_AXI_awid,
  M00_AXI_awuser,
  M00_AXI_bid,
  M00_AXI_rid,
  M03_AXI_arid,
  M03_AXI_aruser,
  M03_AXI_awid,
  M03_AXI_awuser,
  M03_AXI_bid,
  M03_AXI_rid,
  M01_AXI_arid,
  M01_AXI_aruser,
  M01_AXI_awid,
  M01_AXI_awuser,
  M01_AXI_bid,
  M01_AXI_rid,
  M02_AXI_arid,
  M02_AXI_aruser,
  M02_AXI_awid,
  M02_AXI_awuser,
  M02_AXI_bid,
  M02_AXI_rid
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1000000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi0_clk, NUM_READ_T\
HREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM10_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM15_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M01_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {\
4}} HBM10_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM5_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM15_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM5_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM1_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM1_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM6_POR\
T0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM12_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM0_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM6_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM14_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM12_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M02_AXI {read_bw {1\
00} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM0_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM8_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM8_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM14_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM3_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM3_PORT2 {read_bw {100} write_bw \
{100} read_avg_burst {4} write_avg_burst {4}} HBM4_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M03_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM4_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} MC_0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM9_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM2_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4\
} write_avg_burst {4}} HBM11_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM9_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM11_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM7_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM13_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM7_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg\
_burst {4}} HBM13_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM2_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M00_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}}, DEST_IDS M01_AXI:0x80:M02_AXI:0xc0:M03_AXI:0x40:M00_AXI:0x100, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY ps_pcie" *)
input wire [63 : 0] S00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *)
input wire [7 : 0] S00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *)
input wire [2 : 0] S00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *)
input wire [1 : 0] S00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *)
input wire [0 : 0] S00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *)
input wire [3 : 0] S00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] S00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *)
input wire [3 : 0] S00_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *)
input wire [3 : 0] S00_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire [0 : 0] S00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire [0 : 0] S00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [127 : 0] S00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [15 : 0] S00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *)
input wire [0 : 0] S00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire [0 : 0] S00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire [0 : 0] S00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] S00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire [0 : 0] S00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire [0 : 0] S00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [63 : 0] S00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *)
input wire [7 : 0] S00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *)
input wire [2 : 0] S00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *)
input wire [1 : 0] S00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *)
input wire [0 : 0] S00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *)
input wire [3 : 0] S00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] S00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *)
input wire [3 : 0] S00_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *)
input wire [3 : 0] S00_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire [0 : 0] S00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire [0 : 0] S00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [127 : 0] S00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] S00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *)
output wire [0 : 0] S00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire [0 : 0] S00_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire [0 : 0] S00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1000000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi1_clk, NUM_READ_T\
HREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM10_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM15_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M01_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {\
4}} HBM10_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM5_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM15_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM5_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM1_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM1_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM6_POR\
T0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM12_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM0_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM6_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM14_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM12_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M02_AXI {read_bw {1\
00} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM0_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM8_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM8_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM14_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM3_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM3_PORT2 {read_bw {100} write_bw \
{100} read_avg_burst {4} write_avg_burst {4}} HBM4_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M03_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM4_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} MC_0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM9_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM2_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4\
} write_avg_burst {4}} HBM11_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM9_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM11_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM7_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM13_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM7_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg\
_burst {4}} HBM13_PORT0 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} HBM2_PORT2 {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}} M00_AXI {read_bw {100} write_bw {100} read_avg_burst {4} write_avg_burst {4}}, DEST_IDS M01_AXI:0x80:M02_AXI:0xc0:M03_AXI:0x40:M00_AXI:0x100, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY ps_pcie" *)
input wire [63 : 0] S01_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *)
input wire [7 : 0] S01_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *)
input wire [2 : 0] S01_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *)
input wire [1 : 0] S01_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *)
input wire [0 : 0] S01_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *)
input wire [3 : 0] S01_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *)
input wire [2 : 0] S01_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *)
input wire [3 : 0] S01_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *)
input wire [3 : 0] S01_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *)
input wire [0 : 0] S01_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *)
output wire [0 : 0] S01_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *)
input wire [127 : 0] S01_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *)
input wire [15 : 0] S01_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *)
input wire [0 : 0] S01_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *)
input wire [0 : 0] S01_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *)
output wire [0 : 0] S01_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *)
output wire [1 : 0] S01_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *)
output wire [0 : 0] S01_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *)
input wire [0 : 0] S01_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *)
input wire [63 : 0] S01_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *)
input wire [7 : 0] S01_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *)
input wire [2 : 0] S01_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *)
input wire [1 : 0] S01_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *)
input wire [0 : 0] S01_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *)
input wire [3 : 0] S01_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *)
input wire [2 : 0] S01_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *)
input wire [3 : 0] S01_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *)
input wire [3 : 0] S01_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *)
input wire [0 : 0] S01_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *)
output wire [0 : 0] S01_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *)
output wire [127 : 0] S01_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *)
output wire [1 : 0] S01_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *)
output wire [0 : 0] S01_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *)
output wire [0 : 0] S01_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *)
input wire [0 : 0] S01_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM00_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM0_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWLEN" *)
input wire [7 : 0] HBM00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWSIZE" *)
input wire [2 : 0] HBM00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWBURST" *)
input wire [1 : 0] HBM00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWLOCK" *)
input wire [0 : 0] HBM00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWCACHE" *)
input wire [3 : 0] HBM00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWPROT" *)
input wire [2 : 0] HBM00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWVALID" *)
input wire [0 : 0] HBM00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWREADY" *)
output wire [0 : 0] HBM00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WDATA" *)
input wire [255 : 0] HBM00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WSTRB" *)
input wire [31 : 0] HBM00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WLAST" *)
input wire [0 : 0] HBM00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WVALID" *)
input wire [0 : 0] HBM00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI WREADY" *)
output wire [0 : 0] HBM00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BRESP" *)
output wire [1 : 0] HBM00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BVALID" *)
output wire [0 : 0] HBM00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BREADY" *)
input wire [0 : 0] HBM00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARADDR" *)
input wire [63 : 0] HBM00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARLEN" *)
input wire [7 : 0] HBM00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARSIZE" *)
input wire [2 : 0] HBM00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARBURST" *)
input wire [1 : 0] HBM00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARLOCK" *)
input wire [0 : 0] HBM00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARCACHE" *)
input wire [3 : 0] HBM00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARPROT" *)
input wire [2 : 0] HBM00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARVALID" *)
input wire [0 : 0] HBM00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARREADY" *)
output wire [0 : 0] HBM00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RDATA" *)
output wire [255 : 0] HBM00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RRESP" *)
output wire [1 : 0] HBM00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RLAST" *)
output wire [0 : 0] HBM00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RVALID" *)
output wire [0 : 0] HBM00_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RREADY" *)
input wire [0 : 0] HBM00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM01_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM0_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM01_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWLEN" *)
input wire [7 : 0] HBM01_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWSIZE" *)
input wire [2 : 0] HBM01_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWBURST" *)
input wire [1 : 0] HBM01_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWLOCK" *)
input wire [0 : 0] HBM01_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWCACHE" *)
input wire [3 : 0] HBM01_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWPROT" *)
input wire [2 : 0] HBM01_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWVALID" *)
input wire [0 : 0] HBM01_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWREADY" *)
output wire [0 : 0] HBM01_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WDATA" *)
input wire [255 : 0] HBM01_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WSTRB" *)
input wire [31 : 0] HBM01_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WLAST" *)
input wire [0 : 0] HBM01_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WVALID" *)
input wire [0 : 0] HBM01_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI WREADY" *)
output wire [0 : 0] HBM01_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BRESP" *)
output wire [1 : 0] HBM01_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BVALID" *)
output wire [0 : 0] HBM01_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BREADY" *)
input wire [0 : 0] HBM01_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARADDR" *)
input wire [63 : 0] HBM01_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARLEN" *)
input wire [7 : 0] HBM01_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARSIZE" *)
input wire [2 : 0] HBM01_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARBURST" *)
input wire [1 : 0] HBM01_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARLOCK" *)
input wire [0 : 0] HBM01_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARCACHE" *)
input wire [3 : 0] HBM01_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARPROT" *)
input wire [2 : 0] HBM01_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARVALID" *)
input wire [0 : 0] HBM01_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARREADY" *)
output wire [0 : 0] HBM01_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RDATA" *)
output wire [255 : 0] HBM01_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RRESP" *)
output wire [1 : 0] HBM01_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RLAST" *)
output wire [0 : 0] HBM01_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RVALID" *)
output wire [0 : 0] HBM01_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RREADY" *)
input wire [0 : 0] HBM01_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM02_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM1_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM02_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWLEN" *)
input wire [7 : 0] HBM02_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWSIZE" *)
input wire [2 : 0] HBM02_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWBURST" *)
input wire [1 : 0] HBM02_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWLOCK" *)
input wire [0 : 0] HBM02_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWCACHE" *)
input wire [3 : 0] HBM02_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWPROT" *)
input wire [2 : 0] HBM02_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWVALID" *)
input wire [0 : 0] HBM02_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWREADY" *)
output wire [0 : 0] HBM02_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WDATA" *)
input wire [255 : 0] HBM02_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WSTRB" *)
input wire [31 : 0] HBM02_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WLAST" *)
input wire [0 : 0] HBM02_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WVALID" *)
input wire [0 : 0] HBM02_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI WREADY" *)
output wire [0 : 0] HBM02_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BRESP" *)
output wire [1 : 0] HBM02_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BVALID" *)
output wire [0 : 0] HBM02_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BREADY" *)
input wire [0 : 0] HBM02_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARADDR" *)
input wire [63 : 0] HBM02_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARLEN" *)
input wire [7 : 0] HBM02_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARSIZE" *)
input wire [2 : 0] HBM02_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARBURST" *)
input wire [1 : 0] HBM02_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARLOCK" *)
input wire [0 : 0] HBM02_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARCACHE" *)
input wire [3 : 0] HBM02_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARPROT" *)
input wire [2 : 0] HBM02_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARVALID" *)
input wire [0 : 0] HBM02_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARREADY" *)
output wire [0 : 0] HBM02_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RDATA" *)
output wire [255 : 0] HBM02_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RRESP" *)
output wire [1 : 0] HBM02_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RLAST" *)
output wire [0 : 0] HBM02_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RVALID" *)
output wire [0 : 0] HBM02_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RREADY" *)
input wire [0 : 0] HBM02_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM03_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM1_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM03_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWLEN" *)
input wire [7 : 0] HBM03_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWSIZE" *)
input wire [2 : 0] HBM03_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWBURST" *)
input wire [1 : 0] HBM03_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWLOCK" *)
input wire [0 : 0] HBM03_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWCACHE" *)
input wire [3 : 0] HBM03_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWPROT" *)
input wire [2 : 0] HBM03_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWVALID" *)
input wire [0 : 0] HBM03_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWREADY" *)
output wire [0 : 0] HBM03_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WDATA" *)
input wire [255 : 0] HBM03_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WSTRB" *)
input wire [31 : 0] HBM03_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WLAST" *)
input wire [0 : 0] HBM03_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WVALID" *)
input wire [0 : 0] HBM03_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI WREADY" *)
output wire [0 : 0] HBM03_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BRESP" *)
output wire [1 : 0] HBM03_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BVALID" *)
output wire [0 : 0] HBM03_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BREADY" *)
input wire [0 : 0] HBM03_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARADDR" *)
input wire [63 : 0] HBM03_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARLEN" *)
input wire [7 : 0] HBM03_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARSIZE" *)
input wire [2 : 0] HBM03_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARBURST" *)
input wire [1 : 0] HBM03_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARLOCK" *)
input wire [0 : 0] HBM03_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARCACHE" *)
input wire [3 : 0] HBM03_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARPROT" *)
input wire [2 : 0] HBM03_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARVALID" *)
input wire [0 : 0] HBM03_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARREADY" *)
output wire [0 : 0] HBM03_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RDATA" *)
output wire [255 : 0] HBM03_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RRESP" *)
output wire [1 : 0] HBM03_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RLAST" *)
output wire [0 : 0] HBM03_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RVALID" *)
output wire [0 : 0] HBM03_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RREADY" *)
input wire [0 : 0] HBM03_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM04_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM2_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM04_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWLEN" *)
input wire [7 : 0] HBM04_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWSIZE" *)
input wire [2 : 0] HBM04_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWBURST" *)
input wire [1 : 0] HBM04_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWLOCK" *)
input wire [0 : 0] HBM04_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWCACHE" *)
input wire [3 : 0] HBM04_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWPROT" *)
input wire [2 : 0] HBM04_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWVALID" *)
input wire [0 : 0] HBM04_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWREADY" *)
output wire [0 : 0] HBM04_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WDATA" *)
input wire [255 : 0] HBM04_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WSTRB" *)
input wire [31 : 0] HBM04_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WLAST" *)
input wire [0 : 0] HBM04_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WVALID" *)
input wire [0 : 0] HBM04_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI WREADY" *)
output wire [0 : 0] HBM04_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BRESP" *)
output wire [1 : 0] HBM04_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BVALID" *)
output wire [0 : 0] HBM04_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BREADY" *)
input wire [0 : 0] HBM04_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARADDR" *)
input wire [63 : 0] HBM04_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARLEN" *)
input wire [7 : 0] HBM04_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARSIZE" *)
input wire [2 : 0] HBM04_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARBURST" *)
input wire [1 : 0] HBM04_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARLOCK" *)
input wire [0 : 0] HBM04_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARCACHE" *)
input wire [3 : 0] HBM04_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARPROT" *)
input wire [2 : 0] HBM04_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARVALID" *)
input wire [0 : 0] HBM04_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARREADY" *)
output wire [0 : 0] HBM04_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RDATA" *)
output wire [255 : 0] HBM04_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RRESP" *)
output wire [1 : 0] HBM04_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RLAST" *)
output wire [0 : 0] HBM04_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RVALID" *)
output wire [0 : 0] HBM04_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RREADY" *)
input wire [0 : 0] HBM04_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM05_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM2_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM05_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWLEN" *)
input wire [7 : 0] HBM05_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWSIZE" *)
input wire [2 : 0] HBM05_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWBURST" *)
input wire [1 : 0] HBM05_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWLOCK" *)
input wire [0 : 0] HBM05_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWCACHE" *)
input wire [3 : 0] HBM05_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWPROT" *)
input wire [2 : 0] HBM05_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWVALID" *)
input wire [0 : 0] HBM05_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWREADY" *)
output wire [0 : 0] HBM05_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WDATA" *)
input wire [255 : 0] HBM05_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WSTRB" *)
input wire [31 : 0] HBM05_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WLAST" *)
input wire [0 : 0] HBM05_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WVALID" *)
input wire [0 : 0] HBM05_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI WREADY" *)
output wire [0 : 0] HBM05_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BRESP" *)
output wire [1 : 0] HBM05_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BVALID" *)
output wire [0 : 0] HBM05_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BREADY" *)
input wire [0 : 0] HBM05_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARADDR" *)
input wire [63 : 0] HBM05_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARLEN" *)
input wire [7 : 0] HBM05_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARSIZE" *)
input wire [2 : 0] HBM05_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARBURST" *)
input wire [1 : 0] HBM05_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARLOCK" *)
input wire [0 : 0] HBM05_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARCACHE" *)
input wire [3 : 0] HBM05_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARPROT" *)
input wire [2 : 0] HBM05_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARVALID" *)
input wire [0 : 0] HBM05_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARREADY" *)
output wire [0 : 0] HBM05_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RDATA" *)
output wire [255 : 0] HBM05_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RRESP" *)
output wire [1 : 0] HBM05_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RLAST" *)
output wire [0 : 0] HBM05_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RVALID" *)
output wire [0 : 0] HBM05_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RREADY" *)
input wire [0 : 0] HBM05_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM06_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM3_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM06_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWLEN" *)
input wire [7 : 0] HBM06_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWSIZE" *)
input wire [2 : 0] HBM06_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWBURST" *)
input wire [1 : 0] HBM06_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWLOCK" *)
input wire [0 : 0] HBM06_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWCACHE" *)
input wire [3 : 0] HBM06_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWPROT" *)
input wire [2 : 0] HBM06_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWVALID" *)
input wire [0 : 0] HBM06_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWREADY" *)
output wire [0 : 0] HBM06_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WDATA" *)
input wire [255 : 0] HBM06_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WSTRB" *)
input wire [31 : 0] HBM06_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WLAST" *)
input wire [0 : 0] HBM06_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WVALID" *)
input wire [0 : 0] HBM06_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI WREADY" *)
output wire [0 : 0] HBM06_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BRESP" *)
output wire [1 : 0] HBM06_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BVALID" *)
output wire [0 : 0] HBM06_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BREADY" *)
input wire [0 : 0] HBM06_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARADDR" *)
input wire [63 : 0] HBM06_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARLEN" *)
input wire [7 : 0] HBM06_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARSIZE" *)
input wire [2 : 0] HBM06_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARBURST" *)
input wire [1 : 0] HBM06_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARLOCK" *)
input wire [0 : 0] HBM06_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARCACHE" *)
input wire [3 : 0] HBM06_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARPROT" *)
input wire [2 : 0] HBM06_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARVALID" *)
input wire [0 : 0] HBM06_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARREADY" *)
output wire [0 : 0] HBM06_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RDATA" *)
output wire [255 : 0] HBM06_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RRESP" *)
output wire [1 : 0] HBM06_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RLAST" *)
output wire [0 : 0] HBM06_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RVALID" *)
output wire [0 : 0] HBM06_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RREADY" *)
input wire [0 : 0] HBM06_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM07_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM3_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM07_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWLEN" *)
input wire [7 : 0] HBM07_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWSIZE" *)
input wire [2 : 0] HBM07_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWBURST" *)
input wire [1 : 0] HBM07_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWLOCK" *)
input wire [0 : 0] HBM07_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWCACHE" *)
input wire [3 : 0] HBM07_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWPROT" *)
input wire [2 : 0] HBM07_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWVALID" *)
input wire [0 : 0] HBM07_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWREADY" *)
output wire [0 : 0] HBM07_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WDATA" *)
input wire [255 : 0] HBM07_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WSTRB" *)
input wire [31 : 0] HBM07_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WLAST" *)
input wire [0 : 0] HBM07_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WVALID" *)
input wire [0 : 0] HBM07_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI WREADY" *)
output wire [0 : 0] HBM07_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BRESP" *)
output wire [1 : 0] HBM07_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BVALID" *)
output wire [0 : 0] HBM07_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BREADY" *)
input wire [0 : 0] HBM07_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARADDR" *)
input wire [63 : 0] HBM07_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARLEN" *)
input wire [7 : 0] HBM07_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARSIZE" *)
input wire [2 : 0] HBM07_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARBURST" *)
input wire [1 : 0] HBM07_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARLOCK" *)
input wire [0 : 0] HBM07_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARCACHE" *)
input wire [3 : 0] HBM07_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARPROT" *)
input wire [2 : 0] HBM07_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARVALID" *)
input wire [0 : 0] HBM07_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARREADY" *)
output wire [0 : 0] HBM07_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RDATA" *)
output wire [255 : 0] HBM07_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RRESP" *)
output wire [1 : 0] HBM07_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RLAST" *)
output wire [0 : 0] HBM07_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RVALID" *)
output wire [0 : 0] HBM07_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RREADY" *)
input wire [0 : 0] HBM07_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM08_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM4_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM08_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWLEN" *)
input wire [7 : 0] HBM08_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWSIZE" *)
input wire [2 : 0] HBM08_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWBURST" *)
input wire [1 : 0] HBM08_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWLOCK" *)
input wire [0 : 0] HBM08_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWCACHE" *)
input wire [3 : 0] HBM08_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWPROT" *)
input wire [2 : 0] HBM08_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWVALID" *)
input wire [0 : 0] HBM08_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWREADY" *)
output wire [0 : 0] HBM08_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WDATA" *)
input wire [255 : 0] HBM08_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WSTRB" *)
input wire [31 : 0] HBM08_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WLAST" *)
input wire [0 : 0] HBM08_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WVALID" *)
input wire [0 : 0] HBM08_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI WREADY" *)
output wire [0 : 0] HBM08_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BRESP" *)
output wire [1 : 0] HBM08_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BVALID" *)
output wire [0 : 0] HBM08_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BREADY" *)
input wire [0 : 0] HBM08_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARADDR" *)
input wire [63 : 0] HBM08_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARLEN" *)
input wire [7 : 0] HBM08_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARSIZE" *)
input wire [2 : 0] HBM08_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARBURST" *)
input wire [1 : 0] HBM08_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARLOCK" *)
input wire [0 : 0] HBM08_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARCACHE" *)
input wire [3 : 0] HBM08_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARPROT" *)
input wire [2 : 0] HBM08_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARVALID" *)
input wire [0 : 0] HBM08_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARREADY" *)
output wire [0 : 0] HBM08_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RDATA" *)
output wire [255 : 0] HBM08_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RRESP" *)
output wire [1 : 0] HBM08_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RLAST" *)
output wire [0 : 0] HBM08_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RVALID" *)
output wire [0 : 0] HBM08_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RREADY" *)
input wire [0 : 0] HBM08_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM09_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM4_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM09_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWLEN" *)
input wire [7 : 0] HBM09_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWSIZE" *)
input wire [2 : 0] HBM09_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWBURST" *)
input wire [1 : 0] HBM09_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWLOCK" *)
input wire [0 : 0] HBM09_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWCACHE" *)
input wire [3 : 0] HBM09_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWPROT" *)
input wire [2 : 0] HBM09_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWVALID" *)
input wire [0 : 0] HBM09_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWREADY" *)
output wire [0 : 0] HBM09_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WDATA" *)
input wire [255 : 0] HBM09_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WSTRB" *)
input wire [31 : 0] HBM09_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WLAST" *)
input wire [0 : 0] HBM09_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WVALID" *)
input wire [0 : 0] HBM09_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI WREADY" *)
output wire [0 : 0] HBM09_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BRESP" *)
output wire [1 : 0] HBM09_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BVALID" *)
output wire [0 : 0] HBM09_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BREADY" *)
input wire [0 : 0] HBM09_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARADDR" *)
input wire [63 : 0] HBM09_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARLEN" *)
input wire [7 : 0] HBM09_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARSIZE" *)
input wire [2 : 0] HBM09_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARBURST" *)
input wire [1 : 0] HBM09_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARLOCK" *)
input wire [0 : 0] HBM09_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARCACHE" *)
input wire [3 : 0] HBM09_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARPROT" *)
input wire [2 : 0] HBM09_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARVALID" *)
input wire [0 : 0] HBM09_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARREADY" *)
output wire [0 : 0] HBM09_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RDATA" *)
output wire [255 : 0] HBM09_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RRESP" *)
output wire [1 : 0] HBM09_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RLAST" *)
output wire [0 : 0] HBM09_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RVALID" *)
output wire [0 : 0] HBM09_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RREADY" *)
input wire [0 : 0] HBM09_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM10_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM5_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM10_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWLEN" *)
input wire [7 : 0] HBM10_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWSIZE" *)
input wire [2 : 0] HBM10_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWBURST" *)
input wire [1 : 0] HBM10_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWLOCK" *)
input wire [0 : 0] HBM10_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWCACHE" *)
input wire [3 : 0] HBM10_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWPROT" *)
input wire [2 : 0] HBM10_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWVALID" *)
input wire [0 : 0] HBM10_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWREADY" *)
output wire [0 : 0] HBM10_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WDATA" *)
input wire [255 : 0] HBM10_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WSTRB" *)
input wire [31 : 0] HBM10_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WLAST" *)
input wire [0 : 0] HBM10_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WVALID" *)
input wire [0 : 0] HBM10_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI WREADY" *)
output wire [0 : 0] HBM10_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BRESP" *)
output wire [1 : 0] HBM10_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BVALID" *)
output wire [0 : 0] HBM10_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BREADY" *)
input wire [0 : 0] HBM10_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARADDR" *)
input wire [63 : 0] HBM10_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARLEN" *)
input wire [7 : 0] HBM10_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARSIZE" *)
input wire [2 : 0] HBM10_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARBURST" *)
input wire [1 : 0] HBM10_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARLOCK" *)
input wire [0 : 0] HBM10_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARCACHE" *)
input wire [3 : 0] HBM10_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARPROT" *)
input wire [2 : 0] HBM10_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARVALID" *)
input wire [0 : 0] HBM10_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARREADY" *)
output wire [0 : 0] HBM10_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RDATA" *)
output wire [255 : 0] HBM10_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RRESP" *)
output wire [1 : 0] HBM10_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RLAST" *)
output wire [0 : 0] HBM10_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RVALID" *)
output wire [0 : 0] HBM10_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RREADY" *)
input wire [0 : 0] HBM10_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM11_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM5_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM11_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWLEN" *)
input wire [7 : 0] HBM11_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWSIZE" *)
input wire [2 : 0] HBM11_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWBURST" *)
input wire [1 : 0] HBM11_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWLOCK" *)
input wire [0 : 0] HBM11_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWCACHE" *)
input wire [3 : 0] HBM11_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWPROT" *)
input wire [2 : 0] HBM11_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWVALID" *)
input wire [0 : 0] HBM11_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWREADY" *)
output wire [0 : 0] HBM11_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WDATA" *)
input wire [255 : 0] HBM11_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WSTRB" *)
input wire [31 : 0] HBM11_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WLAST" *)
input wire [0 : 0] HBM11_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WVALID" *)
input wire [0 : 0] HBM11_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI WREADY" *)
output wire [0 : 0] HBM11_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BRESP" *)
output wire [1 : 0] HBM11_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BVALID" *)
output wire [0 : 0] HBM11_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BREADY" *)
input wire [0 : 0] HBM11_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARADDR" *)
input wire [63 : 0] HBM11_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARLEN" *)
input wire [7 : 0] HBM11_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARSIZE" *)
input wire [2 : 0] HBM11_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARBURST" *)
input wire [1 : 0] HBM11_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARLOCK" *)
input wire [0 : 0] HBM11_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARCACHE" *)
input wire [3 : 0] HBM11_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARPROT" *)
input wire [2 : 0] HBM11_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARVALID" *)
input wire [0 : 0] HBM11_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARREADY" *)
output wire [0 : 0] HBM11_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RDATA" *)
output wire [255 : 0] HBM11_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RRESP" *)
output wire [1 : 0] HBM11_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RLAST" *)
output wire [0 : 0] HBM11_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RVALID" *)
output wire [0 : 0] HBM11_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RREADY" *)
input wire [0 : 0] HBM11_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM12_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM6_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM12_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWLEN" *)
input wire [7 : 0] HBM12_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWSIZE" *)
input wire [2 : 0] HBM12_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWBURST" *)
input wire [1 : 0] HBM12_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWLOCK" *)
input wire [0 : 0] HBM12_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWCACHE" *)
input wire [3 : 0] HBM12_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWPROT" *)
input wire [2 : 0] HBM12_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWVALID" *)
input wire [0 : 0] HBM12_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWREADY" *)
output wire [0 : 0] HBM12_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WDATA" *)
input wire [255 : 0] HBM12_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WSTRB" *)
input wire [31 : 0] HBM12_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WLAST" *)
input wire [0 : 0] HBM12_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WVALID" *)
input wire [0 : 0] HBM12_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI WREADY" *)
output wire [0 : 0] HBM12_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BRESP" *)
output wire [1 : 0] HBM12_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BVALID" *)
output wire [0 : 0] HBM12_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BREADY" *)
input wire [0 : 0] HBM12_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARADDR" *)
input wire [63 : 0] HBM12_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARLEN" *)
input wire [7 : 0] HBM12_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARSIZE" *)
input wire [2 : 0] HBM12_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARBURST" *)
input wire [1 : 0] HBM12_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARLOCK" *)
input wire [0 : 0] HBM12_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARCACHE" *)
input wire [3 : 0] HBM12_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARPROT" *)
input wire [2 : 0] HBM12_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARVALID" *)
input wire [0 : 0] HBM12_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARREADY" *)
output wire [0 : 0] HBM12_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RDATA" *)
output wire [255 : 0] HBM12_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RRESP" *)
output wire [1 : 0] HBM12_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RLAST" *)
output wire [0 : 0] HBM12_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RVALID" *)
output wire [0 : 0] HBM12_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RREADY" *)
input wire [0 : 0] HBM12_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM13_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM6_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM13_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWLEN" *)
input wire [7 : 0] HBM13_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWSIZE" *)
input wire [2 : 0] HBM13_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWBURST" *)
input wire [1 : 0] HBM13_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWLOCK" *)
input wire [0 : 0] HBM13_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWCACHE" *)
input wire [3 : 0] HBM13_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWPROT" *)
input wire [2 : 0] HBM13_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWVALID" *)
input wire [0 : 0] HBM13_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWREADY" *)
output wire [0 : 0] HBM13_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WDATA" *)
input wire [255 : 0] HBM13_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WSTRB" *)
input wire [31 : 0] HBM13_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WLAST" *)
input wire [0 : 0] HBM13_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WVALID" *)
input wire [0 : 0] HBM13_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI WREADY" *)
output wire [0 : 0] HBM13_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BRESP" *)
output wire [1 : 0] HBM13_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BVALID" *)
output wire [0 : 0] HBM13_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BREADY" *)
input wire [0 : 0] HBM13_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARADDR" *)
input wire [63 : 0] HBM13_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARLEN" *)
input wire [7 : 0] HBM13_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARSIZE" *)
input wire [2 : 0] HBM13_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARBURST" *)
input wire [1 : 0] HBM13_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARLOCK" *)
input wire [0 : 0] HBM13_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARCACHE" *)
input wire [3 : 0] HBM13_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARPROT" *)
input wire [2 : 0] HBM13_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARVALID" *)
input wire [0 : 0] HBM13_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARREADY" *)
output wire [0 : 0] HBM13_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RDATA" *)
output wire [255 : 0] HBM13_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RRESP" *)
output wire [1 : 0] HBM13_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RLAST" *)
output wire [0 : 0] HBM13_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RVALID" *)
output wire [0 : 0] HBM13_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RREADY" *)
input wire [0 : 0] HBM13_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM14_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM7_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM14_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWLEN" *)
input wire [7 : 0] HBM14_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWSIZE" *)
input wire [2 : 0] HBM14_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWBURST" *)
input wire [1 : 0] HBM14_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWLOCK" *)
input wire [0 : 0] HBM14_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWCACHE" *)
input wire [3 : 0] HBM14_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWPROT" *)
input wire [2 : 0] HBM14_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWVALID" *)
input wire [0 : 0] HBM14_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWREADY" *)
output wire [0 : 0] HBM14_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WDATA" *)
input wire [255 : 0] HBM14_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WSTRB" *)
input wire [31 : 0] HBM14_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WLAST" *)
input wire [0 : 0] HBM14_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WVALID" *)
input wire [0 : 0] HBM14_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI WREADY" *)
output wire [0 : 0] HBM14_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BRESP" *)
output wire [1 : 0] HBM14_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BVALID" *)
output wire [0 : 0] HBM14_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BREADY" *)
input wire [0 : 0] HBM14_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARADDR" *)
input wire [63 : 0] HBM14_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARLEN" *)
input wire [7 : 0] HBM14_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARSIZE" *)
input wire [2 : 0] HBM14_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARBURST" *)
input wire [1 : 0] HBM14_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARLOCK" *)
input wire [0 : 0] HBM14_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARCACHE" *)
input wire [3 : 0] HBM14_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARPROT" *)
input wire [2 : 0] HBM14_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARVALID" *)
input wire [0 : 0] HBM14_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARREADY" *)
output wire [0 : 0] HBM14_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RDATA" *)
output wire [255 : 0] HBM14_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RRESP" *)
output wire [1 : 0] HBM14_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RLAST" *)
output wire [0 : 0] HBM14_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RVALID" *)
output wire [0 : 0] HBM14_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RREADY" *)
input wire [0 : 0] HBM14_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM15_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM7_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM15_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWLEN" *)
input wire [7 : 0] HBM15_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWSIZE" *)
input wire [2 : 0] HBM15_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWBURST" *)
input wire [1 : 0] HBM15_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWLOCK" *)
input wire [0 : 0] HBM15_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWCACHE" *)
input wire [3 : 0] HBM15_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWPROT" *)
input wire [2 : 0] HBM15_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWVALID" *)
input wire [0 : 0] HBM15_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWREADY" *)
output wire [0 : 0] HBM15_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WDATA" *)
input wire [255 : 0] HBM15_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WSTRB" *)
input wire [31 : 0] HBM15_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WLAST" *)
input wire [0 : 0] HBM15_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WVALID" *)
input wire [0 : 0] HBM15_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI WREADY" *)
output wire [0 : 0] HBM15_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BRESP" *)
output wire [1 : 0] HBM15_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BVALID" *)
output wire [0 : 0] HBM15_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BREADY" *)
input wire [0 : 0] HBM15_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARADDR" *)
input wire [63 : 0] HBM15_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARLEN" *)
input wire [7 : 0] HBM15_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARSIZE" *)
input wire [2 : 0] HBM15_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARBURST" *)
input wire [1 : 0] HBM15_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARLOCK" *)
input wire [0 : 0] HBM15_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARCACHE" *)
input wire [3 : 0] HBM15_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARPROT" *)
input wire [2 : 0] HBM15_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARVALID" *)
input wire [0 : 0] HBM15_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARREADY" *)
output wire [0 : 0] HBM15_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RDATA" *)
output wire [255 : 0] HBM15_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RRESP" *)
output wire [1 : 0] HBM15_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RLAST" *)
output wire [0 : 0] HBM15_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RVALID" *)
output wire [0 : 0] HBM15_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RREADY" *)
input wire [0 : 0] HBM15_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM16_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM8_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM16_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWLEN" *)
input wire [7 : 0] HBM16_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWSIZE" *)
input wire [2 : 0] HBM16_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWBURST" *)
input wire [1 : 0] HBM16_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWLOCK" *)
input wire [0 : 0] HBM16_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWCACHE" *)
input wire [3 : 0] HBM16_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWPROT" *)
input wire [2 : 0] HBM16_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWVALID" *)
input wire [0 : 0] HBM16_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWREADY" *)
output wire [0 : 0] HBM16_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WDATA" *)
input wire [255 : 0] HBM16_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WSTRB" *)
input wire [31 : 0] HBM16_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WLAST" *)
input wire [0 : 0] HBM16_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WVALID" *)
input wire [0 : 0] HBM16_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI WREADY" *)
output wire [0 : 0] HBM16_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BRESP" *)
output wire [1 : 0] HBM16_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BVALID" *)
output wire [0 : 0] HBM16_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BREADY" *)
input wire [0 : 0] HBM16_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARADDR" *)
input wire [63 : 0] HBM16_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARLEN" *)
input wire [7 : 0] HBM16_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARSIZE" *)
input wire [2 : 0] HBM16_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARBURST" *)
input wire [1 : 0] HBM16_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARLOCK" *)
input wire [0 : 0] HBM16_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARCACHE" *)
input wire [3 : 0] HBM16_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARPROT" *)
input wire [2 : 0] HBM16_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARVALID" *)
input wire [0 : 0] HBM16_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARREADY" *)
output wire [0 : 0] HBM16_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RDATA" *)
output wire [255 : 0] HBM16_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RRESP" *)
output wire [1 : 0] HBM16_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RLAST" *)
output wire [0 : 0] HBM16_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RVALID" *)
output wire [0 : 0] HBM16_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RREADY" *)
input wire [0 : 0] HBM16_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM17_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM8_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM17_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWLEN" *)
input wire [7 : 0] HBM17_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWSIZE" *)
input wire [2 : 0] HBM17_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWBURST" *)
input wire [1 : 0] HBM17_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWLOCK" *)
input wire [0 : 0] HBM17_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWCACHE" *)
input wire [3 : 0] HBM17_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWPROT" *)
input wire [2 : 0] HBM17_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWVALID" *)
input wire [0 : 0] HBM17_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWREADY" *)
output wire [0 : 0] HBM17_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WDATA" *)
input wire [255 : 0] HBM17_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WSTRB" *)
input wire [31 : 0] HBM17_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WLAST" *)
input wire [0 : 0] HBM17_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WVALID" *)
input wire [0 : 0] HBM17_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI WREADY" *)
output wire [0 : 0] HBM17_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BRESP" *)
output wire [1 : 0] HBM17_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BVALID" *)
output wire [0 : 0] HBM17_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BREADY" *)
input wire [0 : 0] HBM17_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARADDR" *)
input wire [63 : 0] HBM17_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARLEN" *)
input wire [7 : 0] HBM17_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARSIZE" *)
input wire [2 : 0] HBM17_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARBURST" *)
input wire [1 : 0] HBM17_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARLOCK" *)
input wire [0 : 0] HBM17_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARCACHE" *)
input wire [3 : 0] HBM17_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARPROT" *)
input wire [2 : 0] HBM17_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARVALID" *)
input wire [0 : 0] HBM17_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARREADY" *)
output wire [0 : 0] HBM17_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RDATA" *)
output wire [255 : 0] HBM17_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RRESP" *)
output wire [1 : 0] HBM17_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RLAST" *)
output wire [0 : 0] HBM17_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RVALID" *)
output wire [0 : 0] HBM17_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RREADY" *)
input wire [0 : 0] HBM17_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM18_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM9_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM18_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWLEN" *)
input wire [7 : 0] HBM18_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWSIZE" *)
input wire [2 : 0] HBM18_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWBURST" *)
input wire [1 : 0] HBM18_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWLOCK" *)
input wire [0 : 0] HBM18_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWCACHE" *)
input wire [3 : 0] HBM18_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWPROT" *)
input wire [2 : 0] HBM18_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWVALID" *)
input wire [0 : 0] HBM18_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWREADY" *)
output wire [0 : 0] HBM18_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WDATA" *)
input wire [255 : 0] HBM18_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WSTRB" *)
input wire [31 : 0] HBM18_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WLAST" *)
input wire [0 : 0] HBM18_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WVALID" *)
input wire [0 : 0] HBM18_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI WREADY" *)
output wire [0 : 0] HBM18_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BRESP" *)
output wire [1 : 0] HBM18_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BVALID" *)
output wire [0 : 0] HBM18_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BREADY" *)
input wire [0 : 0] HBM18_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARADDR" *)
input wire [63 : 0] HBM18_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARLEN" *)
input wire [7 : 0] HBM18_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARSIZE" *)
input wire [2 : 0] HBM18_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARBURST" *)
input wire [1 : 0] HBM18_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARLOCK" *)
input wire [0 : 0] HBM18_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARCACHE" *)
input wire [3 : 0] HBM18_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARPROT" *)
input wire [2 : 0] HBM18_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARVALID" *)
input wire [0 : 0] HBM18_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARREADY" *)
output wire [0 : 0] HBM18_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RDATA" *)
output wire [255 : 0] HBM18_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RRESP" *)
output wire [1 : 0] HBM18_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RLAST" *)
output wire [0 : 0] HBM18_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RVALID" *)
output wire [0 : 0] HBM18_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RREADY" *)
input wire [0 : 0] HBM18_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM19_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM9_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM19_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWLEN" *)
input wire [7 : 0] HBM19_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWSIZE" *)
input wire [2 : 0] HBM19_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWBURST" *)
input wire [1 : 0] HBM19_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWLOCK" *)
input wire [0 : 0] HBM19_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWCACHE" *)
input wire [3 : 0] HBM19_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWPROT" *)
input wire [2 : 0] HBM19_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWVALID" *)
input wire [0 : 0] HBM19_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWREADY" *)
output wire [0 : 0] HBM19_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WDATA" *)
input wire [255 : 0] HBM19_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WSTRB" *)
input wire [31 : 0] HBM19_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WLAST" *)
input wire [0 : 0] HBM19_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WVALID" *)
input wire [0 : 0] HBM19_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI WREADY" *)
output wire [0 : 0] HBM19_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BRESP" *)
output wire [1 : 0] HBM19_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BVALID" *)
output wire [0 : 0] HBM19_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BREADY" *)
input wire [0 : 0] HBM19_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARADDR" *)
input wire [63 : 0] HBM19_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARLEN" *)
input wire [7 : 0] HBM19_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARSIZE" *)
input wire [2 : 0] HBM19_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARBURST" *)
input wire [1 : 0] HBM19_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARLOCK" *)
input wire [0 : 0] HBM19_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARCACHE" *)
input wire [3 : 0] HBM19_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARPROT" *)
input wire [2 : 0] HBM19_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARVALID" *)
input wire [0 : 0] HBM19_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARREADY" *)
output wire [0 : 0] HBM19_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RDATA" *)
output wire [255 : 0] HBM19_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RRESP" *)
output wire [1 : 0] HBM19_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RLAST" *)
output wire [0 : 0] HBM19_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RVALID" *)
output wire [0 : 0] HBM19_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RREADY" *)
input wire [0 : 0] HBM19_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM20_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM10_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM20_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWLEN" *)
input wire [7 : 0] HBM20_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWSIZE" *)
input wire [2 : 0] HBM20_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWBURST" *)
input wire [1 : 0] HBM20_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWLOCK" *)
input wire [0 : 0] HBM20_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWCACHE" *)
input wire [3 : 0] HBM20_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWPROT" *)
input wire [2 : 0] HBM20_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWVALID" *)
input wire [0 : 0] HBM20_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWREADY" *)
output wire [0 : 0] HBM20_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WDATA" *)
input wire [255 : 0] HBM20_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WSTRB" *)
input wire [31 : 0] HBM20_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WLAST" *)
input wire [0 : 0] HBM20_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WVALID" *)
input wire [0 : 0] HBM20_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI WREADY" *)
output wire [0 : 0] HBM20_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BRESP" *)
output wire [1 : 0] HBM20_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BVALID" *)
output wire [0 : 0] HBM20_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BREADY" *)
input wire [0 : 0] HBM20_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARADDR" *)
input wire [63 : 0] HBM20_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARLEN" *)
input wire [7 : 0] HBM20_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARSIZE" *)
input wire [2 : 0] HBM20_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARBURST" *)
input wire [1 : 0] HBM20_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARLOCK" *)
input wire [0 : 0] HBM20_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARCACHE" *)
input wire [3 : 0] HBM20_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARPROT" *)
input wire [2 : 0] HBM20_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARVALID" *)
input wire [0 : 0] HBM20_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARREADY" *)
output wire [0 : 0] HBM20_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RDATA" *)
output wire [255 : 0] HBM20_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RRESP" *)
output wire [1 : 0] HBM20_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RLAST" *)
output wire [0 : 0] HBM20_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RVALID" *)
output wire [0 : 0] HBM20_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RREADY" *)
input wire [0 : 0] HBM20_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM21_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM10_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM21_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWLEN" *)
input wire [7 : 0] HBM21_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWSIZE" *)
input wire [2 : 0] HBM21_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWBURST" *)
input wire [1 : 0] HBM21_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWLOCK" *)
input wire [0 : 0] HBM21_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWCACHE" *)
input wire [3 : 0] HBM21_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWPROT" *)
input wire [2 : 0] HBM21_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWVALID" *)
input wire [0 : 0] HBM21_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWREADY" *)
output wire [0 : 0] HBM21_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WDATA" *)
input wire [255 : 0] HBM21_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WSTRB" *)
input wire [31 : 0] HBM21_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WLAST" *)
input wire [0 : 0] HBM21_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WVALID" *)
input wire [0 : 0] HBM21_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI WREADY" *)
output wire [0 : 0] HBM21_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BRESP" *)
output wire [1 : 0] HBM21_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BVALID" *)
output wire [0 : 0] HBM21_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BREADY" *)
input wire [0 : 0] HBM21_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARADDR" *)
input wire [63 : 0] HBM21_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARLEN" *)
input wire [7 : 0] HBM21_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARSIZE" *)
input wire [2 : 0] HBM21_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARBURST" *)
input wire [1 : 0] HBM21_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARLOCK" *)
input wire [0 : 0] HBM21_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARCACHE" *)
input wire [3 : 0] HBM21_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARPROT" *)
input wire [2 : 0] HBM21_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARVALID" *)
input wire [0 : 0] HBM21_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARREADY" *)
output wire [0 : 0] HBM21_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RDATA" *)
output wire [255 : 0] HBM21_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RRESP" *)
output wire [1 : 0] HBM21_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RLAST" *)
output wire [0 : 0] HBM21_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RVALID" *)
output wire [0 : 0] HBM21_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RREADY" *)
input wire [0 : 0] HBM21_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM22_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM11_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM22_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWLEN" *)
input wire [7 : 0] HBM22_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWSIZE" *)
input wire [2 : 0] HBM22_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWBURST" *)
input wire [1 : 0] HBM22_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWLOCK" *)
input wire [0 : 0] HBM22_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWCACHE" *)
input wire [3 : 0] HBM22_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWPROT" *)
input wire [2 : 0] HBM22_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWVALID" *)
input wire [0 : 0] HBM22_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWREADY" *)
output wire [0 : 0] HBM22_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WDATA" *)
input wire [255 : 0] HBM22_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WSTRB" *)
input wire [31 : 0] HBM22_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WLAST" *)
input wire [0 : 0] HBM22_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WVALID" *)
input wire [0 : 0] HBM22_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI WREADY" *)
output wire [0 : 0] HBM22_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BRESP" *)
output wire [1 : 0] HBM22_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BVALID" *)
output wire [0 : 0] HBM22_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BREADY" *)
input wire [0 : 0] HBM22_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARADDR" *)
input wire [63 : 0] HBM22_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARLEN" *)
input wire [7 : 0] HBM22_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARSIZE" *)
input wire [2 : 0] HBM22_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARBURST" *)
input wire [1 : 0] HBM22_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARLOCK" *)
input wire [0 : 0] HBM22_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARCACHE" *)
input wire [3 : 0] HBM22_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARPROT" *)
input wire [2 : 0] HBM22_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARVALID" *)
input wire [0 : 0] HBM22_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARREADY" *)
output wire [0 : 0] HBM22_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RDATA" *)
output wire [255 : 0] HBM22_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RRESP" *)
output wire [1 : 0] HBM22_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RLAST" *)
output wire [0 : 0] HBM22_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RVALID" *)
output wire [0 : 0] HBM22_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RREADY" *)
input wire [0 : 0] HBM22_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM23_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM11_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM23_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWLEN" *)
input wire [7 : 0] HBM23_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWSIZE" *)
input wire [2 : 0] HBM23_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWBURST" *)
input wire [1 : 0] HBM23_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWLOCK" *)
input wire [0 : 0] HBM23_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWCACHE" *)
input wire [3 : 0] HBM23_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWPROT" *)
input wire [2 : 0] HBM23_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWVALID" *)
input wire [0 : 0] HBM23_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWREADY" *)
output wire [0 : 0] HBM23_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WDATA" *)
input wire [255 : 0] HBM23_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WSTRB" *)
input wire [31 : 0] HBM23_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WLAST" *)
input wire [0 : 0] HBM23_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WVALID" *)
input wire [0 : 0] HBM23_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI WREADY" *)
output wire [0 : 0] HBM23_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BRESP" *)
output wire [1 : 0] HBM23_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BVALID" *)
output wire [0 : 0] HBM23_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BREADY" *)
input wire [0 : 0] HBM23_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARADDR" *)
input wire [63 : 0] HBM23_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARLEN" *)
input wire [7 : 0] HBM23_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARSIZE" *)
input wire [2 : 0] HBM23_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARBURST" *)
input wire [1 : 0] HBM23_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARLOCK" *)
input wire [0 : 0] HBM23_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARCACHE" *)
input wire [3 : 0] HBM23_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARPROT" *)
input wire [2 : 0] HBM23_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARVALID" *)
input wire [0 : 0] HBM23_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARREADY" *)
output wire [0 : 0] HBM23_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RDATA" *)
output wire [255 : 0] HBM23_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RRESP" *)
output wire [1 : 0] HBM23_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RLAST" *)
output wire [0 : 0] HBM23_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RVALID" *)
output wire [0 : 0] HBM23_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RREADY" *)
input wire [0 : 0] HBM23_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM24_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM12_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM24_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWLEN" *)
input wire [7 : 0] HBM24_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWSIZE" *)
input wire [2 : 0] HBM24_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWBURST" *)
input wire [1 : 0] HBM24_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWLOCK" *)
input wire [0 : 0] HBM24_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWCACHE" *)
input wire [3 : 0] HBM24_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWPROT" *)
input wire [2 : 0] HBM24_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWVALID" *)
input wire [0 : 0] HBM24_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWREADY" *)
output wire [0 : 0] HBM24_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WDATA" *)
input wire [255 : 0] HBM24_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WSTRB" *)
input wire [31 : 0] HBM24_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WLAST" *)
input wire [0 : 0] HBM24_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WVALID" *)
input wire [0 : 0] HBM24_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI WREADY" *)
output wire [0 : 0] HBM24_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BRESP" *)
output wire [1 : 0] HBM24_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BVALID" *)
output wire [0 : 0] HBM24_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BREADY" *)
input wire [0 : 0] HBM24_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARADDR" *)
input wire [63 : 0] HBM24_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARLEN" *)
input wire [7 : 0] HBM24_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARSIZE" *)
input wire [2 : 0] HBM24_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARBURST" *)
input wire [1 : 0] HBM24_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARLOCK" *)
input wire [0 : 0] HBM24_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARCACHE" *)
input wire [3 : 0] HBM24_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARPROT" *)
input wire [2 : 0] HBM24_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARVALID" *)
input wire [0 : 0] HBM24_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARREADY" *)
output wire [0 : 0] HBM24_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RDATA" *)
output wire [255 : 0] HBM24_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RRESP" *)
output wire [1 : 0] HBM24_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RLAST" *)
output wire [0 : 0] HBM24_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RVALID" *)
output wire [0 : 0] HBM24_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RREADY" *)
input wire [0 : 0] HBM24_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM25_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM12_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM25_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWLEN" *)
input wire [7 : 0] HBM25_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWSIZE" *)
input wire [2 : 0] HBM25_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWBURST" *)
input wire [1 : 0] HBM25_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWLOCK" *)
input wire [0 : 0] HBM25_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWCACHE" *)
input wire [3 : 0] HBM25_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWPROT" *)
input wire [2 : 0] HBM25_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWVALID" *)
input wire [0 : 0] HBM25_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWREADY" *)
output wire [0 : 0] HBM25_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WDATA" *)
input wire [255 : 0] HBM25_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WSTRB" *)
input wire [31 : 0] HBM25_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WLAST" *)
input wire [0 : 0] HBM25_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WVALID" *)
input wire [0 : 0] HBM25_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI WREADY" *)
output wire [0 : 0] HBM25_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BRESP" *)
output wire [1 : 0] HBM25_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BVALID" *)
output wire [0 : 0] HBM25_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BREADY" *)
input wire [0 : 0] HBM25_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARADDR" *)
input wire [63 : 0] HBM25_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARLEN" *)
input wire [7 : 0] HBM25_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARSIZE" *)
input wire [2 : 0] HBM25_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARBURST" *)
input wire [1 : 0] HBM25_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARLOCK" *)
input wire [0 : 0] HBM25_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARCACHE" *)
input wire [3 : 0] HBM25_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARPROT" *)
input wire [2 : 0] HBM25_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARVALID" *)
input wire [0 : 0] HBM25_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARREADY" *)
output wire [0 : 0] HBM25_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RDATA" *)
output wire [255 : 0] HBM25_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RRESP" *)
output wire [1 : 0] HBM25_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RLAST" *)
output wire [0 : 0] HBM25_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RVALID" *)
output wire [0 : 0] HBM25_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RREADY" *)
input wire [0 : 0] HBM25_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM26_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM13_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM26_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWLEN" *)
input wire [7 : 0] HBM26_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWSIZE" *)
input wire [2 : 0] HBM26_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWBURST" *)
input wire [1 : 0] HBM26_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWLOCK" *)
input wire [0 : 0] HBM26_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWCACHE" *)
input wire [3 : 0] HBM26_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWPROT" *)
input wire [2 : 0] HBM26_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWVALID" *)
input wire [0 : 0] HBM26_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWREADY" *)
output wire [0 : 0] HBM26_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WDATA" *)
input wire [255 : 0] HBM26_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WSTRB" *)
input wire [31 : 0] HBM26_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WLAST" *)
input wire [0 : 0] HBM26_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WVALID" *)
input wire [0 : 0] HBM26_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI WREADY" *)
output wire [0 : 0] HBM26_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BRESP" *)
output wire [1 : 0] HBM26_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BVALID" *)
output wire [0 : 0] HBM26_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BREADY" *)
input wire [0 : 0] HBM26_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARADDR" *)
input wire [63 : 0] HBM26_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARLEN" *)
input wire [7 : 0] HBM26_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARSIZE" *)
input wire [2 : 0] HBM26_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARBURST" *)
input wire [1 : 0] HBM26_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARLOCK" *)
input wire [0 : 0] HBM26_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARCACHE" *)
input wire [3 : 0] HBM26_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARPROT" *)
input wire [2 : 0] HBM26_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARVALID" *)
input wire [0 : 0] HBM26_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARREADY" *)
output wire [0 : 0] HBM26_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RDATA" *)
output wire [255 : 0] HBM26_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RRESP" *)
output wire [1 : 0] HBM26_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RLAST" *)
output wire [0 : 0] HBM26_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RVALID" *)
output wire [0 : 0] HBM26_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RREADY" *)
input wire [0 : 0] HBM26_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM27_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM13_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM27_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWLEN" *)
input wire [7 : 0] HBM27_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWSIZE" *)
input wire [2 : 0] HBM27_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWBURST" *)
input wire [1 : 0] HBM27_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWLOCK" *)
input wire [0 : 0] HBM27_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWCACHE" *)
input wire [3 : 0] HBM27_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWPROT" *)
input wire [2 : 0] HBM27_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWVALID" *)
input wire [0 : 0] HBM27_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWREADY" *)
output wire [0 : 0] HBM27_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WDATA" *)
input wire [255 : 0] HBM27_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WSTRB" *)
input wire [31 : 0] HBM27_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WLAST" *)
input wire [0 : 0] HBM27_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WVALID" *)
input wire [0 : 0] HBM27_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI WREADY" *)
output wire [0 : 0] HBM27_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BRESP" *)
output wire [1 : 0] HBM27_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BVALID" *)
output wire [0 : 0] HBM27_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BREADY" *)
input wire [0 : 0] HBM27_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARADDR" *)
input wire [63 : 0] HBM27_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARLEN" *)
input wire [7 : 0] HBM27_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARSIZE" *)
input wire [2 : 0] HBM27_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARBURST" *)
input wire [1 : 0] HBM27_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARLOCK" *)
input wire [0 : 0] HBM27_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARCACHE" *)
input wire [3 : 0] HBM27_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARPROT" *)
input wire [2 : 0] HBM27_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARVALID" *)
input wire [0 : 0] HBM27_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARREADY" *)
output wire [0 : 0] HBM27_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RDATA" *)
output wire [255 : 0] HBM27_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RRESP" *)
output wire [1 : 0] HBM27_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RLAST" *)
output wire [0 : 0] HBM27_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RVALID" *)
output wire [0 : 0] HBM27_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RREADY" *)
input wire [0 : 0] HBM27_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM28_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM14_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM28_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWLEN" *)
input wire [7 : 0] HBM28_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWSIZE" *)
input wire [2 : 0] HBM28_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWBURST" *)
input wire [1 : 0] HBM28_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWLOCK" *)
input wire [0 : 0] HBM28_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWCACHE" *)
input wire [3 : 0] HBM28_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWPROT" *)
input wire [2 : 0] HBM28_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWVALID" *)
input wire [0 : 0] HBM28_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWREADY" *)
output wire [0 : 0] HBM28_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WDATA" *)
input wire [255 : 0] HBM28_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WSTRB" *)
input wire [31 : 0] HBM28_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WLAST" *)
input wire [0 : 0] HBM28_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WVALID" *)
input wire [0 : 0] HBM28_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI WREADY" *)
output wire [0 : 0] HBM28_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BRESP" *)
output wire [1 : 0] HBM28_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BVALID" *)
output wire [0 : 0] HBM28_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BREADY" *)
input wire [0 : 0] HBM28_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARADDR" *)
input wire [63 : 0] HBM28_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARLEN" *)
input wire [7 : 0] HBM28_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARSIZE" *)
input wire [2 : 0] HBM28_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARBURST" *)
input wire [1 : 0] HBM28_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARLOCK" *)
input wire [0 : 0] HBM28_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARCACHE" *)
input wire [3 : 0] HBM28_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARPROT" *)
input wire [2 : 0] HBM28_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARVALID" *)
input wire [0 : 0] HBM28_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARREADY" *)
output wire [0 : 0] HBM28_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RDATA" *)
output wire [255 : 0] HBM28_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RRESP" *)
output wire [1 : 0] HBM28_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RLAST" *)
output wire [0 : 0] HBM28_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RVALID" *)
output wire [0 : 0] HBM28_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RREADY" *)
input wire [0 : 0] HBM28_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM29_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM14_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM29_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWLEN" *)
input wire [7 : 0] HBM29_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWSIZE" *)
input wire [2 : 0] HBM29_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWBURST" *)
input wire [1 : 0] HBM29_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWLOCK" *)
input wire [0 : 0] HBM29_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWCACHE" *)
input wire [3 : 0] HBM29_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWPROT" *)
input wire [2 : 0] HBM29_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWVALID" *)
input wire [0 : 0] HBM29_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWREADY" *)
output wire [0 : 0] HBM29_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WDATA" *)
input wire [255 : 0] HBM29_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WSTRB" *)
input wire [31 : 0] HBM29_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WLAST" *)
input wire [0 : 0] HBM29_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WVALID" *)
input wire [0 : 0] HBM29_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI WREADY" *)
output wire [0 : 0] HBM29_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BRESP" *)
output wire [1 : 0] HBM29_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BVALID" *)
output wire [0 : 0] HBM29_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BREADY" *)
input wire [0 : 0] HBM29_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARADDR" *)
input wire [63 : 0] HBM29_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARLEN" *)
input wire [7 : 0] HBM29_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARSIZE" *)
input wire [2 : 0] HBM29_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARBURST" *)
input wire [1 : 0] HBM29_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARLOCK" *)
input wire [0 : 0] HBM29_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARCACHE" *)
input wire [3 : 0] HBM29_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARPROT" *)
input wire [2 : 0] HBM29_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARVALID" *)
input wire [0 : 0] HBM29_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARREADY" *)
output wire [0 : 0] HBM29_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RDATA" *)
output wire [255 : 0] HBM29_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RRESP" *)
output wire [1 : 0] HBM29_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RLAST" *)
output wire [0 : 0] HBM29_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RVALID" *)
output wire [0 : 0] HBM29_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RREADY" *)
input wire [0 : 0] HBM29_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM30_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM15_PORT0 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM30_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWLEN" *)
input wire [7 : 0] HBM30_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWSIZE" *)
input wire [2 : 0] HBM30_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWBURST" *)
input wire [1 : 0] HBM30_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWLOCK" *)
input wire [0 : 0] HBM30_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWCACHE" *)
input wire [3 : 0] HBM30_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWPROT" *)
input wire [2 : 0] HBM30_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWVALID" *)
input wire [0 : 0] HBM30_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWREADY" *)
output wire [0 : 0] HBM30_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WDATA" *)
input wire [255 : 0] HBM30_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WSTRB" *)
input wire [31 : 0] HBM30_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WLAST" *)
input wire [0 : 0] HBM30_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WVALID" *)
input wire [0 : 0] HBM30_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI WREADY" *)
output wire [0 : 0] HBM30_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BRESP" *)
output wire [1 : 0] HBM30_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BVALID" *)
output wire [0 : 0] HBM30_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BREADY" *)
input wire [0 : 0] HBM30_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARADDR" *)
input wire [63 : 0] HBM30_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARLEN" *)
input wire [7 : 0] HBM30_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARSIZE" *)
input wire [2 : 0] HBM30_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARBURST" *)
input wire [1 : 0] HBM30_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARLOCK" *)
input wire [0 : 0] HBM30_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARCACHE" *)
input wire [3 : 0] HBM30_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARPROT" *)
input wire [2 : 0] HBM30_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARVALID" *)
input wire [0 : 0] HBM30_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARREADY" *)
output wire [0 : 0] HBM30_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RDATA" *)
output wire [255 : 0] HBM30_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RRESP" *)
output wire [1 : 0] HBM30_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RLAST" *)
output wire [0 : 0] HBM30_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RVALID" *)
output wire [0 : 0] HBM30_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RREADY" *)
input wire [0 : 0] HBM30_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HBM31_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 11, ARUSER_WIDTH 11, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS HBM15_PORT2 {read_bw {12800} write_bw {6400} read_avg_burst {4} write_avg_burst {4}}, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY pl_hbm" *)
input wire [63 : 0] HBM31_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWLEN" *)
input wire [7 : 0] HBM31_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWSIZE" *)
input wire [2 : 0] HBM31_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWBURST" *)
input wire [1 : 0] HBM31_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWLOCK" *)
input wire [0 : 0] HBM31_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWCACHE" *)
input wire [3 : 0] HBM31_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWPROT" *)
input wire [2 : 0] HBM31_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWVALID" *)
input wire [0 : 0] HBM31_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWREADY" *)
output wire [0 : 0] HBM31_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WDATA" *)
input wire [255 : 0] HBM31_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WSTRB" *)
input wire [31 : 0] HBM31_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WLAST" *)
input wire [0 : 0] HBM31_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WVALID" *)
input wire [0 : 0] HBM31_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI WREADY" *)
output wire [0 : 0] HBM31_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BRESP" *)
output wire [1 : 0] HBM31_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BVALID" *)
output wire [0 : 0] HBM31_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BREADY" *)
input wire [0 : 0] HBM31_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARADDR" *)
input wire [63 : 0] HBM31_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARLEN" *)
input wire [7 : 0] HBM31_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARSIZE" *)
input wire [2 : 0] HBM31_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARBURST" *)
input wire [1 : 0] HBM31_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARLOCK" *)
input wire [0 : 0] HBM31_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARCACHE" *)
input wire [3 : 0] HBM31_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARPROT" *)
input wire [2 : 0] HBM31_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARVALID" *)
input wire [0 : 0] HBM31_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARREADY" *)
output wire [0 : 0] HBM31_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RDATA" *)
output wire [255 : 0] HBM31_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RRESP" *)
output wire [1 : 0] HBM31_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RLAST" *)
output wire [0 : 0] HBM31_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RVALID" *)
output wire [0 : 0] HBM31_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RREADY" *)
input wire [0 : 0] HBM31_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_\
WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x201_0000_0000 1G}, MY_CATEGORY noc, CATEGORY pl" *)
output wire [63 : 0] M00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *)
output wire [7 : 0] M00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *)
output wire [2 : 0] M00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *)
output wire [1 : 0] M00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *)
output wire [0 : 0] M00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *)
output wire [3 : 0] M00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
output wire [2 : 0] M00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *)
output wire [3 : 0] M00_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *)
output wire [3 : 0] M00_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
output wire [0 : 0] M00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
input wire [0 : 0] M00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
output wire [511 : 0] M00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
output wire [63 : 0] M00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *)
output wire [0 : 0] M00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
output wire [0 : 0] M00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
input wire [0 : 0] M00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
input wire [1 : 0] M00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
input wire [0 : 0] M00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
output wire [0 : 0] M00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
output wire [63 : 0] M00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *)
output wire [7 : 0] M00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *)
output wire [2 : 0] M00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *)
output wire [1 : 0] M00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *)
output wire [0 : 0] M00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *)
output wire [3 : 0] M00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
output wire [2 : 0] M00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *)
output wire [3 : 0] M00_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *)
output wire [3 : 0] M00_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
output wire [0 : 0] M00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
input wire [0 : 0] M00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
input wire [511 : 0] M00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
input wire [1 : 0] M00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *)
input wire [0 : 0] M00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
input wire [0 : 0] M00_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
output wire [0 : 0] M00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_W\
RITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x201_4000_0000 1G}, MY_CATEGORY noc, CATEGORY pl" *)
output wire [63 : 0] M01_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *)
output wire [7 : 0] M01_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *)
output wire [2 : 0] M01_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *)
output wire [1 : 0] M01_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *)
output wire [0 : 0] M01_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *)
output wire [3 : 0] M01_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *)
output wire [2 : 0] M01_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREGION" *)
output wire [3 : 0] M01_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *)
output wire [3 : 0] M01_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *)
output wire [0 : 0] M01_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *)
input wire [0 : 0] M01_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *)
output wire [31 : 0] M01_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *)
output wire [3 : 0] M01_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *)
output wire [0 : 0] M01_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *)
output wire [0 : 0] M01_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *)
input wire [0 : 0] M01_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *)
input wire [1 : 0] M01_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *)
input wire [0 : 0] M01_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *)
output wire [0 : 0] M01_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *)
output wire [63 : 0] M01_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *)
output wire [7 : 0] M01_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *)
output wire [2 : 0] M01_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *)
output wire [1 : 0] M01_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *)
output wire [0 : 0] M01_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *)
output wire [3 : 0] M01_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *)
output wire [2 : 0] M01_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREGION" *)
output wire [3 : 0] M01_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *)
output wire [3 : 0] M01_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *)
output wire [0 : 0] M01_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *)
input wire [0 : 0] M01_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *)
input wire [31 : 0] M01_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *)
input wire [1 : 0] M01_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *)
input wire [0 : 0] M01_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *)
input wire [0 : 0] M01_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *)
output wire [0 : 0] M01_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_W\
RITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x201_8000_0000 1G}, MY_CATEGORY noc, CATEGORY pl" *)
output wire [63 : 0] M02_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWLEN" *)
output wire [7 : 0] M02_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWSIZE" *)
output wire [2 : 0] M02_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWBURST" *)
output wire [1 : 0] M02_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWLOCK" *)
output wire [0 : 0] M02_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWCACHE" *)
output wire [3 : 0] M02_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT" *)
output wire [2 : 0] M02_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREGION" *)
output wire [3 : 0] M02_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWQOS" *)
output wire [3 : 0] M02_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID" *)
output wire [0 : 0] M02_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY" *)
input wire [0 : 0] M02_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WDATA" *)
output wire [31 : 0] M02_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB" *)
output wire [3 : 0] M02_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WLAST" *)
output wire [0 : 0] M02_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WVALID" *)
output wire [0 : 0] M02_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WREADY" *)
input wire [0 : 0] M02_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BRESP" *)
input wire [1 : 0] M02_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BVALID" *)
input wire [0 : 0] M02_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BREADY" *)
output wire [0 : 0] M02_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR" *)
output wire [63 : 0] M02_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARLEN" *)
output wire [7 : 0] M02_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARSIZE" *)
output wire [2 : 0] M02_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARBURST" *)
output wire [1 : 0] M02_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARLOCK" *)
output wire [0 : 0] M02_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARCACHE" *)
output wire [3 : 0] M02_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT" *)
output wire [2 : 0] M02_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREGION" *)
output wire [3 : 0] M02_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARQOS" *)
output wire [3 : 0] M02_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID" *)
output wire [0 : 0] M02_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY" *)
input wire [0 : 0] M02_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RDATA" *)
input wire [31 : 0] M02_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RRESP" *)
input wire [1 : 0] M02_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RLAST" *)
input wire [0 : 0] M02_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RVALID" *)
input wire [0 : 0] M02_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RREADY" *)
output wire [0 : 0] M02_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M03_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_W\
RITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x202_0000_0000 1G}, MY_CATEGORY noc, CATEGORY pl" *)
output wire [63 : 0] M03_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWLEN" *)
output wire [7 : 0] M03_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWSIZE" *)
output wire [2 : 0] M03_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWBURST" *)
output wire [1 : 0] M03_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWLOCK" *)
output wire [0 : 0] M03_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWCACHE" *)
output wire [3 : 0] M03_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWPROT" *)
output wire [2 : 0] M03_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWREGION" *)
output wire [3 : 0] M03_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWQOS" *)
output wire [3 : 0] M03_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWVALID" *)
output wire [0 : 0] M03_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWREADY" *)
input wire [0 : 0] M03_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WDATA" *)
output wire [31 : 0] M03_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WSTRB" *)
output wire [3 : 0] M03_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WLAST" *)
output wire [0 : 0] M03_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WVALID" *)
output wire [0 : 0] M03_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WREADY" *)
input wire [0 : 0] M03_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BRESP" *)
input wire [1 : 0] M03_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BVALID" *)
input wire [0 : 0] M03_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BREADY" *)
output wire [0 : 0] M03_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARADDR" *)
output wire [63 : 0] M03_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARLEN" *)
output wire [7 : 0] M03_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARSIZE" *)
output wire [2 : 0] M03_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARBURST" *)
output wire [1 : 0] M03_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARLOCK" *)
output wire [0 : 0] M03_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARCACHE" *)
output wire [3 : 0] M03_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARPROT" *)
output wire [2 : 0] M03_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARREGION" *)
output wire [3 : 0] M03_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARQOS" *)
output wire [3 : 0] M03_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARVALID" *)
output wire [0 : 0] M03_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARREADY" *)
input wire [0 : 0] M03_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RDATA" *)
input wire [31 : 0] M03_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RRESP" *)
input wire [1 : 0] M03_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RLAST" *)
input wire [0 : 0] M03_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RVALID" *)
input wire [0 : 0] M03_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RREADY" *)
output wire [0 : 0] M03_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk0 CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk0, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi0_clk, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0" *)
input wire aclk0;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi1_clk, ASSOCIATED_BUSIF S01_AXI, INSERT_VIP 0" *)
input wire aclk1;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk2 CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk2, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI, INSERT_VIP 0" *)
input wire aclk2;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk3 CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk3, FREQ_HZ 49999500, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, ASSOCIATED_BUSIF HBM00_AXI:HBM01_AXI:HBM02_AXI:HBM03_AXI:HBM04_AXI:HBM05_AXI:HBM06_AXI:HBM07_AXI:HBM08_AXI:HBM09_AXI:HBM10_AXI:HBM11_AXI:HBM12_AXI:HBM13_AXI:HBM14_AXI:HBM15_AXI:HBM16_AXI:HBM17_AXI:HBM18_AXI:HBM19_AXI:HBM20_AXI:HBM21_AXI:HBM22_AXI:HBM23_AXI:HBM24_AXI:HBM25_AXI:HBM26_AXI:HBM27_AXI:HBM28_AXI:HBM29_AXI:HBM30_AXI:HBM31_AXI, INSERT_VIP 0" *)
input wire aclk3;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_P" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk0, CAN_DEBUG false, FREQ_HZ 200000000, BOARD.ASSOCIATED_PARAM sys_clk0_BOARD_INTERFACE" *)
input wire [0 : 0] sys_clk0_clk_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_N" *)
input wire [0 : 0] sys_clk0_clk_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQ" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_DDR4_0, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl, BOARD.ASSOCIATED_PARAM CH0_DDR4_0_BOARD_INTERFACE" *)
inout wire [71 : 0] CH0_DDR4_0_dq;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQS_T" *)
inout wire [8 : 0] CH0_DDR4_0_dqs_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQS_C" *)
inout wire [8 : 0] CH0_DDR4_0_dqs_c;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ADR" *)
output wire [16 : 0] CH0_DDR4_0_adr;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 BA" *)
output wire [1 : 0] CH0_DDR4_0_ba;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 BG" *)
output wire [1 : 0] CH0_DDR4_0_bg;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ACT_N" *)
output wire [0 : 0] CH0_DDR4_0_act_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 RESET_N" *)
output wire [0 : 0] CH0_DDR4_0_reset_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CK_T" *)
output wire [0 : 0] CH0_DDR4_0_ck_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CK_C" *)
output wire [0 : 0] CH0_DDR4_0_ck_c;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CKE" *)
output wire [0 : 0] CH0_DDR4_0_cke;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CS_N" *)
output wire [0 : 0] CH0_DDR4_0_cs_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ODT" *)
output wire [0 : 0] CH0_DDR4_0_odt;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 PAR" *)
output wire [0 : 0] CH0_DDR4_0_par;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ALERT_N" *)
inout wire [0 : 0] CH0_DDR4_0_alert_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk1 CLK_P" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk1, CAN_DEBUG false, FREQ_HZ 200000000, BOARD.ASSOCIATED_PARAM sys_clk1_BOARD_INTERFACE" *)
input wire [0 : 0] sys_clk1_clk_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk1 CLK_N" *)
input wire [0 : 0] sys_clk1_clk_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQ" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_DDR4_1, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl, BOARD.ASSOCIATED_PARAM CH0_DDR4_1_BOARD_INTERFACE" *)
inout wire [71 : 0] CH0_DDR4_1_dq;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQS_T" *)
inout wire [8 : 0] CH0_DDR4_1_dqs_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQS_C" *)
inout wire [8 : 0] CH0_DDR4_1_dqs_c;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ADR" *)
output wire [16 : 0] CH0_DDR4_1_adr;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 BA" *)
output wire [1 : 0] CH0_DDR4_1_ba;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 BG" *)
output wire [1 : 0] CH0_DDR4_1_bg;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ACT_N" *)
output wire [0 : 0] CH0_DDR4_1_act_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 RESET_N" *)
output wire [0 : 0] CH0_DDR4_1_reset_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CK_T" *)
output wire [0 : 0] CH0_DDR4_1_ck_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CK_C" *)
output wire [0 : 0] CH0_DDR4_1_ck_c;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CKE" *)
output wire [0 : 0] CH0_DDR4_1_cke;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CS_N" *)
output wire [0 : 0] CH0_DDR4_1_cs_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ODT" *)
output wire [0 : 0] CH0_DDR4_1_odt;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 PAR" *)
output wire [0 : 0] CH0_DDR4_1_par;
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ALERT_N" *)
inout wire [0 : 0] CH0_DDR4_1_alert_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *)
input wire [15 : 0] S01_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARUSER" *)
input wire [17 : 0] S01_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *)
input wire [15 : 0] S01_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWUSER" *)
input wire [17 : 0] S01_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *)
output wire [15 : 0] S01_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *)
output wire [15 : 0] S01_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RUSER" *)
output wire [16 : 0] S01_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WUSER" *)
input wire [16 : 0] S01_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *)
input wire [15 : 0] S00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *)
input wire [17 : 0] S00_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *)
input wire [15 : 0] S00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *)
input wire [17 : 0] S00_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *)
output wire [15 : 0] S00_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *)
output wire [15 : 0] S00_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *)
output wire [16 : 0] S00_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *)
input wire [16 : 0] S00_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARID" *)
input wire [6 : 0] HBM28_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI ARUSER" *)
input wire [10 : 0] HBM28_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWID" *)
input wire [6 : 0] HBM28_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI AWUSER" *)
input wire [10 : 0] HBM28_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BID" *)
output wire [6 : 0] HBM28_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI BUSER" *)
output wire [15 : 0] HBM28_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM28_AXI RID" *)
output wire [6 : 0] HBM28_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARID" *)
input wire [6 : 0] HBM27_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI ARUSER" *)
input wire [10 : 0] HBM27_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWID" *)
input wire [6 : 0] HBM27_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI AWUSER" *)
input wire [10 : 0] HBM27_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BID" *)
output wire [6 : 0] HBM27_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI BUSER" *)
output wire [15 : 0] HBM27_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM27_AXI RID" *)
output wire [6 : 0] HBM27_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARID" *)
input wire [6 : 0] HBM25_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI ARUSER" *)
input wire [10 : 0] HBM25_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWID" *)
input wire [6 : 0] HBM25_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI AWUSER" *)
input wire [10 : 0] HBM25_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BID" *)
output wire [6 : 0] HBM25_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI BUSER" *)
output wire [15 : 0] HBM25_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM25_AXI RID" *)
output wire [6 : 0] HBM25_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARID" *)
input wire [6 : 0] HBM24_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI ARUSER" *)
input wire [10 : 0] HBM24_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWID" *)
input wire [6 : 0] HBM24_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI AWUSER" *)
input wire [10 : 0] HBM24_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BID" *)
output wire [6 : 0] HBM24_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI BUSER" *)
output wire [15 : 0] HBM24_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM24_AXI RID" *)
output wire [6 : 0] HBM24_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARID" *)
input wire [6 : 0] HBM23_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI ARUSER" *)
input wire [10 : 0] HBM23_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWID" *)
input wire [6 : 0] HBM23_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI AWUSER" *)
input wire [10 : 0] HBM23_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BID" *)
output wire [6 : 0] HBM23_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI BUSER" *)
output wire [15 : 0] HBM23_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM23_AXI RID" *)
output wire [6 : 0] HBM23_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARID" *)
input wire [6 : 0] HBM20_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI ARUSER" *)
input wire [10 : 0] HBM20_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWID" *)
input wire [6 : 0] HBM20_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI AWUSER" *)
input wire [10 : 0] HBM20_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BID" *)
output wire [6 : 0] HBM20_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI BUSER" *)
output wire [15 : 0] HBM20_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM20_AXI RID" *)
output wire [6 : 0] HBM20_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARID" *)
input wire [6 : 0] HBM19_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI ARUSER" *)
input wire [10 : 0] HBM19_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWID" *)
input wire [6 : 0] HBM19_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI AWUSER" *)
input wire [10 : 0] HBM19_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BID" *)
output wire [6 : 0] HBM19_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI BUSER" *)
output wire [15 : 0] HBM19_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM19_AXI RID" *)
output wire [6 : 0] HBM19_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARID" *)
input wire [6 : 0] HBM18_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI ARUSER" *)
input wire [10 : 0] HBM18_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWID" *)
input wire [6 : 0] HBM18_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI AWUSER" *)
input wire [10 : 0] HBM18_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BID" *)
output wire [6 : 0] HBM18_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI BUSER" *)
output wire [15 : 0] HBM18_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM18_AXI RID" *)
output wire [6 : 0] HBM18_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARID" *)
input wire [6 : 0] HBM17_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI ARUSER" *)
input wire [10 : 0] HBM17_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWID" *)
input wire [6 : 0] HBM17_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI AWUSER" *)
input wire [10 : 0] HBM17_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BID" *)
output wire [6 : 0] HBM17_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI BUSER" *)
output wire [15 : 0] HBM17_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM17_AXI RID" *)
output wire [6 : 0] HBM17_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARID" *)
input wire [6 : 0] HBM21_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI ARUSER" *)
input wire [10 : 0] HBM21_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWID" *)
input wire [6 : 0] HBM21_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI AWUSER" *)
input wire [10 : 0] HBM21_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BID" *)
output wire [6 : 0] HBM21_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI BUSER" *)
output wire [15 : 0] HBM21_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM21_AXI RID" *)
output wire [6 : 0] HBM21_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARID" *)
input wire [6 : 0] HBM16_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI ARUSER" *)
input wire [10 : 0] HBM16_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWID" *)
input wire [6 : 0] HBM16_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI AWUSER" *)
input wire [10 : 0] HBM16_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BID" *)
output wire [6 : 0] HBM16_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI BUSER" *)
output wire [15 : 0] HBM16_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM16_AXI RID" *)
output wire [6 : 0] HBM16_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARID" *)
input wire [6 : 0] HBM05_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI ARUSER" *)
input wire [10 : 0] HBM05_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWID" *)
input wire [6 : 0] HBM05_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI AWUSER" *)
input wire [10 : 0] HBM05_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BID" *)
output wire [6 : 0] HBM05_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI BUSER" *)
output wire [15 : 0] HBM05_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM05_AXI RID" *)
output wire [6 : 0] HBM05_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARID" *)
input wire [6 : 0] HBM04_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI ARUSER" *)
input wire [10 : 0] HBM04_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWID" *)
input wire [6 : 0] HBM04_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI AWUSER" *)
input wire [10 : 0] HBM04_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BID" *)
output wire [6 : 0] HBM04_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI BUSER" *)
output wire [15 : 0] HBM04_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM04_AXI RID" *)
output wire [6 : 0] HBM04_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARID" *)
input wire [6 : 0] HBM08_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI ARUSER" *)
input wire [10 : 0] HBM08_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWID" *)
input wire [6 : 0] HBM08_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI AWUSER" *)
input wire [10 : 0] HBM08_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BID" *)
output wire [6 : 0] HBM08_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI BUSER" *)
output wire [15 : 0] HBM08_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM08_AXI RID" *)
output wire [6 : 0] HBM08_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARID" *)
input wire [6 : 0] HBM03_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI ARUSER" *)
input wire [10 : 0] HBM03_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWID" *)
input wire [6 : 0] HBM03_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI AWUSER" *)
input wire [10 : 0] HBM03_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BID" *)
output wire [6 : 0] HBM03_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI BUSER" *)
output wire [15 : 0] HBM03_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM03_AXI RID" *)
output wire [6 : 0] HBM03_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARID" *)
input wire [6 : 0] HBM02_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI ARUSER" *)
input wire [10 : 0] HBM02_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWID" *)
input wire [6 : 0] HBM02_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI AWUSER" *)
input wire [10 : 0] HBM02_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BID" *)
output wire [6 : 0] HBM02_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI BUSER" *)
output wire [15 : 0] HBM02_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM02_AXI RID" *)
output wire [6 : 0] HBM02_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARID" *)
input wire [6 : 0] HBM31_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI ARUSER" *)
input wire [10 : 0] HBM31_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWID" *)
input wire [6 : 0] HBM31_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI AWUSER" *)
input wire [10 : 0] HBM31_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BID" *)
output wire [6 : 0] HBM31_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI BUSER" *)
output wire [15 : 0] HBM31_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM31_AXI RID" *)
output wire [6 : 0] HBM31_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARID" *)
input wire [6 : 0] HBM00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI ARUSER" *)
input wire [10 : 0] HBM00_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWID" *)
input wire [6 : 0] HBM00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI AWUSER" *)
input wire [10 : 0] HBM00_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BID" *)
output wire [6 : 0] HBM00_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI BUSER" *)
output wire [15 : 0] HBM00_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM00_AXI RID" *)
output wire [6 : 0] HBM00_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARID" *)
input wire [6 : 0] HBM26_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI ARUSER" *)
input wire [10 : 0] HBM26_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWID" *)
input wire [6 : 0] HBM26_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI AWUSER" *)
input wire [10 : 0] HBM26_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BID" *)
output wire [6 : 0] HBM26_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI BUSER" *)
output wire [15 : 0] HBM26_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM26_AXI RID" *)
output wire [6 : 0] HBM26_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARID" *)
input wire [6 : 0] HBM01_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI ARUSER" *)
input wire [10 : 0] HBM01_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWID" *)
input wire [6 : 0] HBM01_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI AWUSER" *)
input wire [10 : 0] HBM01_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BID" *)
output wire [6 : 0] HBM01_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI BUSER" *)
output wire [15 : 0] HBM01_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM01_AXI RID" *)
output wire [6 : 0] HBM01_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARID" *)
input wire [6 : 0] HBM06_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI ARUSER" *)
input wire [10 : 0] HBM06_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWID" *)
input wire [6 : 0] HBM06_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI AWUSER" *)
input wire [10 : 0] HBM06_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BID" *)
output wire [6 : 0] HBM06_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI BUSER" *)
output wire [15 : 0] HBM06_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM06_AXI RID" *)
output wire [6 : 0] HBM06_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARID" *)
input wire [6 : 0] HBM10_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI ARUSER" *)
input wire [10 : 0] HBM10_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWID" *)
input wire [6 : 0] HBM10_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI AWUSER" *)
input wire [10 : 0] HBM10_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BID" *)
output wire [6 : 0] HBM10_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI BUSER" *)
output wire [15 : 0] HBM10_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM10_AXI RID" *)
output wire [6 : 0] HBM10_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARID" *)
input wire [6 : 0] HBM29_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI ARUSER" *)
input wire [10 : 0] HBM29_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWID" *)
input wire [6 : 0] HBM29_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI AWUSER" *)
input wire [10 : 0] HBM29_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BID" *)
output wire [6 : 0] HBM29_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI BUSER" *)
output wire [15 : 0] HBM29_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM29_AXI RID" *)
output wire [6 : 0] HBM29_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARID" *)
input wire [6 : 0] HBM11_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI ARUSER" *)
input wire [10 : 0] HBM11_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWID" *)
input wire [6 : 0] HBM11_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI AWUSER" *)
input wire [10 : 0] HBM11_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BID" *)
output wire [6 : 0] HBM11_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI BUSER" *)
output wire [15 : 0] HBM11_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM11_AXI RID" *)
output wire [6 : 0] HBM11_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARID" *)
input wire [6 : 0] HBM22_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI ARUSER" *)
input wire [10 : 0] HBM22_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWID" *)
input wire [6 : 0] HBM22_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI AWUSER" *)
input wire [10 : 0] HBM22_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BID" *)
output wire [6 : 0] HBM22_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI BUSER" *)
output wire [15 : 0] HBM22_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM22_AXI RID" *)
output wire [6 : 0] HBM22_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARID" *)
input wire [6 : 0] HBM15_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI ARUSER" *)
input wire [10 : 0] HBM15_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWID" *)
input wire [6 : 0] HBM15_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI AWUSER" *)
input wire [10 : 0] HBM15_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BID" *)
output wire [6 : 0] HBM15_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI BUSER" *)
output wire [15 : 0] HBM15_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM15_AXI RID" *)
output wire [6 : 0] HBM15_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARID" *)
input wire [6 : 0] HBM12_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI ARUSER" *)
input wire [10 : 0] HBM12_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWID" *)
input wire [6 : 0] HBM12_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI AWUSER" *)
input wire [10 : 0] HBM12_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BID" *)
output wire [6 : 0] HBM12_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI BUSER" *)
output wire [15 : 0] HBM12_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM12_AXI RID" *)
output wire [6 : 0] HBM12_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARID" *)
input wire [6 : 0] HBM30_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI ARUSER" *)
input wire [10 : 0] HBM30_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWID" *)
input wire [6 : 0] HBM30_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI AWUSER" *)
input wire [10 : 0] HBM30_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BID" *)
output wire [6 : 0] HBM30_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI BUSER" *)
output wire [15 : 0] HBM30_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM30_AXI RID" *)
output wire [6 : 0] HBM30_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARID" *)
input wire [6 : 0] HBM13_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI ARUSER" *)
input wire [10 : 0] HBM13_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWID" *)
input wire [6 : 0] HBM13_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI AWUSER" *)
input wire [10 : 0] HBM13_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BID" *)
output wire [6 : 0] HBM13_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI BUSER" *)
output wire [15 : 0] HBM13_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM13_AXI RID" *)
output wire [6 : 0] HBM13_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARID" *)
input wire [6 : 0] HBM07_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI ARUSER" *)
input wire [10 : 0] HBM07_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWID" *)
input wire [6 : 0] HBM07_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI AWUSER" *)
input wire [10 : 0] HBM07_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BID" *)
output wire [6 : 0] HBM07_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI BUSER" *)
output wire [15 : 0] HBM07_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM07_AXI RID" *)
output wire [6 : 0] HBM07_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARID" *)
input wire [6 : 0] HBM09_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI ARUSER" *)
input wire [10 : 0] HBM09_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWID" *)
input wire [6 : 0] HBM09_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI AWUSER" *)
input wire [10 : 0] HBM09_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BID" *)
output wire [6 : 0] HBM09_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI BUSER" *)
output wire [15 : 0] HBM09_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM09_AXI RID" *)
output wire [6 : 0] HBM09_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARID" *)
input wire [6 : 0] HBM14_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI ARUSER" *)
input wire [10 : 0] HBM14_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWID" *)
input wire [6 : 0] HBM14_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI AWUSER" *)
input wire [10 : 0] HBM14_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BID" *)
output wire [6 : 0] HBM14_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI BUSER" *)
output wire [15 : 0] HBM14_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 HBM14_AXI RID" *)
output wire [6 : 0] HBM14_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *)
output wire [1 : 0] M00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *)
output wire [17 : 0] M00_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *)
output wire [1 : 0] M00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *)
output wire [17 : 0] M00_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *)
input wire [1 : 0] M00_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *)
input wire [1 : 0] M00_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARID" *)
output wire [1 : 0] M03_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARUSER" *)
output wire [17 : 0] M03_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWID" *)
output wire [1 : 0] M03_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWUSER" *)
output wire [17 : 0] M03_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BID" *)
input wire [1 : 0] M03_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RID" *)
input wire [1 : 0] M03_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *)
output wire [1 : 0] M01_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARUSER" *)
output wire [17 : 0] M01_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *)
output wire [1 : 0] M01_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWUSER" *)
output wire [17 : 0] M01_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *)
input wire [1 : 0] M01_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *)
input wire [1 : 0] M01_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARID" *)
output wire [1 : 0] M02_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARUSER" *)
output wire [17 : 0] M02_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWID" *)
output wire [1 : 0] M02_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWUSER" *)
output wire [17 : 0] M02_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BID" *)
input wire [1 : 0] M02_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RID" *)
input wire [1 : 0] M02_AXI_rid;

  bd_6a72 inst (
    .S00_AXI_awaddr(S00_AXI_awaddr),
    .S00_AXI_awlen(S00_AXI_awlen),
    .S00_AXI_awsize(S00_AXI_awsize),
    .S00_AXI_awburst(S00_AXI_awburst),
    .S00_AXI_awlock(S00_AXI_awlock),
    .S00_AXI_awcache(S00_AXI_awcache),
    .S00_AXI_awprot(S00_AXI_awprot),
    .S00_AXI_awregion(S00_AXI_awregion),
    .S00_AXI_awqos(S00_AXI_awqos),
    .S00_AXI_awvalid(S00_AXI_awvalid),
    .S00_AXI_awready(S00_AXI_awready),
    .S00_AXI_wdata(S00_AXI_wdata),
    .S00_AXI_wstrb(S00_AXI_wstrb),
    .S00_AXI_wlast(S00_AXI_wlast),
    .S00_AXI_wvalid(S00_AXI_wvalid),
    .S00_AXI_wready(S00_AXI_wready),
    .S00_AXI_bresp(S00_AXI_bresp),
    .S00_AXI_bvalid(S00_AXI_bvalid),
    .S00_AXI_bready(S00_AXI_bready),
    .S00_AXI_araddr(S00_AXI_araddr),
    .S00_AXI_arlen(S00_AXI_arlen),
    .S00_AXI_arsize(S00_AXI_arsize),
    .S00_AXI_arburst(S00_AXI_arburst),
    .S00_AXI_arlock(S00_AXI_arlock),
    .S00_AXI_arcache(S00_AXI_arcache),
    .S00_AXI_arprot(S00_AXI_arprot),
    .S00_AXI_arregion(S00_AXI_arregion),
    .S00_AXI_arqos(S00_AXI_arqos),
    .S00_AXI_arvalid(S00_AXI_arvalid),
    .S00_AXI_arready(S00_AXI_arready),
    .S00_AXI_rdata(S00_AXI_rdata),
    .S00_AXI_rresp(S00_AXI_rresp),
    .S00_AXI_rlast(S00_AXI_rlast),
    .S00_AXI_rvalid(S00_AXI_rvalid),
    .S00_AXI_rready(S00_AXI_rready),
    .S01_AXI_awaddr(S01_AXI_awaddr),
    .S01_AXI_awlen(S01_AXI_awlen),
    .S01_AXI_awsize(S01_AXI_awsize),
    .S01_AXI_awburst(S01_AXI_awburst),
    .S01_AXI_awlock(S01_AXI_awlock),
    .S01_AXI_awcache(S01_AXI_awcache),
    .S01_AXI_awprot(S01_AXI_awprot),
    .S01_AXI_awregion(S01_AXI_awregion),
    .S01_AXI_awqos(S01_AXI_awqos),
    .S01_AXI_awvalid(S01_AXI_awvalid),
    .S01_AXI_awready(S01_AXI_awready),
    .S01_AXI_wdata(S01_AXI_wdata),
    .S01_AXI_wstrb(S01_AXI_wstrb),
    .S01_AXI_wlast(S01_AXI_wlast),
    .S01_AXI_wvalid(S01_AXI_wvalid),
    .S01_AXI_wready(S01_AXI_wready),
    .S01_AXI_bresp(S01_AXI_bresp),
    .S01_AXI_bvalid(S01_AXI_bvalid),
    .S01_AXI_bready(S01_AXI_bready),
    .S01_AXI_araddr(S01_AXI_araddr),
    .S01_AXI_arlen(S01_AXI_arlen),
    .S01_AXI_arsize(S01_AXI_arsize),
    .S01_AXI_arburst(S01_AXI_arburst),
    .S01_AXI_arlock(S01_AXI_arlock),
    .S01_AXI_arcache(S01_AXI_arcache),
    .S01_AXI_arprot(S01_AXI_arprot),
    .S01_AXI_arregion(S01_AXI_arregion),
    .S01_AXI_arqos(S01_AXI_arqos),
    .S01_AXI_arvalid(S01_AXI_arvalid),
    .S01_AXI_arready(S01_AXI_arready),
    .S01_AXI_rdata(S01_AXI_rdata),
    .S01_AXI_rresp(S01_AXI_rresp),
    .S01_AXI_rlast(S01_AXI_rlast),
    .S01_AXI_rvalid(S01_AXI_rvalid),
    .S01_AXI_rready(S01_AXI_rready),
    .HBM00_AXI_awaddr(HBM00_AXI_awaddr),
    .HBM00_AXI_awlen(HBM00_AXI_awlen),
    .HBM00_AXI_awsize(HBM00_AXI_awsize),
    .HBM00_AXI_awburst(HBM00_AXI_awburst),
    .HBM00_AXI_awlock(HBM00_AXI_awlock),
    .HBM00_AXI_awcache(HBM00_AXI_awcache),
    .HBM00_AXI_awprot(HBM00_AXI_awprot),
    .HBM00_AXI_awvalid(HBM00_AXI_awvalid),
    .HBM00_AXI_awready(HBM00_AXI_awready),
    .HBM00_AXI_wdata(HBM00_AXI_wdata),
    .HBM00_AXI_wstrb(HBM00_AXI_wstrb),
    .HBM00_AXI_wlast(HBM00_AXI_wlast),
    .HBM00_AXI_wvalid(HBM00_AXI_wvalid),
    .HBM00_AXI_wready(HBM00_AXI_wready),
    .HBM00_AXI_bresp(HBM00_AXI_bresp),
    .HBM00_AXI_bvalid(HBM00_AXI_bvalid),
    .HBM00_AXI_bready(HBM00_AXI_bready),
    .HBM00_AXI_araddr(HBM00_AXI_araddr),
    .HBM00_AXI_arlen(HBM00_AXI_arlen),
    .HBM00_AXI_arsize(HBM00_AXI_arsize),
    .HBM00_AXI_arburst(HBM00_AXI_arburst),
    .HBM00_AXI_arlock(HBM00_AXI_arlock),
    .HBM00_AXI_arcache(HBM00_AXI_arcache),
    .HBM00_AXI_arprot(HBM00_AXI_arprot),
    .HBM00_AXI_arvalid(HBM00_AXI_arvalid),
    .HBM00_AXI_arready(HBM00_AXI_arready),
    .HBM00_AXI_rdata(HBM00_AXI_rdata),
    .HBM00_AXI_rresp(HBM00_AXI_rresp),
    .HBM00_AXI_rlast(HBM00_AXI_rlast),
    .HBM00_AXI_rvalid(HBM00_AXI_rvalid),
    .HBM00_AXI_rready(HBM00_AXI_rready),
    .HBM01_AXI_awaddr(HBM01_AXI_awaddr),
    .HBM01_AXI_awlen(HBM01_AXI_awlen),
    .HBM01_AXI_awsize(HBM01_AXI_awsize),
    .HBM01_AXI_awburst(HBM01_AXI_awburst),
    .HBM01_AXI_awlock(HBM01_AXI_awlock),
    .HBM01_AXI_awcache(HBM01_AXI_awcache),
    .HBM01_AXI_awprot(HBM01_AXI_awprot),
    .HBM01_AXI_awvalid(HBM01_AXI_awvalid),
    .HBM01_AXI_awready(HBM01_AXI_awready),
    .HBM01_AXI_wdata(HBM01_AXI_wdata),
    .HBM01_AXI_wstrb(HBM01_AXI_wstrb),
    .HBM01_AXI_wlast(HBM01_AXI_wlast),
    .HBM01_AXI_wvalid(HBM01_AXI_wvalid),
    .HBM01_AXI_wready(HBM01_AXI_wready),
    .HBM01_AXI_bresp(HBM01_AXI_bresp),
    .HBM01_AXI_bvalid(HBM01_AXI_bvalid),
    .HBM01_AXI_bready(HBM01_AXI_bready),
    .HBM01_AXI_araddr(HBM01_AXI_araddr),
    .HBM01_AXI_arlen(HBM01_AXI_arlen),
    .HBM01_AXI_arsize(HBM01_AXI_arsize),
    .HBM01_AXI_arburst(HBM01_AXI_arburst),
    .HBM01_AXI_arlock(HBM01_AXI_arlock),
    .HBM01_AXI_arcache(HBM01_AXI_arcache),
    .HBM01_AXI_arprot(HBM01_AXI_arprot),
    .HBM01_AXI_arvalid(HBM01_AXI_arvalid),
    .HBM01_AXI_arready(HBM01_AXI_arready),
    .HBM01_AXI_rdata(HBM01_AXI_rdata),
    .HBM01_AXI_rresp(HBM01_AXI_rresp),
    .HBM01_AXI_rlast(HBM01_AXI_rlast),
    .HBM01_AXI_rvalid(HBM01_AXI_rvalid),
    .HBM01_AXI_rready(HBM01_AXI_rready),
    .HBM02_AXI_awaddr(HBM02_AXI_awaddr),
    .HBM02_AXI_awlen(HBM02_AXI_awlen),
    .HBM02_AXI_awsize(HBM02_AXI_awsize),
    .HBM02_AXI_awburst(HBM02_AXI_awburst),
    .HBM02_AXI_awlock(HBM02_AXI_awlock),
    .HBM02_AXI_awcache(HBM02_AXI_awcache),
    .HBM02_AXI_awprot(HBM02_AXI_awprot),
    .HBM02_AXI_awvalid(HBM02_AXI_awvalid),
    .HBM02_AXI_awready(HBM02_AXI_awready),
    .HBM02_AXI_wdata(HBM02_AXI_wdata),
    .HBM02_AXI_wstrb(HBM02_AXI_wstrb),
    .HBM02_AXI_wlast(HBM02_AXI_wlast),
    .HBM02_AXI_wvalid(HBM02_AXI_wvalid),
    .HBM02_AXI_wready(HBM02_AXI_wready),
    .HBM02_AXI_bresp(HBM02_AXI_bresp),
    .HBM02_AXI_bvalid(HBM02_AXI_bvalid),
    .HBM02_AXI_bready(HBM02_AXI_bready),
    .HBM02_AXI_araddr(HBM02_AXI_araddr),
    .HBM02_AXI_arlen(HBM02_AXI_arlen),
    .HBM02_AXI_arsize(HBM02_AXI_arsize),
    .HBM02_AXI_arburst(HBM02_AXI_arburst),
    .HBM02_AXI_arlock(HBM02_AXI_arlock),
    .HBM02_AXI_arcache(HBM02_AXI_arcache),
    .HBM02_AXI_arprot(HBM02_AXI_arprot),
    .HBM02_AXI_arvalid(HBM02_AXI_arvalid),
    .HBM02_AXI_arready(HBM02_AXI_arready),
    .HBM02_AXI_rdata(HBM02_AXI_rdata),
    .HBM02_AXI_rresp(HBM02_AXI_rresp),
    .HBM02_AXI_rlast(HBM02_AXI_rlast),
    .HBM02_AXI_rvalid(HBM02_AXI_rvalid),
    .HBM02_AXI_rready(HBM02_AXI_rready),
    .HBM03_AXI_awaddr(HBM03_AXI_awaddr),
    .HBM03_AXI_awlen(HBM03_AXI_awlen),
    .HBM03_AXI_awsize(HBM03_AXI_awsize),
    .HBM03_AXI_awburst(HBM03_AXI_awburst),
    .HBM03_AXI_awlock(HBM03_AXI_awlock),
    .HBM03_AXI_awcache(HBM03_AXI_awcache),
    .HBM03_AXI_awprot(HBM03_AXI_awprot),
    .HBM03_AXI_awvalid(HBM03_AXI_awvalid),
    .HBM03_AXI_awready(HBM03_AXI_awready),
    .HBM03_AXI_wdata(HBM03_AXI_wdata),
    .HBM03_AXI_wstrb(HBM03_AXI_wstrb),
    .HBM03_AXI_wlast(HBM03_AXI_wlast),
    .HBM03_AXI_wvalid(HBM03_AXI_wvalid),
    .HBM03_AXI_wready(HBM03_AXI_wready),
    .HBM03_AXI_bresp(HBM03_AXI_bresp),
    .HBM03_AXI_bvalid(HBM03_AXI_bvalid),
    .HBM03_AXI_bready(HBM03_AXI_bready),
    .HBM03_AXI_araddr(HBM03_AXI_araddr),
    .HBM03_AXI_arlen(HBM03_AXI_arlen),
    .HBM03_AXI_arsize(HBM03_AXI_arsize),
    .HBM03_AXI_arburst(HBM03_AXI_arburst),
    .HBM03_AXI_arlock(HBM03_AXI_arlock),
    .HBM03_AXI_arcache(HBM03_AXI_arcache),
    .HBM03_AXI_arprot(HBM03_AXI_arprot),
    .HBM03_AXI_arvalid(HBM03_AXI_arvalid),
    .HBM03_AXI_arready(HBM03_AXI_arready),
    .HBM03_AXI_rdata(HBM03_AXI_rdata),
    .HBM03_AXI_rresp(HBM03_AXI_rresp),
    .HBM03_AXI_rlast(HBM03_AXI_rlast),
    .HBM03_AXI_rvalid(HBM03_AXI_rvalid),
    .HBM03_AXI_rready(HBM03_AXI_rready),
    .HBM04_AXI_awaddr(HBM04_AXI_awaddr),
    .HBM04_AXI_awlen(HBM04_AXI_awlen),
    .HBM04_AXI_awsize(HBM04_AXI_awsize),
    .HBM04_AXI_awburst(HBM04_AXI_awburst),
    .HBM04_AXI_awlock(HBM04_AXI_awlock),
    .HBM04_AXI_awcache(HBM04_AXI_awcache),
    .HBM04_AXI_awprot(HBM04_AXI_awprot),
    .HBM04_AXI_awvalid(HBM04_AXI_awvalid),
    .HBM04_AXI_awready(HBM04_AXI_awready),
    .HBM04_AXI_wdata(HBM04_AXI_wdata),
    .HBM04_AXI_wstrb(HBM04_AXI_wstrb),
    .HBM04_AXI_wlast(HBM04_AXI_wlast),
    .HBM04_AXI_wvalid(HBM04_AXI_wvalid),
    .HBM04_AXI_wready(HBM04_AXI_wready),
    .HBM04_AXI_bresp(HBM04_AXI_bresp),
    .HBM04_AXI_bvalid(HBM04_AXI_bvalid),
    .HBM04_AXI_bready(HBM04_AXI_bready),
    .HBM04_AXI_araddr(HBM04_AXI_araddr),
    .HBM04_AXI_arlen(HBM04_AXI_arlen),
    .HBM04_AXI_arsize(HBM04_AXI_arsize),
    .HBM04_AXI_arburst(HBM04_AXI_arburst),
    .HBM04_AXI_arlock(HBM04_AXI_arlock),
    .HBM04_AXI_arcache(HBM04_AXI_arcache),
    .HBM04_AXI_arprot(HBM04_AXI_arprot),
    .HBM04_AXI_arvalid(HBM04_AXI_arvalid),
    .HBM04_AXI_arready(HBM04_AXI_arready),
    .HBM04_AXI_rdata(HBM04_AXI_rdata),
    .HBM04_AXI_rresp(HBM04_AXI_rresp),
    .HBM04_AXI_rlast(HBM04_AXI_rlast),
    .HBM04_AXI_rvalid(HBM04_AXI_rvalid),
    .HBM04_AXI_rready(HBM04_AXI_rready),
    .HBM05_AXI_awaddr(HBM05_AXI_awaddr),
    .HBM05_AXI_awlen(HBM05_AXI_awlen),
    .HBM05_AXI_awsize(HBM05_AXI_awsize),
    .HBM05_AXI_awburst(HBM05_AXI_awburst),
    .HBM05_AXI_awlock(HBM05_AXI_awlock),
    .HBM05_AXI_awcache(HBM05_AXI_awcache),
    .HBM05_AXI_awprot(HBM05_AXI_awprot),
    .HBM05_AXI_awvalid(HBM05_AXI_awvalid),
    .HBM05_AXI_awready(HBM05_AXI_awready),
    .HBM05_AXI_wdata(HBM05_AXI_wdata),
    .HBM05_AXI_wstrb(HBM05_AXI_wstrb),
    .HBM05_AXI_wlast(HBM05_AXI_wlast),
    .HBM05_AXI_wvalid(HBM05_AXI_wvalid),
    .HBM05_AXI_wready(HBM05_AXI_wready),
    .HBM05_AXI_bresp(HBM05_AXI_bresp),
    .HBM05_AXI_bvalid(HBM05_AXI_bvalid),
    .HBM05_AXI_bready(HBM05_AXI_bready),
    .HBM05_AXI_araddr(HBM05_AXI_araddr),
    .HBM05_AXI_arlen(HBM05_AXI_arlen),
    .HBM05_AXI_arsize(HBM05_AXI_arsize),
    .HBM05_AXI_arburst(HBM05_AXI_arburst),
    .HBM05_AXI_arlock(HBM05_AXI_arlock),
    .HBM05_AXI_arcache(HBM05_AXI_arcache),
    .HBM05_AXI_arprot(HBM05_AXI_arprot),
    .HBM05_AXI_arvalid(HBM05_AXI_arvalid),
    .HBM05_AXI_arready(HBM05_AXI_arready),
    .HBM05_AXI_rdata(HBM05_AXI_rdata),
    .HBM05_AXI_rresp(HBM05_AXI_rresp),
    .HBM05_AXI_rlast(HBM05_AXI_rlast),
    .HBM05_AXI_rvalid(HBM05_AXI_rvalid),
    .HBM05_AXI_rready(HBM05_AXI_rready),
    .HBM06_AXI_awaddr(HBM06_AXI_awaddr),
    .HBM06_AXI_awlen(HBM06_AXI_awlen),
    .HBM06_AXI_awsize(HBM06_AXI_awsize),
    .HBM06_AXI_awburst(HBM06_AXI_awburst),
    .HBM06_AXI_awlock(HBM06_AXI_awlock),
    .HBM06_AXI_awcache(HBM06_AXI_awcache),
    .HBM06_AXI_awprot(HBM06_AXI_awprot),
    .HBM06_AXI_awvalid(HBM06_AXI_awvalid),
    .HBM06_AXI_awready(HBM06_AXI_awready),
    .HBM06_AXI_wdata(HBM06_AXI_wdata),
    .HBM06_AXI_wstrb(HBM06_AXI_wstrb),
    .HBM06_AXI_wlast(HBM06_AXI_wlast),
    .HBM06_AXI_wvalid(HBM06_AXI_wvalid),
    .HBM06_AXI_wready(HBM06_AXI_wready),
    .HBM06_AXI_bresp(HBM06_AXI_bresp),
    .HBM06_AXI_bvalid(HBM06_AXI_bvalid),
    .HBM06_AXI_bready(HBM06_AXI_bready),
    .HBM06_AXI_araddr(HBM06_AXI_araddr),
    .HBM06_AXI_arlen(HBM06_AXI_arlen),
    .HBM06_AXI_arsize(HBM06_AXI_arsize),
    .HBM06_AXI_arburst(HBM06_AXI_arburst),
    .HBM06_AXI_arlock(HBM06_AXI_arlock),
    .HBM06_AXI_arcache(HBM06_AXI_arcache),
    .HBM06_AXI_arprot(HBM06_AXI_arprot),
    .HBM06_AXI_arvalid(HBM06_AXI_arvalid),
    .HBM06_AXI_arready(HBM06_AXI_arready),
    .HBM06_AXI_rdata(HBM06_AXI_rdata),
    .HBM06_AXI_rresp(HBM06_AXI_rresp),
    .HBM06_AXI_rlast(HBM06_AXI_rlast),
    .HBM06_AXI_rvalid(HBM06_AXI_rvalid),
    .HBM06_AXI_rready(HBM06_AXI_rready),
    .HBM07_AXI_awaddr(HBM07_AXI_awaddr),
    .HBM07_AXI_awlen(HBM07_AXI_awlen),
    .HBM07_AXI_awsize(HBM07_AXI_awsize),
    .HBM07_AXI_awburst(HBM07_AXI_awburst),
    .HBM07_AXI_awlock(HBM07_AXI_awlock),
    .HBM07_AXI_awcache(HBM07_AXI_awcache),
    .HBM07_AXI_awprot(HBM07_AXI_awprot),
    .HBM07_AXI_awvalid(HBM07_AXI_awvalid),
    .HBM07_AXI_awready(HBM07_AXI_awready),
    .HBM07_AXI_wdata(HBM07_AXI_wdata),
    .HBM07_AXI_wstrb(HBM07_AXI_wstrb),
    .HBM07_AXI_wlast(HBM07_AXI_wlast),
    .HBM07_AXI_wvalid(HBM07_AXI_wvalid),
    .HBM07_AXI_wready(HBM07_AXI_wready),
    .HBM07_AXI_bresp(HBM07_AXI_bresp),
    .HBM07_AXI_bvalid(HBM07_AXI_bvalid),
    .HBM07_AXI_bready(HBM07_AXI_bready),
    .HBM07_AXI_araddr(HBM07_AXI_araddr),
    .HBM07_AXI_arlen(HBM07_AXI_arlen),
    .HBM07_AXI_arsize(HBM07_AXI_arsize),
    .HBM07_AXI_arburst(HBM07_AXI_arburst),
    .HBM07_AXI_arlock(HBM07_AXI_arlock),
    .HBM07_AXI_arcache(HBM07_AXI_arcache),
    .HBM07_AXI_arprot(HBM07_AXI_arprot),
    .HBM07_AXI_arvalid(HBM07_AXI_arvalid),
    .HBM07_AXI_arready(HBM07_AXI_arready),
    .HBM07_AXI_rdata(HBM07_AXI_rdata),
    .HBM07_AXI_rresp(HBM07_AXI_rresp),
    .HBM07_AXI_rlast(HBM07_AXI_rlast),
    .HBM07_AXI_rvalid(HBM07_AXI_rvalid),
    .HBM07_AXI_rready(HBM07_AXI_rready),
    .HBM08_AXI_awaddr(HBM08_AXI_awaddr),
    .HBM08_AXI_awlen(HBM08_AXI_awlen),
    .HBM08_AXI_awsize(HBM08_AXI_awsize),
    .HBM08_AXI_awburst(HBM08_AXI_awburst),
    .HBM08_AXI_awlock(HBM08_AXI_awlock),
    .HBM08_AXI_awcache(HBM08_AXI_awcache),
    .HBM08_AXI_awprot(HBM08_AXI_awprot),
    .HBM08_AXI_awvalid(HBM08_AXI_awvalid),
    .HBM08_AXI_awready(HBM08_AXI_awready),
    .HBM08_AXI_wdata(HBM08_AXI_wdata),
    .HBM08_AXI_wstrb(HBM08_AXI_wstrb),
    .HBM08_AXI_wlast(HBM08_AXI_wlast),
    .HBM08_AXI_wvalid(HBM08_AXI_wvalid),
    .HBM08_AXI_wready(HBM08_AXI_wready),
    .HBM08_AXI_bresp(HBM08_AXI_bresp),
    .HBM08_AXI_bvalid(HBM08_AXI_bvalid),
    .HBM08_AXI_bready(HBM08_AXI_bready),
    .HBM08_AXI_araddr(HBM08_AXI_araddr),
    .HBM08_AXI_arlen(HBM08_AXI_arlen),
    .HBM08_AXI_arsize(HBM08_AXI_arsize),
    .HBM08_AXI_arburst(HBM08_AXI_arburst),
    .HBM08_AXI_arlock(HBM08_AXI_arlock),
    .HBM08_AXI_arcache(HBM08_AXI_arcache),
    .HBM08_AXI_arprot(HBM08_AXI_arprot),
    .HBM08_AXI_arvalid(HBM08_AXI_arvalid),
    .HBM08_AXI_arready(HBM08_AXI_arready),
    .HBM08_AXI_rdata(HBM08_AXI_rdata),
    .HBM08_AXI_rresp(HBM08_AXI_rresp),
    .HBM08_AXI_rlast(HBM08_AXI_rlast),
    .HBM08_AXI_rvalid(HBM08_AXI_rvalid),
    .HBM08_AXI_rready(HBM08_AXI_rready),
    .HBM09_AXI_awaddr(HBM09_AXI_awaddr),
    .HBM09_AXI_awlen(HBM09_AXI_awlen),
    .HBM09_AXI_awsize(HBM09_AXI_awsize),
    .HBM09_AXI_awburst(HBM09_AXI_awburst),
    .HBM09_AXI_awlock(HBM09_AXI_awlock),
    .HBM09_AXI_awcache(HBM09_AXI_awcache),
    .HBM09_AXI_awprot(HBM09_AXI_awprot),
    .HBM09_AXI_awvalid(HBM09_AXI_awvalid),
    .HBM09_AXI_awready(HBM09_AXI_awready),
    .HBM09_AXI_wdata(HBM09_AXI_wdata),
    .HBM09_AXI_wstrb(HBM09_AXI_wstrb),
    .HBM09_AXI_wlast(HBM09_AXI_wlast),
    .HBM09_AXI_wvalid(HBM09_AXI_wvalid),
    .HBM09_AXI_wready(HBM09_AXI_wready),
    .HBM09_AXI_bresp(HBM09_AXI_bresp),
    .HBM09_AXI_bvalid(HBM09_AXI_bvalid),
    .HBM09_AXI_bready(HBM09_AXI_bready),
    .HBM09_AXI_araddr(HBM09_AXI_araddr),
    .HBM09_AXI_arlen(HBM09_AXI_arlen),
    .HBM09_AXI_arsize(HBM09_AXI_arsize),
    .HBM09_AXI_arburst(HBM09_AXI_arburst),
    .HBM09_AXI_arlock(HBM09_AXI_arlock),
    .HBM09_AXI_arcache(HBM09_AXI_arcache),
    .HBM09_AXI_arprot(HBM09_AXI_arprot),
    .HBM09_AXI_arvalid(HBM09_AXI_arvalid),
    .HBM09_AXI_arready(HBM09_AXI_arready),
    .HBM09_AXI_rdata(HBM09_AXI_rdata),
    .HBM09_AXI_rresp(HBM09_AXI_rresp),
    .HBM09_AXI_rlast(HBM09_AXI_rlast),
    .HBM09_AXI_rvalid(HBM09_AXI_rvalid),
    .HBM09_AXI_rready(HBM09_AXI_rready),
    .HBM10_AXI_awaddr(HBM10_AXI_awaddr),
    .HBM10_AXI_awlen(HBM10_AXI_awlen),
    .HBM10_AXI_awsize(HBM10_AXI_awsize),
    .HBM10_AXI_awburst(HBM10_AXI_awburst),
    .HBM10_AXI_awlock(HBM10_AXI_awlock),
    .HBM10_AXI_awcache(HBM10_AXI_awcache),
    .HBM10_AXI_awprot(HBM10_AXI_awprot),
    .HBM10_AXI_awvalid(HBM10_AXI_awvalid),
    .HBM10_AXI_awready(HBM10_AXI_awready),
    .HBM10_AXI_wdata(HBM10_AXI_wdata),
    .HBM10_AXI_wstrb(HBM10_AXI_wstrb),
    .HBM10_AXI_wlast(HBM10_AXI_wlast),
    .HBM10_AXI_wvalid(HBM10_AXI_wvalid),
    .HBM10_AXI_wready(HBM10_AXI_wready),
    .HBM10_AXI_bresp(HBM10_AXI_bresp),
    .HBM10_AXI_bvalid(HBM10_AXI_bvalid),
    .HBM10_AXI_bready(HBM10_AXI_bready),
    .HBM10_AXI_araddr(HBM10_AXI_araddr),
    .HBM10_AXI_arlen(HBM10_AXI_arlen),
    .HBM10_AXI_arsize(HBM10_AXI_arsize),
    .HBM10_AXI_arburst(HBM10_AXI_arburst),
    .HBM10_AXI_arlock(HBM10_AXI_arlock),
    .HBM10_AXI_arcache(HBM10_AXI_arcache),
    .HBM10_AXI_arprot(HBM10_AXI_arprot),
    .HBM10_AXI_arvalid(HBM10_AXI_arvalid),
    .HBM10_AXI_arready(HBM10_AXI_arready),
    .HBM10_AXI_rdata(HBM10_AXI_rdata),
    .HBM10_AXI_rresp(HBM10_AXI_rresp),
    .HBM10_AXI_rlast(HBM10_AXI_rlast),
    .HBM10_AXI_rvalid(HBM10_AXI_rvalid),
    .HBM10_AXI_rready(HBM10_AXI_rready),
    .HBM11_AXI_awaddr(HBM11_AXI_awaddr),
    .HBM11_AXI_awlen(HBM11_AXI_awlen),
    .HBM11_AXI_awsize(HBM11_AXI_awsize),
    .HBM11_AXI_awburst(HBM11_AXI_awburst),
    .HBM11_AXI_awlock(HBM11_AXI_awlock),
    .HBM11_AXI_awcache(HBM11_AXI_awcache),
    .HBM11_AXI_awprot(HBM11_AXI_awprot),
    .HBM11_AXI_awvalid(HBM11_AXI_awvalid),
    .HBM11_AXI_awready(HBM11_AXI_awready),
    .HBM11_AXI_wdata(HBM11_AXI_wdata),
    .HBM11_AXI_wstrb(HBM11_AXI_wstrb),
    .HBM11_AXI_wlast(HBM11_AXI_wlast),
    .HBM11_AXI_wvalid(HBM11_AXI_wvalid),
    .HBM11_AXI_wready(HBM11_AXI_wready),
    .HBM11_AXI_bresp(HBM11_AXI_bresp),
    .HBM11_AXI_bvalid(HBM11_AXI_bvalid),
    .HBM11_AXI_bready(HBM11_AXI_bready),
    .HBM11_AXI_araddr(HBM11_AXI_araddr),
    .HBM11_AXI_arlen(HBM11_AXI_arlen),
    .HBM11_AXI_arsize(HBM11_AXI_arsize),
    .HBM11_AXI_arburst(HBM11_AXI_arburst),
    .HBM11_AXI_arlock(HBM11_AXI_arlock),
    .HBM11_AXI_arcache(HBM11_AXI_arcache),
    .HBM11_AXI_arprot(HBM11_AXI_arprot),
    .HBM11_AXI_arvalid(HBM11_AXI_arvalid),
    .HBM11_AXI_arready(HBM11_AXI_arready),
    .HBM11_AXI_rdata(HBM11_AXI_rdata),
    .HBM11_AXI_rresp(HBM11_AXI_rresp),
    .HBM11_AXI_rlast(HBM11_AXI_rlast),
    .HBM11_AXI_rvalid(HBM11_AXI_rvalid),
    .HBM11_AXI_rready(HBM11_AXI_rready),
    .HBM12_AXI_awaddr(HBM12_AXI_awaddr),
    .HBM12_AXI_awlen(HBM12_AXI_awlen),
    .HBM12_AXI_awsize(HBM12_AXI_awsize),
    .HBM12_AXI_awburst(HBM12_AXI_awburst),
    .HBM12_AXI_awlock(HBM12_AXI_awlock),
    .HBM12_AXI_awcache(HBM12_AXI_awcache),
    .HBM12_AXI_awprot(HBM12_AXI_awprot),
    .HBM12_AXI_awvalid(HBM12_AXI_awvalid),
    .HBM12_AXI_awready(HBM12_AXI_awready),
    .HBM12_AXI_wdata(HBM12_AXI_wdata),
    .HBM12_AXI_wstrb(HBM12_AXI_wstrb),
    .HBM12_AXI_wlast(HBM12_AXI_wlast),
    .HBM12_AXI_wvalid(HBM12_AXI_wvalid),
    .HBM12_AXI_wready(HBM12_AXI_wready),
    .HBM12_AXI_bresp(HBM12_AXI_bresp),
    .HBM12_AXI_bvalid(HBM12_AXI_bvalid),
    .HBM12_AXI_bready(HBM12_AXI_bready),
    .HBM12_AXI_araddr(HBM12_AXI_araddr),
    .HBM12_AXI_arlen(HBM12_AXI_arlen),
    .HBM12_AXI_arsize(HBM12_AXI_arsize),
    .HBM12_AXI_arburst(HBM12_AXI_arburst),
    .HBM12_AXI_arlock(HBM12_AXI_arlock),
    .HBM12_AXI_arcache(HBM12_AXI_arcache),
    .HBM12_AXI_arprot(HBM12_AXI_arprot),
    .HBM12_AXI_arvalid(HBM12_AXI_arvalid),
    .HBM12_AXI_arready(HBM12_AXI_arready),
    .HBM12_AXI_rdata(HBM12_AXI_rdata),
    .HBM12_AXI_rresp(HBM12_AXI_rresp),
    .HBM12_AXI_rlast(HBM12_AXI_rlast),
    .HBM12_AXI_rvalid(HBM12_AXI_rvalid),
    .HBM12_AXI_rready(HBM12_AXI_rready),
    .HBM13_AXI_awaddr(HBM13_AXI_awaddr),
    .HBM13_AXI_awlen(HBM13_AXI_awlen),
    .HBM13_AXI_awsize(HBM13_AXI_awsize),
    .HBM13_AXI_awburst(HBM13_AXI_awburst),
    .HBM13_AXI_awlock(HBM13_AXI_awlock),
    .HBM13_AXI_awcache(HBM13_AXI_awcache),
    .HBM13_AXI_awprot(HBM13_AXI_awprot),
    .HBM13_AXI_awvalid(HBM13_AXI_awvalid),
    .HBM13_AXI_awready(HBM13_AXI_awready),
    .HBM13_AXI_wdata(HBM13_AXI_wdata),
    .HBM13_AXI_wstrb(HBM13_AXI_wstrb),
    .HBM13_AXI_wlast(HBM13_AXI_wlast),
    .HBM13_AXI_wvalid(HBM13_AXI_wvalid),
    .HBM13_AXI_wready(HBM13_AXI_wready),
    .HBM13_AXI_bresp(HBM13_AXI_bresp),
    .HBM13_AXI_bvalid(HBM13_AXI_bvalid),
    .HBM13_AXI_bready(HBM13_AXI_bready),
    .HBM13_AXI_araddr(HBM13_AXI_araddr),
    .HBM13_AXI_arlen(HBM13_AXI_arlen),
    .HBM13_AXI_arsize(HBM13_AXI_arsize),
    .HBM13_AXI_arburst(HBM13_AXI_arburst),
    .HBM13_AXI_arlock(HBM13_AXI_arlock),
    .HBM13_AXI_arcache(HBM13_AXI_arcache),
    .HBM13_AXI_arprot(HBM13_AXI_arprot),
    .HBM13_AXI_arvalid(HBM13_AXI_arvalid),
    .HBM13_AXI_arready(HBM13_AXI_arready),
    .HBM13_AXI_rdata(HBM13_AXI_rdata),
    .HBM13_AXI_rresp(HBM13_AXI_rresp),
    .HBM13_AXI_rlast(HBM13_AXI_rlast),
    .HBM13_AXI_rvalid(HBM13_AXI_rvalid),
    .HBM13_AXI_rready(HBM13_AXI_rready),
    .HBM14_AXI_awaddr(HBM14_AXI_awaddr),
    .HBM14_AXI_awlen(HBM14_AXI_awlen),
    .HBM14_AXI_awsize(HBM14_AXI_awsize),
    .HBM14_AXI_awburst(HBM14_AXI_awburst),
    .HBM14_AXI_awlock(HBM14_AXI_awlock),
    .HBM14_AXI_awcache(HBM14_AXI_awcache),
    .HBM14_AXI_awprot(HBM14_AXI_awprot),
    .HBM14_AXI_awvalid(HBM14_AXI_awvalid),
    .HBM14_AXI_awready(HBM14_AXI_awready),
    .HBM14_AXI_wdata(HBM14_AXI_wdata),
    .HBM14_AXI_wstrb(HBM14_AXI_wstrb),
    .HBM14_AXI_wlast(HBM14_AXI_wlast),
    .HBM14_AXI_wvalid(HBM14_AXI_wvalid),
    .HBM14_AXI_wready(HBM14_AXI_wready),
    .HBM14_AXI_bresp(HBM14_AXI_bresp),
    .HBM14_AXI_bvalid(HBM14_AXI_bvalid),
    .HBM14_AXI_bready(HBM14_AXI_bready),
    .HBM14_AXI_araddr(HBM14_AXI_araddr),
    .HBM14_AXI_arlen(HBM14_AXI_arlen),
    .HBM14_AXI_arsize(HBM14_AXI_arsize),
    .HBM14_AXI_arburst(HBM14_AXI_arburst),
    .HBM14_AXI_arlock(HBM14_AXI_arlock),
    .HBM14_AXI_arcache(HBM14_AXI_arcache),
    .HBM14_AXI_arprot(HBM14_AXI_arprot),
    .HBM14_AXI_arvalid(HBM14_AXI_arvalid),
    .HBM14_AXI_arready(HBM14_AXI_arready),
    .HBM14_AXI_rdata(HBM14_AXI_rdata),
    .HBM14_AXI_rresp(HBM14_AXI_rresp),
    .HBM14_AXI_rlast(HBM14_AXI_rlast),
    .HBM14_AXI_rvalid(HBM14_AXI_rvalid),
    .HBM14_AXI_rready(HBM14_AXI_rready),
    .HBM15_AXI_awaddr(HBM15_AXI_awaddr),
    .HBM15_AXI_awlen(HBM15_AXI_awlen),
    .HBM15_AXI_awsize(HBM15_AXI_awsize),
    .HBM15_AXI_awburst(HBM15_AXI_awburst),
    .HBM15_AXI_awlock(HBM15_AXI_awlock),
    .HBM15_AXI_awcache(HBM15_AXI_awcache),
    .HBM15_AXI_awprot(HBM15_AXI_awprot),
    .HBM15_AXI_awvalid(HBM15_AXI_awvalid),
    .HBM15_AXI_awready(HBM15_AXI_awready),
    .HBM15_AXI_wdata(HBM15_AXI_wdata),
    .HBM15_AXI_wstrb(HBM15_AXI_wstrb),
    .HBM15_AXI_wlast(HBM15_AXI_wlast),
    .HBM15_AXI_wvalid(HBM15_AXI_wvalid),
    .HBM15_AXI_wready(HBM15_AXI_wready),
    .HBM15_AXI_bresp(HBM15_AXI_bresp),
    .HBM15_AXI_bvalid(HBM15_AXI_bvalid),
    .HBM15_AXI_bready(HBM15_AXI_bready),
    .HBM15_AXI_araddr(HBM15_AXI_araddr),
    .HBM15_AXI_arlen(HBM15_AXI_arlen),
    .HBM15_AXI_arsize(HBM15_AXI_arsize),
    .HBM15_AXI_arburst(HBM15_AXI_arburst),
    .HBM15_AXI_arlock(HBM15_AXI_arlock),
    .HBM15_AXI_arcache(HBM15_AXI_arcache),
    .HBM15_AXI_arprot(HBM15_AXI_arprot),
    .HBM15_AXI_arvalid(HBM15_AXI_arvalid),
    .HBM15_AXI_arready(HBM15_AXI_arready),
    .HBM15_AXI_rdata(HBM15_AXI_rdata),
    .HBM15_AXI_rresp(HBM15_AXI_rresp),
    .HBM15_AXI_rlast(HBM15_AXI_rlast),
    .HBM15_AXI_rvalid(HBM15_AXI_rvalid),
    .HBM15_AXI_rready(HBM15_AXI_rready),
    .HBM16_AXI_awaddr(HBM16_AXI_awaddr),
    .HBM16_AXI_awlen(HBM16_AXI_awlen),
    .HBM16_AXI_awsize(HBM16_AXI_awsize),
    .HBM16_AXI_awburst(HBM16_AXI_awburst),
    .HBM16_AXI_awlock(HBM16_AXI_awlock),
    .HBM16_AXI_awcache(HBM16_AXI_awcache),
    .HBM16_AXI_awprot(HBM16_AXI_awprot),
    .HBM16_AXI_awvalid(HBM16_AXI_awvalid),
    .HBM16_AXI_awready(HBM16_AXI_awready),
    .HBM16_AXI_wdata(HBM16_AXI_wdata),
    .HBM16_AXI_wstrb(HBM16_AXI_wstrb),
    .HBM16_AXI_wlast(HBM16_AXI_wlast),
    .HBM16_AXI_wvalid(HBM16_AXI_wvalid),
    .HBM16_AXI_wready(HBM16_AXI_wready),
    .HBM16_AXI_bresp(HBM16_AXI_bresp),
    .HBM16_AXI_bvalid(HBM16_AXI_bvalid),
    .HBM16_AXI_bready(HBM16_AXI_bready),
    .HBM16_AXI_araddr(HBM16_AXI_araddr),
    .HBM16_AXI_arlen(HBM16_AXI_arlen),
    .HBM16_AXI_arsize(HBM16_AXI_arsize),
    .HBM16_AXI_arburst(HBM16_AXI_arburst),
    .HBM16_AXI_arlock(HBM16_AXI_arlock),
    .HBM16_AXI_arcache(HBM16_AXI_arcache),
    .HBM16_AXI_arprot(HBM16_AXI_arprot),
    .HBM16_AXI_arvalid(HBM16_AXI_arvalid),
    .HBM16_AXI_arready(HBM16_AXI_arready),
    .HBM16_AXI_rdata(HBM16_AXI_rdata),
    .HBM16_AXI_rresp(HBM16_AXI_rresp),
    .HBM16_AXI_rlast(HBM16_AXI_rlast),
    .HBM16_AXI_rvalid(HBM16_AXI_rvalid),
    .HBM16_AXI_rready(HBM16_AXI_rready),
    .HBM17_AXI_awaddr(HBM17_AXI_awaddr),
    .HBM17_AXI_awlen(HBM17_AXI_awlen),
    .HBM17_AXI_awsize(HBM17_AXI_awsize),
    .HBM17_AXI_awburst(HBM17_AXI_awburst),
    .HBM17_AXI_awlock(HBM17_AXI_awlock),
    .HBM17_AXI_awcache(HBM17_AXI_awcache),
    .HBM17_AXI_awprot(HBM17_AXI_awprot),
    .HBM17_AXI_awvalid(HBM17_AXI_awvalid),
    .HBM17_AXI_awready(HBM17_AXI_awready),
    .HBM17_AXI_wdata(HBM17_AXI_wdata),
    .HBM17_AXI_wstrb(HBM17_AXI_wstrb),
    .HBM17_AXI_wlast(HBM17_AXI_wlast),
    .HBM17_AXI_wvalid(HBM17_AXI_wvalid),
    .HBM17_AXI_wready(HBM17_AXI_wready),
    .HBM17_AXI_bresp(HBM17_AXI_bresp),
    .HBM17_AXI_bvalid(HBM17_AXI_bvalid),
    .HBM17_AXI_bready(HBM17_AXI_bready),
    .HBM17_AXI_araddr(HBM17_AXI_araddr),
    .HBM17_AXI_arlen(HBM17_AXI_arlen),
    .HBM17_AXI_arsize(HBM17_AXI_arsize),
    .HBM17_AXI_arburst(HBM17_AXI_arburst),
    .HBM17_AXI_arlock(HBM17_AXI_arlock),
    .HBM17_AXI_arcache(HBM17_AXI_arcache),
    .HBM17_AXI_arprot(HBM17_AXI_arprot),
    .HBM17_AXI_arvalid(HBM17_AXI_arvalid),
    .HBM17_AXI_arready(HBM17_AXI_arready),
    .HBM17_AXI_rdata(HBM17_AXI_rdata),
    .HBM17_AXI_rresp(HBM17_AXI_rresp),
    .HBM17_AXI_rlast(HBM17_AXI_rlast),
    .HBM17_AXI_rvalid(HBM17_AXI_rvalid),
    .HBM17_AXI_rready(HBM17_AXI_rready),
    .HBM18_AXI_awaddr(HBM18_AXI_awaddr),
    .HBM18_AXI_awlen(HBM18_AXI_awlen),
    .HBM18_AXI_awsize(HBM18_AXI_awsize),
    .HBM18_AXI_awburst(HBM18_AXI_awburst),
    .HBM18_AXI_awlock(HBM18_AXI_awlock),
    .HBM18_AXI_awcache(HBM18_AXI_awcache),
    .HBM18_AXI_awprot(HBM18_AXI_awprot),
    .HBM18_AXI_awvalid(HBM18_AXI_awvalid),
    .HBM18_AXI_awready(HBM18_AXI_awready),
    .HBM18_AXI_wdata(HBM18_AXI_wdata),
    .HBM18_AXI_wstrb(HBM18_AXI_wstrb),
    .HBM18_AXI_wlast(HBM18_AXI_wlast),
    .HBM18_AXI_wvalid(HBM18_AXI_wvalid),
    .HBM18_AXI_wready(HBM18_AXI_wready),
    .HBM18_AXI_bresp(HBM18_AXI_bresp),
    .HBM18_AXI_bvalid(HBM18_AXI_bvalid),
    .HBM18_AXI_bready(HBM18_AXI_bready),
    .HBM18_AXI_araddr(HBM18_AXI_araddr),
    .HBM18_AXI_arlen(HBM18_AXI_arlen),
    .HBM18_AXI_arsize(HBM18_AXI_arsize),
    .HBM18_AXI_arburst(HBM18_AXI_arburst),
    .HBM18_AXI_arlock(HBM18_AXI_arlock),
    .HBM18_AXI_arcache(HBM18_AXI_arcache),
    .HBM18_AXI_arprot(HBM18_AXI_arprot),
    .HBM18_AXI_arvalid(HBM18_AXI_arvalid),
    .HBM18_AXI_arready(HBM18_AXI_arready),
    .HBM18_AXI_rdata(HBM18_AXI_rdata),
    .HBM18_AXI_rresp(HBM18_AXI_rresp),
    .HBM18_AXI_rlast(HBM18_AXI_rlast),
    .HBM18_AXI_rvalid(HBM18_AXI_rvalid),
    .HBM18_AXI_rready(HBM18_AXI_rready),
    .HBM19_AXI_awaddr(HBM19_AXI_awaddr),
    .HBM19_AXI_awlen(HBM19_AXI_awlen),
    .HBM19_AXI_awsize(HBM19_AXI_awsize),
    .HBM19_AXI_awburst(HBM19_AXI_awburst),
    .HBM19_AXI_awlock(HBM19_AXI_awlock),
    .HBM19_AXI_awcache(HBM19_AXI_awcache),
    .HBM19_AXI_awprot(HBM19_AXI_awprot),
    .HBM19_AXI_awvalid(HBM19_AXI_awvalid),
    .HBM19_AXI_awready(HBM19_AXI_awready),
    .HBM19_AXI_wdata(HBM19_AXI_wdata),
    .HBM19_AXI_wstrb(HBM19_AXI_wstrb),
    .HBM19_AXI_wlast(HBM19_AXI_wlast),
    .HBM19_AXI_wvalid(HBM19_AXI_wvalid),
    .HBM19_AXI_wready(HBM19_AXI_wready),
    .HBM19_AXI_bresp(HBM19_AXI_bresp),
    .HBM19_AXI_bvalid(HBM19_AXI_bvalid),
    .HBM19_AXI_bready(HBM19_AXI_bready),
    .HBM19_AXI_araddr(HBM19_AXI_araddr),
    .HBM19_AXI_arlen(HBM19_AXI_arlen),
    .HBM19_AXI_arsize(HBM19_AXI_arsize),
    .HBM19_AXI_arburst(HBM19_AXI_arburst),
    .HBM19_AXI_arlock(HBM19_AXI_arlock),
    .HBM19_AXI_arcache(HBM19_AXI_arcache),
    .HBM19_AXI_arprot(HBM19_AXI_arprot),
    .HBM19_AXI_arvalid(HBM19_AXI_arvalid),
    .HBM19_AXI_arready(HBM19_AXI_arready),
    .HBM19_AXI_rdata(HBM19_AXI_rdata),
    .HBM19_AXI_rresp(HBM19_AXI_rresp),
    .HBM19_AXI_rlast(HBM19_AXI_rlast),
    .HBM19_AXI_rvalid(HBM19_AXI_rvalid),
    .HBM19_AXI_rready(HBM19_AXI_rready),
    .HBM20_AXI_awaddr(HBM20_AXI_awaddr),
    .HBM20_AXI_awlen(HBM20_AXI_awlen),
    .HBM20_AXI_awsize(HBM20_AXI_awsize),
    .HBM20_AXI_awburst(HBM20_AXI_awburst),
    .HBM20_AXI_awlock(HBM20_AXI_awlock),
    .HBM20_AXI_awcache(HBM20_AXI_awcache),
    .HBM20_AXI_awprot(HBM20_AXI_awprot),
    .HBM20_AXI_awvalid(HBM20_AXI_awvalid),
    .HBM20_AXI_awready(HBM20_AXI_awready),
    .HBM20_AXI_wdata(HBM20_AXI_wdata),
    .HBM20_AXI_wstrb(HBM20_AXI_wstrb),
    .HBM20_AXI_wlast(HBM20_AXI_wlast),
    .HBM20_AXI_wvalid(HBM20_AXI_wvalid),
    .HBM20_AXI_wready(HBM20_AXI_wready),
    .HBM20_AXI_bresp(HBM20_AXI_bresp),
    .HBM20_AXI_bvalid(HBM20_AXI_bvalid),
    .HBM20_AXI_bready(HBM20_AXI_bready),
    .HBM20_AXI_araddr(HBM20_AXI_araddr),
    .HBM20_AXI_arlen(HBM20_AXI_arlen),
    .HBM20_AXI_arsize(HBM20_AXI_arsize),
    .HBM20_AXI_arburst(HBM20_AXI_arburst),
    .HBM20_AXI_arlock(HBM20_AXI_arlock),
    .HBM20_AXI_arcache(HBM20_AXI_arcache),
    .HBM20_AXI_arprot(HBM20_AXI_arprot),
    .HBM20_AXI_arvalid(HBM20_AXI_arvalid),
    .HBM20_AXI_arready(HBM20_AXI_arready),
    .HBM20_AXI_rdata(HBM20_AXI_rdata),
    .HBM20_AXI_rresp(HBM20_AXI_rresp),
    .HBM20_AXI_rlast(HBM20_AXI_rlast),
    .HBM20_AXI_rvalid(HBM20_AXI_rvalid),
    .HBM20_AXI_rready(HBM20_AXI_rready),
    .HBM21_AXI_awaddr(HBM21_AXI_awaddr),
    .HBM21_AXI_awlen(HBM21_AXI_awlen),
    .HBM21_AXI_awsize(HBM21_AXI_awsize),
    .HBM21_AXI_awburst(HBM21_AXI_awburst),
    .HBM21_AXI_awlock(HBM21_AXI_awlock),
    .HBM21_AXI_awcache(HBM21_AXI_awcache),
    .HBM21_AXI_awprot(HBM21_AXI_awprot),
    .HBM21_AXI_awvalid(HBM21_AXI_awvalid),
    .HBM21_AXI_awready(HBM21_AXI_awready),
    .HBM21_AXI_wdata(HBM21_AXI_wdata),
    .HBM21_AXI_wstrb(HBM21_AXI_wstrb),
    .HBM21_AXI_wlast(HBM21_AXI_wlast),
    .HBM21_AXI_wvalid(HBM21_AXI_wvalid),
    .HBM21_AXI_wready(HBM21_AXI_wready),
    .HBM21_AXI_bresp(HBM21_AXI_bresp),
    .HBM21_AXI_bvalid(HBM21_AXI_bvalid),
    .HBM21_AXI_bready(HBM21_AXI_bready),
    .HBM21_AXI_araddr(HBM21_AXI_araddr),
    .HBM21_AXI_arlen(HBM21_AXI_arlen),
    .HBM21_AXI_arsize(HBM21_AXI_arsize),
    .HBM21_AXI_arburst(HBM21_AXI_arburst),
    .HBM21_AXI_arlock(HBM21_AXI_arlock),
    .HBM21_AXI_arcache(HBM21_AXI_arcache),
    .HBM21_AXI_arprot(HBM21_AXI_arprot),
    .HBM21_AXI_arvalid(HBM21_AXI_arvalid),
    .HBM21_AXI_arready(HBM21_AXI_arready),
    .HBM21_AXI_rdata(HBM21_AXI_rdata),
    .HBM21_AXI_rresp(HBM21_AXI_rresp),
    .HBM21_AXI_rlast(HBM21_AXI_rlast),
    .HBM21_AXI_rvalid(HBM21_AXI_rvalid),
    .HBM21_AXI_rready(HBM21_AXI_rready),
    .HBM22_AXI_awaddr(HBM22_AXI_awaddr),
    .HBM22_AXI_awlen(HBM22_AXI_awlen),
    .HBM22_AXI_awsize(HBM22_AXI_awsize),
    .HBM22_AXI_awburst(HBM22_AXI_awburst),
    .HBM22_AXI_awlock(HBM22_AXI_awlock),
    .HBM22_AXI_awcache(HBM22_AXI_awcache),
    .HBM22_AXI_awprot(HBM22_AXI_awprot),
    .HBM22_AXI_awvalid(HBM22_AXI_awvalid),
    .HBM22_AXI_awready(HBM22_AXI_awready),
    .HBM22_AXI_wdata(HBM22_AXI_wdata),
    .HBM22_AXI_wstrb(HBM22_AXI_wstrb),
    .HBM22_AXI_wlast(HBM22_AXI_wlast),
    .HBM22_AXI_wvalid(HBM22_AXI_wvalid),
    .HBM22_AXI_wready(HBM22_AXI_wready),
    .HBM22_AXI_bresp(HBM22_AXI_bresp),
    .HBM22_AXI_bvalid(HBM22_AXI_bvalid),
    .HBM22_AXI_bready(HBM22_AXI_bready),
    .HBM22_AXI_araddr(HBM22_AXI_araddr),
    .HBM22_AXI_arlen(HBM22_AXI_arlen),
    .HBM22_AXI_arsize(HBM22_AXI_arsize),
    .HBM22_AXI_arburst(HBM22_AXI_arburst),
    .HBM22_AXI_arlock(HBM22_AXI_arlock),
    .HBM22_AXI_arcache(HBM22_AXI_arcache),
    .HBM22_AXI_arprot(HBM22_AXI_arprot),
    .HBM22_AXI_arvalid(HBM22_AXI_arvalid),
    .HBM22_AXI_arready(HBM22_AXI_arready),
    .HBM22_AXI_rdata(HBM22_AXI_rdata),
    .HBM22_AXI_rresp(HBM22_AXI_rresp),
    .HBM22_AXI_rlast(HBM22_AXI_rlast),
    .HBM22_AXI_rvalid(HBM22_AXI_rvalid),
    .HBM22_AXI_rready(HBM22_AXI_rready),
    .HBM23_AXI_awaddr(HBM23_AXI_awaddr),
    .HBM23_AXI_awlen(HBM23_AXI_awlen),
    .HBM23_AXI_awsize(HBM23_AXI_awsize),
    .HBM23_AXI_awburst(HBM23_AXI_awburst),
    .HBM23_AXI_awlock(HBM23_AXI_awlock),
    .HBM23_AXI_awcache(HBM23_AXI_awcache),
    .HBM23_AXI_awprot(HBM23_AXI_awprot),
    .HBM23_AXI_awvalid(HBM23_AXI_awvalid),
    .HBM23_AXI_awready(HBM23_AXI_awready),
    .HBM23_AXI_wdata(HBM23_AXI_wdata),
    .HBM23_AXI_wstrb(HBM23_AXI_wstrb),
    .HBM23_AXI_wlast(HBM23_AXI_wlast),
    .HBM23_AXI_wvalid(HBM23_AXI_wvalid),
    .HBM23_AXI_wready(HBM23_AXI_wready),
    .HBM23_AXI_bresp(HBM23_AXI_bresp),
    .HBM23_AXI_bvalid(HBM23_AXI_bvalid),
    .HBM23_AXI_bready(HBM23_AXI_bready),
    .HBM23_AXI_araddr(HBM23_AXI_araddr),
    .HBM23_AXI_arlen(HBM23_AXI_arlen),
    .HBM23_AXI_arsize(HBM23_AXI_arsize),
    .HBM23_AXI_arburst(HBM23_AXI_arburst),
    .HBM23_AXI_arlock(HBM23_AXI_arlock),
    .HBM23_AXI_arcache(HBM23_AXI_arcache),
    .HBM23_AXI_arprot(HBM23_AXI_arprot),
    .HBM23_AXI_arvalid(HBM23_AXI_arvalid),
    .HBM23_AXI_arready(HBM23_AXI_arready),
    .HBM23_AXI_rdata(HBM23_AXI_rdata),
    .HBM23_AXI_rresp(HBM23_AXI_rresp),
    .HBM23_AXI_rlast(HBM23_AXI_rlast),
    .HBM23_AXI_rvalid(HBM23_AXI_rvalid),
    .HBM23_AXI_rready(HBM23_AXI_rready),
    .HBM24_AXI_awaddr(HBM24_AXI_awaddr),
    .HBM24_AXI_awlen(HBM24_AXI_awlen),
    .HBM24_AXI_awsize(HBM24_AXI_awsize),
    .HBM24_AXI_awburst(HBM24_AXI_awburst),
    .HBM24_AXI_awlock(HBM24_AXI_awlock),
    .HBM24_AXI_awcache(HBM24_AXI_awcache),
    .HBM24_AXI_awprot(HBM24_AXI_awprot),
    .HBM24_AXI_awvalid(HBM24_AXI_awvalid),
    .HBM24_AXI_awready(HBM24_AXI_awready),
    .HBM24_AXI_wdata(HBM24_AXI_wdata),
    .HBM24_AXI_wstrb(HBM24_AXI_wstrb),
    .HBM24_AXI_wlast(HBM24_AXI_wlast),
    .HBM24_AXI_wvalid(HBM24_AXI_wvalid),
    .HBM24_AXI_wready(HBM24_AXI_wready),
    .HBM24_AXI_bresp(HBM24_AXI_bresp),
    .HBM24_AXI_bvalid(HBM24_AXI_bvalid),
    .HBM24_AXI_bready(HBM24_AXI_bready),
    .HBM24_AXI_araddr(HBM24_AXI_araddr),
    .HBM24_AXI_arlen(HBM24_AXI_arlen),
    .HBM24_AXI_arsize(HBM24_AXI_arsize),
    .HBM24_AXI_arburst(HBM24_AXI_arburst),
    .HBM24_AXI_arlock(HBM24_AXI_arlock),
    .HBM24_AXI_arcache(HBM24_AXI_arcache),
    .HBM24_AXI_arprot(HBM24_AXI_arprot),
    .HBM24_AXI_arvalid(HBM24_AXI_arvalid),
    .HBM24_AXI_arready(HBM24_AXI_arready),
    .HBM24_AXI_rdata(HBM24_AXI_rdata),
    .HBM24_AXI_rresp(HBM24_AXI_rresp),
    .HBM24_AXI_rlast(HBM24_AXI_rlast),
    .HBM24_AXI_rvalid(HBM24_AXI_rvalid),
    .HBM24_AXI_rready(HBM24_AXI_rready),
    .HBM25_AXI_awaddr(HBM25_AXI_awaddr),
    .HBM25_AXI_awlen(HBM25_AXI_awlen),
    .HBM25_AXI_awsize(HBM25_AXI_awsize),
    .HBM25_AXI_awburst(HBM25_AXI_awburst),
    .HBM25_AXI_awlock(HBM25_AXI_awlock),
    .HBM25_AXI_awcache(HBM25_AXI_awcache),
    .HBM25_AXI_awprot(HBM25_AXI_awprot),
    .HBM25_AXI_awvalid(HBM25_AXI_awvalid),
    .HBM25_AXI_awready(HBM25_AXI_awready),
    .HBM25_AXI_wdata(HBM25_AXI_wdata),
    .HBM25_AXI_wstrb(HBM25_AXI_wstrb),
    .HBM25_AXI_wlast(HBM25_AXI_wlast),
    .HBM25_AXI_wvalid(HBM25_AXI_wvalid),
    .HBM25_AXI_wready(HBM25_AXI_wready),
    .HBM25_AXI_bresp(HBM25_AXI_bresp),
    .HBM25_AXI_bvalid(HBM25_AXI_bvalid),
    .HBM25_AXI_bready(HBM25_AXI_bready),
    .HBM25_AXI_araddr(HBM25_AXI_araddr),
    .HBM25_AXI_arlen(HBM25_AXI_arlen),
    .HBM25_AXI_arsize(HBM25_AXI_arsize),
    .HBM25_AXI_arburst(HBM25_AXI_arburst),
    .HBM25_AXI_arlock(HBM25_AXI_arlock),
    .HBM25_AXI_arcache(HBM25_AXI_arcache),
    .HBM25_AXI_arprot(HBM25_AXI_arprot),
    .HBM25_AXI_arvalid(HBM25_AXI_arvalid),
    .HBM25_AXI_arready(HBM25_AXI_arready),
    .HBM25_AXI_rdata(HBM25_AXI_rdata),
    .HBM25_AXI_rresp(HBM25_AXI_rresp),
    .HBM25_AXI_rlast(HBM25_AXI_rlast),
    .HBM25_AXI_rvalid(HBM25_AXI_rvalid),
    .HBM25_AXI_rready(HBM25_AXI_rready),
    .HBM26_AXI_awaddr(HBM26_AXI_awaddr),
    .HBM26_AXI_awlen(HBM26_AXI_awlen),
    .HBM26_AXI_awsize(HBM26_AXI_awsize),
    .HBM26_AXI_awburst(HBM26_AXI_awburst),
    .HBM26_AXI_awlock(HBM26_AXI_awlock),
    .HBM26_AXI_awcache(HBM26_AXI_awcache),
    .HBM26_AXI_awprot(HBM26_AXI_awprot),
    .HBM26_AXI_awvalid(HBM26_AXI_awvalid),
    .HBM26_AXI_awready(HBM26_AXI_awready),
    .HBM26_AXI_wdata(HBM26_AXI_wdata),
    .HBM26_AXI_wstrb(HBM26_AXI_wstrb),
    .HBM26_AXI_wlast(HBM26_AXI_wlast),
    .HBM26_AXI_wvalid(HBM26_AXI_wvalid),
    .HBM26_AXI_wready(HBM26_AXI_wready),
    .HBM26_AXI_bresp(HBM26_AXI_bresp),
    .HBM26_AXI_bvalid(HBM26_AXI_bvalid),
    .HBM26_AXI_bready(HBM26_AXI_bready),
    .HBM26_AXI_araddr(HBM26_AXI_araddr),
    .HBM26_AXI_arlen(HBM26_AXI_arlen),
    .HBM26_AXI_arsize(HBM26_AXI_arsize),
    .HBM26_AXI_arburst(HBM26_AXI_arburst),
    .HBM26_AXI_arlock(HBM26_AXI_arlock),
    .HBM26_AXI_arcache(HBM26_AXI_arcache),
    .HBM26_AXI_arprot(HBM26_AXI_arprot),
    .HBM26_AXI_arvalid(HBM26_AXI_arvalid),
    .HBM26_AXI_arready(HBM26_AXI_arready),
    .HBM26_AXI_rdata(HBM26_AXI_rdata),
    .HBM26_AXI_rresp(HBM26_AXI_rresp),
    .HBM26_AXI_rlast(HBM26_AXI_rlast),
    .HBM26_AXI_rvalid(HBM26_AXI_rvalid),
    .HBM26_AXI_rready(HBM26_AXI_rready),
    .HBM27_AXI_awaddr(HBM27_AXI_awaddr),
    .HBM27_AXI_awlen(HBM27_AXI_awlen),
    .HBM27_AXI_awsize(HBM27_AXI_awsize),
    .HBM27_AXI_awburst(HBM27_AXI_awburst),
    .HBM27_AXI_awlock(HBM27_AXI_awlock),
    .HBM27_AXI_awcache(HBM27_AXI_awcache),
    .HBM27_AXI_awprot(HBM27_AXI_awprot),
    .HBM27_AXI_awvalid(HBM27_AXI_awvalid),
    .HBM27_AXI_awready(HBM27_AXI_awready),
    .HBM27_AXI_wdata(HBM27_AXI_wdata),
    .HBM27_AXI_wstrb(HBM27_AXI_wstrb),
    .HBM27_AXI_wlast(HBM27_AXI_wlast),
    .HBM27_AXI_wvalid(HBM27_AXI_wvalid),
    .HBM27_AXI_wready(HBM27_AXI_wready),
    .HBM27_AXI_bresp(HBM27_AXI_bresp),
    .HBM27_AXI_bvalid(HBM27_AXI_bvalid),
    .HBM27_AXI_bready(HBM27_AXI_bready),
    .HBM27_AXI_araddr(HBM27_AXI_araddr),
    .HBM27_AXI_arlen(HBM27_AXI_arlen),
    .HBM27_AXI_arsize(HBM27_AXI_arsize),
    .HBM27_AXI_arburst(HBM27_AXI_arburst),
    .HBM27_AXI_arlock(HBM27_AXI_arlock),
    .HBM27_AXI_arcache(HBM27_AXI_arcache),
    .HBM27_AXI_arprot(HBM27_AXI_arprot),
    .HBM27_AXI_arvalid(HBM27_AXI_arvalid),
    .HBM27_AXI_arready(HBM27_AXI_arready),
    .HBM27_AXI_rdata(HBM27_AXI_rdata),
    .HBM27_AXI_rresp(HBM27_AXI_rresp),
    .HBM27_AXI_rlast(HBM27_AXI_rlast),
    .HBM27_AXI_rvalid(HBM27_AXI_rvalid),
    .HBM27_AXI_rready(HBM27_AXI_rready),
    .HBM28_AXI_awaddr(HBM28_AXI_awaddr),
    .HBM28_AXI_awlen(HBM28_AXI_awlen),
    .HBM28_AXI_awsize(HBM28_AXI_awsize),
    .HBM28_AXI_awburst(HBM28_AXI_awburst),
    .HBM28_AXI_awlock(HBM28_AXI_awlock),
    .HBM28_AXI_awcache(HBM28_AXI_awcache),
    .HBM28_AXI_awprot(HBM28_AXI_awprot),
    .HBM28_AXI_awvalid(HBM28_AXI_awvalid),
    .HBM28_AXI_awready(HBM28_AXI_awready),
    .HBM28_AXI_wdata(HBM28_AXI_wdata),
    .HBM28_AXI_wstrb(HBM28_AXI_wstrb),
    .HBM28_AXI_wlast(HBM28_AXI_wlast),
    .HBM28_AXI_wvalid(HBM28_AXI_wvalid),
    .HBM28_AXI_wready(HBM28_AXI_wready),
    .HBM28_AXI_bresp(HBM28_AXI_bresp),
    .HBM28_AXI_bvalid(HBM28_AXI_bvalid),
    .HBM28_AXI_bready(HBM28_AXI_bready),
    .HBM28_AXI_araddr(HBM28_AXI_araddr),
    .HBM28_AXI_arlen(HBM28_AXI_arlen),
    .HBM28_AXI_arsize(HBM28_AXI_arsize),
    .HBM28_AXI_arburst(HBM28_AXI_arburst),
    .HBM28_AXI_arlock(HBM28_AXI_arlock),
    .HBM28_AXI_arcache(HBM28_AXI_arcache),
    .HBM28_AXI_arprot(HBM28_AXI_arprot),
    .HBM28_AXI_arvalid(HBM28_AXI_arvalid),
    .HBM28_AXI_arready(HBM28_AXI_arready),
    .HBM28_AXI_rdata(HBM28_AXI_rdata),
    .HBM28_AXI_rresp(HBM28_AXI_rresp),
    .HBM28_AXI_rlast(HBM28_AXI_rlast),
    .HBM28_AXI_rvalid(HBM28_AXI_rvalid),
    .HBM28_AXI_rready(HBM28_AXI_rready),
    .HBM29_AXI_awaddr(HBM29_AXI_awaddr),
    .HBM29_AXI_awlen(HBM29_AXI_awlen),
    .HBM29_AXI_awsize(HBM29_AXI_awsize),
    .HBM29_AXI_awburst(HBM29_AXI_awburst),
    .HBM29_AXI_awlock(HBM29_AXI_awlock),
    .HBM29_AXI_awcache(HBM29_AXI_awcache),
    .HBM29_AXI_awprot(HBM29_AXI_awprot),
    .HBM29_AXI_awvalid(HBM29_AXI_awvalid),
    .HBM29_AXI_awready(HBM29_AXI_awready),
    .HBM29_AXI_wdata(HBM29_AXI_wdata),
    .HBM29_AXI_wstrb(HBM29_AXI_wstrb),
    .HBM29_AXI_wlast(HBM29_AXI_wlast),
    .HBM29_AXI_wvalid(HBM29_AXI_wvalid),
    .HBM29_AXI_wready(HBM29_AXI_wready),
    .HBM29_AXI_bresp(HBM29_AXI_bresp),
    .HBM29_AXI_bvalid(HBM29_AXI_bvalid),
    .HBM29_AXI_bready(HBM29_AXI_bready),
    .HBM29_AXI_araddr(HBM29_AXI_araddr),
    .HBM29_AXI_arlen(HBM29_AXI_arlen),
    .HBM29_AXI_arsize(HBM29_AXI_arsize),
    .HBM29_AXI_arburst(HBM29_AXI_arburst),
    .HBM29_AXI_arlock(HBM29_AXI_arlock),
    .HBM29_AXI_arcache(HBM29_AXI_arcache),
    .HBM29_AXI_arprot(HBM29_AXI_arprot),
    .HBM29_AXI_arvalid(HBM29_AXI_arvalid),
    .HBM29_AXI_arready(HBM29_AXI_arready),
    .HBM29_AXI_rdata(HBM29_AXI_rdata),
    .HBM29_AXI_rresp(HBM29_AXI_rresp),
    .HBM29_AXI_rlast(HBM29_AXI_rlast),
    .HBM29_AXI_rvalid(HBM29_AXI_rvalid),
    .HBM29_AXI_rready(HBM29_AXI_rready),
    .HBM30_AXI_awaddr(HBM30_AXI_awaddr),
    .HBM30_AXI_awlen(HBM30_AXI_awlen),
    .HBM30_AXI_awsize(HBM30_AXI_awsize),
    .HBM30_AXI_awburst(HBM30_AXI_awburst),
    .HBM30_AXI_awlock(HBM30_AXI_awlock),
    .HBM30_AXI_awcache(HBM30_AXI_awcache),
    .HBM30_AXI_awprot(HBM30_AXI_awprot),
    .HBM30_AXI_awvalid(HBM30_AXI_awvalid),
    .HBM30_AXI_awready(HBM30_AXI_awready),
    .HBM30_AXI_wdata(HBM30_AXI_wdata),
    .HBM30_AXI_wstrb(HBM30_AXI_wstrb),
    .HBM30_AXI_wlast(HBM30_AXI_wlast),
    .HBM30_AXI_wvalid(HBM30_AXI_wvalid),
    .HBM30_AXI_wready(HBM30_AXI_wready),
    .HBM30_AXI_bresp(HBM30_AXI_bresp),
    .HBM30_AXI_bvalid(HBM30_AXI_bvalid),
    .HBM30_AXI_bready(HBM30_AXI_bready),
    .HBM30_AXI_araddr(HBM30_AXI_araddr),
    .HBM30_AXI_arlen(HBM30_AXI_arlen),
    .HBM30_AXI_arsize(HBM30_AXI_arsize),
    .HBM30_AXI_arburst(HBM30_AXI_arburst),
    .HBM30_AXI_arlock(HBM30_AXI_arlock),
    .HBM30_AXI_arcache(HBM30_AXI_arcache),
    .HBM30_AXI_arprot(HBM30_AXI_arprot),
    .HBM30_AXI_arvalid(HBM30_AXI_arvalid),
    .HBM30_AXI_arready(HBM30_AXI_arready),
    .HBM30_AXI_rdata(HBM30_AXI_rdata),
    .HBM30_AXI_rresp(HBM30_AXI_rresp),
    .HBM30_AXI_rlast(HBM30_AXI_rlast),
    .HBM30_AXI_rvalid(HBM30_AXI_rvalid),
    .HBM30_AXI_rready(HBM30_AXI_rready),
    .HBM31_AXI_awaddr(HBM31_AXI_awaddr),
    .HBM31_AXI_awlen(HBM31_AXI_awlen),
    .HBM31_AXI_awsize(HBM31_AXI_awsize),
    .HBM31_AXI_awburst(HBM31_AXI_awburst),
    .HBM31_AXI_awlock(HBM31_AXI_awlock),
    .HBM31_AXI_awcache(HBM31_AXI_awcache),
    .HBM31_AXI_awprot(HBM31_AXI_awprot),
    .HBM31_AXI_awvalid(HBM31_AXI_awvalid),
    .HBM31_AXI_awready(HBM31_AXI_awready),
    .HBM31_AXI_wdata(HBM31_AXI_wdata),
    .HBM31_AXI_wstrb(HBM31_AXI_wstrb),
    .HBM31_AXI_wlast(HBM31_AXI_wlast),
    .HBM31_AXI_wvalid(HBM31_AXI_wvalid),
    .HBM31_AXI_wready(HBM31_AXI_wready),
    .HBM31_AXI_bresp(HBM31_AXI_bresp),
    .HBM31_AXI_bvalid(HBM31_AXI_bvalid),
    .HBM31_AXI_bready(HBM31_AXI_bready),
    .HBM31_AXI_araddr(HBM31_AXI_araddr),
    .HBM31_AXI_arlen(HBM31_AXI_arlen),
    .HBM31_AXI_arsize(HBM31_AXI_arsize),
    .HBM31_AXI_arburst(HBM31_AXI_arburst),
    .HBM31_AXI_arlock(HBM31_AXI_arlock),
    .HBM31_AXI_arcache(HBM31_AXI_arcache),
    .HBM31_AXI_arprot(HBM31_AXI_arprot),
    .HBM31_AXI_arvalid(HBM31_AXI_arvalid),
    .HBM31_AXI_arready(HBM31_AXI_arready),
    .HBM31_AXI_rdata(HBM31_AXI_rdata),
    .HBM31_AXI_rresp(HBM31_AXI_rresp),
    .HBM31_AXI_rlast(HBM31_AXI_rlast),
    .HBM31_AXI_rvalid(HBM31_AXI_rvalid),
    .HBM31_AXI_rready(HBM31_AXI_rready),
    .M00_AXI_awaddr(M00_AXI_awaddr),
    .M00_AXI_awlen(M00_AXI_awlen),
    .M00_AXI_awsize(M00_AXI_awsize),
    .M00_AXI_awburst(M00_AXI_awburst),
    .M00_AXI_awlock(M00_AXI_awlock),
    .M00_AXI_awcache(M00_AXI_awcache),
    .M00_AXI_awprot(M00_AXI_awprot),
    .M00_AXI_awregion(M00_AXI_awregion),
    .M00_AXI_awqos(M00_AXI_awqos),
    .M00_AXI_awvalid(M00_AXI_awvalid),
    .M00_AXI_awready(M00_AXI_awready),
    .M00_AXI_wdata(M00_AXI_wdata),
    .M00_AXI_wstrb(M00_AXI_wstrb),
    .M00_AXI_wlast(M00_AXI_wlast),
    .M00_AXI_wvalid(M00_AXI_wvalid),
    .M00_AXI_wready(M00_AXI_wready),
    .M00_AXI_bresp(M00_AXI_bresp),
    .M00_AXI_bvalid(M00_AXI_bvalid),
    .M00_AXI_bready(M00_AXI_bready),
    .M00_AXI_araddr(M00_AXI_araddr),
    .M00_AXI_arlen(M00_AXI_arlen),
    .M00_AXI_arsize(M00_AXI_arsize),
    .M00_AXI_arburst(M00_AXI_arburst),
    .M00_AXI_arlock(M00_AXI_arlock),
    .M00_AXI_arcache(M00_AXI_arcache),
    .M00_AXI_arprot(M00_AXI_arprot),
    .M00_AXI_arregion(M00_AXI_arregion),
    .M00_AXI_arqos(M00_AXI_arqos),
    .M00_AXI_arvalid(M00_AXI_arvalid),
    .M00_AXI_arready(M00_AXI_arready),
    .M00_AXI_rdata(M00_AXI_rdata),
    .M00_AXI_rresp(M00_AXI_rresp),
    .M00_AXI_rlast(M00_AXI_rlast),
    .M00_AXI_rvalid(M00_AXI_rvalid),
    .M00_AXI_rready(M00_AXI_rready),
    .M01_AXI_awaddr(M01_AXI_awaddr),
    .M01_AXI_awlen(M01_AXI_awlen),
    .M01_AXI_awsize(M01_AXI_awsize),
    .M01_AXI_awburst(M01_AXI_awburst),
    .M01_AXI_awlock(M01_AXI_awlock),
    .M01_AXI_awcache(M01_AXI_awcache),
    .M01_AXI_awprot(M01_AXI_awprot),
    .M01_AXI_awregion(M01_AXI_awregion),
    .M01_AXI_awqos(M01_AXI_awqos),
    .M01_AXI_awvalid(M01_AXI_awvalid),
    .M01_AXI_awready(M01_AXI_awready),
    .M01_AXI_wdata(M01_AXI_wdata),
    .M01_AXI_wstrb(M01_AXI_wstrb),
    .M01_AXI_wlast(M01_AXI_wlast),
    .M01_AXI_wvalid(M01_AXI_wvalid),
    .M01_AXI_wready(M01_AXI_wready),
    .M01_AXI_bresp(M01_AXI_bresp),
    .M01_AXI_bvalid(M01_AXI_bvalid),
    .M01_AXI_bready(M01_AXI_bready),
    .M01_AXI_araddr(M01_AXI_araddr),
    .M01_AXI_arlen(M01_AXI_arlen),
    .M01_AXI_arsize(M01_AXI_arsize),
    .M01_AXI_arburst(M01_AXI_arburst),
    .M01_AXI_arlock(M01_AXI_arlock),
    .M01_AXI_arcache(M01_AXI_arcache),
    .M01_AXI_arprot(M01_AXI_arprot),
    .M01_AXI_arregion(M01_AXI_arregion),
    .M01_AXI_arqos(M01_AXI_arqos),
    .M01_AXI_arvalid(M01_AXI_arvalid),
    .M01_AXI_arready(M01_AXI_arready),
    .M01_AXI_rdata(M01_AXI_rdata),
    .M01_AXI_rresp(M01_AXI_rresp),
    .M01_AXI_rlast(M01_AXI_rlast),
    .M01_AXI_rvalid(M01_AXI_rvalid),
    .M01_AXI_rready(M01_AXI_rready),
    .M02_AXI_awaddr(M02_AXI_awaddr),
    .M02_AXI_awlen(M02_AXI_awlen),
    .M02_AXI_awsize(M02_AXI_awsize),
    .M02_AXI_awburst(M02_AXI_awburst),
    .M02_AXI_awlock(M02_AXI_awlock),
    .M02_AXI_awcache(M02_AXI_awcache),
    .M02_AXI_awprot(M02_AXI_awprot),
    .M02_AXI_awregion(M02_AXI_awregion),
    .M02_AXI_awqos(M02_AXI_awqos),
    .M02_AXI_awvalid(M02_AXI_awvalid),
    .M02_AXI_awready(M02_AXI_awready),
    .M02_AXI_wdata(M02_AXI_wdata),
    .M02_AXI_wstrb(M02_AXI_wstrb),
    .M02_AXI_wlast(M02_AXI_wlast),
    .M02_AXI_wvalid(M02_AXI_wvalid),
    .M02_AXI_wready(M02_AXI_wready),
    .M02_AXI_bresp(M02_AXI_bresp),
    .M02_AXI_bvalid(M02_AXI_bvalid),
    .M02_AXI_bready(M02_AXI_bready),
    .M02_AXI_araddr(M02_AXI_araddr),
    .M02_AXI_arlen(M02_AXI_arlen),
    .M02_AXI_arsize(M02_AXI_arsize),
    .M02_AXI_arburst(M02_AXI_arburst),
    .M02_AXI_arlock(M02_AXI_arlock),
    .M02_AXI_arcache(M02_AXI_arcache),
    .M02_AXI_arprot(M02_AXI_arprot),
    .M02_AXI_arregion(M02_AXI_arregion),
    .M02_AXI_arqos(M02_AXI_arqos),
    .M02_AXI_arvalid(M02_AXI_arvalid),
    .M02_AXI_arready(M02_AXI_arready),
    .M02_AXI_rdata(M02_AXI_rdata),
    .M02_AXI_rresp(M02_AXI_rresp),
    .M02_AXI_rlast(M02_AXI_rlast),
    .M02_AXI_rvalid(M02_AXI_rvalid),
    .M02_AXI_rready(M02_AXI_rready),
    .M03_AXI_awaddr(M03_AXI_awaddr),
    .M03_AXI_awlen(M03_AXI_awlen),
    .M03_AXI_awsize(M03_AXI_awsize),
    .M03_AXI_awburst(M03_AXI_awburst),
    .M03_AXI_awlock(M03_AXI_awlock),
    .M03_AXI_awcache(M03_AXI_awcache),
    .M03_AXI_awprot(M03_AXI_awprot),
    .M03_AXI_awregion(M03_AXI_awregion),
    .M03_AXI_awqos(M03_AXI_awqos),
    .M03_AXI_awvalid(M03_AXI_awvalid),
    .M03_AXI_awready(M03_AXI_awready),
    .M03_AXI_wdata(M03_AXI_wdata),
    .M03_AXI_wstrb(M03_AXI_wstrb),
    .M03_AXI_wlast(M03_AXI_wlast),
    .M03_AXI_wvalid(M03_AXI_wvalid),
    .M03_AXI_wready(M03_AXI_wready),
    .M03_AXI_bresp(M03_AXI_bresp),
    .M03_AXI_bvalid(M03_AXI_bvalid),
    .M03_AXI_bready(M03_AXI_bready),
    .M03_AXI_araddr(M03_AXI_araddr),
    .M03_AXI_arlen(M03_AXI_arlen),
    .M03_AXI_arsize(M03_AXI_arsize),
    .M03_AXI_arburst(M03_AXI_arburst),
    .M03_AXI_arlock(M03_AXI_arlock),
    .M03_AXI_arcache(M03_AXI_arcache),
    .M03_AXI_arprot(M03_AXI_arprot),
    .M03_AXI_arregion(M03_AXI_arregion),
    .M03_AXI_arqos(M03_AXI_arqos),
    .M03_AXI_arvalid(M03_AXI_arvalid),
    .M03_AXI_arready(M03_AXI_arready),
    .M03_AXI_rdata(M03_AXI_rdata),
    .M03_AXI_rresp(M03_AXI_rresp),
    .M03_AXI_rlast(M03_AXI_rlast),
    .M03_AXI_rvalid(M03_AXI_rvalid),
    .M03_AXI_rready(M03_AXI_rready),
    .aclk0(aclk0),
    .aclk1(aclk1),
    .aclk2(aclk2),
    .aclk3(aclk3),
    .sys_clk0_clk_p(sys_clk0_clk_p),
    .sys_clk0_clk_n(sys_clk0_clk_n),
    .CH0_DDR4_0_dq(CH0_DDR4_0_dq),
    .CH0_DDR4_0_dqs_t(CH0_DDR4_0_dqs_t),
    .CH0_DDR4_0_dqs_c(CH0_DDR4_0_dqs_c),
    .CH0_DDR4_0_adr(CH0_DDR4_0_adr),
    .CH0_DDR4_0_ba(CH0_DDR4_0_ba),
    .CH0_DDR4_0_bg(CH0_DDR4_0_bg),
    .CH0_DDR4_0_act_n(CH0_DDR4_0_act_n),
    .CH0_DDR4_0_reset_n(CH0_DDR4_0_reset_n),
    .CH0_DDR4_0_ck_t(CH0_DDR4_0_ck_t),
    .CH0_DDR4_0_ck_c(CH0_DDR4_0_ck_c),
    .CH0_DDR4_0_cke(CH0_DDR4_0_cke),
    .CH0_DDR4_0_cs_n(CH0_DDR4_0_cs_n),
    .CH0_DDR4_0_odt(CH0_DDR4_0_odt),
    .CH0_DDR4_0_par(CH0_DDR4_0_par),
    .CH0_DDR4_0_alert_n(CH0_DDR4_0_alert_n),
    .sys_clk1_clk_p(sys_clk1_clk_p),
    .sys_clk1_clk_n(sys_clk1_clk_n),
    .CH0_DDR4_1_dq(CH0_DDR4_1_dq),
    .CH0_DDR4_1_dqs_t(CH0_DDR4_1_dqs_t),
    .CH0_DDR4_1_dqs_c(CH0_DDR4_1_dqs_c),
    .CH0_DDR4_1_adr(CH0_DDR4_1_adr),
    .CH0_DDR4_1_ba(CH0_DDR4_1_ba),
    .CH0_DDR4_1_bg(CH0_DDR4_1_bg),
    .CH0_DDR4_1_act_n(CH0_DDR4_1_act_n),
    .CH0_DDR4_1_reset_n(CH0_DDR4_1_reset_n),
    .CH0_DDR4_1_ck_t(CH0_DDR4_1_ck_t),
    .CH0_DDR4_1_ck_c(CH0_DDR4_1_ck_c),
    .CH0_DDR4_1_cke(CH0_DDR4_1_cke),
    .CH0_DDR4_1_cs_n(CH0_DDR4_1_cs_n),
    .CH0_DDR4_1_odt(CH0_DDR4_1_odt),
    .CH0_DDR4_1_par(CH0_DDR4_1_par),
    .CH0_DDR4_1_alert_n(CH0_DDR4_1_alert_n),
    .S01_AXI_arid(S01_AXI_arid),
    .S01_AXI_aruser(S01_AXI_aruser),
    .S01_AXI_awid(S01_AXI_awid),
    .S01_AXI_awuser(S01_AXI_awuser),
    .S01_AXI_bid(S01_AXI_bid),
    .S01_AXI_rid(S01_AXI_rid),
    .S01_AXI_ruser(S01_AXI_ruser),
    .S01_AXI_wuser(S01_AXI_wuser),
    .S00_AXI_arid(S00_AXI_arid),
    .S00_AXI_aruser(S00_AXI_aruser),
    .S00_AXI_awid(S00_AXI_awid),
    .S00_AXI_awuser(S00_AXI_awuser),
    .S00_AXI_bid(S00_AXI_bid),
    .S00_AXI_rid(S00_AXI_rid),
    .S00_AXI_ruser(S00_AXI_ruser),
    .S00_AXI_wuser(S00_AXI_wuser),
    .HBM28_AXI_arid(HBM28_AXI_arid),
    .HBM28_AXI_aruser(HBM28_AXI_aruser),
    .HBM28_AXI_awid(HBM28_AXI_awid),
    .HBM28_AXI_awuser(HBM28_AXI_awuser),
    .HBM28_AXI_bid(HBM28_AXI_bid),
    .HBM28_AXI_buser(HBM28_AXI_buser),
    .HBM28_AXI_rid(HBM28_AXI_rid),
    .HBM27_AXI_arid(HBM27_AXI_arid),
    .HBM27_AXI_aruser(HBM27_AXI_aruser),
    .HBM27_AXI_awid(HBM27_AXI_awid),
    .HBM27_AXI_awuser(HBM27_AXI_awuser),
    .HBM27_AXI_bid(HBM27_AXI_bid),
    .HBM27_AXI_buser(HBM27_AXI_buser),
    .HBM27_AXI_rid(HBM27_AXI_rid),
    .HBM25_AXI_arid(HBM25_AXI_arid),
    .HBM25_AXI_aruser(HBM25_AXI_aruser),
    .HBM25_AXI_awid(HBM25_AXI_awid),
    .HBM25_AXI_awuser(HBM25_AXI_awuser),
    .HBM25_AXI_bid(HBM25_AXI_bid),
    .HBM25_AXI_buser(HBM25_AXI_buser),
    .HBM25_AXI_rid(HBM25_AXI_rid),
    .HBM24_AXI_arid(HBM24_AXI_arid),
    .HBM24_AXI_aruser(HBM24_AXI_aruser),
    .HBM24_AXI_awid(HBM24_AXI_awid),
    .HBM24_AXI_awuser(HBM24_AXI_awuser),
    .HBM24_AXI_bid(HBM24_AXI_bid),
    .HBM24_AXI_buser(HBM24_AXI_buser),
    .HBM24_AXI_rid(HBM24_AXI_rid),
    .HBM23_AXI_arid(HBM23_AXI_arid),
    .HBM23_AXI_aruser(HBM23_AXI_aruser),
    .HBM23_AXI_awid(HBM23_AXI_awid),
    .HBM23_AXI_awuser(HBM23_AXI_awuser),
    .HBM23_AXI_bid(HBM23_AXI_bid),
    .HBM23_AXI_buser(HBM23_AXI_buser),
    .HBM23_AXI_rid(HBM23_AXI_rid),
    .HBM20_AXI_arid(HBM20_AXI_arid),
    .HBM20_AXI_aruser(HBM20_AXI_aruser),
    .HBM20_AXI_awid(HBM20_AXI_awid),
    .HBM20_AXI_awuser(HBM20_AXI_awuser),
    .HBM20_AXI_bid(HBM20_AXI_bid),
    .HBM20_AXI_buser(HBM20_AXI_buser),
    .HBM20_AXI_rid(HBM20_AXI_rid),
    .HBM19_AXI_arid(HBM19_AXI_arid),
    .HBM19_AXI_aruser(HBM19_AXI_aruser),
    .HBM19_AXI_awid(HBM19_AXI_awid),
    .HBM19_AXI_awuser(HBM19_AXI_awuser),
    .HBM19_AXI_bid(HBM19_AXI_bid),
    .HBM19_AXI_buser(HBM19_AXI_buser),
    .HBM19_AXI_rid(HBM19_AXI_rid),
    .HBM18_AXI_arid(HBM18_AXI_arid),
    .HBM18_AXI_aruser(HBM18_AXI_aruser),
    .HBM18_AXI_awid(HBM18_AXI_awid),
    .HBM18_AXI_awuser(HBM18_AXI_awuser),
    .HBM18_AXI_bid(HBM18_AXI_bid),
    .HBM18_AXI_buser(HBM18_AXI_buser),
    .HBM18_AXI_rid(HBM18_AXI_rid),
    .HBM17_AXI_arid(HBM17_AXI_arid),
    .HBM17_AXI_aruser(HBM17_AXI_aruser),
    .HBM17_AXI_awid(HBM17_AXI_awid),
    .HBM17_AXI_awuser(HBM17_AXI_awuser),
    .HBM17_AXI_bid(HBM17_AXI_bid),
    .HBM17_AXI_buser(HBM17_AXI_buser),
    .HBM17_AXI_rid(HBM17_AXI_rid),
    .HBM21_AXI_arid(HBM21_AXI_arid),
    .HBM21_AXI_aruser(HBM21_AXI_aruser),
    .HBM21_AXI_awid(HBM21_AXI_awid),
    .HBM21_AXI_awuser(HBM21_AXI_awuser),
    .HBM21_AXI_bid(HBM21_AXI_bid),
    .HBM21_AXI_buser(HBM21_AXI_buser),
    .HBM21_AXI_rid(HBM21_AXI_rid),
    .HBM16_AXI_arid(HBM16_AXI_arid),
    .HBM16_AXI_aruser(HBM16_AXI_aruser),
    .HBM16_AXI_awid(HBM16_AXI_awid),
    .HBM16_AXI_awuser(HBM16_AXI_awuser),
    .HBM16_AXI_bid(HBM16_AXI_bid),
    .HBM16_AXI_buser(HBM16_AXI_buser),
    .HBM16_AXI_rid(HBM16_AXI_rid),
    .HBM05_AXI_arid(HBM05_AXI_arid),
    .HBM05_AXI_aruser(HBM05_AXI_aruser),
    .HBM05_AXI_awid(HBM05_AXI_awid),
    .HBM05_AXI_awuser(HBM05_AXI_awuser),
    .HBM05_AXI_bid(HBM05_AXI_bid),
    .HBM05_AXI_buser(HBM05_AXI_buser),
    .HBM05_AXI_rid(HBM05_AXI_rid),
    .HBM04_AXI_arid(HBM04_AXI_arid),
    .HBM04_AXI_aruser(HBM04_AXI_aruser),
    .HBM04_AXI_awid(HBM04_AXI_awid),
    .HBM04_AXI_awuser(HBM04_AXI_awuser),
    .HBM04_AXI_bid(HBM04_AXI_bid),
    .HBM04_AXI_buser(HBM04_AXI_buser),
    .HBM04_AXI_rid(HBM04_AXI_rid),
    .HBM08_AXI_arid(HBM08_AXI_arid),
    .HBM08_AXI_aruser(HBM08_AXI_aruser),
    .HBM08_AXI_awid(HBM08_AXI_awid),
    .HBM08_AXI_awuser(HBM08_AXI_awuser),
    .HBM08_AXI_bid(HBM08_AXI_bid),
    .HBM08_AXI_buser(HBM08_AXI_buser),
    .HBM08_AXI_rid(HBM08_AXI_rid),
    .HBM03_AXI_arid(HBM03_AXI_arid),
    .HBM03_AXI_aruser(HBM03_AXI_aruser),
    .HBM03_AXI_awid(HBM03_AXI_awid),
    .HBM03_AXI_awuser(HBM03_AXI_awuser),
    .HBM03_AXI_bid(HBM03_AXI_bid),
    .HBM03_AXI_buser(HBM03_AXI_buser),
    .HBM03_AXI_rid(HBM03_AXI_rid),
    .HBM02_AXI_arid(HBM02_AXI_arid),
    .HBM02_AXI_aruser(HBM02_AXI_aruser),
    .HBM02_AXI_awid(HBM02_AXI_awid),
    .HBM02_AXI_awuser(HBM02_AXI_awuser),
    .HBM02_AXI_bid(HBM02_AXI_bid),
    .HBM02_AXI_buser(HBM02_AXI_buser),
    .HBM02_AXI_rid(HBM02_AXI_rid),
    .HBM31_AXI_arid(HBM31_AXI_arid),
    .HBM31_AXI_aruser(HBM31_AXI_aruser),
    .HBM31_AXI_awid(HBM31_AXI_awid),
    .HBM31_AXI_awuser(HBM31_AXI_awuser),
    .HBM31_AXI_bid(HBM31_AXI_bid),
    .HBM31_AXI_buser(HBM31_AXI_buser),
    .HBM31_AXI_rid(HBM31_AXI_rid),
    .HBM00_AXI_arid(HBM00_AXI_arid),
    .HBM00_AXI_aruser(HBM00_AXI_aruser),
    .HBM00_AXI_awid(HBM00_AXI_awid),
    .HBM00_AXI_awuser(HBM00_AXI_awuser),
    .HBM00_AXI_bid(HBM00_AXI_bid),
    .HBM00_AXI_buser(HBM00_AXI_buser),
    .HBM00_AXI_rid(HBM00_AXI_rid),
    .HBM26_AXI_arid(HBM26_AXI_arid),
    .HBM26_AXI_aruser(HBM26_AXI_aruser),
    .HBM26_AXI_awid(HBM26_AXI_awid),
    .HBM26_AXI_awuser(HBM26_AXI_awuser),
    .HBM26_AXI_bid(HBM26_AXI_bid),
    .HBM26_AXI_buser(HBM26_AXI_buser),
    .HBM26_AXI_rid(HBM26_AXI_rid),
    .HBM01_AXI_arid(HBM01_AXI_arid),
    .HBM01_AXI_aruser(HBM01_AXI_aruser),
    .HBM01_AXI_awid(HBM01_AXI_awid),
    .HBM01_AXI_awuser(HBM01_AXI_awuser),
    .HBM01_AXI_bid(HBM01_AXI_bid),
    .HBM01_AXI_buser(HBM01_AXI_buser),
    .HBM01_AXI_rid(HBM01_AXI_rid),
    .HBM06_AXI_arid(HBM06_AXI_arid),
    .HBM06_AXI_aruser(HBM06_AXI_aruser),
    .HBM06_AXI_awid(HBM06_AXI_awid),
    .HBM06_AXI_awuser(HBM06_AXI_awuser),
    .HBM06_AXI_bid(HBM06_AXI_bid),
    .HBM06_AXI_buser(HBM06_AXI_buser),
    .HBM06_AXI_rid(HBM06_AXI_rid),
    .HBM10_AXI_arid(HBM10_AXI_arid),
    .HBM10_AXI_aruser(HBM10_AXI_aruser),
    .HBM10_AXI_awid(HBM10_AXI_awid),
    .HBM10_AXI_awuser(HBM10_AXI_awuser),
    .HBM10_AXI_bid(HBM10_AXI_bid),
    .HBM10_AXI_buser(HBM10_AXI_buser),
    .HBM10_AXI_rid(HBM10_AXI_rid),
    .HBM29_AXI_arid(HBM29_AXI_arid),
    .HBM29_AXI_aruser(HBM29_AXI_aruser),
    .HBM29_AXI_awid(HBM29_AXI_awid),
    .HBM29_AXI_awuser(HBM29_AXI_awuser),
    .HBM29_AXI_bid(HBM29_AXI_bid),
    .HBM29_AXI_buser(HBM29_AXI_buser),
    .HBM29_AXI_rid(HBM29_AXI_rid),
    .HBM11_AXI_arid(HBM11_AXI_arid),
    .HBM11_AXI_aruser(HBM11_AXI_aruser),
    .HBM11_AXI_awid(HBM11_AXI_awid),
    .HBM11_AXI_awuser(HBM11_AXI_awuser),
    .HBM11_AXI_bid(HBM11_AXI_bid),
    .HBM11_AXI_buser(HBM11_AXI_buser),
    .HBM11_AXI_rid(HBM11_AXI_rid),
    .HBM22_AXI_arid(HBM22_AXI_arid),
    .HBM22_AXI_aruser(HBM22_AXI_aruser),
    .HBM22_AXI_awid(HBM22_AXI_awid),
    .HBM22_AXI_awuser(HBM22_AXI_awuser),
    .HBM22_AXI_bid(HBM22_AXI_bid),
    .HBM22_AXI_buser(HBM22_AXI_buser),
    .HBM22_AXI_rid(HBM22_AXI_rid),
    .HBM15_AXI_arid(HBM15_AXI_arid),
    .HBM15_AXI_aruser(HBM15_AXI_aruser),
    .HBM15_AXI_awid(HBM15_AXI_awid),
    .HBM15_AXI_awuser(HBM15_AXI_awuser),
    .HBM15_AXI_bid(HBM15_AXI_bid),
    .HBM15_AXI_buser(HBM15_AXI_buser),
    .HBM15_AXI_rid(HBM15_AXI_rid),
    .HBM12_AXI_arid(HBM12_AXI_arid),
    .HBM12_AXI_aruser(HBM12_AXI_aruser),
    .HBM12_AXI_awid(HBM12_AXI_awid),
    .HBM12_AXI_awuser(HBM12_AXI_awuser),
    .HBM12_AXI_bid(HBM12_AXI_bid),
    .HBM12_AXI_buser(HBM12_AXI_buser),
    .HBM12_AXI_rid(HBM12_AXI_rid),
    .HBM30_AXI_arid(HBM30_AXI_arid),
    .HBM30_AXI_aruser(HBM30_AXI_aruser),
    .HBM30_AXI_awid(HBM30_AXI_awid),
    .HBM30_AXI_awuser(HBM30_AXI_awuser),
    .HBM30_AXI_bid(HBM30_AXI_bid),
    .HBM30_AXI_buser(HBM30_AXI_buser),
    .HBM30_AXI_rid(HBM30_AXI_rid),
    .HBM13_AXI_arid(HBM13_AXI_arid),
    .HBM13_AXI_aruser(HBM13_AXI_aruser),
    .HBM13_AXI_awid(HBM13_AXI_awid),
    .HBM13_AXI_awuser(HBM13_AXI_awuser),
    .HBM13_AXI_bid(HBM13_AXI_bid),
    .HBM13_AXI_buser(HBM13_AXI_buser),
    .HBM13_AXI_rid(HBM13_AXI_rid),
    .HBM07_AXI_arid(HBM07_AXI_arid),
    .HBM07_AXI_aruser(HBM07_AXI_aruser),
    .HBM07_AXI_awid(HBM07_AXI_awid),
    .HBM07_AXI_awuser(HBM07_AXI_awuser),
    .HBM07_AXI_bid(HBM07_AXI_bid),
    .HBM07_AXI_buser(HBM07_AXI_buser),
    .HBM07_AXI_rid(HBM07_AXI_rid),
    .HBM09_AXI_arid(HBM09_AXI_arid),
    .HBM09_AXI_aruser(HBM09_AXI_aruser),
    .HBM09_AXI_awid(HBM09_AXI_awid),
    .HBM09_AXI_awuser(HBM09_AXI_awuser),
    .HBM09_AXI_bid(HBM09_AXI_bid),
    .HBM09_AXI_buser(HBM09_AXI_buser),
    .HBM09_AXI_rid(HBM09_AXI_rid),
    .HBM14_AXI_arid(HBM14_AXI_arid),
    .HBM14_AXI_aruser(HBM14_AXI_aruser),
    .HBM14_AXI_awid(HBM14_AXI_awid),
    .HBM14_AXI_awuser(HBM14_AXI_awuser),
    .HBM14_AXI_bid(HBM14_AXI_bid),
    .HBM14_AXI_buser(HBM14_AXI_buser),
    .HBM14_AXI_rid(HBM14_AXI_rid),
    .M00_AXI_arid(M00_AXI_arid),
    .M00_AXI_aruser(M00_AXI_aruser),
    .M00_AXI_awid(M00_AXI_awid),
    .M00_AXI_awuser(M00_AXI_awuser),
    .M00_AXI_bid(M00_AXI_bid),
    .M00_AXI_rid(M00_AXI_rid),
    .M03_AXI_arid(M03_AXI_arid),
    .M03_AXI_aruser(M03_AXI_aruser),
    .M03_AXI_awid(M03_AXI_awid),
    .M03_AXI_awuser(M03_AXI_awuser),
    .M03_AXI_bid(M03_AXI_bid),
    .M03_AXI_rid(M03_AXI_rid),
    .M01_AXI_arid(M01_AXI_arid),
    .M01_AXI_aruser(M01_AXI_aruser),
    .M01_AXI_awid(M01_AXI_awid),
    .M01_AXI_awuser(M01_AXI_awuser),
    .M01_AXI_bid(M01_AXI_bid),
    .M01_AXI_rid(M01_AXI_rid),
    .M02_AXI_arid(M02_AXI_arid),
    .M02_AXI_aruser(M02_AXI_aruser),
    .M02_AXI_awid(M02_AXI_awid),
    .M02_AXI_awuser(M02_AXI_awuser),
    .M02_AXI_bid(M02_AXI_bid),
    .M02_AXI_rid(M02_AXI_rid)
  );
endmodule
