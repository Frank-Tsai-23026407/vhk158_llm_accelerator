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


// IP VLNV: xilinx.com:ip:pcie_qdma_mailbox:1.0
// IP Revision: 8

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module cpm_pcie_pcie_qdma_mailbox_0_0 (
  axi_aclk,
  axi_aresetn,
  ip_clk,
  ip_resetn,
  S_AXI_0_awaddr,
  S_AXI_0_awprot,
  S_AXI_0_awvalid,
  S_AXI_0_awready,
  S_AXI_0_wdata,
  S_AXI_0_wstrb,
  S_AXI_0_wvalid,
  S_AXI_0_wready,
  S_AXI_0_bvalid,
  S_AXI_0_bresp,
  S_AXI_0_bready,
  S_AXI_0_araddr,
  S_AXI_0_arprot,
  S_AXI_0_arvalid,
  S_AXI_0_arready,
  S_AXI_0_rdata,
  S_AXI_0_rresp,
  S_AXI_0_rvalid,
  S_AXI_0_rready,
  mgmt_req_vld,
  mgmt_req_rdy,
  mgmt_req_dat,
  mgmt_req_adr,
  mgmt_req_fnc,
  mgmt_req_msc,
  mgmt_req_cmd,
  mgmt_cpl_vld,
  mgmt_cpl_rdy,
  mgmt_cpl_sts,
  mgmt_cpl_dat,
  dma_flr_out_fnc,
  dma_flr_out_set,
  dma_flr_out_clr,
  dma_flr_in_fnc,
  dma_flr_in_vld,
  usr_flr_fnc,
  usr_flr_set,
  usr_flr_clr,
  usr_flr_done_fnc,
  usr_flr_done_vld,
  usr_irq_vld,
  usr_irq_vec,
  usr_irq_fnc,
  usr_irq_ack,
  usr_irq_fail,
  dma_usr_irq_vld,
  dma_usr_irq_vec,
  dma_usr_irq_fnc,
  dma_usr_irq_ack,
  dma_usr_irq_fail
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.axi_aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.axi_aclk, ASSOCIATED_BUSIF S_AXI_LITE, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
input wire axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ip_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ip_clk, ASSOCIATED_BUSIF usr_flr:usr_irq:dma_usr_irq:pcie_mgmt, ASSOCIATED_RESET ip_resetn, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
input wire ip_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ip_resetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ip_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire ip_resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 249997498, ID_WIDTH 0, ADDR_WIDTH 42, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NU\
M_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [41 : 0] S_AXI_0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT" *)
input wire [2 : 0] S_AXI_0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *)
input wire S_AXI_0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *)
output wire S_AXI_0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *)
input wire [31 : 0] S_AXI_0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *)
input wire [3 : 0] S_AXI_0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *)
input wire S_AXI_0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *)
output wire S_AXI_0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *)
output wire S_AXI_0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *)
output wire [1 : 0] S_AXI_0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *)
input wire S_AXI_0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *)
input wire [41 : 0] S_AXI_0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT" *)
input wire [2 : 0] S_AXI_0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *)
input wire S_AXI_0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *)
output wire S_AXI_0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *)
output wire [31 : 0] S_AXI_0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *)
output wire [1 : 0] S_AXI_0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *)
output wire S_AXI_0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *)
input wire S_AXI_0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt req_vld" *)
(* X_INTERFACE_MODE = "master" *)
output wire mgmt_req_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt req_rdy" *)
input wire mgmt_req_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt req_dat" *)
output wire [31 : 0] mgmt_req_dat;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt req_adr" *)
output wire [31 : 0] mgmt_req_adr;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt req_fnc" *)
output wire [11 : 0] mgmt_req_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt req_msc" *)
output wire [5 : 0] mgmt_req_msc;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt req_cmd" *)
output wire [1 : 0] mgmt_req_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt cpl_vld" *)
input wire mgmt_cpl_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt cpl_rdy" *)
output wire mgmt_cpl_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt cpl_sts" *)
input wire [1 : 0] mgmt_cpl_sts;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 pcie_mgmt cpl_dat" *)
input wire [31 : 0] mgmt_cpl_dat;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma_flr fnc" *)
(* X_INTERFACE_MODE = "master" *)
input wire [11 : 0] dma_flr_out_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma_flr set" *)
input wire dma_flr_out_set;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma_flr clear" *)
input wire dma_flr_out_clr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma_flr done_fnc" *)
output wire [11 : 0] dma_flr_in_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma_flr done_vld" *)
output wire dma_flr_in_vld;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr fnc" *)
(* X_INTERFACE_MODE = "slave" *)
output wire [11 : 0] usr_flr_fnc;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr set" *)
output wire usr_flr_set;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr clear" *)
output wire usr_flr_clr;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr done_fnc" *)
input wire [11 : 0] usr_flr_done_fnc;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr done_vld" *)
input wire usr_flr_done_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq valid" *)
(* X_INTERFACE_MODE = "slave" *)
input wire usr_irq_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq vec" *)
input wire [4 : 0] usr_irq_vec;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq fnc" *)
input wire [11 : 0] usr_irq_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq ack" *)
output wire usr_irq_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq fail" *)
output wire usr_irq_fail;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma_usr_irq valid" *)
(* X_INTERFACE_MODE = "master" *)
output wire dma_usr_irq_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma_usr_irq vec" *)
output wire [4 : 0] dma_usr_irq_vec;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma_usr_irq fnc" *)
output wire [11 : 0] dma_usr_irq_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma_usr_irq ack" *)
input wire dma_usr_irq_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma_usr_irq fail" *)
input wire dma_usr_irq_fail;

  cpm_pcie_pcie_qdma_mailbox_0_0_core_top #(
    .VERSAL("TRUE"),
    .RTL_REVISION(32'H1fd32000),
    .PATCH_REVISION(32'H20140001),
    .H10_DEVICE(1),
    .MAX_PF(4),
    .NUM_PFS(1),
    .TOTAL_FNC(256),
    .NUM_VFS_PF0(4),
    .NUM_VFS_PF1(0),
    .NUM_VFS_PF2(0),
    .NUM_VFS_PF3(0),
    .MAILBOX_OPT("FALSE"),
    .VF_4KQ(0)
  ) inst (
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .ip_clk(ip_clk),
    .ip_resetn(ip_resetn),
    .S_AXI_0_awaddr(S_AXI_0_awaddr),
    .S_AXI_0_awprot(S_AXI_0_awprot),
    .S_AXI_0_awvalid(S_AXI_0_awvalid),
    .S_AXI_0_awready(S_AXI_0_awready),
    .S_AXI_0_wdata(S_AXI_0_wdata),
    .S_AXI_0_wstrb(S_AXI_0_wstrb),
    .S_AXI_0_wvalid(S_AXI_0_wvalid),
    .S_AXI_0_wready(S_AXI_0_wready),
    .S_AXI_0_bvalid(S_AXI_0_bvalid),
    .S_AXI_0_bresp(S_AXI_0_bresp),
    .S_AXI_0_bready(S_AXI_0_bready),
    .S_AXI_0_araddr(S_AXI_0_araddr),
    .S_AXI_0_arprot(S_AXI_0_arprot),
    .S_AXI_0_arvalid(S_AXI_0_arvalid),
    .S_AXI_0_arready(S_AXI_0_arready),
    .S_AXI_0_rdata(S_AXI_0_rdata),
    .S_AXI_0_rresp(S_AXI_0_rresp),
    .S_AXI_0_rvalid(S_AXI_0_rvalid),
    .S_AXI_0_rready(S_AXI_0_rready),
    .mgmt_req_vld(mgmt_req_vld),
    .mgmt_req_rdy(mgmt_req_rdy),
    .mgmt_req_dat(mgmt_req_dat),
    .mgmt_req_adr(mgmt_req_adr),
    .mgmt_req_fnc(mgmt_req_fnc),
    .mgmt_req_msc(mgmt_req_msc),
    .mgmt_req_cmd(mgmt_req_cmd),
    .mgmt_cpl_vld(mgmt_cpl_vld),
    .mgmt_cpl_rdy(mgmt_cpl_rdy),
    .mgmt_cpl_sts(mgmt_cpl_sts),
    .mgmt_cpl_dat(mgmt_cpl_dat),
    .dma_flr_out_fnc(dma_flr_out_fnc),
    .dma_flr_out_set(dma_flr_out_set),
    .dma_flr_out_clr(dma_flr_out_clr),
    .dma_flr_in_fnc(dma_flr_in_fnc),
    .dma_flr_in_vld(dma_flr_in_vld),
    .usr_flr_fnc(usr_flr_fnc),
    .usr_flr_set(usr_flr_set),
    .usr_flr_clr(usr_flr_clr),
    .usr_flr_done_fnc(usr_flr_done_fnc),
    .usr_flr_done_vld(usr_flr_done_vld),
    .usr_irq_vld(usr_irq_vld),
    .usr_irq_vec(usr_irq_vec),
    .usr_irq_fnc(usr_irq_fnc),
    .usr_irq_ack(usr_irq_ack),
    .usr_irq_fail(usr_irq_fail),
    .dma_usr_irq_vld(dma_usr_irq_vld),
    .dma_usr_irq_vec(dma_usr_irq_vec),
    .dma_usr_irq_fnc(dma_usr_irq_fnc),
    .dma_usr_irq_ack(dma_usr_irq_ack),
    .dma_usr_irq_fail(dma_usr_irq_fail)
  );
endmodule
