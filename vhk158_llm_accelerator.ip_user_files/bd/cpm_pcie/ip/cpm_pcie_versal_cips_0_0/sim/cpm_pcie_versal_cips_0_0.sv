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


// IP VLNV: xilinx.com:ip:versal_cips:3.4
// IP Revision: 4

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
(* DONT_TOUCH = "true" *)
module cpm_pcie_versal_cips_0_0 (
  pl0_ref_clk,
  pl1_ref_clk,
  cpm_pcie_noc_axi0_clk,
  cpm_pcie_noc_axi1_clk,
  dma1_intrfc_clk,
  cpm_misc_irq,
  cpm_cor_irq,
  cpm_uncor_irq,
  cpm_irq0,
  cpm_irq1,
  dma1_axi_aresetn,
  dma1_intrfc_resetn,
  CPM_PCIE_NOC_0_araddr,
  CPM_PCIE_NOC_0_arburst,
  CPM_PCIE_NOC_0_arcache,
  CPM_PCIE_NOC_0_arid,
  CPM_PCIE_NOC_0_arlen,
  CPM_PCIE_NOC_0_arlock,
  CPM_PCIE_NOC_0_arprot,
  CPM_PCIE_NOC_0_arqos,
  CPM_PCIE_NOC_0_arsize,
  CPM_PCIE_NOC_0_aruser,
  CPM_PCIE_NOC_0_arvalid,
  CPM_PCIE_NOC_0_awaddr,
  CPM_PCIE_NOC_0_awburst,
  CPM_PCIE_NOC_0_awcache,
  CPM_PCIE_NOC_0_awid,
  CPM_PCIE_NOC_0_awlen,
  CPM_PCIE_NOC_0_awlock,
  CPM_PCIE_NOC_0_awprot,
  CPM_PCIE_NOC_0_awqos,
  CPM_PCIE_NOC_0_awsize,
  CPM_PCIE_NOC_0_awuser,
  CPM_PCIE_NOC_0_awvalid,
  CPM_PCIE_NOC_0_bready,
  CPM_PCIE_NOC_0_rready,
  CPM_PCIE_NOC_0_wdata,
  CPM_PCIE_NOC_0_wlast,
  CPM_PCIE_NOC_0_wstrb,
  CPM_PCIE_NOC_0_wvalid,
  CPM_PCIE_NOC_0_arready,
  CPM_PCIE_NOC_0_awready,
  CPM_PCIE_NOC_0_bid,
  CPM_PCIE_NOC_0_bresp,
  CPM_PCIE_NOC_0_bvalid,
  CPM_PCIE_NOC_0_rdata,
  CPM_PCIE_NOC_0_rid,
  CPM_PCIE_NOC_0_rlast,
  CPM_PCIE_NOC_0_rresp,
  CPM_PCIE_NOC_0_rvalid,
  CPM_PCIE_NOC_0_ruser,
  CPM_PCIE_NOC_0_wuser,
  CPM_PCIE_NOC_0_wready,
  CPM_PCIE_NOC_1_araddr,
  CPM_PCIE_NOC_1_arburst,
  CPM_PCIE_NOC_1_arcache,
  CPM_PCIE_NOC_1_arid,
  CPM_PCIE_NOC_1_arlen,
  CPM_PCIE_NOC_1_arlock,
  CPM_PCIE_NOC_1_arprot,
  CPM_PCIE_NOC_1_arqos,
  CPM_PCIE_NOC_1_arsize,
  CPM_PCIE_NOC_1_aruser,
  CPM_PCIE_NOC_1_arvalid,
  CPM_PCIE_NOC_1_awaddr,
  CPM_PCIE_NOC_1_awburst,
  CPM_PCIE_NOC_1_awcache,
  CPM_PCIE_NOC_1_awid,
  CPM_PCIE_NOC_1_awlen,
  CPM_PCIE_NOC_1_awlock,
  CPM_PCIE_NOC_1_awprot,
  CPM_PCIE_NOC_1_awqos,
  CPM_PCIE_NOC_1_awsize,
  CPM_PCIE_NOC_1_awuser,
  CPM_PCIE_NOC_1_awvalid,
  CPM_PCIE_NOC_1_bready,
  CPM_PCIE_NOC_1_rready,
  CPM_PCIE_NOC_1_wdata,
  CPM_PCIE_NOC_1_wlast,
  CPM_PCIE_NOC_1_wstrb,
  CPM_PCIE_NOC_1_wvalid,
  CPM_PCIE_NOC_1_arready,
  CPM_PCIE_NOC_1_awready,
  CPM_PCIE_NOC_1_bid,
  CPM_PCIE_NOC_1_bresp,
  CPM_PCIE_NOC_1_bvalid,
  CPM_PCIE_NOC_1_rdata,
  CPM_PCIE_NOC_1_rid,
  CPM_PCIE_NOC_1_rlast,
  CPM_PCIE_NOC_1_rresp,
  CPM_PCIE_NOC_1_rvalid,
  CPM_PCIE_NOC_1_ruser,
  CPM_PCIE_NOC_1_wuser,
  CPM_PCIE_NOC_1_wready,
  dma1_mgmt_cpl_vld,
  dma1_mgmt_req_rdy,
  dma1_mgmt_cpl_rdy,
  dma1_mgmt_req_vld,
  dma1_mgmt_cpl_sts,
  dma1_mgmt_cpl_dat,
  dma1_mgmt_req_cmd,
  dma1_mgmt_req_fnc,
  dma1_mgmt_req_msc,
  dma1_mgmt_req_adr,
  dma1_mgmt_req_dat,
  dma1_st_rx_msg_tlast,
  dma1_st_rx_msg_tvalid,
  dma1_st_rx_msg_tready,
  dma1_st_rx_msg_tdata,
  dma1_c2h_byp_in_mm_0_ready,
  dma1_c2h_byp_in_mm_0_sdi,
  dma1_c2h_byp_in_mm_0_valid,
  dma1_c2h_byp_in_mm_0_error,
  dma1_c2h_byp_in_mm_0_no_dma,
  dma1_c2h_byp_in_mm_0_mrkr_req,
  dma1_c2h_byp_in_mm_0_len,
  dma1_c2h_byp_in_mm_0_qid,
  dma1_c2h_byp_in_mm_0_func,
  dma1_c2h_byp_in_mm_0_cidx,
  dma1_c2h_byp_in_mm_0_radr,
  dma1_c2h_byp_in_mm_0_wadr,
  dma1_c2h_byp_in_mm_0_port_id,
  dma1_c2h_byp_in_mm_1_ready,
  dma1_c2h_byp_in_mm_1_sdi,
  dma1_c2h_byp_in_mm_1_valid,
  dma1_c2h_byp_in_mm_1_error,
  dma1_c2h_byp_in_mm_1_no_dma,
  dma1_c2h_byp_in_mm_1_mrkr_req,
  dma1_c2h_byp_in_mm_1_len,
  dma1_c2h_byp_in_mm_1_qid,
  dma1_c2h_byp_in_mm_1_func,
  dma1_c2h_byp_in_mm_1_cidx,
  dma1_c2h_byp_in_mm_1_radr,
  dma1_c2h_byp_in_mm_1_wadr,
  dma1_c2h_byp_in_mm_1_port_id,
  dma1_c2h_byp_in_st_csh_ready,
  dma1_c2h_byp_in_st_csh_valid,
  dma1_c2h_byp_in_st_csh_error,
  dma1_c2h_byp_in_st_csh_qid,
  dma1_c2h_byp_in_st_csh_func,
  dma1_c2h_byp_in_st_csh_addr,
  dma1_c2h_byp_in_st_csh_port_id,
  dma1_c2h_byp_in_st_csh_pfch_tag,
  dma1_c2h_byp_out_valid,
  dma1_c2h_byp_out_error,
  dma1_c2h_byp_out_st_mm,
  dma1_c2h_byp_out_mm_chn,
  dma1_c2h_byp_out_ready,
  dma1_c2h_byp_out_fmt,
  dma1_c2h_byp_out_qid,
  dma1_c2h_byp_out_dsc,
  dma1_c2h_byp_out_func,
  dma1_c2h_byp_out_cidx,
  dma1_c2h_byp_out_dsc_sz,
  dma1_c2h_byp_out_port_id,
  dma1_c2h_byp_out_pfch_tag,
  dma1_h2c_byp_in_mm_0_ready,
  dma1_h2c_byp_in_mm_0_sdi,
  dma1_h2c_byp_in_mm_0_valid,
  dma1_h2c_byp_in_mm_0_error,
  dma1_h2c_byp_in_mm_0_no_dma,
  dma1_h2c_byp_in_mm_0_mrkr_req,
  dma1_h2c_byp_in_mm_0_len,
  dma1_h2c_byp_in_mm_0_qid,
  dma1_h2c_byp_in_mm_0_func,
  dma1_h2c_byp_in_mm_0_cidx,
  dma1_h2c_byp_in_mm_0_radr,
  dma1_h2c_byp_in_mm_0_wadr,
  dma1_h2c_byp_in_mm_0_port_id,
  dma1_h2c_byp_in_mm_1_ready,
  dma1_h2c_byp_in_mm_1_sdi,
  dma1_h2c_byp_in_mm_1_valid,
  dma1_h2c_byp_in_mm_1_error,
  dma1_h2c_byp_in_mm_1_no_dma,
  dma1_h2c_byp_in_mm_1_mrkr_req,
  dma1_h2c_byp_in_mm_1_len,
  dma1_h2c_byp_in_mm_1_qid,
  dma1_h2c_byp_in_mm_1_func,
  dma1_h2c_byp_in_mm_1_cidx,
  dma1_h2c_byp_in_mm_1_radr,
  dma1_h2c_byp_in_mm_1_wadr,
  dma1_h2c_byp_in_mm_1_port_id,
  dma1_h2c_byp_in_st_ready,
  dma1_h2c_byp_in_st_eop,
  dma1_h2c_byp_in_st_sdi,
  dma1_h2c_byp_in_st_sop,
  dma1_h2c_byp_in_st_valid,
  dma1_h2c_byp_in_st_error,
  dma1_h2c_byp_in_st_no_dma,
  dma1_h2c_byp_in_st_mrkr_req,
  dma1_h2c_byp_in_st_len,
  dma1_h2c_byp_in_st_qid,
  dma1_h2c_byp_in_st_func,
  dma1_h2c_byp_in_st_addr,
  dma1_h2c_byp_in_st_cidx,
  dma1_h2c_byp_in_st_port_id,
  dma1_h2c_byp_out_valid,
  dma1_h2c_byp_out_error,
  dma1_h2c_byp_out_st_mm,
  dma1_h2c_byp_out_mm_chn,
  dma1_h2c_byp_out_ready,
  dma1_h2c_byp_out_fmt,
  dma1_h2c_byp_out_qid,
  dma1_h2c_byp_out_dsc,
  dma1_h2c_byp_out_func,
  dma1_h2c_byp_out_cidx,
  dma1_h2c_byp_out_dsc_sz,
  dma1_h2c_byp_out_port_id,
  dma1_axis_c2h_dmawr_cmp,
  dma1_axis_c2h_dmawr_target_vch,
  dma1_axis_c2h_dmawr_port_id,
  dma1_s_axis_c2h_tready,
  dma1_s_axis_c2h_tlast,
  dma1_s_axis_c2h_tvalid,
  dma1_s_axis_c2h_tcrc,
  dma1_s_axis_c2h_tdata,
  dma1_s_axis_c2h_mty,
  dma1_s_axis_c2h_ecc,
  dma1_s_axis_c2h_ctrl_marker,
  dma1_s_axis_c2h_ctrl_has_cmpt,
  dma1_s_axis_c2h_ctrl_len,
  dma1_s_axis_c2h_ctrl_qid,
  dma1_s_axis_c2h_ctrl_port_id,
  dma1_s_axis_c2h_cmpt_marker,
  dma1_s_axis_c2h_cmpt_user_trig,
  dma1_s_axis_c2h_cmpt_size,
  dma1_s_axis_c2h_cmpt_qid,
  dma1_s_axis_c2h_cmpt_no_wrb_marker,
  dma1_s_axis_c2h_cmpt_port_id,
  dma1_s_axis_c2h_cmpt_col_idx,
  dma1_s_axis_c2h_cmpt_err_idx,
  dma1_s_axis_c2h_cmpt_wait_pld_pkt_id,
  dma1_s_axis_c2h_cmpt_tready,
  dma1_s_axis_c2h_cmpt_tvalid,
  dma1_s_axis_c2h_cmpt_dpar,
  dma1_s_axis_c2h_cmpt_data,
  dma1_s_axis_c2h_cmpt_cmpt_type,
  dma1_m_axis_h2c_tlast,
  dma1_m_axis_h2c_err,
  dma1_m_axis_h2c_tvalid,
  dma1_m_axis_h2c_tdata,
  dma1_m_axis_h2c_zero_byte,
  dma1_m_axis_h2c_tready,
  dma1_m_axis_h2c_tcrc,
  dma1_m_axis_h2c_mty,
  dma1_m_axis_h2c_qid,
  dma1_m_axis_h2c_mdata,
  dma1_m_axis_h2c_port_id,
  dma1_axis_c2h_status_last,
  dma1_axis_c2h_status_drop,
  dma1_axis_c2h_status_error,
  dma1_axis_c2h_status_valid,
  dma1_axis_c2h_status_status_cmp,
  dma1_axis_c2h_status_qid,
  dma1_qsts_out_vld,
  dma1_qsts_out_op,
  dma1_qsts_out_rdy,
  dma1_qsts_out_qid,
  dma1_qsts_out_data,
  dma1_qsts_out_port_id,
  dma1_dsc_crdt_in_rdy,
  dma1_dsc_crdt_in_dir,
  dma1_dsc_crdt_in_valid,
  dma1_dsc_crdt_in_fence,
  dma1_dsc_crdt_in_qid,
  dma1_dsc_crdt_in_crdt,
  dma1_usr_irq_ack,
  dma1_usr_irq_fail,
  dma1_usr_irq_valid,
  dma1_usr_irq_vec,
  dma1_usr_irq_fnc,
  dma1_tm_dsc_sts_mm,
  dma1_tm_dsc_sts_qen,
  dma1_tm_dsc_sts_byp,
  dma1_tm_dsc_sts_dir,
  dma1_tm_dsc_sts_error,
  dma1_tm_dsc_sts_valid,
  dma1_tm_dsc_sts_qinv,
  dma1_tm_dsc_sts_irq_arm,
  dma1_tm_dsc_sts_rdy,
  dma1_tm_dsc_sts_qid,
  dma1_tm_dsc_sts_avl,
  dma1_tm_dsc_sts_pidx,
  dma1_tm_dsc_sts_port_id,
  dma1_usr_flr_set,
  dma1_usr_flr_clear,
  dma1_usr_flr_fnc,
  dma1_usr_flr_done_vld,
  dma1_usr_flr_done_fnc,
  PCIE1_GT_grx_n,
  PCIE1_GT_gtx_n,
  PCIE1_GT_grx_p,
  PCIE1_GT_gtx_p,
  gt_refclk1_clk_n,
  gt_refclk1_clk_p
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pl0_ref_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pl0_ref_clk, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
output wire pl0_ref_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pl1_ref_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pl1_ref_clk, FREQ_HZ 49999500, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, INSERT_VIP 0" *)
output wire pl1_ref_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.cpm_pcie_noc_axi0_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.cpm_pcie_noc_axi0_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi0_clk, ASSOCIATED_BUSIF CPM_PCIE_NOC_0, INSERT_VIP 0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU" *)
output wire cpm_pcie_noc_axi0_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.cpm_pcie_noc_axi1_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.cpm_pcie_noc_axi1_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi1_clk, ASSOCIATED_BUSIF CPM_PCIE_NOC_1, INSERT_VIP 0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU" *)
output wire cpm_pcie_noc_axi1_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dma1_intrfc_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.dma1_intrfc_clk, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF dma1_m_axis_h2c:dma1_s_axis_c2h:dma1_s_axis_c2h_cmpt:dma1_st_rx_msg, ASSOCIATED_RESET dma1_axi_aresetn, INSERT_VIP 0" *)
input wire dma1_intrfc_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_misc_irq INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_misc_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire cpm_misc_irq;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_cor_irq INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_cor_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire cpm_cor_irq;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_uncor_irq INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_uncor_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire cpm_uncor_irq;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_irq0 INTERRUPT" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_irq0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
input wire cpm_irq0;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_irq1 INTERRUPT" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_irq1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
input wire cpm_irq1;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.dma1_axi_aresetn RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.dma1_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire dma1_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.dma1_intrfc_resetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.dma1_intrfc_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire dma1_intrfc_resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPM_PCIE_NOC_0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1000000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi0_clk, NUM\
_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_pcie, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, HD_TANDEM 0, INDEX 0" *)
output wire [63 : 0] CPM_PCIE_NOC_0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARBURST" *)
output wire [1 : 0] CPM_PCIE_NOC_0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARCACHE" *)
output wire [3 : 0] CPM_PCIE_NOC_0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARID" *)
output wire [15 : 0] CPM_PCIE_NOC_0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLEN" *)
output wire [7 : 0] CPM_PCIE_NOC_0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLOCK" *)
output wire CPM_PCIE_NOC_0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARPROT" *)
output wire [2 : 0] CPM_PCIE_NOC_0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARQOS" *)
output wire [3 : 0] CPM_PCIE_NOC_0_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARSIZE" *)
output wire [2 : 0] CPM_PCIE_NOC_0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARUSER" *)
output wire [17 : 0] CPM_PCIE_NOC_0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARVALID" *)
output wire CPM_PCIE_NOC_0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWADDR" *)
output wire [63 : 0] CPM_PCIE_NOC_0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWBURST" *)
output wire [1 : 0] CPM_PCIE_NOC_0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWCACHE" *)
output wire [3 : 0] CPM_PCIE_NOC_0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWID" *)
output wire [15 : 0] CPM_PCIE_NOC_0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLEN" *)
output wire [7 : 0] CPM_PCIE_NOC_0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLOCK" *)
output wire CPM_PCIE_NOC_0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWPROT" *)
output wire [2 : 0] CPM_PCIE_NOC_0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWQOS" *)
output wire [3 : 0] CPM_PCIE_NOC_0_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWSIZE" *)
output wire [2 : 0] CPM_PCIE_NOC_0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWUSER" *)
output wire [17 : 0] CPM_PCIE_NOC_0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWVALID" *)
output wire CPM_PCIE_NOC_0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BREADY" *)
output wire CPM_PCIE_NOC_0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RREADY" *)
output wire CPM_PCIE_NOC_0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WDATA" *)
output wire [127 : 0] CPM_PCIE_NOC_0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WLAST" *)
output wire CPM_PCIE_NOC_0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WSTRB" *)
output wire [15 : 0] CPM_PCIE_NOC_0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WVALID" *)
output wire CPM_PCIE_NOC_0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARREADY" *)
input wire CPM_PCIE_NOC_0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWREADY" *)
input wire CPM_PCIE_NOC_0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BID" *)
input wire [15 : 0] CPM_PCIE_NOC_0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BRESP" *)
input wire [1 : 0] CPM_PCIE_NOC_0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BVALID" *)
input wire CPM_PCIE_NOC_0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RDATA" *)
input wire [127 : 0] CPM_PCIE_NOC_0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RID" *)
input wire [15 : 0] CPM_PCIE_NOC_0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RLAST" *)
input wire CPM_PCIE_NOC_0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RRESP" *)
input wire [1 : 0] CPM_PCIE_NOC_0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RVALID" *)
input wire CPM_PCIE_NOC_0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RUSER" *)
input wire [16 : 0] CPM_PCIE_NOC_0_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WUSER" *)
output wire [16 : 0] CPM_PCIE_NOC_0_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WREADY" *)
input wire CPM_PCIE_NOC_0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPM_PCIE_NOC_1, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1000000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi1_clk, NUM\
_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_pcie, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, HD_TANDEM 0, INDEX 1" *)
output wire [63 : 0] CPM_PCIE_NOC_1_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARBURST" *)
output wire [1 : 0] CPM_PCIE_NOC_1_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARCACHE" *)
output wire [3 : 0] CPM_PCIE_NOC_1_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARID" *)
output wire [15 : 0] CPM_PCIE_NOC_1_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLEN" *)
output wire [7 : 0] CPM_PCIE_NOC_1_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLOCK" *)
output wire CPM_PCIE_NOC_1_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARPROT" *)
output wire [2 : 0] CPM_PCIE_NOC_1_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARQOS" *)
output wire [3 : 0] CPM_PCIE_NOC_1_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARSIZE" *)
output wire [2 : 0] CPM_PCIE_NOC_1_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARUSER" *)
output wire [17 : 0] CPM_PCIE_NOC_1_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARVALID" *)
output wire CPM_PCIE_NOC_1_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWADDR" *)
output wire [63 : 0] CPM_PCIE_NOC_1_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWBURST" *)
output wire [1 : 0] CPM_PCIE_NOC_1_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWCACHE" *)
output wire [3 : 0] CPM_PCIE_NOC_1_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWID" *)
output wire [15 : 0] CPM_PCIE_NOC_1_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLEN" *)
output wire [7 : 0] CPM_PCIE_NOC_1_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLOCK" *)
output wire CPM_PCIE_NOC_1_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWPROT" *)
output wire [2 : 0] CPM_PCIE_NOC_1_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWQOS" *)
output wire [3 : 0] CPM_PCIE_NOC_1_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWSIZE" *)
output wire [2 : 0] CPM_PCIE_NOC_1_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWUSER" *)
output wire [17 : 0] CPM_PCIE_NOC_1_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWVALID" *)
output wire CPM_PCIE_NOC_1_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BREADY" *)
output wire CPM_PCIE_NOC_1_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RREADY" *)
output wire CPM_PCIE_NOC_1_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WDATA" *)
output wire [127 : 0] CPM_PCIE_NOC_1_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WLAST" *)
output wire CPM_PCIE_NOC_1_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WSTRB" *)
output wire [15 : 0] CPM_PCIE_NOC_1_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WVALID" *)
output wire CPM_PCIE_NOC_1_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARREADY" *)
input wire CPM_PCIE_NOC_1_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWREADY" *)
input wire CPM_PCIE_NOC_1_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BID" *)
input wire [15 : 0] CPM_PCIE_NOC_1_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BRESP" *)
input wire [1 : 0] CPM_PCIE_NOC_1_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BVALID" *)
input wire CPM_PCIE_NOC_1_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RDATA" *)
input wire [127 : 0] CPM_PCIE_NOC_1_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RID" *)
input wire [15 : 0] CPM_PCIE_NOC_1_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RLAST" *)
input wire CPM_PCIE_NOC_1_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RRESP" *)
input wire [1 : 0] CPM_PCIE_NOC_1_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RVALID" *)
input wire CPM_PCIE_NOC_1_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RUSER" *)
input wire [16 : 0] CPM_PCIE_NOC_1_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WUSER" *)
output wire [16 : 0] CPM_PCIE_NOC_1_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WREADY" *)
input wire CPM_PCIE_NOC_1_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_vld" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_mgmt_cpl_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_rdy" *)
output wire dma1_mgmt_req_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_rdy" *)
input wire dma1_mgmt_cpl_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_vld" *)
input wire dma1_mgmt_req_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_sts" *)
output wire [1 : 0] dma1_mgmt_cpl_sts;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_dat" *)
output wire [31 : 0] dma1_mgmt_cpl_dat;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_cmd" *)
input wire [1 : 0] dma1_mgmt_req_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_fnc" *)
input wire [12 : 0] dma1_mgmt_req_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_msc" *)
input wire [5 : 0] dma1_mgmt_req_msc;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_adr" *)
input wire [31 : 0] dma1_mgmt_req_adr;
(* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_dat" *)
input wire [31 : 0] dma1_mgmt_req_dat;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma1_st_rx_msg, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire dma1_st_rx_msg_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TVALID" *)
output wire dma1_st_rx_msg_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TREADY" *)
input wire dma1_st_rx_msg_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TDATA" *)
output wire [31 : 0] dma1_st_rx_msg_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 ready" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_c2h_byp_in_mm_0_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 sdi" *)
input wire dma1_c2h_byp_in_mm_0_sdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 valid" *)
input wire dma1_c2h_byp_in_mm_0_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 error" *)
input wire dma1_c2h_byp_in_mm_0_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 no_dma" *)
input wire dma1_c2h_byp_in_mm_0_no_dma;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 mrkr_req" *)
input wire dma1_c2h_byp_in_mm_0_mrkr_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 len" *)
input wire [15 : 0] dma1_c2h_byp_in_mm_0_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 qid" *)
input wire [11 : 0] dma1_c2h_byp_in_mm_0_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 func" *)
input wire [11 : 0] dma1_c2h_byp_in_mm_0_func;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 cidx" *)
input wire [15 : 0] dma1_c2h_byp_in_mm_0_cidx;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 radr" *)
input wire [63 : 0] dma1_c2h_byp_in_mm_0_radr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 wadr" *)
input wire [63 : 0] dma1_c2h_byp_in_mm_0_wadr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 port_id" *)
input wire [2 : 0] dma1_c2h_byp_in_mm_0_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 ready" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_c2h_byp_in_mm_1_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 sdi" *)
input wire dma1_c2h_byp_in_mm_1_sdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 valid" *)
input wire dma1_c2h_byp_in_mm_1_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 error" *)
input wire dma1_c2h_byp_in_mm_1_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 no_dma" *)
input wire dma1_c2h_byp_in_mm_1_no_dma;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 mrkr_req" *)
input wire dma1_c2h_byp_in_mm_1_mrkr_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 len" *)
input wire [15 : 0] dma1_c2h_byp_in_mm_1_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 qid" *)
input wire [11 : 0] dma1_c2h_byp_in_mm_1_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 func" *)
input wire [11 : 0] dma1_c2h_byp_in_mm_1_func;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 cidx" *)
input wire [15 : 0] dma1_c2h_byp_in_mm_1_cidx;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 radr" *)
input wire [63 : 0] dma1_c2h_byp_in_mm_1_radr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 wadr" *)
input wire [63 : 0] dma1_c2h_byp_in_mm_1_wadr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 port_id" *)
input wire [2 : 0] dma1_c2h_byp_in_mm_1_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh ready" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_c2h_byp_in_st_csh_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh valid" *)
input wire dma1_c2h_byp_in_st_csh_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh error" *)
input wire dma1_c2h_byp_in_st_csh_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh qid" *)
input wire [11 : 0] dma1_c2h_byp_in_st_csh_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh func" *)
input wire [11 : 0] dma1_c2h_byp_in_st_csh_func;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh addr" *)
input wire [63 : 0] dma1_c2h_byp_in_st_csh_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh port_id" *)
input wire [2 : 0] dma1_c2h_byp_in_st_csh_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh pfch_tag" *)
input wire [6 : 0] dma1_c2h_byp_in_st_csh_pfch_tag;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out valid" *)
(* X_INTERFACE_MODE = "master" *)
output wire dma1_c2h_byp_out_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out error" *)
output wire dma1_c2h_byp_out_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out st_mm" *)
output wire dma1_c2h_byp_out_st_mm;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out mm_chn" *)
output wire dma1_c2h_byp_out_mm_chn;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out ready" *)
input wire dma1_c2h_byp_out_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out fmt" *)
output wire [2 : 0] dma1_c2h_byp_out_fmt;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out qid" *)
output wire [11 : 0] dma1_c2h_byp_out_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out dsc" *)
output wire [255 : 0] dma1_c2h_byp_out_dsc;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out func" *)
output wire [11 : 0] dma1_c2h_byp_out_func;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out cidx" *)
output wire [15 : 0] dma1_c2h_byp_out_cidx;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out dsc_sz" *)
output wire [1 : 0] dma1_c2h_byp_out_dsc_sz;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out port_id" *)
output wire [2 : 0] dma1_c2h_byp_out_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out pfch_tag" *)
output wire [6 : 0] dma1_c2h_byp_out_pfch_tag;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 ready" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_h2c_byp_in_mm_0_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 sdi" *)
input wire dma1_h2c_byp_in_mm_0_sdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 valid" *)
input wire dma1_h2c_byp_in_mm_0_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 error" *)
input wire dma1_h2c_byp_in_mm_0_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 no_dma" *)
input wire dma1_h2c_byp_in_mm_0_no_dma;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 mrkr_req" *)
input wire dma1_h2c_byp_in_mm_0_mrkr_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 len" *)
input wire [15 : 0] dma1_h2c_byp_in_mm_0_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 qid" *)
input wire [11 : 0] dma1_h2c_byp_in_mm_0_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 func" *)
input wire [11 : 0] dma1_h2c_byp_in_mm_0_func;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 cidx" *)
input wire [15 : 0] dma1_h2c_byp_in_mm_0_cidx;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 radr" *)
input wire [63 : 0] dma1_h2c_byp_in_mm_0_radr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 wadr" *)
input wire [63 : 0] dma1_h2c_byp_in_mm_0_wadr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 port_id" *)
input wire [2 : 0] dma1_h2c_byp_in_mm_0_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 ready" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_h2c_byp_in_mm_1_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 sdi" *)
input wire dma1_h2c_byp_in_mm_1_sdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 valid" *)
input wire dma1_h2c_byp_in_mm_1_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 error" *)
input wire dma1_h2c_byp_in_mm_1_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 no_dma" *)
input wire dma1_h2c_byp_in_mm_1_no_dma;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 mrkr_req" *)
input wire dma1_h2c_byp_in_mm_1_mrkr_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 len" *)
input wire [15 : 0] dma1_h2c_byp_in_mm_1_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 qid" *)
input wire [11 : 0] dma1_h2c_byp_in_mm_1_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 func" *)
input wire [11 : 0] dma1_h2c_byp_in_mm_1_func;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 cidx" *)
input wire [15 : 0] dma1_h2c_byp_in_mm_1_cidx;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 radr" *)
input wire [63 : 0] dma1_h2c_byp_in_mm_1_radr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 wadr" *)
input wire [63 : 0] dma1_h2c_byp_in_mm_1_wadr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 port_id" *)
input wire [2 : 0] dma1_h2c_byp_in_mm_1_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st ready" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_h2c_byp_in_st_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st eop" *)
input wire dma1_h2c_byp_in_st_eop;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st sdi" *)
input wire dma1_h2c_byp_in_st_sdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st sop" *)
input wire dma1_h2c_byp_in_st_sop;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st valid" *)
input wire dma1_h2c_byp_in_st_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st error" *)
input wire dma1_h2c_byp_in_st_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st no_dma" *)
input wire dma1_h2c_byp_in_st_no_dma;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st mrkr_req" *)
input wire dma1_h2c_byp_in_st_mrkr_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st len" *)
input wire [15 : 0] dma1_h2c_byp_in_st_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st qid" *)
input wire [11 : 0] dma1_h2c_byp_in_st_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st func" *)
input wire [11 : 0] dma1_h2c_byp_in_st_func;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st addr" *)
input wire [63 : 0] dma1_h2c_byp_in_st_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st cidx" *)
input wire [15 : 0] dma1_h2c_byp_in_st_cidx;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st port_id" *)
input wire [2 : 0] dma1_h2c_byp_in_st_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out valid" *)
(* X_INTERFACE_MODE = "master" *)
output wire dma1_h2c_byp_out_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out error" *)
output wire dma1_h2c_byp_out_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out st_mm" *)
output wire dma1_h2c_byp_out_st_mm;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out mm_chn" *)
output wire dma1_h2c_byp_out_mm_chn;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out ready" *)
input wire dma1_h2c_byp_out_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out fmt" *)
output wire [2 : 0] dma1_h2c_byp_out_fmt;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out qid" *)
output wire [11 : 0] dma1_h2c_byp_out_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out dsc" *)
output wire [255 : 0] dma1_h2c_byp_out_dsc;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out func" *)
output wire [11 : 0] dma1_h2c_byp_out_func;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out cidx" *)
output wire [15 : 0] dma1_h2c_byp_out_cidx;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out dsc_sz" *)
output wire [1 : 0] dma1_h2c_byp_out_dsc_sz;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out port_id" *)
output wire [2 : 0] dma1_h2c_byp_out_port_id;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr cmp" *)
(* X_INTERFACE_MODE = "master" *)
output wire dma1_axis_c2h_dmawr_cmp;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr target_vch" *)
output wire dma1_axis_c2h_dmawr_target_vch;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr port_id" *)
output wire [2 : 0] dma1_axis_c2h_dmawr_port_id;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tready" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_s_axis_c2h_tready;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tlast" *)
input wire dma1_s_axis_c2h_tlast;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tvalid" *)
input wire dma1_s_axis_c2h_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tcrc" *)
input wire [31 : 0] dma1_s_axis_c2h_tcrc;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tdata" *)
input wire [511 : 0] dma1_s_axis_c2h_tdata;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h mty" *)
input wire [5 : 0] dma1_s_axis_c2h_mty;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ecc" *)
input wire [6 : 0] dma1_s_axis_c2h_ecc;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_marker" *)
input wire dma1_s_axis_c2h_ctrl_marker;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_has_cmpt" *)
input wire dma1_s_axis_c2h_ctrl_has_cmpt;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_len" *)
input wire [15 : 0] dma1_s_axis_c2h_ctrl_len;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_qid" *)
input wire [11 : 0] dma1_s_axis_c2h_ctrl_qid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_port_id" *)
input wire [2 : 0] dma1_s_axis_c2h_ctrl_port_id;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt marker" *)
(* X_INTERFACE_MODE = "slave" *)
input wire dma1_s_axis_c2h_cmpt_marker;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt user_trig" *)
input wire dma1_s_axis_c2h_cmpt_user_trig;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt size" *)
input wire [1 : 0] dma1_s_axis_c2h_cmpt_size;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt qid" *)
input wire [12 : 0] dma1_s_axis_c2h_cmpt_qid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt no_wrb_marker" *)
input wire dma1_s_axis_c2h_cmpt_no_wrb_marker;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt port_id" *)
input wire [2 : 0] dma1_s_axis_c2h_cmpt_port_id;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt col_idx" *)
input wire [2 : 0] dma1_s_axis_c2h_cmpt_col_idx;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt err_idx" *)
input wire [2 : 0] dma1_s_axis_c2h_cmpt_err_idx;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt wait_pld_pkt_id" *)
input wire [15 : 0] dma1_s_axis_c2h_cmpt_wait_pld_pkt_id;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt tready" *)
output wire dma1_s_axis_c2h_cmpt_tready;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt tvalid" *)
input wire dma1_s_axis_c2h_cmpt_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt dpar" *)
input wire [15 : 0] dma1_s_axis_c2h_cmpt_dpar;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt data" *)
input wire [511 : 0] dma1_s_axis_c2h_cmpt_data;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt cmpt_type" *)
input wire [1 : 0] dma1_s_axis_c2h_cmpt_cmpt_type;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tlast" *)
(* X_INTERFACE_MODE = "master" *)
output wire dma1_m_axis_h2c_tlast;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c err" *)
output wire dma1_m_axis_h2c_err;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tvalid" *)
output wire dma1_m_axis_h2c_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tdata" *)
output wire [511 : 0] dma1_m_axis_h2c_tdata;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c zero_byte" *)
output wire dma1_m_axis_h2c_zero_byte;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tready" *)
input wire dma1_m_axis_h2c_tready;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tcrc" *)
output wire [31 : 0] dma1_m_axis_h2c_tcrc;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c mty" *)
output wire [5 : 0] dma1_m_axis_h2c_mty;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c qid" *)
output wire [11 : 0] dma1_m_axis_h2c_qid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c mdata" *)
output wire [31 : 0] dma1_m_axis_h2c_mdata;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c port_id" *)
output wire [2 : 0] dma1_m_axis_h2c_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status last" *)
(* X_INTERFACE_MODE = "master" *)
output wire dma1_axis_c2h_status_last;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status drop" *)
output wire dma1_axis_c2h_status_drop;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status error" *)
output wire dma1_axis_c2h_status_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status valid" *)
output wire dma1_axis_c2h_status_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status status_cmp" *)
output wire dma1_axis_c2h_status_status_cmp;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status qid" *)
output wire [11 : 0] dma1_axis_c2h_status_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out vld" *)
(* X_INTERFACE_MODE = "master" *)
output wire dma1_qsts_out_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out op" *)
output wire [7 : 0] dma1_qsts_out_op;
(* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out rdy" *)
input wire dma1_qsts_out_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out qid" *)
output wire [12 : 0] dma1_qsts_out_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out data" *)
output wire [63 : 0] dma1_qsts_out_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out port_id" *)
output wire [2 : 0] dma1_qsts_out_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in rdy" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_dsc_crdt_in_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in dir" *)
input wire dma1_dsc_crdt_in_dir;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in valid" *)
input wire dma1_dsc_crdt_in_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in fence" *)
input wire dma1_dsc_crdt_in_fence;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in qid" *)
input wire [11 : 0] dma1_dsc_crdt_in_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in crdt" *)
input wire [15 : 0] dma1_dsc_crdt_in_crdt;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq ack" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_usr_irq_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq fail" *)
output wire dma1_usr_irq_fail;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq valid" *)
input wire dma1_usr_irq_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq vec" *)
input wire [10 : 0] dma1_usr_irq_vec;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq fnc" *)
input wire [12 : 0] dma1_usr_irq_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts mm" *)
(* X_INTERFACE_MODE = "master" *)
output wire dma1_tm_dsc_sts_mm;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qen" *)
output wire dma1_tm_dsc_sts_qen;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts byp" *)
output wire dma1_tm_dsc_sts_byp;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts dir" *)
output wire dma1_tm_dsc_sts_dir;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts error" *)
output wire dma1_tm_dsc_sts_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts valid" *)
output wire dma1_tm_dsc_sts_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qinv" *)
output wire dma1_tm_dsc_sts_qinv;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts irq_arm" *)
output wire dma1_tm_dsc_sts_irq_arm;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts rdy" *)
input wire dma1_tm_dsc_sts_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qid" *)
output wire [11 : 0] dma1_tm_dsc_sts_qid;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts avl" *)
output wire [15 : 0] dma1_tm_dsc_sts_avl;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts pidx" *)
output wire [15 : 0] dma1_tm_dsc_sts_pidx;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts port_id" *)
output wire [2 : 0] dma1_tm_dsc_sts_port_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr set" *)
(* X_INTERFACE_MODE = "slave" *)
output wire dma1_usr_flr_set;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr clear" *)
output wire dma1_usr_flr_clear;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr fnc" *)
output wire [12 : 0] dma1_usr_flr_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr done_vld" *)
input wire dma1_usr_flr_done_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr done_fnc" *)
input wire [12 : 0] dma1_usr_flr_done_fnc;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_N" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT, CAN_DEBUG false" *)
input wire [7 : 0] PCIE1_GT_grx_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_N" *)
output wire [7 : 0] PCIE1_GT_gtx_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_P" *)
input wire [7 : 0] PCIE1_GT_grx_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_P" *)
output wire [7 : 0] PCIE1_GT_gtx_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_N" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1, CAN_DEBUG false, FREQ_HZ 100000000" *)
input wire gt_refclk1_clk_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_P" *)
input wire gt_refclk1_clk_p;

  bd_f29b inst (
    .pl0_ref_clk(pl0_ref_clk),
    .pl1_ref_clk(pl1_ref_clk),
    .cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk),
    .cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk),
    .dma1_intrfc_clk(dma1_intrfc_clk),
    .cpm_misc_irq(cpm_misc_irq),
    .cpm_cor_irq(cpm_cor_irq),
    .cpm_uncor_irq(cpm_uncor_irq),
    .cpm_irq0(cpm_irq0),
    .cpm_irq1(cpm_irq1),
    .dma1_axi_aresetn(dma1_axi_aresetn),
    .dma1_intrfc_resetn(dma1_intrfc_resetn),
    .CPM_PCIE_NOC_0_araddr(CPM_PCIE_NOC_0_araddr),
    .CPM_PCIE_NOC_0_arburst(CPM_PCIE_NOC_0_arburst),
    .CPM_PCIE_NOC_0_arcache(CPM_PCIE_NOC_0_arcache),
    .CPM_PCIE_NOC_0_arid(CPM_PCIE_NOC_0_arid),
    .CPM_PCIE_NOC_0_arlen(CPM_PCIE_NOC_0_arlen),
    .CPM_PCIE_NOC_0_arlock(CPM_PCIE_NOC_0_arlock),
    .CPM_PCIE_NOC_0_arprot(CPM_PCIE_NOC_0_arprot),
    .CPM_PCIE_NOC_0_arqos(CPM_PCIE_NOC_0_arqos),
    .CPM_PCIE_NOC_0_arsize(CPM_PCIE_NOC_0_arsize),
    .CPM_PCIE_NOC_0_aruser(CPM_PCIE_NOC_0_aruser),
    .CPM_PCIE_NOC_0_arvalid(CPM_PCIE_NOC_0_arvalid),
    .CPM_PCIE_NOC_0_awaddr(CPM_PCIE_NOC_0_awaddr),
    .CPM_PCIE_NOC_0_awburst(CPM_PCIE_NOC_0_awburst),
    .CPM_PCIE_NOC_0_awcache(CPM_PCIE_NOC_0_awcache),
    .CPM_PCIE_NOC_0_awid(CPM_PCIE_NOC_0_awid),
    .CPM_PCIE_NOC_0_awlen(CPM_PCIE_NOC_0_awlen),
    .CPM_PCIE_NOC_0_awlock(CPM_PCIE_NOC_0_awlock),
    .CPM_PCIE_NOC_0_awprot(CPM_PCIE_NOC_0_awprot),
    .CPM_PCIE_NOC_0_awqos(CPM_PCIE_NOC_0_awqos),
    .CPM_PCIE_NOC_0_awsize(CPM_PCIE_NOC_0_awsize),
    .CPM_PCIE_NOC_0_awuser(CPM_PCIE_NOC_0_awuser),
    .CPM_PCIE_NOC_0_awvalid(CPM_PCIE_NOC_0_awvalid),
    .CPM_PCIE_NOC_0_bready(CPM_PCIE_NOC_0_bready),
    .CPM_PCIE_NOC_0_rready(CPM_PCIE_NOC_0_rready),
    .CPM_PCIE_NOC_0_wdata(CPM_PCIE_NOC_0_wdata),
    .CPM_PCIE_NOC_0_wlast(CPM_PCIE_NOC_0_wlast),
    .CPM_PCIE_NOC_0_wstrb(CPM_PCIE_NOC_0_wstrb),
    .CPM_PCIE_NOC_0_wvalid(CPM_PCIE_NOC_0_wvalid),
    .CPM_PCIE_NOC_0_arready(CPM_PCIE_NOC_0_arready),
    .CPM_PCIE_NOC_0_awready(CPM_PCIE_NOC_0_awready),
    .CPM_PCIE_NOC_0_bid(CPM_PCIE_NOC_0_bid),
    .CPM_PCIE_NOC_0_bresp(CPM_PCIE_NOC_0_bresp),
    .CPM_PCIE_NOC_0_bvalid(CPM_PCIE_NOC_0_bvalid),
    .CPM_PCIE_NOC_0_rdata(CPM_PCIE_NOC_0_rdata),
    .CPM_PCIE_NOC_0_rid(CPM_PCIE_NOC_0_rid),
    .CPM_PCIE_NOC_0_rlast(CPM_PCIE_NOC_0_rlast),
    .CPM_PCIE_NOC_0_rresp(CPM_PCIE_NOC_0_rresp),
    .CPM_PCIE_NOC_0_rvalid(CPM_PCIE_NOC_0_rvalid),
    .CPM_PCIE_NOC_0_ruser(CPM_PCIE_NOC_0_ruser),
    .CPM_PCIE_NOC_0_wuser(CPM_PCIE_NOC_0_wuser),
    .CPM_PCIE_NOC_0_wready(CPM_PCIE_NOC_0_wready),
    .CPM_PCIE_NOC_1_araddr(CPM_PCIE_NOC_1_araddr),
    .CPM_PCIE_NOC_1_arburst(CPM_PCIE_NOC_1_arburst),
    .CPM_PCIE_NOC_1_arcache(CPM_PCIE_NOC_1_arcache),
    .CPM_PCIE_NOC_1_arid(CPM_PCIE_NOC_1_arid),
    .CPM_PCIE_NOC_1_arlen(CPM_PCIE_NOC_1_arlen),
    .CPM_PCIE_NOC_1_arlock(CPM_PCIE_NOC_1_arlock),
    .CPM_PCIE_NOC_1_arprot(CPM_PCIE_NOC_1_arprot),
    .CPM_PCIE_NOC_1_arqos(CPM_PCIE_NOC_1_arqos),
    .CPM_PCIE_NOC_1_arsize(CPM_PCIE_NOC_1_arsize),
    .CPM_PCIE_NOC_1_aruser(CPM_PCIE_NOC_1_aruser),
    .CPM_PCIE_NOC_1_arvalid(CPM_PCIE_NOC_1_arvalid),
    .CPM_PCIE_NOC_1_awaddr(CPM_PCIE_NOC_1_awaddr),
    .CPM_PCIE_NOC_1_awburst(CPM_PCIE_NOC_1_awburst),
    .CPM_PCIE_NOC_1_awcache(CPM_PCIE_NOC_1_awcache),
    .CPM_PCIE_NOC_1_awid(CPM_PCIE_NOC_1_awid),
    .CPM_PCIE_NOC_1_awlen(CPM_PCIE_NOC_1_awlen),
    .CPM_PCIE_NOC_1_awlock(CPM_PCIE_NOC_1_awlock),
    .CPM_PCIE_NOC_1_awprot(CPM_PCIE_NOC_1_awprot),
    .CPM_PCIE_NOC_1_awqos(CPM_PCIE_NOC_1_awqos),
    .CPM_PCIE_NOC_1_awsize(CPM_PCIE_NOC_1_awsize),
    .CPM_PCIE_NOC_1_awuser(CPM_PCIE_NOC_1_awuser),
    .CPM_PCIE_NOC_1_awvalid(CPM_PCIE_NOC_1_awvalid),
    .CPM_PCIE_NOC_1_bready(CPM_PCIE_NOC_1_bready),
    .CPM_PCIE_NOC_1_rready(CPM_PCIE_NOC_1_rready),
    .CPM_PCIE_NOC_1_wdata(CPM_PCIE_NOC_1_wdata),
    .CPM_PCIE_NOC_1_wlast(CPM_PCIE_NOC_1_wlast),
    .CPM_PCIE_NOC_1_wstrb(CPM_PCIE_NOC_1_wstrb),
    .CPM_PCIE_NOC_1_wvalid(CPM_PCIE_NOC_1_wvalid),
    .CPM_PCIE_NOC_1_arready(CPM_PCIE_NOC_1_arready),
    .CPM_PCIE_NOC_1_awready(CPM_PCIE_NOC_1_awready),
    .CPM_PCIE_NOC_1_bid(CPM_PCIE_NOC_1_bid),
    .CPM_PCIE_NOC_1_bresp(CPM_PCIE_NOC_1_bresp),
    .CPM_PCIE_NOC_1_bvalid(CPM_PCIE_NOC_1_bvalid),
    .CPM_PCIE_NOC_1_rdata(CPM_PCIE_NOC_1_rdata),
    .CPM_PCIE_NOC_1_rid(CPM_PCIE_NOC_1_rid),
    .CPM_PCIE_NOC_1_rlast(CPM_PCIE_NOC_1_rlast),
    .CPM_PCIE_NOC_1_rresp(CPM_PCIE_NOC_1_rresp),
    .CPM_PCIE_NOC_1_rvalid(CPM_PCIE_NOC_1_rvalid),
    .CPM_PCIE_NOC_1_ruser(CPM_PCIE_NOC_1_ruser),
    .CPM_PCIE_NOC_1_wuser(CPM_PCIE_NOC_1_wuser),
    .CPM_PCIE_NOC_1_wready(CPM_PCIE_NOC_1_wready),
    .dma1_mgmt_cpl_vld(dma1_mgmt_cpl_vld),
    .dma1_mgmt_req_rdy(dma1_mgmt_req_rdy),
    .dma1_mgmt_cpl_rdy(dma1_mgmt_cpl_rdy),
    .dma1_mgmt_req_vld(dma1_mgmt_req_vld),
    .dma1_mgmt_cpl_sts(dma1_mgmt_cpl_sts),
    .dma1_mgmt_cpl_dat(dma1_mgmt_cpl_dat),
    .dma1_mgmt_req_cmd(dma1_mgmt_req_cmd),
    .dma1_mgmt_req_fnc(dma1_mgmt_req_fnc),
    .dma1_mgmt_req_msc(dma1_mgmt_req_msc),
    .dma1_mgmt_req_adr(dma1_mgmt_req_adr),
    .dma1_mgmt_req_dat(dma1_mgmt_req_dat),
    .dma1_st_rx_msg_tlast(dma1_st_rx_msg_tlast),
    .dma1_st_rx_msg_tvalid(dma1_st_rx_msg_tvalid),
    .dma1_st_rx_msg_tready(dma1_st_rx_msg_tready),
    .dma1_st_rx_msg_tdata(dma1_st_rx_msg_tdata),
    .dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_ready),
    .dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_sdi),
    .dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_valid),
    .dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_error),
    .dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_no_dma),
    .dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_mrkr_req),
    .dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_len),
    .dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_qid),
    .dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_func),
    .dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_cidx),
    .dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_radr),
    .dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_wadr),
    .dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_port_id),
    .dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_ready),
    .dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_sdi),
    .dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_valid),
    .dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_error),
    .dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_no_dma),
    .dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_mrkr_req),
    .dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_len),
    .dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_qid),
    .dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_func),
    .dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_cidx),
    .dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_radr),
    .dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_wadr),
    .dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_port_id),
    .dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_ready),
    .dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_valid),
    .dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_error),
    .dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_qid),
    .dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_func),
    .dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_addr),
    .dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_port_id),
    .dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_pfch_tag),
    .dma1_c2h_byp_out_valid(dma1_c2h_byp_out_valid),
    .dma1_c2h_byp_out_error(dma1_c2h_byp_out_error),
    .dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_st_mm),
    .dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_mm_chn),
    .dma1_c2h_byp_out_ready(dma1_c2h_byp_out_ready),
    .dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_fmt),
    .dma1_c2h_byp_out_qid(dma1_c2h_byp_out_qid),
    .dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_dsc),
    .dma1_c2h_byp_out_func(dma1_c2h_byp_out_func),
    .dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_cidx),
    .dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_dsc_sz),
    .dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_port_id),
    .dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_pfch_tag),
    .dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_ready),
    .dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_sdi),
    .dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_valid),
    .dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_error),
    .dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_no_dma),
    .dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_mrkr_req),
    .dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_len),
    .dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_qid),
    .dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_func),
    .dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_cidx),
    .dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_radr),
    .dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_wadr),
    .dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_port_id),
    .dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_ready),
    .dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_sdi),
    .dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_valid),
    .dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_error),
    .dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_no_dma),
    .dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_mrkr_req),
    .dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_len),
    .dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_qid),
    .dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_func),
    .dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_cidx),
    .dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_radr),
    .dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_wadr),
    .dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_port_id),
    .dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_ready),
    .dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_eop),
    .dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_sdi),
    .dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_sop),
    .dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_valid),
    .dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_error),
    .dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_no_dma),
    .dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_mrkr_req),
    .dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_len),
    .dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_qid),
    .dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_func),
    .dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_addr),
    .dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_cidx),
    .dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_port_id),
    .dma1_h2c_byp_out_valid(dma1_h2c_byp_out_valid),
    .dma1_h2c_byp_out_error(dma1_h2c_byp_out_error),
    .dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_st_mm),
    .dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_mm_chn),
    .dma1_h2c_byp_out_ready(dma1_h2c_byp_out_ready),
    .dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_fmt),
    .dma1_h2c_byp_out_qid(dma1_h2c_byp_out_qid),
    .dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_dsc),
    .dma1_h2c_byp_out_func(dma1_h2c_byp_out_func),
    .dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_cidx),
    .dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_dsc_sz),
    .dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_port_id),
    .dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_cmp),
    .dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_target_vch),
    .dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_port_id),
    .dma1_s_axis_c2h_tready(dma1_s_axis_c2h_tready),
    .dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_tlast),
    .dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_tvalid),
    .dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_tcrc),
    .dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_tdata),
    .dma1_s_axis_c2h_mty(dma1_s_axis_c2h_mty),
    .dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_ecc),
    .dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_ctrl_marker),
    .dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_ctrl_has_cmpt),
    .dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_ctrl_len),
    .dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_ctrl_qid),
    .dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_ctrl_port_id),
    .dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_marker),
    .dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_user_trig),
    .dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_size),
    .dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_qid),
    .dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_no_wrb_marker),
    .dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_port_id),
    .dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_col_idx),
    .dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_err_idx),
    .dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_wait_pld_pkt_id),
    .dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_tready),
    .dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_tvalid),
    .dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_dpar),
    .dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_data),
    .dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_cmpt_type),
    .dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_tlast),
    .dma1_m_axis_h2c_err(dma1_m_axis_h2c_err),
    .dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_tvalid),
    .dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_tdata),
    .dma1_m_axis_h2c_zero_byte(dma1_m_axis_h2c_zero_byte),
    .dma1_m_axis_h2c_tready(dma1_m_axis_h2c_tready),
    .dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_tcrc),
    .dma1_m_axis_h2c_mty(dma1_m_axis_h2c_mty),
    .dma1_m_axis_h2c_qid(dma1_m_axis_h2c_qid),
    .dma1_m_axis_h2c_mdata(dma1_m_axis_h2c_mdata),
    .dma1_m_axis_h2c_port_id(dma1_m_axis_h2c_port_id),
    .dma1_axis_c2h_status_last(dma1_axis_c2h_status_last),
    .dma1_axis_c2h_status_drop(dma1_axis_c2h_status_drop),
    .dma1_axis_c2h_status_error(dma1_axis_c2h_status_error),
    .dma1_axis_c2h_status_valid(dma1_axis_c2h_status_valid),
    .dma1_axis_c2h_status_status_cmp(dma1_axis_c2h_status_status_cmp),
    .dma1_axis_c2h_status_qid(dma1_axis_c2h_status_qid),
    .dma1_qsts_out_vld(dma1_qsts_out_vld),
    .dma1_qsts_out_op(dma1_qsts_out_op),
    .dma1_qsts_out_rdy(dma1_qsts_out_rdy),
    .dma1_qsts_out_qid(dma1_qsts_out_qid),
    .dma1_qsts_out_data(dma1_qsts_out_data),
    .dma1_qsts_out_port_id(dma1_qsts_out_port_id),
    .dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_rdy),
    .dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_dir),
    .dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_valid),
    .dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_fence),
    .dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_qid),
    .dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_crdt),
    .dma1_usr_irq_ack(dma1_usr_irq_ack),
    .dma1_usr_irq_fail(dma1_usr_irq_fail),
    .dma1_usr_irq_valid(dma1_usr_irq_valid),
    .dma1_usr_irq_vec(dma1_usr_irq_vec),
    .dma1_usr_irq_fnc(dma1_usr_irq_fnc),
    .dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_mm),
    .dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_qen),
    .dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_byp),
    .dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_dir),
    .dma1_tm_dsc_sts_error(dma1_tm_dsc_sts_error),
    .dma1_tm_dsc_sts_valid(dma1_tm_dsc_sts_valid),
    .dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_qinv),
    .dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_irq_arm),
    .dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_rdy),
    .dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_qid),
    .dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_avl),
    .dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_pidx),
    .dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_port_id),
    .dma1_usr_flr_set(dma1_usr_flr_set),
    .dma1_usr_flr_clear(dma1_usr_flr_clear),
    .dma1_usr_flr_fnc(dma1_usr_flr_fnc),
    .dma1_usr_flr_done_vld(dma1_usr_flr_done_vld),
    .dma1_usr_flr_done_fnc(dma1_usr_flr_done_fnc),
    .PCIE1_GT_grx_n(PCIE1_GT_grx_n),
    .PCIE1_GT_gtx_n(PCIE1_GT_gtx_n),
    .PCIE1_GT_grx_p(PCIE1_GT_grx_p),
    .PCIE1_GT_gtx_p(PCIE1_GT_gtx_p),
    .gt_refclk1_clk_n(gt_refclk1_clk_n),
    .gt_refclk1_clk_p(gt_refclk1_clk_p)
  );
endmodule
