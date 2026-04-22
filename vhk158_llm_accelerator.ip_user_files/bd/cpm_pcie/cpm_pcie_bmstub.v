// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module cpm_pcie (
  usr_flr_0_clear,
  usr_flr_0_done_fnc,
  usr_flr_0_done_vld,
  usr_flr_0_fnc,
  usr_flr_0_set,
  usr_irq_0_ack,
  usr_irq_0_fail,
  usr_irq_0_fnc,
  usr_irq_0_valid,
  usr_irq_0_vec,
  dma1_c2h_byp_in_mm_0_0_ready,
  dma1_c2h_byp_in_mm_0_0_sdi,
  dma1_c2h_byp_in_mm_0_0_valid,
  dma1_c2h_byp_in_mm_0_0_error,
  dma1_c2h_byp_in_mm_0_0_no_dma,
  dma1_c2h_byp_in_mm_0_0_mrkr_req,
  dma1_c2h_byp_in_mm_0_0_len,
  dma1_c2h_byp_in_mm_0_0_qid,
  dma1_c2h_byp_in_mm_0_0_func,
  dma1_c2h_byp_in_mm_0_0_cidx,
  dma1_c2h_byp_in_mm_0_0_radr,
  dma1_c2h_byp_in_mm_0_0_wadr,
  dma1_c2h_byp_in_mm_0_0_port_id,
  dma1_c2h_byp_in_mm_1_0_ready,
  dma1_c2h_byp_in_mm_1_0_sdi,
  dma1_c2h_byp_in_mm_1_0_valid,
  dma1_c2h_byp_in_mm_1_0_error,
  dma1_c2h_byp_in_mm_1_0_no_dma,
  dma1_c2h_byp_in_mm_1_0_mrkr_req,
  dma1_c2h_byp_in_mm_1_0_len,
  dma1_c2h_byp_in_mm_1_0_qid,
  dma1_c2h_byp_in_mm_1_0_func,
  dma1_c2h_byp_in_mm_1_0_cidx,
  dma1_c2h_byp_in_mm_1_0_radr,
  dma1_c2h_byp_in_mm_1_0_wadr,
  dma1_c2h_byp_in_mm_1_0_port_id,
  dma1_h2c_byp_in_mm_0_0_ready,
  dma1_h2c_byp_in_mm_0_0_sdi,
  dma1_h2c_byp_in_mm_0_0_valid,
  dma1_h2c_byp_in_mm_0_0_error,
  dma1_h2c_byp_in_mm_0_0_no_dma,
  dma1_h2c_byp_in_mm_0_0_mrkr_req,
  dma1_h2c_byp_in_mm_0_0_len,
  dma1_h2c_byp_in_mm_0_0_qid,
  dma1_h2c_byp_in_mm_0_0_func,
  dma1_h2c_byp_in_mm_0_0_cidx,
  dma1_h2c_byp_in_mm_0_0_radr,
  dma1_h2c_byp_in_mm_0_0_wadr,
  dma1_h2c_byp_in_mm_0_0_port_id,
  dma1_h2c_byp_in_mm_1_0_ready,
  dma1_h2c_byp_in_mm_1_0_sdi,
  dma1_h2c_byp_in_mm_1_0_valid,
  dma1_h2c_byp_in_mm_1_0_error,
  dma1_h2c_byp_in_mm_1_0_no_dma,
  dma1_h2c_byp_in_mm_1_0_mrkr_req,
  dma1_h2c_byp_in_mm_1_0_len,
  dma1_h2c_byp_in_mm_1_0_qid,
  dma1_h2c_byp_in_mm_1_0_func,
  dma1_h2c_byp_in_mm_1_0_cidx,
  dma1_h2c_byp_in_mm_1_0_radr,
  dma1_h2c_byp_in_mm_1_0_wadr,
  dma1_h2c_byp_in_mm_1_0_port_id,
  dma1_dsc_crdt_in_0_rdy,
  dma1_dsc_crdt_in_0_dir,
  dma1_dsc_crdt_in_0_valid,
  dma1_dsc_crdt_in_0_fence,
  dma1_dsc_crdt_in_0_qid,
  dma1_dsc_crdt_in_0_crdt,
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
  M_AXIL_awaddr,
  M_AXIL_awlen,
  M_AXIL_awsize,
  M_AXIL_awburst,
  M_AXIL_awlock,
  M_AXIL_awcache,
  M_AXIL_awprot,
  M_AXIL_awqos,
  M_AXIL_awuser,
  M_AXIL_awvalid,
  M_AXIL_awready,
  M_AXIL_wdata,
  M_AXIL_wstrb,
  M_AXIL_wlast,
  M_AXIL_wvalid,
  M_AXIL_wready,
  M_AXIL_bresp,
  M_AXIL_bvalid,
  M_AXIL_bready,
  M_AXIL_araddr,
  M_AXIL_arlen,
  M_AXIL_arsize,
  M_AXIL_arburst,
  M_AXIL_arlock,
  M_AXIL_arcache,
  M_AXIL_arprot,
  M_AXIL_arqos,
  M_AXIL_aruser,
  M_AXIL_arvalid,
  M_AXIL_arready,
  M_AXIL_rdata,
  M_AXIL_rresp,
  M_AXIL_rlast,
  M_AXIL_rvalid,
  M_AXIL_rready,
  gt_refclk1_0_clk_n,
  gt_refclk1_0_clk_p,
  dma1_st_rx_msg_0_tlast,
  dma1_st_rx_msg_0_tvalid,
  dma1_st_rx_msg_0_tready,
  dma1_st_rx_msg_0_tdata,
  dma1_c2h_byp_out_0_valid,
  dma1_c2h_byp_out_0_error,
  dma1_c2h_byp_out_0_st_mm,
  dma1_c2h_byp_out_0_mm_chn,
  dma1_c2h_byp_out_0_ready,
  dma1_c2h_byp_out_0_fmt,
  dma1_c2h_byp_out_0_qid,
  dma1_c2h_byp_out_0_dsc,
  dma1_c2h_byp_out_0_func,
  dma1_c2h_byp_out_0_cidx,
  dma1_c2h_byp_out_0_dsc_sz,
  dma1_c2h_byp_out_0_port_id,
  dma1_c2h_byp_out_0_pfch_tag,
  dma1_h2c_byp_out_0_valid,
  dma1_h2c_byp_out_0_error,
  dma1_h2c_byp_out_0_st_mm,
  dma1_h2c_byp_out_0_mm_chn,
  dma1_h2c_byp_out_0_ready,
  dma1_h2c_byp_out_0_fmt,
  dma1_h2c_byp_out_0_qid,
  dma1_h2c_byp_out_0_dsc,
  dma1_h2c_byp_out_0_func,
  dma1_h2c_byp_out_0_cidx,
  dma1_h2c_byp_out_0_dsc_sz,
  dma1_h2c_byp_out_0_port_id,
  dma1_qsts_out_0_vld,
  dma1_qsts_out_0_op,
  dma1_qsts_out_0_rdy,
  dma1_qsts_out_0_qid,
  dma1_qsts_out_0_data,
  dma1_qsts_out_0_port_id,
  dma1_tm_dsc_sts_0_mm,
  dma1_tm_dsc_sts_0_qen,
  dma1_tm_dsc_sts_0_byp,
  dma1_tm_dsc_sts_0_dir,
  dma1_tm_dsc_sts_0_error,
  dma1_tm_dsc_sts_0_valid,
  dma1_tm_dsc_sts_0_qinv,
  dma1_tm_dsc_sts_0_irq_arm,
  dma1_tm_dsc_sts_0_rdy,
  dma1_tm_dsc_sts_0_qid,
  dma1_tm_dsc_sts_0_avl,
  dma1_tm_dsc_sts_0_pidx,
  dma1_tm_dsc_sts_0_port_id,
  PCIE1_GT_0_grx_n,
  PCIE1_GT_0_gtx_n,
  PCIE1_GT_0_grx_p,
  PCIE1_GT_0_gtx_p,
  dma1_c2h_byp_in_st_csh_0_ready,
  dma1_c2h_byp_in_st_csh_0_valid,
  dma1_c2h_byp_in_st_csh_0_error,
  dma1_c2h_byp_in_st_csh_0_qid,
  dma1_c2h_byp_in_st_csh_0_func,
  dma1_c2h_byp_in_st_csh_0_addr,
  dma1_c2h_byp_in_st_csh_0_port_id,
  dma1_c2h_byp_in_st_csh_0_pfch_tag,
  dma1_h2c_byp_in_st_0_ready,
  dma1_h2c_byp_in_st_0_eop,
  dma1_h2c_byp_in_st_0_sdi,
  dma1_h2c_byp_in_st_0_sop,
  dma1_h2c_byp_in_st_0_valid,
  dma1_h2c_byp_in_st_0_error,
  dma1_h2c_byp_in_st_0_no_dma,
  dma1_h2c_byp_in_st_0_mrkr_req,
  dma1_h2c_byp_in_st_0_len,
  dma1_h2c_byp_in_st_0_qid,
  dma1_h2c_byp_in_st_0_func,
  dma1_h2c_byp_in_st_0_addr,
  dma1_h2c_byp_in_st_0_cidx,
  dma1_h2c_byp_in_st_0_port_id,
  dma1_s_axis_c2h_0_tready,
  dma1_s_axis_c2h_0_tlast,
  dma1_s_axis_c2h_0_tvalid,
  dma1_s_axis_c2h_0_tcrc,
  dma1_s_axis_c2h_0_tdata,
  dma1_s_axis_c2h_0_mty,
  dma1_s_axis_c2h_0_ecc,
  dma1_s_axis_c2h_0_ctrl_marker,
  dma1_s_axis_c2h_0_ctrl_has_cmpt,
  dma1_s_axis_c2h_0_ctrl_len,
  dma1_s_axis_c2h_0_ctrl_qid,
  dma1_s_axis_c2h_0_ctrl_port_id,
  dma1_s_axis_c2h_cmpt_0_marker,
  dma1_s_axis_c2h_cmpt_0_user_trig,
  dma1_s_axis_c2h_cmpt_0_size,
  dma1_s_axis_c2h_cmpt_0_qid,
  dma1_s_axis_c2h_cmpt_0_no_wrb_marker,
  dma1_s_axis_c2h_cmpt_0_port_id,
  dma1_s_axis_c2h_cmpt_0_col_idx,
  dma1_s_axis_c2h_cmpt_0_err_idx,
  dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id,
  dma1_s_axis_c2h_cmpt_0_tready,
  dma1_s_axis_c2h_cmpt_0_tvalid,
  dma1_s_axis_c2h_cmpt_0_dpar,
  dma1_s_axis_c2h_cmpt_0_data,
  dma1_s_axis_c2h_cmpt_0_cmpt_type,
  dma1_axis_c2h_dmawr_0_cmp,
  dma1_axis_c2h_dmawr_0_target_vch,
  dma1_axis_c2h_dmawr_0_port_id,
  dma1_m_axis_h2c_0_tlast,
  dma1_m_axis_h2c_0_err,
  dma1_m_axis_h2c_0_tvalid,
  dma1_m_axis_h2c_0_tdata,
  dma1_m_axis_h2c_0_zero_byte,
  dma1_m_axis_h2c_0_tready,
  dma1_m_axis_h2c_0_tcrc,
  dma1_m_axis_h2c_0_mty,
  dma1_m_axis_h2c_0_qid,
  dma1_m_axis_h2c_0_mdata,
  dma1_m_axis_h2c_0_port_id,
  dma1_axis_c2h_status_0_last,
  dma1_axis_c2h_status_0_drop,
  dma1_axis_c2h_status_0_error,
  dma1_axis_c2h_status_0_valid,
  dma1_axis_c2h_status_0_status_cmp,
  dma1_axis_c2h_status_0_qid,
  ddr4_dimm0_dq,
  ddr4_dimm0_dqs_t,
  ddr4_dimm0_dqs_c,
  ddr4_dimm0_adr,
  ddr4_dimm0_ba,
  ddr4_dimm0_bg,
  ddr4_dimm0_act_n,
  ddr4_dimm0_reset_n,
  ddr4_dimm0_ck_t,
  ddr4_dimm0_ck_c,
  ddr4_dimm0_cke,
  ddr4_dimm0_cs_n,
  ddr4_dimm0_odt,
  ddr4_dimm0_par,
  ddr4_dimm0_alert_n,
  ddr4_dimm1_dq,
  ddr4_dimm1_dqs_t,
  ddr4_dimm1_dqs_c,
  ddr4_dimm1_adr,
  ddr4_dimm1_ba,
  ddr4_dimm1_bg,
  ddr4_dimm1_act_n,
  ddr4_dimm1_reset_n,
  ddr4_dimm1_ck_t,
  ddr4_dimm1_ck_c,
  ddr4_dimm1_cke,
  ddr4_dimm1_cs_n,
  ddr4_dimm1_odt,
  ddr4_dimm1_par,
  ddr4_dimm1_alert_n,
  ddr4_dimm0_sma_clk_clk_p,
  ddr4_dimm0_sma_clk_clk_n,
  ddr4_dimm1_sma_clk_clk_p,
  ddr4_dimm1_sma_clk_clk_n,
  cpm_irq0_0,
  cpm_irq1_0,
  dma1_intrfc_resetn_0,
  cpm_misc_irq_0,
  cpm_cor_irq_0,
  cpm_uncor_irq_0,
  dma1_intrfc_clk_0,
  dma1_axi_aresetn_0,
  dest_out_0,
  reset_0,
  clk_out1_0,
  locked_0,
  clk_out4_0,
  clk_out3_0,
  clk_out2_0,
  clk_out5_0,
  HBM00_AXI_rdata_0,
  HBM00_AXI_wdata_0,
  HBM01_AXI_rdata_0,
  HBM01_AXI_wdata_0,
  HBM02_AXI_rdata_0,
  HBM02_AXI_wdata_0,
  HBM03_AXI_rdata_0,
  HBM03_AXI_wdata_0,
  HBM04_AXI_rdata_0,
  HBM04_AXI_wdata_0,
  HBM05_AXI_rdata_0,
  HBM05_AXI_wdata_0,
  HBM06_AXI_rdata_0,
  HBM06_AXI_wdata_0,
  HBM07_AXI_rdata_0,
  HBM07_AXI_wdata_0,
  HBM08_AXI_rdata_0,
  HBM08_AXI_wdata_0,
  HBM09_AXI_rdata_0,
  HBM09_AXI_wdata_0,
  HBM10_AXI_rdata_0,
  HBM10_AXI_wdata_0,
  HBM11_AXI_rdata_0,
  HBM11_AXI_wdata_0,
  HBM12_AXI_rdata_0,
  HBM12_AXI_wdata_0,
  HBM13_AXI_rdata_0,
  HBM13_AXI_wdata_0,
  HBM14_AXI_rdata_0,
  HBM14_AXI_wdata_0,
  HBM15_AXI_rdata_0,
  HBM15_AXI_wdata_0,
  HBM16_AXI_rdata_0,
  HBM16_AXI_wdata_0,
  HBM17_AXI_rdata_0,
  HBM17_AXI_wdata_0,
  HBM18_AXI_rdata_0,
  HBM18_AXI_wdata_0,
  HBM19_AXI_rdata_0,
  HBM19_AXI_wdata_0,
  HBM20_AXI_rdata_0,
  HBM20_AXI_wdata_0,
  HBM21_AXI_rdata_0,
  HBM21_AXI_wdata_0,
  HBM22_AXI_rdata_0,
  HBM22_AXI_wdata_0,
  HBM23_AXI_rdata_0,
  HBM23_AXI_wdata_0,
  HBM24_AXI_rdata_0,
  HBM24_AXI_wdata_0,
  HBM25_AXI_rdata_0,
  HBM25_AXI_wdata_0,
  HBM26_AXI_rdata_0,
  HBM26_AXI_wdata_0,
  HBM27_AXI_rdata_0,
  HBM27_AXI_wdata_0,
  HBM28_AXI_rdata_0,
  HBM28_AXI_wdata_0,
  HBM29_AXI_rdata_0,
  HBM29_AXI_wdata_0,
  HBM30_AXI_rdata_0,
  HBM30_AXI_wdata_0,
  HBM31_AXI_rdata_0,
  HBM31_AXI_wdata_0,
  HBM00_AXI_awvalid_0,
  HBM00_AXI_wready_0,
  HBM00_AXI_rvalid_0,
  HBM00_AXI_bresp_0,
  HBM00_AXI_awburst_0,
  HBM00_AXI_awsize_0,
  HBM00_AXI_rlast_0,
  HBM00_AXI_arvalid_0,
  HBM00_AXI_wlast_0,
  HBM00_AXI_arsize_0,
  HBM00_AXI_bready_0,
  HBM00_AXI_wvalid_0,
  HBM00_AXI_arready_0,
  HBM00_AXI_bvalid_0,
  HBM00_AXI_awready_0,
  HBM00_AXI_arburst_0,
  HBM00_AXI_rready_0,
  HBM01_AXI_awburst_0,
  HBM01_AXI_awsize_0,
  HBM01_AXI_wlast_0,
  HBM01_AXI_bresp_0,
  HBM01_AXI_awready_0,
  HBM01_AXI_bready_0,
  HBM01_AXI_awvalid_0,
  HBM01_AXI_bvalid_0,
  HBM01_AXI_arvalid_0,
  HBM01_AXI_wvalid_0,
  HBM01_AXI_rlast_0,
  HBM01_AXI_rvalid_0,
  HBM01_AXI_arburst_0,
  HBM01_AXI_wready_0,
  HBM01_AXI_arsize_0,
  HBM01_AXI_arready_0,
  HBM01_AXI_rready_0,
  HBM02_AXI_wready_0,
  HBM02_AXI_arsize_0,
  HBM02_AXI_awburst_0,
  HBM02_AXI_bresp_0,
  HBM02_AXI_wlast_0,
  HBM02_AXI_awsize_0,
  HBM02_AXI_arburst_0,
  HBM02_AXI_awready_0,
  HBM02_AXI_awvalid_0,
  HBM02_AXI_wvalid_0,
  HBM02_AXI_bready_0,
  HBM02_AXI_rlast_0,
  HBM02_AXI_bvalid_0,
  HBM02_AXI_arvalid_0,
  HBM02_AXI_rvalid_0,
  HBM02_AXI_arready_0,
  HBM02_AXI_rready_0,
  HBM03_AXI_rvalid_0,
  HBM03_AXI_awsize_0,
  HBM03_AXI_awready_0,
  HBM03_AXI_awvalid_0,
  HBM03_AXI_arsize_0,
  HBM03_AXI_bresp_0,
  HBM03_AXI_arready_0,
  HBM03_AXI_bready_0,
  HBM03_AXI_bvalid_0,
  HBM03_AXI_wvalid_0,
  HBM03_AXI_arburst_0,
  HBM03_AXI_wready_0,
  HBM03_AXI_wlast_0,
  HBM03_AXI_arvalid_0,
  HBM03_AXI_rlast_0,
  HBM03_AXI_awburst_0,
  HBM03_AXI_rready_0,
  HBM00_AXI_araddr_0,
  HBM00_AXI_arid_0,
  HBM00_AXI_arlen_0,
  HBM00_AXI_awaddr_0,
  HBM00_AXI_awid_0,
  HBM00_AXI_awlen_0,
  HBM00_AXI_wstrb_0,
  HBM01_AXI_araddr_0,
  HBM01_AXI_arid_0,
  HBM01_AXI_arlen_0,
  HBM01_AXI_awaddr_0,
  HBM01_AXI_awid_0,
  HBM01_AXI_awlen_0,
  HBM01_AXI_wstrb_0,
  HBM02_AXI_araddr_0,
  HBM02_AXI_arid_0,
  HBM02_AXI_arlen_0,
  HBM02_AXI_awaddr_0,
  HBM02_AXI_awid_0,
  HBM02_AXI_awlen_0,
  HBM02_AXI_wstrb_0,
  HBM03_AXI_araddr_0,
  HBM03_AXI_arid_0,
  HBM03_AXI_arlen_0,
  HBM03_AXI_awaddr_0,
  HBM03_AXI_awid_0,
  HBM03_AXI_awlen_0,
  HBM03_AXI_wstrb_0,
  HBM04_AXI_araddr_0,
  HBM04_AXI_arid_0,
  HBM04_AXI_arlen_0,
  HBM04_AXI_awaddr_0,
  HBM04_AXI_awid_0,
  HBM04_AXI_awlen_0,
  HBM04_AXI_wstrb_0,
  HBM05_AXI_araddr_0,
  HBM05_AXI_arid_0,
  HBM05_AXI_arlen_0,
  HBM05_AXI_awaddr_0,
  HBM05_AXI_awid_0,
  HBM05_AXI_awlen_0,
  HBM05_AXI_wstrb_0,
  HBM06_AXI_araddr_0,
  HBM06_AXI_arid_0,
  HBM06_AXI_arlen_0,
  HBM06_AXI_awaddr_0,
  HBM06_AXI_awid_0,
  HBM06_AXI_awlen_0,
  HBM06_AXI_wstrb_0,
  HBM07_AXI_araddr_0,
  HBM07_AXI_arid_0,
  HBM07_AXI_arlen_0,
  HBM07_AXI_awaddr_0,
  HBM07_AXI_awid_0,
  HBM07_AXI_awlen_0,
  HBM07_AXI_wstrb_0,
  HBM08_AXI_araddr_0,
  HBM08_AXI_arid_0,
  HBM08_AXI_arlen_0,
  HBM08_AXI_awaddr_0,
  HBM08_AXI_awid_0,
  HBM08_AXI_awlen_0,
  HBM08_AXI_wstrb_0,
  HBM09_AXI_araddr_0,
  HBM09_AXI_arid_0,
  HBM09_AXI_arlen_0,
  HBM09_AXI_awaddr_0,
  HBM09_AXI_awid_0,
  HBM09_AXI_awlen_0,
  HBM09_AXI_wstrb_0,
  HBM10_AXI_araddr_0,
  HBM10_AXI_arid_0,
  HBM10_AXI_arlen_0,
  HBM10_AXI_awaddr_0,
  HBM10_AXI_awid_0,
  HBM10_AXI_awlen_0,
  HBM10_AXI_wstrb_0,
  HBM11_AXI_araddr_0,
  HBM11_AXI_arid_0,
  HBM11_AXI_arlen_0,
  HBM11_AXI_awaddr_0,
  HBM11_AXI_awid_0,
  HBM11_AXI_awlen_0,
  HBM11_AXI_wstrb_0,
  HBM12_AXI_araddr_0,
  HBM12_AXI_arid_0,
  HBM12_AXI_arlen_0,
  HBM12_AXI_awaddr_0,
  HBM12_AXI_awid_0,
  HBM12_AXI_awlen_0,
  HBM12_AXI_wstrb_0,
  HBM13_AXI_araddr_0,
  HBM13_AXI_arid_0,
  HBM13_AXI_arlen_0,
  HBM13_AXI_awaddr_0,
  HBM13_AXI_awid_0,
  HBM13_AXI_awlen_0,
  HBM13_AXI_wstrb_0,
  HBM14_AXI_araddr_0,
  HBM14_AXI_arid_0,
  HBM14_AXI_arlen_0,
  HBM14_AXI_awaddr_0,
  HBM14_AXI_awid_0,
  HBM14_AXI_awlen_0,
  HBM14_AXI_wstrb_0,
  HBM15_AXI_araddr_0,
  HBM15_AXI_arid_0,
  HBM15_AXI_arlen_0,
  HBM15_AXI_awaddr_0,
  HBM15_AXI_awid_0,
  HBM15_AXI_awlen_0,
  HBM15_AXI_wstrb_0,
  HBM16_AXI_araddr_0,
  HBM16_AXI_arid_0,
  HBM16_AXI_arlen_0,
  HBM16_AXI_awaddr_0,
  HBM16_AXI_awid_0,
  HBM16_AXI_awlen_0,
  HBM16_AXI_wstrb_0,
  HBM17_AXI_araddr_0,
  HBM17_AXI_arid_0,
  HBM17_AXI_arlen_0,
  HBM17_AXI_awaddr_0,
  HBM17_AXI_awid_0,
  HBM17_AXI_awlen_0,
  HBM17_AXI_wstrb_0,
  HBM18_AXI_araddr_0,
  HBM18_AXI_arid_0,
  HBM18_AXI_arlen_0,
  HBM18_AXI_awaddr_0,
  HBM18_AXI_awid_0,
  HBM18_AXI_awlen_0,
  HBM18_AXI_wstrb_0,
  HBM19_AXI_araddr_0,
  HBM19_AXI_arid_0,
  HBM19_AXI_arlen_0,
  HBM19_AXI_awaddr_0,
  HBM19_AXI_awid_0,
  HBM19_AXI_awlen_0,
  HBM19_AXI_wstrb_0,
  HBM20_AXI_araddr_0,
  HBM20_AXI_arid_0,
  HBM20_AXI_arlen_0,
  HBM20_AXI_awaddr_0,
  HBM20_AXI_awid_0,
  HBM20_AXI_awlen_0,
  HBM20_AXI_wstrb_0,
  HBM21_AXI_araddr_0,
  HBM21_AXI_arid_0,
  HBM21_AXI_arlen_0,
  HBM21_AXI_awaddr_0,
  HBM21_AXI_awid_0,
  HBM21_AXI_awlen_0,
  HBM21_AXI_wstrb_0,
  HBM22_AXI_araddr_0,
  HBM22_AXI_arid_0,
  HBM22_AXI_arlen_0,
  HBM22_AXI_awaddr_0,
  HBM22_AXI_awid_0,
  HBM22_AXI_awlen_0,
  HBM22_AXI_wstrb_0,
  HBM23_AXI_araddr_0,
  HBM23_AXI_arid_0,
  HBM23_AXI_arlen_0,
  HBM23_AXI_awaddr_0,
  HBM23_AXI_awid_0,
  HBM23_AXI_awlen_0,
  HBM23_AXI_wstrb_0,
  HBM24_AXI_araddr_0,
  HBM24_AXI_arid_0,
  HBM24_AXI_arlen_0,
  HBM24_AXI_awaddr_0,
  HBM24_AXI_awid_0,
  HBM24_AXI_awlen_0,
  HBM24_AXI_wstrb_0,
  HBM25_AXI_araddr_0,
  HBM25_AXI_arid_0,
  HBM25_AXI_arlen_0,
  HBM25_AXI_awaddr_0,
  HBM25_AXI_awid_0,
  HBM25_AXI_awlen_0,
  HBM25_AXI_wstrb_0,
  HBM26_AXI_araddr_0,
  HBM26_AXI_arid_0,
  HBM26_AXI_arlen_0,
  HBM26_AXI_awaddr_0,
  HBM26_AXI_awid_0,
  HBM26_AXI_awlen_0,
  HBM26_AXI_wstrb_0,
  HBM27_AXI_araddr_0,
  HBM27_AXI_arid_0,
  HBM27_AXI_arlen_0,
  HBM27_AXI_awaddr_0,
  HBM27_AXI_awid_0,
  HBM27_AXI_awlen_0,
  HBM27_AXI_wstrb_0,
  HBM28_AXI_araddr_0,
  HBM28_AXI_arid_0,
  HBM28_AXI_arlen_0,
  HBM28_AXI_awaddr_0,
  HBM28_AXI_awid_0,
  HBM28_AXI_awlen_0,
  HBM28_AXI_wstrb_0,
  HBM29_AXI_araddr_0,
  HBM29_AXI_arid_0,
  HBM29_AXI_arlen_0,
  HBM29_AXI_awaddr_0,
  HBM29_AXI_awid_0,
  HBM29_AXI_awlen_0,
  HBM29_AXI_wstrb_0,
  HBM30_AXI_araddr_0,
  HBM30_AXI_arid_0,
  HBM30_AXI_arlen_0,
  HBM30_AXI_awaddr_0,
  HBM30_AXI_awid_0,
  HBM30_AXI_awlen_0,
  HBM30_AXI_wstrb_0,
  HBM31_AXI_araddr_0,
  HBM31_AXI_arid_0,
  HBM31_AXI_arlen_0,
  HBM31_AXI_awaddr_0,
  HBM31_AXI_awid_0,
  HBM31_AXI_awlen_0,
  HBM31_AXI_wstrb_0,
  HBM04_AXI_rvalid_0,
  HBM04_AXI_arready_0,
  HBM04_AXI_wlast_0,
  HBM04_AXI_wready_0,
  HBM04_AXI_arsize_0,
  HBM04_AXI_bresp_0,
  HBM04_AXI_wvalid_0,
  HBM04_AXI_awburst_0,
  HBM04_AXI_awsize_0,
  HBM04_AXI_arburst_0,
  HBM04_AXI_awready_0,
  HBM04_AXI_awvalid_0,
  HBM04_AXI_bready_0,
  HBM04_AXI_rlast_0,
  HBM04_AXI_bvalid_0,
  HBM04_AXI_arvalid_0,
  HBM04_AXI_rready_0,
  HBM05_AXI_awsize_0,
  HBM05_AXI_wlast_0,
  HBM05_AXI_rlast_0,
  HBM05_AXI_rvalid_0,
  HBM05_AXI_arready_0,
  HBM05_AXI_arsize_0,
  HBM05_AXI_arvalid_0,
  HBM05_AXI_bresp_0,
  HBM05_AXI_wvalid_0,
  HBM05_AXI_awready_0,
  HBM05_AXI_bready_0,
  HBM05_AXI_awvalid_0,
  HBM05_AXI_arburst_0,
  HBM05_AXI_bvalid_0,
  HBM05_AXI_wready_0,
  HBM05_AXI_awburst_0,
  HBM05_AXI_rready_0,
  HBM06_AXI_rvalid_0,
  HBM06_AXI_wvalid_0,
  HBM06_AXI_awburst_0,
  HBM06_AXI_awsize_0,
  HBM06_AXI_arsize_0,
  HBM06_AXI_arvalid_0,
  HBM06_AXI_arburst_0,
  HBM06_AXI_bready_0,
  HBM06_AXI_rlast_0,
  HBM06_AXI_arready_0,
  HBM06_AXI_bvalid_0,
  HBM06_AXI_wready_0,
  HBM06_AXI_awready_0,
  HBM06_AXI_bresp_0,
  HBM06_AXI_awvalid_0,
  HBM06_AXI_wlast_0,
  HBM06_AXI_rready_0,
  HBM07_AXI_awburst_0,
  HBM07_AXI_wlast_0,
  HBM07_AXI_arready_0,
  HBM07_AXI_awready_0,
  HBM07_AXI_rlast_0,
  HBM07_AXI_rvalid_0,
  HBM07_AXI_bresp_0,
  HBM07_AXI_bvalid_0,
  HBM07_AXI_wready_0,
  HBM07_AXI_arburst_0,
  HBM07_AXI_awsize_0,
  HBM07_AXI_awvalid_0,
  HBM07_AXI_arvalid_0,
  HBM07_AXI_bready_0,
  HBM07_AXI_wvalid_0,
  HBM07_AXI_arsize_0,
  HBM07_AXI_rready_0,
  HBM08_AXI_awvalid_0,
  HBM08_AXI_arvalid_0,
  HBM08_AXI_bready_0,
  HBM08_AXI_arsize_0,
  HBM08_AXI_awburst_0,
  HBM08_AXI_wlast_0,
  HBM08_AXI_wvalid_0,
  HBM08_AXI_awready_0,
  HBM08_AXI_rlast_0,
  HBM08_AXI_arready_0,
  HBM08_AXI_rvalid_0,
  HBM08_AXI_bvalid_0,
  HBM08_AXI_wready_0,
  HBM08_AXI_bresp_0,
  HBM08_AXI_arburst_0,
  HBM08_AXI_awsize_0,
  HBM08_AXI_rready_0,
  HBM09_AXI_rlast_0,
  HBM09_AXI_rvalid_0,
  HBM09_AXI_wlast_0,
  HBM09_AXI_arready_0,
  HBM09_AXI_awburst_0,
  HBM09_AXI_bresp_0,
  HBM09_AXI_bvalid_0,
  HBM09_AXI_arburst_0,
  HBM09_AXI_awvalid_0,
  HBM09_AXI_wready_0,
  HBM09_AXI_awsize_0,
  HBM09_AXI_arsize_0,
  HBM09_AXI_bready_0,
  HBM09_AXI_arvalid_0,
  HBM09_AXI_awready_0,
  HBM09_AXI_wvalid_0,
  HBM09_AXI_rready_0,
  HBM10_AXI_awsize_0,
  HBM10_AXI_arsize_0,
  HBM10_AXI_bready_0,
  HBM10_AXI_arvalid_0,
  HBM10_AXI_awready_0,
  HBM10_AXI_rvalid_0,
  HBM10_AXI_wlast_0,
  HBM10_AXI_wvalid_0,
  HBM10_AXI_rlast_0,
  HBM10_AXI_awburst_0,
  HBM10_AXI_arburst_0,
  HBM10_AXI_bvalid_0,
  HBM10_AXI_arready_0,
  HBM10_AXI_awvalid_0,
  HBM10_AXI_wready_0,
  HBM10_AXI_bresp_0,
  HBM10_AXI_rready_0,
  HBM11_AXI_arburst_0,
  HBM11_AXI_awburst_0,
  HBM11_AXI_arready_0,
  HBM11_AXI_awvalid_0,
  HBM11_AXI_bresp_0,
  HBM11_AXI_bvalid_0,
  HBM11_AXI_wready_0,
  HBM11_AXI_awsize_0,
  HBM11_AXI_arsize_0,
  HBM11_AXI_arvalid_0,
  HBM11_AXI_wlast_0,
  HBM11_AXI_awready_0,
  HBM11_AXI_bready_0,
  HBM11_AXI_wvalid_0,
  HBM11_AXI_rlast_0,
  HBM11_AXI_rvalid_0,
  HBM11_AXI_rready_0,
  HBM12_AXI_awvalid_0,
  HBM12_AXI_bready_0,
  HBM12_AXI_rlast_0,
  HBM12_AXI_bvalid_0,
  HBM12_AXI_arvalid_0,
  HBM12_AXI_rvalid_0,
  HBM12_AXI_arready_0,
  HBM12_AXI_wlast_0,
  HBM12_AXI_wready_0,
  HBM12_AXI_arsize_0,
  HBM12_AXI_bresp_0,
  HBM12_AXI_wvalid_0,
  HBM12_AXI_awburst_0,
  HBM12_AXI_awsize_0,
  HBM12_AXI_arburst_0,
  HBM12_AXI_awready_0,
  HBM12_AXI_rready_0,
  HBM13_AXI_bready_0,
  HBM13_AXI_awvalid_0,
  HBM13_AXI_arburst_0,
  HBM13_AXI_bvalid_0,
  HBM13_AXI_wready_0,
  HBM13_AXI_awburst_0,
  HBM13_AXI_awsize_0,
  HBM13_AXI_wlast_0,
  HBM13_AXI_rlast_0,
  HBM13_AXI_rvalid_0,
  HBM13_AXI_arready_0,
  HBM13_AXI_arsize_0,
  HBM13_AXI_arvalid_0,
  HBM13_AXI_bresp_0,
  HBM13_AXI_wvalid_0,
  HBM13_AXI_awready_0,
  HBM13_AXI_rready_0,
  HBM14_AXI_rvalid_0,
  HBM14_AXI_arburst_0,
  HBM14_AXI_awready_0,
  HBM14_AXI_bready_0,
  HBM14_AXI_awvalid_0,
  HBM14_AXI_bvalid_0,
  HBM14_AXI_wready_0,
  HBM14_AXI_arvalid_0,
  HBM14_AXI_bresp_0,
  HBM14_AXI_awburst_0,
  HBM14_AXI_rlast_0,
  HBM14_AXI_arready_0,
  HBM14_AXI_awsize_0,
  HBM14_AXI_wlast_0,
  HBM14_AXI_wvalid_0,
  HBM14_AXI_arsize_0,
  HBM14_AXI_rready_0,
  HBM15_AXI_bready_0,
  HBM15_AXI_bvalid_0,
  HBM15_AXI_arvalid_0,
  HBM15_AXI_wvalid_0,
  HBM15_AXI_awready_0,
  HBM15_AXI_awvalid_0,
  HBM15_AXI_wready_0,
  HBM15_AXI_arburst_0,
  HBM15_AXI_awburst_0,
  HBM15_AXI_awsize_0,
  HBM15_AXI_rlast_0,
  HBM15_AXI_arready_0,
  HBM15_AXI_rvalid_0,
  HBM15_AXI_wlast_0,
  HBM15_AXI_bresp_0,
  HBM15_AXI_arsize_0,
  HBM15_AXI_rready_0,
  HBM16_AXI_awsize_0,
  HBM16_AXI_wlast_0,
  HBM16_AXI_arsize_0,
  HBM16_AXI_bready_0,
  HBM16_AXI_wvalid_0,
  HBM16_AXI_rlast_0,
  HBM16_AXI_bvalid_0,
  HBM16_AXI_arvalid_0,
  HBM16_AXI_arburst_0,
  HBM16_AXI_awready_0,
  HBM16_AXI_awvalid_0,
  HBM16_AXI_arready_0,
  HBM16_AXI_wready_0,
  HBM16_AXI_bresp_0,
  HBM16_AXI_awburst_0,
  HBM16_AXI_rvalid_0,
  HBM16_AXI_rready_0,
  HBM17_AXI_rlast_0,
  HBM17_AXI_rvalid_0,
  HBM17_AXI_arburst_0,
  HBM17_AXI_arready_0,
  HBM17_AXI_wvalid_0,
  HBM17_AXI_arsize_0,
  HBM17_AXI_bresp_0,
  HBM17_AXI_wready_0,
  HBM17_AXI_bready_0,
  HBM17_AXI_awburst_0,
  HBM17_AXI_bvalid_0,
  HBM17_AXI_awsize_0,
  HBM17_AXI_wlast_0,
  HBM17_AXI_awready_0,
  HBM17_AXI_awvalid_0,
  HBM17_AXI_arvalid_0,
  HBM17_AXI_rready_0,
  HBM18_AXI_arvalid_0,
  HBM18_AXI_rvalid_0,
  HBM18_AXI_arready_0,
  HBM18_AXI_wready_0,
  HBM18_AXI_arsize_0,
  HBM18_AXI_bresp_0,
  HBM18_AXI_awburst_0,
  HBM18_AXI_awsize_0,
  HBM18_AXI_wlast_0,
  HBM18_AXI_arburst_0,
  HBM18_AXI_awready_0,
  HBM18_AXI_bready_0,
  HBM18_AXI_wvalid_0,
  HBM18_AXI_awvalid_0,
  HBM18_AXI_rlast_0,
  HBM18_AXI_bvalid_0,
  HBM18_AXI_rready_0,
  HBM19_AXI_rvalid_0,
  HBM19_AXI_wlast_0,
  HBM19_AXI_wready_0,
  HBM19_AXI_arsize_0,
  HBM19_AXI_awburst_0,
  HBM19_AXI_awsize_0,
  HBM19_AXI_arready_0,
  HBM19_AXI_awready_0,
  HBM19_AXI_awvalid_0,
  HBM19_AXI_bresp_0,
  HBM19_AXI_bready_0,
  HBM19_AXI_arburst_0,
  HBM19_AXI_bvalid_0,
  HBM19_AXI_arvalid_0,
  HBM19_AXI_wvalid_0,
  HBM19_AXI_rlast_0,
  HBM19_AXI_rready_0,
  HBM20_AXI_rvalid_0,
  HBM20_AXI_arready_0,
  HBM20_AXI_wlast_0,
  HBM20_AXI_wready_0,
  HBM20_AXI_arsize_0,
  HBM20_AXI_bresp_0,
  HBM20_AXI_wvalid_0,
  HBM20_AXI_arburst_0,
  HBM20_AXI_awready_0,
  HBM20_AXI_awburst_0,
  HBM20_AXI_awsize_0,
  HBM20_AXI_awvalid_0,
  HBM20_AXI_bready_0,
  HBM20_AXI_rlast_0,
  HBM20_AXI_bvalid_0,
  HBM20_AXI_arvalid_0,
  HBM20_AXI_rready_0,
  HBM21_AXI_rvalid_0,
  HBM21_AXI_arready_0,
  HBM21_AXI_arsize_0,
  HBM21_AXI_arvalid_0,
  HBM21_AXI_bresp_0,
  HBM21_AXI_wvalid_0,
  HBM21_AXI_awready_0,
  HBM21_AXI_bready_0,
  HBM21_AXI_awvalid_0,
  HBM21_AXI_arburst_0,
  HBM21_AXI_bvalid_0,
  HBM21_AXI_wready_0,
  HBM21_AXI_awburst_0,
  HBM21_AXI_awsize_0,
  HBM21_AXI_wlast_0,
  HBM21_AXI_rlast_0,
  HBM21_AXI_rready_0,
  HBM22_AXI_bresp_0,
  HBM22_AXI_awburst_0,
  HBM22_AXI_awsize_0,
  HBM22_AXI_wlast_0,
  HBM22_AXI_rvalid_0,
  HBM22_AXI_wvalid_0,
  HBM22_AXI_arsize_0,
  HBM22_AXI_arvalid_0,
  HBM22_AXI_arburst_0,
  HBM22_AXI_awready_0,
  HBM22_AXI_bready_0,
  HBM22_AXI_awvalid_0,
  HBM22_AXI_rlast_0,
  HBM22_AXI_arready_0,
  HBM22_AXI_bvalid_0,
  HBM22_AXI_wready_0,
  HBM22_AXI_rready_0,
  HBM23_AXI_bvalid_0,
  HBM23_AXI_arvalid_0,
  HBM23_AXI_wvalid_0,
  HBM23_AXI_awready_0,
  HBM23_AXI_awvalid_0,
  HBM23_AXI_wready_0,
  HBM23_AXI_arburst_0,
  HBM23_AXI_awburst_0,
  HBM23_AXI_awsize_0,
  HBM23_AXI_rlast_0,
  HBM23_AXI_arready_0,
  HBM23_AXI_rvalid_0,
  HBM23_AXI_wlast_0,
  HBM23_AXI_bresp_0,
  HBM23_AXI_arsize_0,
  HBM23_AXI_bready_0,
  HBM23_AXI_rready_0,
  HBM24_AXI_arsize_0,
  HBM24_AXI_bready_0,
  HBM24_AXI_wvalid_0,
  HBM24_AXI_rlast_0,
  HBM24_AXI_bvalid_0,
  HBM24_AXI_arvalid_0,
  HBM24_AXI_arburst_0,
  HBM24_AXI_awready_0,
  HBM24_AXI_awvalid_0,
  HBM24_AXI_arready_0,
  HBM24_AXI_wready_0,
  HBM24_AXI_bresp_0,
  HBM24_AXI_awburst_0,
  HBM24_AXI_awsize_0,
  HBM24_AXI_rvalid_0,
  HBM24_AXI_wlast_0,
  HBM24_AXI_rready_0,
  HBM25_AXI_arvalid_0,
  HBM25_AXI_wvalid_0,
  HBM25_AXI_arburst_0,
  HBM25_AXI_wready_0,
  HBM25_AXI_arsize_0,
  HBM25_AXI_rlast_0,
  HBM25_AXI_awburst_0,
  HBM25_AXI_rvalid_0,
  HBM25_AXI_awsize_0,
  HBM25_AXI_wlast_0,
  HBM25_AXI_bresp_0,
  HBM25_AXI_awready_0,
  HBM25_AXI_arready_0,
  HBM25_AXI_bready_0,
  HBM25_AXI_awvalid_0,
  HBM25_AXI_bvalid_0,
  HBM25_AXI_rready_0,
  HBM26_AXI_arsize_0,
  HBM26_AXI_bresp_0,
  HBM26_AXI_awburst_0,
  HBM26_AXI_awsize_0,
  HBM26_AXI_wlast_0,
  HBM26_AXI_arburst_0,
  HBM26_AXI_awready_0,
  HBM26_AXI_bready_0,
  HBM26_AXI_wvalid_0,
  HBM26_AXI_awvalid_0,
  HBM26_AXI_rlast_0,
  HBM26_AXI_bvalid_0,
  HBM26_AXI_arvalid_0,
  HBM26_AXI_rvalid_0,
  HBM26_AXI_arready_0,
  HBM26_AXI_wready_0,
  HBM26_AXI_rready_0,
  HBM27_AXI_arready_0,
  HBM27_AXI_awready_0,
  HBM27_AXI_awvalid_0,
  HBM27_AXI_bresp_0,
  HBM27_AXI_bready_0,
  HBM27_AXI_arburst_0,
  HBM27_AXI_bvalid_0,
  HBM27_AXI_arvalid_0,
  HBM27_AXI_wvalid_0,
  HBM27_AXI_rlast_0,
  HBM27_AXI_rvalid_0,
  HBM27_AXI_wlast_0,
  HBM27_AXI_wready_0,
  HBM27_AXI_arsize_0,
  HBM27_AXI_awburst_0,
  HBM27_AXI_awsize_0,
  HBM27_AXI_rready_0,
  HBM28_AXI_bresp_0,
  HBM28_AXI_wvalid_0,
  HBM28_AXI_awburst_0,
  HBM28_AXI_awsize_0,
  HBM28_AXI_awready_0,
  HBM28_AXI_rlast_0,
  HBM28_AXI_awvalid_0,
  HBM28_AXI_arvalid_0,
  HBM28_AXI_rvalid_0,
  HBM28_AXI_arready_0,
  HBM28_AXI_bready_0,
  HBM28_AXI_bvalid_0,
  HBM28_AXI_arsize_0,
  HBM28_AXI_arburst_0,
  HBM28_AXI_wlast_0,
  HBM28_AXI_wready_0,
  HBM28_AXI_rready_0,
  HBM29_AXI_arburst_0,
  HBM29_AXI_bvalid_0,
  HBM29_AXI_wready_0,
  HBM29_AXI_awburst_0,
  HBM29_AXI_awsize_0,
  HBM29_AXI_wlast_0,
  HBM29_AXI_rlast_0,
  HBM29_AXI_rvalid_0,
  HBM29_AXI_arready_0,
  HBM29_AXI_arsize_0,
  HBM29_AXI_arvalid_0,
  HBM29_AXI_bresp_0,
  HBM29_AXI_wvalid_0,
  HBM29_AXI_awready_0,
  HBM29_AXI_bready_0,
  HBM29_AXI_awvalid_0,
  HBM29_AXI_rready_0,
  HBM30_AXI_arburst_0,
  HBM30_AXI_awready_0,
  HBM30_AXI_bready_0,
  HBM30_AXI_awvalid_0,
  HBM30_AXI_rlast_0,
  HBM30_AXI_arready_0,
  HBM30_AXI_bvalid_0,
  HBM30_AXI_wready_0,
  HBM30_AXI_bresp_0,
  HBM30_AXI_awburst_0,
  HBM30_AXI_awsize_0,
  HBM30_AXI_wlast_0,
  HBM30_AXI_rvalid_0,
  HBM30_AXI_wvalid_0,
  HBM30_AXI_arsize_0,
  HBM30_AXI_arvalid_0,
  HBM30_AXI_rready_0,
  HBM31_AXI_bvalid_0,
  HBM31_AXI_arvalid_0,
  HBM31_AXI_wvalid_0,
  HBM31_AXI_awburst_0,
  HBM31_AXI_awsize_0,
  HBM31_AXI_wready_0,
  HBM31_AXI_arburst_0,
  HBM31_AXI_wlast_0,
  HBM31_AXI_rlast_0,
  HBM31_AXI_arready_0,
  HBM31_AXI_rvalid_0,
  HBM31_AXI_awready_0,
  HBM31_AXI_bresp_0,
  HBM31_AXI_awvalid_0,
  HBM31_AXI_arsize_0,
  HBM31_AXI_bready_0,
  HBM31_AXI_rready_0
);

  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 clear" *)
  (* X_INTERFACE_MODE = "slave usr_flr_0" *)
  output usr_flr_0_clear;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 done_fnc" *)
  input [11:0]usr_flr_0_done_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 done_vld" *)
  input usr_flr_0_done_vld;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 fnc" *)
  output [11:0]usr_flr_0_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 set" *)
  output usr_flr_0_set;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 ack" *)
  (* X_INTERFACE_MODE = "slave usr_irq_0" *)
  output usr_irq_0_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 fail" *)
  output usr_irq_0_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 fnc" *)
  input [11:0]usr_irq_0_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 valid" *)
  input usr_irq_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 vec" *)
  input [4:0]usr_irq_0_vec;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 ready" *)
  (* X_INTERFACE_MODE = "slave dma1_c2h_byp_in_mm_0_0" *)
  output dma1_c2h_byp_in_mm_0_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 sdi" *)
  input dma1_c2h_byp_in_mm_0_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 valid" *)
  input dma1_c2h_byp_in_mm_0_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 error" *)
  input dma1_c2h_byp_in_mm_0_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 no_dma" *)
  input dma1_c2h_byp_in_mm_0_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 mrkr_req" *)
  input dma1_c2h_byp_in_mm_0_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 len" *)
  input [15:0]dma1_c2h_byp_in_mm_0_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 qid" *)
  input [11:0]dma1_c2h_byp_in_mm_0_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 func" *)
  input [11:0]dma1_c2h_byp_in_mm_0_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 cidx" *)
  input [15:0]dma1_c2h_byp_in_mm_0_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 radr" *)
  input [63:0]dma1_c2h_byp_in_mm_0_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 wadr" *)
  input [63:0]dma1_c2h_byp_in_mm_0_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 port_id" *)
  input [2:0]dma1_c2h_byp_in_mm_0_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 ready" *)
  (* X_INTERFACE_MODE = "slave dma1_c2h_byp_in_mm_1_0" *)
  output dma1_c2h_byp_in_mm_1_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 sdi" *)
  input dma1_c2h_byp_in_mm_1_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 valid" *)
  input dma1_c2h_byp_in_mm_1_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 error" *)
  input dma1_c2h_byp_in_mm_1_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 no_dma" *)
  input dma1_c2h_byp_in_mm_1_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 mrkr_req" *)
  input dma1_c2h_byp_in_mm_1_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 len" *)
  input [15:0]dma1_c2h_byp_in_mm_1_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 qid" *)
  input [11:0]dma1_c2h_byp_in_mm_1_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 func" *)
  input [11:0]dma1_c2h_byp_in_mm_1_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 cidx" *)
  input [15:0]dma1_c2h_byp_in_mm_1_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 radr" *)
  input [63:0]dma1_c2h_byp_in_mm_1_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 wadr" *)
  input [63:0]dma1_c2h_byp_in_mm_1_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 port_id" *)
  input [2:0]dma1_c2h_byp_in_mm_1_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 ready" *)
  (* X_INTERFACE_MODE = "slave dma1_h2c_byp_in_mm_0_0" *)
  output dma1_h2c_byp_in_mm_0_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 sdi" *)
  input dma1_h2c_byp_in_mm_0_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 valid" *)
  input dma1_h2c_byp_in_mm_0_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 error" *)
  input dma1_h2c_byp_in_mm_0_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 no_dma" *)
  input dma1_h2c_byp_in_mm_0_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 mrkr_req" *)
  input dma1_h2c_byp_in_mm_0_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 len" *)
  input [15:0]dma1_h2c_byp_in_mm_0_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 qid" *)
  input [11:0]dma1_h2c_byp_in_mm_0_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 func" *)
  input [11:0]dma1_h2c_byp_in_mm_0_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 cidx" *)
  input [15:0]dma1_h2c_byp_in_mm_0_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 radr" *)
  input [63:0]dma1_h2c_byp_in_mm_0_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 wadr" *)
  input [63:0]dma1_h2c_byp_in_mm_0_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 port_id" *)
  input [2:0]dma1_h2c_byp_in_mm_0_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 ready" *)
  (* X_INTERFACE_MODE = "slave dma1_h2c_byp_in_mm_1_0" *)
  output dma1_h2c_byp_in_mm_1_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 sdi" *)
  input dma1_h2c_byp_in_mm_1_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 valid" *)
  input dma1_h2c_byp_in_mm_1_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 error" *)
  input dma1_h2c_byp_in_mm_1_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 no_dma" *)
  input dma1_h2c_byp_in_mm_1_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 mrkr_req" *)
  input dma1_h2c_byp_in_mm_1_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 len" *)
  input [15:0]dma1_h2c_byp_in_mm_1_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 qid" *)
  input [11:0]dma1_h2c_byp_in_mm_1_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 func" *)
  input [11:0]dma1_h2c_byp_in_mm_1_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 cidx" *)
  input [15:0]dma1_h2c_byp_in_mm_1_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 radr" *)
  input [63:0]dma1_h2c_byp_in_mm_1_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 wadr" *)
  input [63:0]dma1_h2c_byp_in_mm_1_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 port_id" *)
  input [2:0]dma1_h2c_byp_in_mm_1_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 rdy" *)
  (* X_INTERFACE_MODE = "slave dma1_dsc_crdt_in_0" *)
  output dma1_dsc_crdt_in_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 dir" *)
  input dma1_dsc_crdt_in_0_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 valid" *)
  input dma1_dsc_crdt_in_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 fence" *)
  input dma1_dsc_crdt_in_0_fence;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 qid" *)
  input [11:0]dma1_dsc_crdt_in_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 crdt" *)
  input [15:0]dma1_dsc_crdt_in_0_crdt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARADDR" *)
  (* X_INTERFACE_MODE = "slave S_AXIL" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 249997498, ID_WIDTH 0, ADDR_WIDTH 15, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [11:0]S_AXIL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARPROT" *)
  input [2:0]S_AXIL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARREADY" *)
  output S_AXIL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARVALID" *)
  input S_AXIL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWADDR" *)
  input [11:0]S_AXIL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWPROT" *)
  input [2:0]S_AXIL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWREADY" *)
  output S_AXIL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWVALID" *)
  input S_AXIL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BREADY" *)
  input S_AXIL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BRESP" *)
  output [1:0]S_AXIL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BVALID" *)
  output S_AXIL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RDATA" *)
  output [31:0]S_AXIL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RREADY" *)
  input S_AXIL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RRESP" *)
  output [1:0]S_AXIL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RVALID" *)
  output S_AXIL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WDATA" *)
  input [31:0]S_AXIL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WREADY" *)
  output S_AXIL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WSTRB" *)
  input [3:0]S_AXIL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WVALID" *)
  input S_AXIL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWADDR" *)
  (* X_INTERFACE_MODE = "master M_AXIL" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIL, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 0, ADDR_WIDTH 42, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  output [41:0]M_AXIL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWLEN" *)
  output [7:0]M_AXIL_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWSIZE" *)
  output [2:0]M_AXIL_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWBURST" *)
  output [1:0]M_AXIL_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWLOCK" *)
  output [0:0]M_AXIL_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWCACHE" *)
  output [3:0]M_AXIL_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWPROT" *)
  output [2:0]M_AXIL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWQOS" *)
  output [3:0]M_AXIL_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWUSER" *)
  output [17:0]M_AXIL_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWVALID" *)
  output M_AXIL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWREADY" *)
  input M_AXIL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WDATA" *)
  output [31:0]M_AXIL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WSTRB" *)
  output [3:0]M_AXIL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WLAST" *)
  output M_AXIL_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WVALID" *)
  output M_AXIL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WREADY" *)
  input M_AXIL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BRESP" *)
  input [1:0]M_AXIL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BVALID" *)
  input M_AXIL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BREADY" *)
  output M_AXIL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARADDR" *)
  output [41:0]M_AXIL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARLEN" *)
  output [7:0]M_AXIL_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARSIZE" *)
  output [2:0]M_AXIL_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARBURST" *)
  output [1:0]M_AXIL_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARLOCK" *)
  output [0:0]M_AXIL_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARCACHE" *)
  output [3:0]M_AXIL_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARPROT" *)
  output [2:0]M_AXIL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARQOS" *)
  output [3:0]M_AXIL_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARUSER" *)
  output [17:0]M_AXIL_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARVALID" *)
  output M_AXIL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARREADY" *)
  input M_AXIL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RDATA" *)
  input [31:0]M_AXIL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RRESP" *)
  input [1:0]M_AXIL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RLAST" *)
  input M_AXIL_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RVALID" *)
  input M_AXIL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RREADY" *)
  output M_AXIL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1_0 CLK_N" *)
  (* X_INTERFACE_MODE = "slave gt_refclk1_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1_0, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input gt_refclk1_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1_0 CLK_P" *)
  input gt_refclk1_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TLAST" *)
  (* X_INTERFACE_MODE = "master dma1_st_rx_msg_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma1_st_rx_msg_0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 249997498, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
  output dma1_st_rx_msg_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TVALID" *)
  output dma1_st_rx_msg_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TREADY" *)
  input dma1_st_rx_msg_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TDATA" *)
  output [31:0]dma1_st_rx_msg_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 valid" *)
  (* X_INTERFACE_MODE = "master dma1_c2h_byp_out_0" *)
  output dma1_c2h_byp_out_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 error" *)
  output dma1_c2h_byp_out_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 st_mm" *)
  output dma1_c2h_byp_out_0_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 mm_chn" *)
  output dma1_c2h_byp_out_0_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 ready" *)
  input dma1_c2h_byp_out_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 fmt" *)
  output [2:0]dma1_c2h_byp_out_0_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 qid" *)
  output [11:0]dma1_c2h_byp_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 dsc" *)
  output [255:0]dma1_c2h_byp_out_0_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 func" *)
  output [11:0]dma1_c2h_byp_out_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 cidx" *)
  output [15:0]dma1_c2h_byp_out_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 dsc_sz" *)
  output [1:0]dma1_c2h_byp_out_0_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 port_id" *)
  output [2:0]dma1_c2h_byp_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 pfch_tag" *)
  output [6:0]dma1_c2h_byp_out_0_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 valid" *)
  (* X_INTERFACE_MODE = "master dma1_h2c_byp_out_0" *)
  output dma1_h2c_byp_out_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 error" *)
  output dma1_h2c_byp_out_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 st_mm" *)
  output dma1_h2c_byp_out_0_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 mm_chn" *)
  output dma1_h2c_byp_out_0_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 ready" *)
  input dma1_h2c_byp_out_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 fmt" *)
  output [2:0]dma1_h2c_byp_out_0_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 qid" *)
  output [11:0]dma1_h2c_byp_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 dsc" *)
  output [255:0]dma1_h2c_byp_out_0_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 func" *)
  output [11:0]dma1_h2c_byp_out_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 cidx" *)
  output [15:0]dma1_h2c_byp_out_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 dsc_sz" *)
  output [1:0]dma1_h2c_byp_out_0_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 port_id" *)
  output [2:0]dma1_h2c_byp_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 vld" *)
  (* X_INTERFACE_MODE = "master dma1_qsts_out_0" *)
  output dma1_qsts_out_0_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 op" *)
  output [7:0]dma1_qsts_out_0_op;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 rdy" *)
  input dma1_qsts_out_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 qid" *)
  output [12:0]dma1_qsts_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 data" *)
  output [63:0]dma1_qsts_out_0_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 port_id" *)
  output [2:0]dma1_qsts_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 mm" *)
  (* X_INTERFACE_MODE = "master dma1_tm_dsc_sts_0" *)
  output dma1_tm_dsc_sts_0_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qen" *)
  output dma1_tm_dsc_sts_0_qen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 byp" *)
  output dma1_tm_dsc_sts_0_byp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 dir" *)
  output dma1_tm_dsc_sts_0_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 error" *)
  output dma1_tm_dsc_sts_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 valid" *)
  output dma1_tm_dsc_sts_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qinv" *)
  output dma1_tm_dsc_sts_0_qinv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 irq_arm" *)
  output dma1_tm_dsc_sts_0_irq_arm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 rdy" *)
  input dma1_tm_dsc_sts_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qid" *)
  output [11:0]dma1_tm_dsc_sts_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 avl" *)
  output [15:0]dma1_tm_dsc_sts_0_avl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 pidx" *)
  output [15:0]dma1_tm_dsc_sts_0_pidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 port_id" *)
  output [2:0]dma1_tm_dsc_sts_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GRX_N" *)
  (* X_INTERFACE_MODE = "master PCIE1_GT_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT_0, CAN_DEBUG false" *)
  input [7:0]PCIE1_GT_0_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GTX_N" *)
  output [7:0]PCIE1_GT_0_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GRX_P" *)
  input [7:0]PCIE1_GT_0_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GTX_P" *)
  output [7:0]PCIE1_GT_0_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 ready" *)
  (* X_INTERFACE_MODE = "slave dma1_c2h_byp_in_st_csh_0" *)
  output dma1_c2h_byp_in_st_csh_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 valid" *)
  input dma1_c2h_byp_in_st_csh_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 error" *)
  input dma1_c2h_byp_in_st_csh_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 qid" *)
  input [11:0]dma1_c2h_byp_in_st_csh_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 func" *)
  input [11:0]dma1_c2h_byp_in_st_csh_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 addr" *)
  input [63:0]dma1_c2h_byp_in_st_csh_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 port_id" *)
  input [2:0]dma1_c2h_byp_in_st_csh_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 pfch_tag" *)
  input [6:0]dma1_c2h_byp_in_st_csh_0_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 ready" *)
  (* X_INTERFACE_MODE = "slave dma1_h2c_byp_in_st_0" *)
  output dma1_h2c_byp_in_st_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 eop" *)
  input dma1_h2c_byp_in_st_0_eop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 sdi" *)
  input dma1_h2c_byp_in_st_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 sop" *)
  input dma1_h2c_byp_in_st_0_sop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 valid" *)
  input dma1_h2c_byp_in_st_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 error" *)
  input dma1_h2c_byp_in_st_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 no_dma" *)
  input dma1_h2c_byp_in_st_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 mrkr_req" *)
  input dma1_h2c_byp_in_st_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 len" *)
  input [15:0]dma1_h2c_byp_in_st_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 qid" *)
  input [11:0]dma1_h2c_byp_in_st_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 func" *)
  input [11:0]dma1_h2c_byp_in_st_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 addr" *)
  input [63:0]dma1_h2c_byp_in_st_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 cidx" *)
  input [15:0]dma1_h2c_byp_in_st_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 port_id" *)
  input [2:0]dma1_h2c_byp_in_st_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tready" *)
  (* X_INTERFACE_MODE = "slave dma1_s_axis_c2h_0" *)
  output dma1_s_axis_c2h_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tlast" *)
  input dma1_s_axis_c2h_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tvalid" *)
  input dma1_s_axis_c2h_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tcrc" *)
  input [31:0]dma1_s_axis_c2h_0_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tdata" *)
  input [511:0]dma1_s_axis_c2h_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 mty" *)
  input [5:0]dma1_s_axis_c2h_0_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ecc" *)
  input [6:0]dma1_s_axis_c2h_0_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_marker" *)
  input dma1_s_axis_c2h_0_ctrl_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_has_cmpt" *)
  input dma1_s_axis_c2h_0_ctrl_has_cmpt;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_len" *)
  input [15:0]dma1_s_axis_c2h_0_ctrl_len;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_qid" *)
  input [11:0]dma1_s_axis_c2h_0_ctrl_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_port_id" *)
  input [2:0]dma1_s_axis_c2h_0_ctrl_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 marker" *)
  (* X_INTERFACE_MODE = "slave dma1_s_axis_c2h_cmpt_0" *)
  input dma1_s_axis_c2h_cmpt_0_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 user_trig" *)
  input dma1_s_axis_c2h_cmpt_0_user_trig;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 size" *)
  input [1:0]dma1_s_axis_c2h_cmpt_0_size;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 qid" *)
  input [12:0]dma1_s_axis_c2h_cmpt_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 no_wrb_marker" *)
  input dma1_s_axis_c2h_cmpt_0_no_wrb_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 port_id" *)
  input [2:0]dma1_s_axis_c2h_cmpt_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 col_idx" *)
  input [2:0]dma1_s_axis_c2h_cmpt_0_col_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 err_idx" *)
  input [2:0]dma1_s_axis_c2h_cmpt_0_err_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 wait_pld_pkt_id" *)
  input [15:0]dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 tready" *)
  output dma1_s_axis_c2h_cmpt_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 tvalid" *)
  input dma1_s_axis_c2h_cmpt_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 dpar" *)
  input [15:0]dma1_s_axis_c2h_cmpt_0_dpar;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 data" *)
  input [511:0]dma1_s_axis_c2h_cmpt_0_data;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 cmpt_type" *)
  input [1:0]dma1_s_axis_c2h_cmpt_0_cmpt_type;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 cmp" *)
  (* X_INTERFACE_MODE = "master dma1_axis_c2h_dmawr_0" *)
  output dma1_axis_c2h_dmawr_0_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 target_vch" *)
  output dma1_axis_c2h_dmawr_0_target_vch;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 port_id" *)
  output [2:0]dma1_axis_c2h_dmawr_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tlast" *)
  (* X_INTERFACE_MODE = "master dma1_m_axis_h2c_0" *)
  output dma1_m_axis_h2c_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 err" *)
  output dma1_m_axis_h2c_0_err;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tvalid" *)
  output dma1_m_axis_h2c_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tdata" *)
  output [511:0]dma1_m_axis_h2c_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 zero_byte" *)
  output dma1_m_axis_h2c_0_zero_byte;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tready" *)
  input dma1_m_axis_h2c_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tcrc" *)
  output [31:0]dma1_m_axis_h2c_0_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 mty" *)
  output [5:0]dma1_m_axis_h2c_0_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 qid" *)
  output [11:0]dma1_m_axis_h2c_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 mdata" *)
  output [31:0]dma1_m_axis_h2c_0_mdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 port_id" *)
  output [2:0]dma1_m_axis_h2c_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 last" *)
  (* X_INTERFACE_MODE = "master dma1_axis_c2h_status_0" *)
  output dma1_axis_c2h_status_0_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 drop" *)
  output dma1_axis_c2h_status_0_drop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 error" *)
  output dma1_axis_c2h_status_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 valid" *)
  output dma1_axis_c2h_status_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 status_cmp" *)
  output dma1_axis_c2h_status_0_status_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 qid" *)
  output [11:0]dma1_axis_c2h_status_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 DQ" *)
  (* X_INTERFACE_MODE = "master ddr4_dimm0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_dimm0, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout [71:0]ddr4_dimm0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 DQS_T" *)
  inout [8:0]ddr4_dimm0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 DQS_C" *)
  inout [8:0]ddr4_dimm0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 ADR" *)
  output [16:0]ddr4_dimm0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 BA" *)
  output [1:0]ddr4_dimm0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 BG" *)
  output [1:0]ddr4_dimm0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 ACT_N" *)
  output ddr4_dimm0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 RESET_N" *)
  output ddr4_dimm0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 CK_T" *)
  output ddr4_dimm0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 CK_C" *)
  output ddr4_dimm0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 CKE" *)
  output ddr4_dimm0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 CS_N" *)
  output ddr4_dimm0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 ODT" *)
  output ddr4_dimm0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 PAR" *)
  output ddr4_dimm0_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm0 ALERT_N" *)
  input ddr4_dimm0_alert_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 DQ" *)
  (* X_INTERFACE_MODE = "master ddr4_dimm1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_dimm1, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout [71:0]ddr4_dimm1_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 DQS_T" *)
  inout [8:0]ddr4_dimm1_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 DQS_C" *)
  inout [8:0]ddr4_dimm1_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 ADR" *)
  output [16:0]ddr4_dimm1_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 BA" *)
  output [1:0]ddr4_dimm1_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 BG" *)
  output [1:0]ddr4_dimm1_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 ACT_N" *)
  output ddr4_dimm1_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 RESET_N" *)
  output ddr4_dimm1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 CK_T" *)
  output ddr4_dimm1_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 CK_C" *)
  output ddr4_dimm1_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 CKE" *)
  output ddr4_dimm1_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 CS_N" *)
  output ddr4_dimm1_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 ODT" *)
  output ddr4_dimm1_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 PAR" *)
  output ddr4_dimm1_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_dimm1 ALERT_N" *)
  input ddr4_dimm1_alert_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_dimm0_sma_clk CLK_P" *)
  (* X_INTERFACE_MODE = "slave ddr4_dimm0_sma_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_dimm0_sma_clk, CAN_DEBUG false, FREQ_HZ 200000000" *)
  input ddr4_dimm0_sma_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_dimm0_sma_clk CLK_N" *)
  input ddr4_dimm0_sma_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_dimm1_sma_clk CLK_P" *)
  (* X_INTERFACE_MODE = "slave ddr4_dimm1_sma_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_dimm1_sma_clk, CAN_DEBUG false, FREQ_HZ 200000000" *)
  input ddr4_dimm1_sma_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr4_dimm1_sma_clk CLK_N" *)
  input ddr4_dimm1_sma_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ0_0 INTERRUPT" *)
  (* X_INTERFACE_MODE = "slave INTR.CPM_IRQ0_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ0_0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  input cpm_irq0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ1_0 INTERRUPT" *)
  (* X_INTERFACE_MODE = "slave INTR.CPM_IRQ1_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ1_0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  input cpm_irq1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_INTRFC_RESETN_0 RST" *)
  (* X_INTERFACE_MODE = "slave RST.DMA1_INTRFC_RESETN_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_INTRFC_RESETN_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input dma1_intrfc_resetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_MISC_IRQ_0 INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.CPM_MISC_IRQ_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_MISC_IRQ_0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output cpm_misc_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_COR_IRQ_0 INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.CPM_COR_IRQ_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_COR_IRQ_0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output cpm_cor_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_UNCOR_IRQ_0 INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.CPM_UNCOR_IRQ_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_UNCOR_IRQ_0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output cpm_uncor_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DMA1_INTRFC_CLK_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.DMA1_INTRFC_CLK_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DMA1_INTRFC_CLK_0, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF S_AXIL:dma1_st_rx_msg_0:M_AXIL, INSERT_VIP 0" *)
  output dma1_intrfc_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_AXI_ARESETN_0 RST" *)
  (* X_INTERFACE_MODE = "master RST.DMA1_AXI_ARESETN_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_AXI_ARESETN_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output dma1_axi_aresetn_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]dest_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CLK_OUT1_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1_0, FREQ_HZ 100000005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, INSERT_VIP 0" *)
  output clk_out1_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output locked_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT4_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CLK_OUT4_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT4_0, FREQ_HZ 50000002, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, INSERT_VIP 0" *)
  output clk_out4_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT3_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CLK_OUT3_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT3_0, FREQ_HZ 25000001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, INSERT_VIP 0" *)
  output clk_out3_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CLK_OUT2_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT2_0, FREQ_HZ 25000001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, INSERT_VIP 0" *)
  output clk_out2_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT5_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CLK_OUT5_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT5_0, FREQ_HZ 100000005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cpm_pcie_clk_wizard_0_0_clk_out1, INSERT_VIP 0" *)
  output clk_out5_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM00_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM00_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM01_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM01_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM02_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM02_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM03_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM03_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM04_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM04_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM05_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM05_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM06_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM06_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM07_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM07_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM08_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM08_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM09_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM09_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM10_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM10_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM11_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM11_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM12_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM12_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM13_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM13_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM14_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM14_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM15_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM15_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM16_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM16_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM17_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM17_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM18_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM18_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM19_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM19_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM20_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM20_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM21_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM21_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM22_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM22_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM23_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM23_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM24_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM24_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM25_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM25_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM26_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM26_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM27_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM27_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM28_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM28_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM29_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM29_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM30_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM30_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]HBM31_AXI_rdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]HBM31_AXI_wdata_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM00_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM00_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM00_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM00_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM00_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM00_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM00_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM00_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM00_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM00_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM00_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM00_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM00_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM00_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM00_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM00_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM00_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM01_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM01_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM01_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM01_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM01_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM01_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM01_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM01_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM01_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM01_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM01_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM01_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM01_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM01_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM01_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM01_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM01_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM02_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM02_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM02_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM02_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM02_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM02_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM02_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM02_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM02_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM02_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM02_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM02_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM02_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM02_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM02_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM02_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM02_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM03_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM03_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM03_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM03_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM03_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM03_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM03_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM03_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM03_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM03_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM03_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM03_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM03_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM03_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM03_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM03_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM03_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM00_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM00_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM00_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM00_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM00_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM00_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM00_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM01_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM01_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM01_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM01_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM01_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM01_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM01_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM02_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM02_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM02_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM02_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM02_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM02_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM02_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM03_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM03_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM03_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM03_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM03_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM03_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM03_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM04_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM04_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM04_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM04_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM04_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM04_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM04_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM05_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM05_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM05_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM05_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM05_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM05_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM05_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM06_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM06_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM06_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM06_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM06_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM06_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM06_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM07_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM07_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM07_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM07_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM07_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM07_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM07_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM08_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM08_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM08_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM08_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM08_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM08_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM08_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM09_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM09_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM09_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM09_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM09_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM09_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM09_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM10_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM10_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM10_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM10_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM10_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM10_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM10_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM11_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM11_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM11_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM11_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM11_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM11_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM11_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM12_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM12_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM12_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM12_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM12_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM12_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM12_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM13_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM13_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM13_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM13_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM13_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM13_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM13_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM14_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM14_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM14_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM14_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM14_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM14_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM14_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM15_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM15_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM15_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM15_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM15_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM15_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM15_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM16_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM16_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM16_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM16_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM16_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM16_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM16_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM17_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM17_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM17_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM17_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM17_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM17_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM17_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM18_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM18_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM18_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM18_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM18_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM18_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM18_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM19_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM19_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM19_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM19_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM19_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM19_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM19_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM20_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM20_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM20_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM20_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM20_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM20_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM20_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM21_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM21_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM21_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM21_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM21_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM21_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM21_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM22_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM22_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM22_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM22_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM22_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM22_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM22_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM23_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM23_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM23_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM23_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM23_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM23_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM23_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM24_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM24_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM24_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM24_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM24_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM24_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM24_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM25_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM25_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM25_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM25_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM25_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM25_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM25_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM26_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM26_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM26_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM26_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM26_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM26_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM26_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM27_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM27_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM27_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM27_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM27_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM27_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM27_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM28_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM28_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM28_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM28_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM28_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM28_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM28_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM29_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM29_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM29_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM29_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM29_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM29_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM29_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM30_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM30_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM30_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM30_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM30_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM30_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM30_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM31_AXI_araddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM31_AXI_arid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM31_AXI_arlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]HBM31_AXI_awaddr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]HBM31_AXI_awid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]HBM31_AXI_awlen_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]HBM31_AXI_wstrb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM04_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM04_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM04_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM04_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM04_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM04_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM04_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM04_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM04_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM04_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM04_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM04_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM04_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM04_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM04_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM04_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM04_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM05_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM05_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM05_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM05_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM05_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM05_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM05_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM05_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM05_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM05_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM05_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM05_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM05_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM05_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM05_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM05_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM05_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM06_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM06_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM06_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM06_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM06_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM06_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM06_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM06_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM06_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM06_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM06_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM06_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM06_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM06_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM06_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM06_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM06_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM07_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM07_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM07_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM07_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM07_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM07_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM07_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM07_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM07_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM07_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM07_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM07_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM07_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM07_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM07_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM07_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM07_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM08_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM08_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM08_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM08_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM08_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM08_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM08_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM08_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM08_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM08_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM08_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM08_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM08_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM08_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM08_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM08_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM08_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM09_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM09_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM09_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM09_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM09_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM09_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM09_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM09_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM09_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM09_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM09_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM09_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM09_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM09_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM09_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM09_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM09_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM10_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM10_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM10_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM10_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM10_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM10_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM10_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM10_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM10_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM10_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM10_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM10_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM10_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM10_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM10_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM10_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM10_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM11_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM11_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM11_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM11_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM11_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM11_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM11_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM11_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM11_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM11_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM11_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM11_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM11_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM11_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM11_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM11_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM11_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM12_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM12_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM12_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM12_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM12_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM12_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM12_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM12_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM12_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM12_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM12_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM12_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM12_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM12_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM12_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM12_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM12_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM13_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM13_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM13_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM13_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM13_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM13_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM13_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM13_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM13_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM13_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM13_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM13_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM13_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM13_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM13_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM13_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM13_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM14_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM14_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM14_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM14_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM14_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM14_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM14_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM14_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM14_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM14_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM14_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM14_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM14_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM14_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM14_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM14_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM14_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM15_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM15_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM15_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM15_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM15_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM15_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM15_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM15_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM15_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM15_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM15_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM15_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM15_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM15_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM15_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM15_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM15_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM16_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM16_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM16_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM16_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM16_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM16_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM16_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM16_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM16_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM16_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM16_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM16_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM16_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM16_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM16_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM16_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM16_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM17_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM17_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM17_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM17_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM17_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM17_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM17_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM17_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM17_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM17_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM17_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM17_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM17_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM17_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM17_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM17_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM17_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM18_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM18_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM18_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM18_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM18_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM18_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM18_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM18_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM18_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM18_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM18_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM18_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM18_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM18_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM18_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM18_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM18_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM19_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM19_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM19_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM19_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM19_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM19_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM19_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM19_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM19_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM19_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM19_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM19_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM19_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM19_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM19_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM19_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM19_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM20_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM20_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM20_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM20_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM20_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM20_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM20_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM20_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM20_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM20_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM20_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM20_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM20_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM20_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM20_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM20_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM20_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM21_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM21_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM21_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM21_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM21_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM21_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM21_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM21_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM21_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM21_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM21_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM21_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM21_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM21_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM21_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM21_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM21_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM22_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM22_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM22_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM22_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM22_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM22_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM22_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM22_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM22_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM22_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM22_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM22_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM22_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM22_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM22_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM22_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM22_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM23_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM23_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM23_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM23_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM23_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM23_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM23_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM23_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM23_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM23_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM23_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM23_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM23_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM23_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM23_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM23_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM23_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM24_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM24_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM24_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM24_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM24_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM24_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM24_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM24_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM24_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM24_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM24_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM24_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM24_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM24_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM24_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM24_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM24_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM25_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM25_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM25_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM25_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM25_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM25_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM25_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM25_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM25_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM25_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM25_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM25_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM25_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM25_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM25_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM25_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM25_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM26_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM26_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM26_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM26_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM26_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM26_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM26_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM26_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM26_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM26_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM26_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM26_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM26_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM26_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM26_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM26_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM26_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM27_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM27_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM27_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM27_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM27_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM27_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM27_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM27_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM27_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM27_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM27_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM27_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM27_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM27_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM27_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM27_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM27_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM28_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM28_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM28_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM28_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM28_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM28_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM28_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM28_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM28_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM28_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM28_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM28_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM28_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM28_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM28_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM28_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM28_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM29_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM29_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM29_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM29_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM29_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM29_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM29_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM29_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM29_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM29_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM29_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM29_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM29_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM29_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM29_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM29_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM29_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM30_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM30_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM30_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM30_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM30_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM30_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM30_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM30_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM30_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM30_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM30_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM30_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM30_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM30_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM30_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM30_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM30_AXI_rready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM31_AXI_bvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM31_AXI_arvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM31_AXI_wvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM31_AXI_awburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM31_AXI_awsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM31_AXI_wready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]HBM31_AXI_arburst_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM31_AXI_wlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM31_AXI_rlast_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM31_AXI_arready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM31_AXI_rvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HBM31_AXI_awready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]HBM31_AXI_bresp_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM31_AXI_awvalid_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]HBM31_AXI_arsize_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM31_AXI_bready_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]HBM31_AXI_rready_0;

  // stub module has no contents

endmodule
