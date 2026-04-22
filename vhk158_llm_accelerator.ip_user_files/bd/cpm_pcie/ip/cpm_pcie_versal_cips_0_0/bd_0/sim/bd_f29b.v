//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f29b.bd
//Design : bd_f29b
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_f29b,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f29b,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "cpm_pcie_versal_cips_0_0.hwdef" *) 
module bd_f29b
   (CPM_PCIE_NOC_0_araddr,
    CPM_PCIE_NOC_0_arburst,
    CPM_PCIE_NOC_0_arcache,
    CPM_PCIE_NOC_0_arid,
    CPM_PCIE_NOC_0_arlen,
    CPM_PCIE_NOC_0_arlock,
    CPM_PCIE_NOC_0_arprot,
    CPM_PCIE_NOC_0_arqos,
    CPM_PCIE_NOC_0_arready,
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
    CPM_PCIE_NOC_0_awready,
    CPM_PCIE_NOC_0_awsize,
    CPM_PCIE_NOC_0_awuser,
    CPM_PCIE_NOC_0_awvalid,
    CPM_PCIE_NOC_0_bid,
    CPM_PCIE_NOC_0_bready,
    CPM_PCIE_NOC_0_bresp,
    CPM_PCIE_NOC_0_bvalid,
    CPM_PCIE_NOC_0_rdata,
    CPM_PCIE_NOC_0_rid,
    CPM_PCIE_NOC_0_rlast,
    CPM_PCIE_NOC_0_rready,
    CPM_PCIE_NOC_0_rresp,
    CPM_PCIE_NOC_0_ruser,
    CPM_PCIE_NOC_0_rvalid,
    CPM_PCIE_NOC_0_wdata,
    CPM_PCIE_NOC_0_wlast,
    CPM_PCIE_NOC_0_wready,
    CPM_PCIE_NOC_0_wstrb,
    CPM_PCIE_NOC_0_wuser,
    CPM_PCIE_NOC_0_wvalid,
    CPM_PCIE_NOC_1_araddr,
    CPM_PCIE_NOC_1_arburst,
    CPM_PCIE_NOC_1_arcache,
    CPM_PCIE_NOC_1_arid,
    CPM_PCIE_NOC_1_arlen,
    CPM_PCIE_NOC_1_arlock,
    CPM_PCIE_NOC_1_arprot,
    CPM_PCIE_NOC_1_arqos,
    CPM_PCIE_NOC_1_arready,
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
    CPM_PCIE_NOC_1_awready,
    CPM_PCIE_NOC_1_awsize,
    CPM_PCIE_NOC_1_awuser,
    CPM_PCIE_NOC_1_awvalid,
    CPM_PCIE_NOC_1_bid,
    CPM_PCIE_NOC_1_bready,
    CPM_PCIE_NOC_1_bresp,
    CPM_PCIE_NOC_1_bvalid,
    CPM_PCIE_NOC_1_rdata,
    CPM_PCIE_NOC_1_rid,
    CPM_PCIE_NOC_1_rlast,
    CPM_PCIE_NOC_1_rready,
    CPM_PCIE_NOC_1_rresp,
    CPM_PCIE_NOC_1_ruser,
    CPM_PCIE_NOC_1_rvalid,
    CPM_PCIE_NOC_1_wdata,
    CPM_PCIE_NOC_1_wlast,
    CPM_PCIE_NOC_1_wready,
    CPM_PCIE_NOC_1_wstrb,
    CPM_PCIE_NOC_1_wuser,
    CPM_PCIE_NOC_1_wvalid,
    PCIE1_GT_grx_n,
    PCIE1_GT_grx_p,
    PCIE1_GT_gtx_n,
    PCIE1_GT_gtx_p,
    cpm_cor_irq,
    cpm_irq0,
    cpm_irq1,
    cpm_misc_irq,
    cpm_pcie_noc_axi0_clk,
    cpm_pcie_noc_axi1_clk,
    cpm_uncor_irq,
    dma1_axi_aresetn,
    dma1_axis_c2h_dmawr_cmp,
    dma1_axis_c2h_dmawr_port_id,
    dma1_axis_c2h_dmawr_target_vch,
    dma1_axis_c2h_status_drop,
    dma1_axis_c2h_status_error,
    dma1_axis_c2h_status_last,
    dma1_axis_c2h_status_qid,
    dma1_axis_c2h_status_status_cmp,
    dma1_axis_c2h_status_valid,
    dma1_c2h_byp_in_mm_0_cidx,
    dma1_c2h_byp_in_mm_0_error,
    dma1_c2h_byp_in_mm_0_func,
    dma1_c2h_byp_in_mm_0_len,
    dma1_c2h_byp_in_mm_0_mrkr_req,
    dma1_c2h_byp_in_mm_0_no_dma,
    dma1_c2h_byp_in_mm_0_port_id,
    dma1_c2h_byp_in_mm_0_qid,
    dma1_c2h_byp_in_mm_0_radr,
    dma1_c2h_byp_in_mm_0_ready,
    dma1_c2h_byp_in_mm_0_sdi,
    dma1_c2h_byp_in_mm_0_valid,
    dma1_c2h_byp_in_mm_0_wadr,
    dma1_c2h_byp_in_mm_1_cidx,
    dma1_c2h_byp_in_mm_1_error,
    dma1_c2h_byp_in_mm_1_func,
    dma1_c2h_byp_in_mm_1_len,
    dma1_c2h_byp_in_mm_1_mrkr_req,
    dma1_c2h_byp_in_mm_1_no_dma,
    dma1_c2h_byp_in_mm_1_port_id,
    dma1_c2h_byp_in_mm_1_qid,
    dma1_c2h_byp_in_mm_1_radr,
    dma1_c2h_byp_in_mm_1_ready,
    dma1_c2h_byp_in_mm_1_sdi,
    dma1_c2h_byp_in_mm_1_valid,
    dma1_c2h_byp_in_mm_1_wadr,
    dma1_c2h_byp_in_st_csh_addr,
    dma1_c2h_byp_in_st_csh_error,
    dma1_c2h_byp_in_st_csh_func,
    dma1_c2h_byp_in_st_csh_pfch_tag,
    dma1_c2h_byp_in_st_csh_port_id,
    dma1_c2h_byp_in_st_csh_qid,
    dma1_c2h_byp_in_st_csh_ready,
    dma1_c2h_byp_in_st_csh_valid,
    dma1_c2h_byp_out_cidx,
    dma1_c2h_byp_out_dsc,
    dma1_c2h_byp_out_dsc_sz,
    dma1_c2h_byp_out_error,
    dma1_c2h_byp_out_fmt,
    dma1_c2h_byp_out_func,
    dma1_c2h_byp_out_mm_chn,
    dma1_c2h_byp_out_pfch_tag,
    dma1_c2h_byp_out_port_id,
    dma1_c2h_byp_out_qid,
    dma1_c2h_byp_out_ready,
    dma1_c2h_byp_out_st_mm,
    dma1_c2h_byp_out_valid,
    dma1_dsc_crdt_in_crdt,
    dma1_dsc_crdt_in_dir,
    dma1_dsc_crdt_in_fence,
    dma1_dsc_crdt_in_qid,
    dma1_dsc_crdt_in_rdy,
    dma1_dsc_crdt_in_valid,
    dma1_h2c_byp_in_mm_0_cidx,
    dma1_h2c_byp_in_mm_0_error,
    dma1_h2c_byp_in_mm_0_func,
    dma1_h2c_byp_in_mm_0_len,
    dma1_h2c_byp_in_mm_0_mrkr_req,
    dma1_h2c_byp_in_mm_0_no_dma,
    dma1_h2c_byp_in_mm_0_port_id,
    dma1_h2c_byp_in_mm_0_qid,
    dma1_h2c_byp_in_mm_0_radr,
    dma1_h2c_byp_in_mm_0_ready,
    dma1_h2c_byp_in_mm_0_sdi,
    dma1_h2c_byp_in_mm_0_valid,
    dma1_h2c_byp_in_mm_0_wadr,
    dma1_h2c_byp_in_mm_1_cidx,
    dma1_h2c_byp_in_mm_1_error,
    dma1_h2c_byp_in_mm_1_func,
    dma1_h2c_byp_in_mm_1_len,
    dma1_h2c_byp_in_mm_1_mrkr_req,
    dma1_h2c_byp_in_mm_1_no_dma,
    dma1_h2c_byp_in_mm_1_port_id,
    dma1_h2c_byp_in_mm_1_qid,
    dma1_h2c_byp_in_mm_1_radr,
    dma1_h2c_byp_in_mm_1_ready,
    dma1_h2c_byp_in_mm_1_sdi,
    dma1_h2c_byp_in_mm_1_valid,
    dma1_h2c_byp_in_mm_1_wadr,
    dma1_h2c_byp_in_st_addr,
    dma1_h2c_byp_in_st_cidx,
    dma1_h2c_byp_in_st_eop,
    dma1_h2c_byp_in_st_error,
    dma1_h2c_byp_in_st_func,
    dma1_h2c_byp_in_st_len,
    dma1_h2c_byp_in_st_mrkr_req,
    dma1_h2c_byp_in_st_no_dma,
    dma1_h2c_byp_in_st_port_id,
    dma1_h2c_byp_in_st_qid,
    dma1_h2c_byp_in_st_ready,
    dma1_h2c_byp_in_st_sdi,
    dma1_h2c_byp_in_st_sop,
    dma1_h2c_byp_in_st_valid,
    dma1_h2c_byp_out_cidx,
    dma1_h2c_byp_out_dsc,
    dma1_h2c_byp_out_dsc_sz,
    dma1_h2c_byp_out_error,
    dma1_h2c_byp_out_fmt,
    dma1_h2c_byp_out_func,
    dma1_h2c_byp_out_mm_chn,
    dma1_h2c_byp_out_port_id,
    dma1_h2c_byp_out_qid,
    dma1_h2c_byp_out_ready,
    dma1_h2c_byp_out_st_mm,
    dma1_h2c_byp_out_valid,
    dma1_intrfc_clk,
    dma1_intrfc_resetn,
    dma1_m_axis_h2c_err,
    dma1_m_axis_h2c_mdata,
    dma1_m_axis_h2c_mty,
    dma1_m_axis_h2c_port_id,
    dma1_m_axis_h2c_qid,
    dma1_m_axis_h2c_tcrc,
    dma1_m_axis_h2c_tdata,
    dma1_m_axis_h2c_tlast,
    dma1_m_axis_h2c_tready,
    dma1_m_axis_h2c_tvalid,
    dma1_m_axis_h2c_zero_byte,
    dma1_mgmt_cpl_dat,
    dma1_mgmt_cpl_rdy,
    dma1_mgmt_cpl_sts,
    dma1_mgmt_cpl_vld,
    dma1_mgmt_req_adr,
    dma1_mgmt_req_cmd,
    dma1_mgmt_req_dat,
    dma1_mgmt_req_fnc,
    dma1_mgmt_req_msc,
    dma1_mgmt_req_rdy,
    dma1_mgmt_req_vld,
    dma1_qsts_out_data,
    dma1_qsts_out_op,
    dma1_qsts_out_port_id,
    dma1_qsts_out_qid,
    dma1_qsts_out_rdy,
    dma1_qsts_out_vld,
    dma1_s_axis_c2h_cmpt_cmpt_type,
    dma1_s_axis_c2h_cmpt_col_idx,
    dma1_s_axis_c2h_cmpt_data,
    dma1_s_axis_c2h_cmpt_dpar,
    dma1_s_axis_c2h_cmpt_err_idx,
    dma1_s_axis_c2h_cmpt_marker,
    dma1_s_axis_c2h_cmpt_no_wrb_marker,
    dma1_s_axis_c2h_cmpt_port_id,
    dma1_s_axis_c2h_cmpt_qid,
    dma1_s_axis_c2h_cmpt_size,
    dma1_s_axis_c2h_cmpt_tready,
    dma1_s_axis_c2h_cmpt_tvalid,
    dma1_s_axis_c2h_cmpt_user_trig,
    dma1_s_axis_c2h_cmpt_wait_pld_pkt_id,
    dma1_s_axis_c2h_ctrl_has_cmpt,
    dma1_s_axis_c2h_ctrl_len,
    dma1_s_axis_c2h_ctrl_marker,
    dma1_s_axis_c2h_ctrl_port_id,
    dma1_s_axis_c2h_ctrl_qid,
    dma1_s_axis_c2h_ecc,
    dma1_s_axis_c2h_mty,
    dma1_s_axis_c2h_tcrc,
    dma1_s_axis_c2h_tdata,
    dma1_s_axis_c2h_tlast,
    dma1_s_axis_c2h_tready,
    dma1_s_axis_c2h_tvalid,
    dma1_st_rx_msg_tdata,
    dma1_st_rx_msg_tlast,
    dma1_st_rx_msg_tready,
    dma1_st_rx_msg_tvalid,
    dma1_tm_dsc_sts_avl,
    dma1_tm_dsc_sts_byp,
    dma1_tm_dsc_sts_dir,
    dma1_tm_dsc_sts_error,
    dma1_tm_dsc_sts_irq_arm,
    dma1_tm_dsc_sts_mm,
    dma1_tm_dsc_sts_pidx,
    dma1_tm_dsc_sts_port_id,
    dma1_tm_dsc_sts_qen,
    dma1_tm_dsc_sts_qid,
    dma1_tm_dsc_sts_qinv,
    dma1_tm_dsc_sts_rdy,
    dma1_tm_dsc_sts_valid,
    dma1_usr_flr_clear,
    dma1_usr_flr_done_fnc,
    dma1_usr_flr_done_vld,
    dma1_usr_flr_fnc,
    dma1_usr_flr_set,
    dma1_usr_irq_ack,
    dma1_usr_irq_fail,
    dma1_usr_irq_fnc,
    dma1_usr_irq_valid,
    dma1_usr_irq_vec,
    gt_refclk1_clk_n,
    gt_refclk1_clk_p,
    pl0_ref_clk,
    pl1_ref_clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPM_PCIE_NOC_0, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi0_clk, DATA_WIDTH 128, FREQ_HZ 1000000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, HD_TANDEM 0, ID_WIDTH 16, INDEX 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_pcie, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]CPM_PCIE_NOC_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARBURST" *) output [1:0]CPM_PCIE_NOC_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARCACHE" *) output [3:0]CPM_PCIE_NOC_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARID" *) output [15:0]CPM_PCIE_NOC_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLEN" *) output [7:0]CPM_PCIE_NOC_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLOCK" *) output CPM_PCIE_NOC_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARPROT" *) output [2:0]CPM_PCIE_NOC_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARQOS" *) output [3:0]CPM_PCIE_NOC_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARREADY" *) input CPM_PCIE_NOC_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARSIZE" *) output [2:0]CPM_PCIE_NOC_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARUSER" *) output [17:0]CPM_PCIE_NOC_0_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARVALID" *) output CPM_PCIE_NOC_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWADDR" *) output [63:0]CPM_PCIE_NOC_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWBURST" *) output [1:0]CPM_PCIE_NOC_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWCACHE" *) output [3:0]CPM_PCIE_NOC_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWID" *) output [15:0]CPM_PCIE_NOC_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLEN" *) output [7:0]CPM_PCIE_NOC_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLOCK" *) output CPM_PCIE_NOC_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWPROT" *) output [2:0]CPM_PCIE_NOC_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWQOS" *) output [3:0]CPM_PCIE_NOC_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWREADY" *) input CPM_PCIE_NOC_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWSIZE" *) output [2:0]CPM_PCIE_NOC_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWUSER" *) output [17:0]CPM_PCIE_NOC_0_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWVALID" *) output CPM_PCIE_NOC_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BID" *) input [15:0]CPM_PCIE_NOC_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BREADY" *) output CPM_PCIE_NOC_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BRESP" *) input [1:0]CPM_PCIE_NOC_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BVALID" *) input CPM_PCIE_NOC_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RDATA" *) input [127:0]CPM_PCIE_NOC_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RID" *) input [15:0]CPM_PCIE_NOC_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RLAST" *) input CPM_PCIE_NOC_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RREADY" *) output CPM_PCIE_NOC_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RRESP" *) input [1:0]CPM_PCIE_NOC_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RUSER" *) input [16:0]CPM_PCIE_NOC_0_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RVALID" *) input CPM_PCIE_NOC_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WDATA" *) output [127:0]CPM_PCIE_NOC_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WLAST" *) output CPM_PCIE_NOC_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WREADY" *) input CPM_PCIE_NOC_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WSTRB" *) output [15:0]CPM_PCIE_NOC_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WUSER" *) output [16:0]CPM_PCIE_NOC_0_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WVALID" *) output CPM_PCIE_NOC_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPM_PCIE_NOC_1, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi1_clk, DATA_WIDTH 128, FREQ_HZ 1000000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, HD_TANDEM 0, ID_WIDTH 16, INDEX 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_pcie, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]CPM_PCIE_NOC_1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARBURST" *) output [1:0]CPM_PCIE_NOC_1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARCACHE" *) output [3:0]CPM_PCIE_NOC_1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARID" *) output [15:0]CPM_PCIE_NOC_1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLEN" *) output [7:0]CPM_PCIE_NOC_1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLOCK" *) output CPM_PCIE_NOC_1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARPROT" *) output [2:0]CPM_PCIE_NOC_1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARQOS" *) output [3:0]CPM_PCIE_NOC_1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARREADY" *) input CPM_PCIE_NOC_1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARSIZE" *) output [2:0]CPM_PCIE_NOC_1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARUSER" *) output [17:0]CPM_PCIE_NOC_1_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARVALID" *) output CPM_PCIE_NOC_1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWADDR" *) output [63:0]CPM_PCIE_NOC_1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWBURST" *) output [1:0]CPM_PCIE_NOC_1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWCACHE" *) output [3:0]CPM_PCIE_NOC_1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWID" *) output [15:0]CPM_PCIE_NOC_1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLEN" *) output [7:0]CPM_PCIE_NOC_1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLOCK" *) output CPM_PCIE_NOC_1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWPROT" *) output [2:0]CPM_PCIE_NOC_1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWQOS" *) output [3:0]CPM_PCIE_NOC_1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWREADY" *) input CPM_PCIE_NOC_1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWSIZE" *) output [2:0]CPM_PCIE_NOC_1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWUSER" *) output [17:0]CPM_PCIE_NOC_1_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWVALID" *) output CPM_PCIE_NOC_1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BID" *) input [15:0]CPM_PCIE_NOC_1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BREADY" *) output CPM_PCIE_NOC_1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BRESP" *) input [1:0]CPM_PCIE_NOC_1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BVALID" *) input CPM_PCIE_NOC_1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RDATA" *) input [127:0]CPM_PCIE_NOC_1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RID" *) input [15:0]CPM_PCIE_NOC_1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RLAST" *) input CPM_PCIE_NOC_1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RREADY" *) output CPM_PCIE_NOC_1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RRESP" *) input [1:0]CPM_PCIE_NOC_1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RUSER" *) input [16:0]CPM_PCIE_NOC_1_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RVALID" *) input CPM_PCIE_NOC_1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WDATA" *) output [127:0]CPM_PCIE_NOC_1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WLAST" *) output CPM_PCIE_NOC_1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WREADY" *) input CPM_PCIE_NOC_1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WSTRB" *) output [15:0]CPM_PCIE_NOC_1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WUSER" *) output [16:0]CPM_PCIE_NOC_1_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WVALID" *) output CPM_PCIE_NOC_1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT, CAN_DEBUG false" *) input [7:0]PCIE1_GT_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_P" *) input [7:0]PCIE1_GT_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_N" *) output [7:0]PCIE1_GT_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_P" *) output [7:0]PCIE1_GT_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_COR_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_COR_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_cor_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ1, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_MISC_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_MISC_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_misc_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CPM_PCIE_NOC_AXI0_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CPM_PCIE_NOC_AXI0_CLK, ASSOCIATED_BUSIF CPM_PCIE_NOC_0, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi0_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU" *) output cpm_pcie_noc_axi0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CPM_PCIE_NOC_AXI1_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CPM_PCIE_NOC_AXI1_CLK, ASSOCIATED_BUSIF CPM_PCIE_NOC_1, CLK_DOMAIN bd_f29b_pspmc_0_0_cpm_pcie_noc_axi1_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU" *) output cpm_pcie_noc_axi1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_UNCOR_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_UNCOR_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_uncor_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output dma1_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr cmp" *) (* X_INTERFACE_MODE = "Master" *) output dma1_axis_c2h_dmawr_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr port_id" *) output [2:0]dma1_axis_c2h_dmawr_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr target_vch" *) output dma1_axis_c2h_dmawr_target_vch;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status drop" *) (* X_INTERFACE_MODE = "Master" *) output dma1_axis_c2h_status_drop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status error" *) output dma1_axis_c2h_status_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status last" *) output dma1_axis_c2h_status_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status qid" *) output [11:0]dma1_axis_c2h_status_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status status_cmp" *) output dma1_axis_c2h_status_status_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status valid" *) output dma1_axis_c2h_status_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 cidx" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_c2h_byp_in_mm_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 error" *) input dma1_c2h_byp_in_mm_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 func" *) input [11:0]dma1_c2h_byp_in_mm_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 len" *) input [15:0]dma1_c2h_byp_in_mm_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 mrkr_req" *) input dma1_c2h_byp_in_mm_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 no_dma" *) input dma1_c2h_byp_in_mm_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 port_id" *) input [2:0]dma1_c2h_byp_in_mm_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 qid" *) input [11:0]dma1_c2h_byp_in_mm_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 radr" *) input [63:0]dma1_c2h_byp_in_mm_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 ready" *) output dma1_c2h_byp_in_mm_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 sdi" *) input dma1_c2h_byp_in_mm_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 valid" *) input dma1_c2h_byp_in_mm_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 wadr" *) input [63:0]dma1_c2h_byp_in_mm_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 cidx" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_c2h_byp_in_mm_1_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 error" *) input dma1_c2h_byp_in_mm_1_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 func" *) input [11:0]dma1_c2h_byp_in_mm_1_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 len" *) input [15:0]dma1_c2h_byp_in_mm_1_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 mrkr_req" *) input dma1_c2h_byp_in_mm_1_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 no_dma" *) input dma1_c2h_byp_in_mm_1_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 port_id" *) input [2:0]dma1_c2h_byp_in_mm_1_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 qid" *) input [11:0]dma1_c2h_byp_in_mm_1_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 radr" *) input [63:0]dma1_c2h_byp_in_mm_1_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 ready" *) output dma1_c2h_byp_in_mm_1_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 sdi" *) input dma1_c2h_byp_in_mm_1_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 valid" *) input dma1_c2h_byp_in_mm_1_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 wadr" *) input [63:0]dma1_c2h_byp_in_mm_1_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh addr" *) (* X_INTERFACE_MODE = "Slave" *) input [63:0]dma1_c2h_byp_in_st_csh_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh error" *) input dma1_c2h_byp_in_st_csh_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh func" *) input [11:0]dma1_c2h_byp_in_st_csh_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh pfch_tag" *) input [6:0]dma1_c2h_byp_in_st_csh_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh port_id" *) input [2:0]dma1_c2h_byp_in_st_csh_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh qid" *) input [11:0]dma1_c2h_byp_in_st_csh_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh ready" *) output dma1_c2h_byp_in_st_csh_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh valid" *) input dma1_c2h_byp_in_st_csh_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out cidx" *) (* X_INTERFACE_MODE = "Master" *) output [15:0]dma1_c2h_byp_out_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out dsc" *) output [255:0]dma1_c2h_byp_out_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out dsc_sz" *) output [1:0]dma1_c2h_byp_out_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out error" *) output dma1_c2h_byp_out_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out fmt" *) output [2:0]dma1_c2h_byp_out_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out func" *) output [11:0]dma1_c2h_byp_out_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out mm_chn" *) output dma1_c2h_byp_out_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out pfch_tag" *) output [6:0]dma1_c2h_byp_out_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out port_id" *) output [2:0]dma1_c2h_byp_out_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out qid" *) output [11:0]dma1_c2h_byp_out_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out ready" *) input dma1_c2h_byp_out_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out st_mm" *) output dma1_c2h_byp_out_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out valid" *) output dma1_c2h_byp_out_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in crdt" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_dsc_crdt_in_crdt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in dir" *) input dma1_dsc_crdt_in_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in fence" *) input dma1_dsc_crdt_in_fence;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in qid" *) input [11:0]dma1_dsc_crdt_in_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in rdy" *) output dma1_dsc_crdt_in_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in valid" *) input dma1_dsc_crdt_in_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 cidx" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_h2c_byp_in_mm_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 error" *) input dma1_h2c_byp_in_mm_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 func" *) input [11:0]dma1_h2c_byp_in_mm_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 len" *) input [15:0]dma1_h2c_byp_in_mm_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 mrkr_req" *) input dma1_h2c_byp_in_mm_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 no_dma" *) input dma1_h2c_byp_in_mm_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 port_id" *) input [2:0]dma1_h2c_byp_in_mm_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 qid" *) input [11:0]dma1_h2c_byp_in_mm_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 radr" *) input [63:0]dma1_h2c_byp_in_mm_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 ready" *) output dma1_h2c_byp_in_mm_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 sdi" *) input dma1_h2c_byp_in_mm_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 valid" *) input dma1_h2c_byp_in_mm_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 wadr" *) input [63:0]dma1_h2c_byp_in_mm_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 cidx" *) (* X_INTERFACE_MODE = "Slave" *) input [15:0]dma1_h2c_byp_in_mm_1_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 error" *) input dma1_h2c_byp_in_mm_1_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 func" *) input [11:0]dma1_h2c_byp_in_mm_1_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 len" *) input [15:0]dma1_h2c_byp_in_mm_1_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 mrkr_req" *) input dma1_h2c_byp_in_mm_1_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 no_dma" *) input dma1_h2c_byp_in_mm_1_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 port_id" *) input [2:0]dma1_h2c_byp_in_mm_1_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 qid" *) input [11:0]dma1_h2c_byp_in_mm_1_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 radr" *) input [63:0]dma1_h2c_byp_in_mm_1_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 ready" *) output dma1_h2c_byp_in_mm_1_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 sdi" *) input dma1_h2c_byp_in_mm_1_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 valid" *) input dma1_h2c_byp_in_mm_1_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 wadr" *) input [63:0]dma1_h2c_byp_in_mm_1_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st addr" *) (* X_INTERFACE_MODE = "Slave" *) input [63:0]dma1_h2c_byp_in_st_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st cidx" *) input [15:0]dma1_h2c_byp_in_st_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st eop" *) input dma1_h2c_byp_in_st_eop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st error" *) input dma1_h2c_byp_in_st_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st func" *) input [11:0]dma1_h2c_byp_in_st_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st len" *) input [15:0]dma1_h2c_byp_in_st_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st mrkr_req" *) input dma1_h2c_byp_in_st_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st no_dma" *) input dma1_h2c_byp_in_st_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st port_id" *) input [2:0]dma1_h2c_byp_in_st_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st qid" *) input [11:0]dma1_h2c_byp_in_st_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st ready" *) output dma1_h2c_byp_in_st_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st sdi" *) input dma1_h2c_byp_in_st_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st sop" *) input dma1_h2c_byp_in_st_sop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st valid" *) input dma1_h2c_byp_in_st_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out cidx" *) (* X_INTERFACE_MODE = "Master" *) output [15:0]dma1_h2c_byp_out_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out dsc" *) output [255:0]dma1_h2c_byp_out_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out dsc_sz" *) output [1:0]dma1_h2c_byp_out_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out error" *) output dma1_h2c_byp_out_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out fmt" *) output [2:0]dma1_h2c_byp_out_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out func" *) output [11:0]dma1_h2c_byp_out_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out mm_chn" *) output dma1_h2c_byp_out_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out port_id" *) output [2:0]dma1_h2c_byp_out_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out qid" *) output [11:0]dma1_h2c_byp_out_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out ready" *) input dma1_h2c_byp_out_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out st_mm" *) output dma1_h2c_byp_out_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out valid" *) output dma1_h2c_byp_out_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DMA1_INTRFC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DMA1_INTRFC_CLK, ASSOCIATED_BUSIF dma1_m_axis_h2c:dma1_s_axis_c2h:dma1_s_axis_c2h_cmpt:dma1_st_rx_msg, ASSOCIATED_RESET dma1_axi_aresetn, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input dma1_intrfc_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_INTRFC_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_INTRFC_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input dma1_intrfc_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c err" *) (* X_INTERFACE_MODE = "Master" *) output dma1_m_axis_h2c_err;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c mdata" *) output [31:0]dma1_m_axis_h2c_mdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c mty" *) output [5:0]dma1_m_axis_h2c_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c port_id" *) output [2:0]dma1_m_axis_h2c_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c qid" *) output [11:0]dma1_m_axis_h2c_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tcrc" *) output [31:0]dma1_m_axis_h2c_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tdata" *) output [511:0]dma1_m_axis_h2c_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tlast" *) output dma1_m_axis_h2c_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tready" *) input dma1_m_axis_h2c_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tvalid" *) output dma1_m_axis_h2c_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c zero_byte" *) output dma1_m_axis_h2c_zero_byte;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_dat" *) (* X_INTERFACE_MODE = "Slave" *) output [31:0]dma1_mgmt_cpl_dat;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_rdy" *) input dma1_mgmt_cpl_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_sts" *) output [1:0]dma1_mgmt_cpl_sts;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_vld" *) output dma1_mgmt_cpl_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_adr" *) input [31:0]dma1_mgmt_req_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_cmd" *) input [1:0]dma1_mgmt_req_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_dat" *) input [31:0]dma1_mgmt_req_dat;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_fnc" *) input [12:0]dma1_mgmt_req_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_msc" *) input [5:0]dma1_mgmt_req_msc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_rdy" *) output dma1_mgmt_req_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_vld" *) input dma1_mgmt_req_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out data" *) (* X_INTERFACE_MODE = "Master" *) output [63:0]dma1_qsts_out_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out op" *) output [7:0]dma1_qsts_out_op;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out port_id" *) output [2:0]dma1_qsts_out_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out qid" *) output [12:0]dma1_qsts_out_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out rdy" *) input dma1_qsts_out_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out vld" *) output dma1_qsts_out_vld;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt cmpt_type" *) (* X_INTERFACE_MODE = "Slave" *) input [1:0]dma1_s_axis_c2h_cmpt_cmpt_type;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt col_idx" *) input [2:0]dma1_s_axis_c2h_cmpt_col_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt data" *) input [511:0]dma1_s_axis_c2h_cmpt_data;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt dpar" *) input [15:0]dma1_s_axis_c2h_cmpt_dpar;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt err_idx" *) input [2:0]dma1_s_axis_c2h_cmpt_err_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt marker" *) input dma1_s_axis_c2h_cmpt_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt no_wrb_marker" *) input dma1_s_axis_c2h_cmpt_no_wrb_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt port_id" *) input [2:0]dma1_s_axis_c2h_cmpt_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt qid" *) input [12:0]dma1_s_axis_c2h_cmpt_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt size" *) input [1:0]dma1_s_axis_c2h_cmpt_size;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt tready" *) output dma1_s_axis_c2h_cmpt_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt tvalid" *) input dma1_s_axis_c2h_cmpt_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt user_trig" *) input dma1_s_axis_c2h_cmpt_user_trig;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt wait_pld_pkt_id" *) input [15:0]dma1_s_axis_c2h_cmpt_wait_pld_pkt_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_has_cmpt" *) (* X_INTERFACE_MODE = "Slave" *) input dma1_s_axis_c2h_ctrl_has_cmpt;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_len" *) input [15:0]dma1_s_axis_c2h_ctrl_len;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_marker" *) input dma1_s_axis_c2h_ctrl_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_port_id" *) input [2:0]dma1_s_axis_c2h_ctrl_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_qid" *) input [11:0]dma1_s_axis_c2h_ctrl_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ecc" *) input [6:0]dma1_s_axis_c2h_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h mty" *) input [5:0]dma1_s_axis_c2h_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tcrc" *) input [31:0]dma1_s_axis_c2h_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tdata" *) input [511:0]dma1_s_axis_c2h_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tlast" *) input dma1_s_axis_c2h_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tready" *) output dma1_s_axis_c2h_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tvalid" *) input dma1_s_axis_c2h_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma1_st_rx_msg, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, FREQ_HZ 249997498, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]dma1_st_rx_msg_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TLAST" *) output dma1_st_rx_msg_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TREADY" *) input dma1_st_rx_msg_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TVALID" *) output dma1_st_rx_msg_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts avl" *) (* X_INTERFACE_MODE = "Master" *) output [15:0]dma1_tm_dsc_sts_avl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts byp" *) output dma1_tm_dsc_sts_byp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts dir" *) output dma1_tm_dsc_sts_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts error" *) output dma1_tm_dsc_sts_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts irq_arm" *) output dma1_tm_dsc_sts_irq_arm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts mm" *) output dma1_tm_dsc_sts_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts pidx" *) output [15:0]dma1_tm_dsc_sts_pidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts port_id" *) output [2:0]dma1_tm_dsc_sts_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qen" *) output dma1_tm_dsc_sts_qen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qid" *) output [11:0]dma1_tm_dsc_sts_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qinv" *) output dma1_tm_dsc_sts_qinv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts rdy" *) input dma1_tm_dsc_sts_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts valid" *) output dma1_tm_dsc_sts_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr clear" *) (* X_INTERFACE_MODE = "Slave" *) output dma1_usr_flr_clear;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr done_fnc" *) input [12:0]dma1_usr_flr_done_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr done_vld" *) input dma1_usr_flr_done_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr fnc" *) output [12:0]dma1_usr_flr_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr set" *) output dma1_usr_flr_set;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq ack" *) (* X_INTERFACE_MODE = "Slave" *) output dma1_usr_irq_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq fail" *) output dma1_usr_irq_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq fnc" *) input [12:0]dma1_usr_irq_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq valid" *) input dma1_usr_irq_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq vec" *) input [10:0]dma1_usr_irq_vec;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1, CAN_DEBUG false, FREQ_HZ 100000000" *) input gt_refclk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_P" *) input gt_refclk1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL0_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL0_REF_CLK, CLK_DOMAIN bd_f29b_pspmc_0_0_pl0_ref_clk, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pl0_ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL1_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL1_REF_CLK, CLK_DOMAIN bd_f29b_pspmc_0_0_pl1_ref_clk, FREQ_HZ 49999500, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pl1_ref_clk;

  (* HARD_CONN = "true" *) wire [63:0]CPM_PCIE_NOC_0_araddr;
  (* HARD_CONN = "true" *) wire [1:0]CPM_PCIE_NOC_0_arburst;
  (* HARD_CONN = "true" *) wire [3:0]CPM_PCIE_NOC_0_arcache;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_0_arid;
  (* HARD_CONN = "true" *) wire [7:0]CPM_PCIE_NOC_0_arlen;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_arlock;
  (* HARD_CONN = "true" *) wire [2:0]CPM_PCIE_NOC_0_arprot;
  (* HARD_CONN = "true" *) wire [3:0]CPM_PCIE_NOC_0_arqos;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_arready;
  (* HARD_CONN = "true" *) wire [2:0]CPM_PCIE_NOC_0_arsize;
  (* HARD_CONN = "true" *) wire [17:0]CPM_PCIE_NOC_0_aruser;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_arvalid;
  (* HARD_CONN = "true" *) wire [63:0]CPM_PCIE_NOC_0_awaddr;
  (* HARD_CONN = "true" *) wire [1:0]CPM_PCIE_NOC_0_awburst;
  (* HARD_CONN = "true" *) wire [3:0]CPM_PCIE_NOC_0_awcache;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_0_awid;
  (* HARD_CONN = "true" *) wire [7:0]CPM_PCIE_NOC_0_awlen;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_awlock;
  (* HARD_CONN = "true" *) wire [2:0]CPM_PCIE_NOC_0_awprot;
  (* HARD_CONN = "true" *) wire [3:0]CPM_PCIE_NOC_0_awqos;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_awready;
  (* HARD_CONN = "true" *) wire [2:0]CPM_PCIE_NOC_0_awsize;
  (* HARD_CONN = "true" *) wire [17:0]CPM_PCIE_NOC_0_awuser;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_awvalid;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_0_bid;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_bready;
  (* HARD_CONN = "true" *) wire [1:0]CPM_PCIE_NOC_0_bresp;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_bvalid;
  (* HARD_CONN = "true" *) wire [127:0]CPM_PCIE_NOC_0_rdata;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_0_rid;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_rlast;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_rready;
  (* HARD_CONN = "true" *) wire [1:0]CPM_PCIE_NOC_0_rresp;
  (* HARD_CONN = "true" *) wire [16:0]CPM_PCIE_NOC_0_ruser;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_rvalid;
  (* HARD_CONN = "true" *) wire [127:0]CPM_PCIE_NOC_0_wdata;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_wlast;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_wready;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_0_wstrb;
  (* HARD_CONN = "true" *) wire [16:0]CPM_PCIE_NOC_0_wuser;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_0_wvalid;
  (* HARD_CONN = "true" *) wire [63:0]CPM_PCIE_NOC_1_araddr;
  (* HARD_CONN = "true" *) wire [1:0]CPM_PCIE_NOC_1_arburst;
  (* HARD_CONN = "true" *) wire [3:0]CPM_PCIE_NOC_1_arcache;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_1_arid;
  (* HARD_CONN = "true" *) wire [7:0]CPM_PCIE_NOC_1_arlen;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_arlock;
  (* HARD_CONN = "true" *) wire [2:0]CPM_PCIE_NOC_1_arprot;
  (* HARD_CONN = "true" *) wire [3:0]CPM_PCIE_NOC_1_arqos;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_arready;
  (* HARD_CONN = "true" *) wire [2:0]CPM_PCIE_NOC_1_arsize;
  (* HARD_CONN = "true" *) wire [17:0]CPM_PCIE_NOC_1_aruser;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_arvalid;
  (* HARD_CONN = "true" *) wire [63:0]CPM_PCIE_NOC_1_awaddr;
  (* HARD_CONN = "true" *) wire [1:0]CPM_PCIE_NOC_1_awburst;
  (* HARD_CONN = "true" *) wire [3:0]CPM_PCIE_NOC_1_awcache;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_1_awid;
  (* HARD_CONN = "true" *) wire [7:0]CPM_PCIE_NOC_1_awlen;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_awlock;
  (* HARD_CONN = "true" *) wire [2:0]CPM_PCIE_NOC_1_awprot;
  (* HARD_CONN = "true" *) wire [3:0]CPM_PCIE_NOC_1_awqos;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_awready;
  (* HARD_CONN = "true" *) wire [2:0]CPM_PCIE_NOC_1_awsize;
  (* HARD_CONN = "true" *) wire [17:0]CPM_PCIE_NOC_1_awuser;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_awvalid;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_1_bid;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_bready;
  (* HARD_CONN = "true" *) wire [1:0]CPM_PCIE_NOC_1_bresp;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_bvalid;
  (* HARD_CONN = "true" *) wire [127:0]CPM_PCIE_NOC_1_rdata;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_1_rid;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_rlast;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_rready;
  (* HARD_CONN = "true" *) wire [1:0]CPM_PCIE_NOC_1_rresp;
  (* HARD_CONN = "true" *) wire [16:0]CPM_PCIE_NOC_1_ruser;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_rvalid;
  (* HARD_CONN = "true" *) wire [127:0]CPM_PCIE_NOC_1_wdata;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_wlast;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_wready;
  (* HARD_CONN = "true" *) wire [15:0]CPM_PCIE_NOC_1_wstrb;
  (* HARD_CONN = "true" *) wire [16:0]CPM_PCIE_NOC_1_wuser;
  (* HARD_CONN = "true" *) wire CPM_PCIE_NOC_1_wvalid;
  wire [7:0]PCIE1_GT_grx_n;
  wire [7:0]PCIE1_GT_grx_p;
  wire [7:0]PCIE1_GT_gtx_n;
  wire [7:0]PCIE1_GT_gtx_p;
  wire cpm_cor_irq;
  wire cpm_irq0;
  wire cpm_irq1;
  wire cpm_misc_irq;
  (* HARD_CONN = "true" *) wire cpm_pcie_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire cpm_pcie_noc_axi1_clk;
  wire cpm_uncor_irq;
  wire dma1_axi_aresetn;
  wire dma1_axis_c2h_dmawr_cmp;
  wire [2:0]dma1_axis_c2h_dmawr_port_id;
  wire dma1_axis_c2h_dmawr_target_vch;
  wire dma1_axis_c2h_status_drop;
  wire dma1_axis_c2h_status_error;
  wire dma1_axis_c2h_status_last;
  wire [11:0]dma1_axis_c2h_status_qid;
  wire dma1_axis_c2h_status_status_cmp;
  wire dma1_axis_c2h_status_valid;
  wire [15:0]dma1_c2h_byp_in_mm_0_cidx;
  wire dma1_c2h_byp_in_mm_0_error;
  wire [11:0]dma1_c2h_byp_in_mm_0_func;
  wire [15:0]dma1_c2h_byp_in_mm_0_len;
  wire dma1_c2h_byp_in_mm_0_mrkr_req;
  wire dma1_c2h_byp_in_mm_0_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_0_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_0_qid;
  wire [63:0]dma1_c2h_byp_in_mm_0_radr;
  wire dma1_c2h_byp_in_mm_0_ready;
  wire dma1_c2h_byp_in_mm_0_sdi;
  wire dma1_c2h_byp_in_mm_0_valid;
  wire [63:0]dma1_c2h_byp_in_mm_0_wadr;
  wire [15:0]dma1_c2h_byp_in_mm_1_cidx;
  wire dma1_c2h_byp_in_mm_1_error;
  wire [11:0]dma1_c2h_byp_in_mm_1_func;
  wire [15:0]dma1_c2h_byp_in_mm_1_len;
  wire dma1_c2h_byp_in_mm_1_mrkr_req;
  wire dma1_c2h_byp_in_mm_1_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_1_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_1_qid;
  wire [63:0]dma1_c2h_byp_in_mm_1_radr;
  wire dma1_c2h_byp_in_mm_1_ready;
  wire dma1_c2h_byp_in_mm_1_sdi;
  wire dma1_c2h_byp_in_mm_1_valid;
  wire [63:0]dma1_c2h_byp_in_mm_1_wadr;
  wire [63:0]dma1_c2h_byp_in_st_csh_addr;
  wire dma1_c2h_byp_in_st_csh_error;
  wire [11:0]dma1_c2h_byp_in_st_csh_func;
  wire [6:0]dma1_c2h_byp_in_st_csh_pfch_tag;
  wire [2:0]dma1_c2h_byp_in_st_csh_port_id;
  wire [11:0]dma1_c2h_byp_in_st_csh_qid;
  wire dma1_c2h_byp_in_st_csh_ready;
  wire dma1_c2h_byp_in_st_csh_valid;
  wire [15:0]dma1_c2h_byp_out_cidx;
  wire [255:0]dma1_c2h_byp_out_dsc;
  wire [1:0]dma1_c2h_byp_out_dsc_sz;
  wire dma1_c2h_byp_out_error;
  wire [2:0]dma1_c2h_byp_out_fmt;
  wire [11:0]dma1_c2h_byp_out_func;
  wire dma1_c2h_byp_out_mm_chn;
  wire [6:0]dma1_c2h_byp_out_pfch_tag;
  wire [2:0]dma1_c2h_byp_out_port_id;
  wire [11:0]dma1_c2h_byp_out_qid;
  wire dma1_c2h_byp_out_ready;
  wire dma1_c2h_byp_out_st_mm;
  wire dma1_c2h_byp_out_valid;
  wire [15:0]dma1_dsc_crdt_in_crdt;
  wire dma1_dsc_crdt_in_dir;
  wire dma1_dsc_crdt_in_fence;
  wire [11:0]dma1_dsc_crdt_in_qid;
  wire dma1_dsc_crdt_in_rdy;
  wire dma1_dsc_crdt_in_valid;
  wire [15:0]dma1_h2c_byp_in_mm_0_cidx;
  wire dma1_h2c_byp_in_mm_0_error;
  wire [11:0]dma1_h2c_byp_in_mm_0_func;
  wire [15:0]dma1_h2c_byp_in_mm_0_len;
  wire dma1_h2c_byp_in_mm_0_mrkr_req;
  wire dma1_h2c_byp_in_mm_0_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_0_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_0_qid;
  wire [63:0]dma1_h2c_byp_in_mm_0_radr;
  wire dma1_h2c_byp_in_mm_0_ready;
  wire dma1_h2c_byp_in_mm_0_sdi;
  wire dma1_h2c_byp_in_mm_0_valid;
  wire [63:0]dma1_h2c_byp_in_mm_0_wadr;
  wire [15:0]dma1_h2c_byp_in_mm_1_cidx;
  wire dma1_h2c_byp_in_mm_1_error;
  wire [11:0]dma1_h2c_byp_in_mm_1_func;
  wire [15:0]dma1_h2c_byp_in_mm_1_len;
  wire dma1_h2c_byp_in_mm_1_mrkr_req;
  wire dma1_h2c_byp_in_mm_1_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_1_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_1_qid;
  wire [63:0]dma1_h2c_byp_in_mm_1_radr;
  wire dma1_h2c_byp_in_mm_1_ready;
  wire dma1_h2c_byp_in_mm_1_sdi;
  wire dma1_h2c_byp_in_mm_1_valid;
  wire [63:0]dma1_h2c_byp_in_mm_1_wadr;
  wire [63:0]dma1_h2c_byp_in_st_addr;
  wire [15:0]dma1_h2c_byp_in_st_cidx;
  wire dma1_h2c_byp_in_st_eop;
  wire dma1_h2c_byp_in_st_error;
  wire [11:0]dma1_h2c_byp_in_st_func;
  wire [15:0]dma1_h2c_byp_in_st_len;
  wire dma1_h2c_byp_in_st_mrkr_req;
  wire dma1_h2c_byp_in_st_no_dma;
  wire [2:0]dma1_h2c_byp_in_st_port_id;
  wire [11:0]dma1_h2c_byp_in_st_qid;
  wire dma1_h2c_byp_in_st_ready;
  wire dma1_h2c_byp_in_st_sdi;
  wire dma1_h2c_byp_in_st_sop;
  wire dma1_h2c_byp_in_st_valid;
  wire [15:0]dma1_h2c_byp_out_cidx;
  wire [255:0]dma1_h2c_byp_out_dsc;
  wire [1:0]dma1_h2c_byp_out_dsc_sz;
  wire dma1_h2c_byp_out_error;
  wire [2:0]dma1_h2c_byp_out_fmt;
  wire [11:0]dma1_h2c_byp_out_func;
  wire dma1_h2c_byp_out_mm_chn;
  wire [2:0]dma1_h2c_byp_out_port_id;
  wire [11:0]dma1_h2c_byp_out_qid;
  wire dma1_h2c_byp_out_ready;
  wire dma1_h2c_byp_out_st_mm;
  wire dma1_h2c_byp_out_valid;
  wire dma1_intrfc_clk;
  wire dma1_intrfc_resetn;
  wire dma1_m_axis_h2c_err;
  wire [31:0]dma1_m_axis_h2c_mdata;
  wire [5:0]dma1_m_axis_h2c_mty;
  wire [2:0]dma1_m_axis_h2c_port_id;
  wire [11:0]dma1_m_axis_h2c_qid;
  wire [31:0]dma1_m_axis_h2c_tcrc;
  wire [511:0]dma1_m_axis_h2c_tdata;
  wire dma1_m_axis_h2c_tlast;
  wire dma1_m_axis_h2c_tready;
  wire dma1_m_axis_h2c_tvalid;
  wire dma1_m_axis_h2c_zero_byte;
  wire [31:0]dma1_mgmt_cpl_dat;
  wire dma1_mgmt_cpl_rdy;
  wire [1:0]dma1_mgmt_cpl_sts;
  wire dma1_mgmt_cpl_vld;
  wire [31:0]dma1_mgmt_req_adr;
  wire [1:0]dma1_mgmt_req_cmd;
  wire [31:0]dma1_mgmt_req_dat;
  wire [12:0]dma1_mgmt_req_fnc;
  wire [5:0]dma1_mgmt_req_msc;
  wire dma1_mgmt_req_rdy;
  wire dma1_mgmt_req_vld;
  wire [63:0]dma1_qsts_out_data;
  wire [7:0]dma1_qsts_out_op;
  wire [2:0]dma1_qsts_out_port_id;
  wire [12:0]dma1_qsts_out_qid;
  wire dma1_qsts_out_rdy;
  wire dma1_qsts_out_vld;
  wire [1:0]dma1_s_axis_c2h_cmpt_cmpt_type;
  wire [2:0]dma1_s_axis_c2h_cmpt_col_idx;
  wire [511:0]dma1_s_axis_c2h_cmpt_data;
  wire [15:0]dma1_s_axis_c2h_cmpt_dpar;
  wire [2:0]dma1_s_axis_c2h_cmpt_err_idx;
  wire dma1_s_axis_c2h_cmpt_marker;
  wire dma1_s_axis_c2h_cmpt_no_wrb_marker;
  wire [2:0]dma1_s_axis_c2h_cmpt_port_id;
  wire [12:0]dma1_s_axis_c2h_cmpt_qid;
  wire [1:0]dma1_s_axis_c2h_cmpt_size;
  wire dma1_s_axis_c2h_cmpt_tready;
  wire dma1_s_axis_c2h_cmpt_tvalid;
  wire dma1_s_axis_c2h_cmpt_user_trig;
  wire [15:0]dma1_s_axis_c2h_cmpt_wait_pld_pkt_id;
  wire dma1_s_axis_c2h_ctrl_has_cmpt;
  wire [15:0]dma1_s_axis_c2h_ctrl_len;
  wire dma1_s_axis_c2h_ctrl_marker;
  wire [2:0]dma1_s_axis_c2h_ctrl_port_id;
  wire [11:0]dma1_s_axis_c2h_ctrl_qid;
  wire [6:0]dma1_s_axis_c2h_ecc;
  wire [5:0]dma1_s_axis_c2h_mty;
  wire [31:0]dma1_s_axis_c2h_tcrc;
  wire [511:0]dma1_s_axis_c2h_tdata;
  wire dma1_s_axis_c2h_tlast;
  wire dma1_s_axis_c2h_tready;
  wire dma1_s_axis_c2h_tvalid;
  wire [31:0]dma1_st_rx_msg_tdata;
  wire dma1_st_rx_msg_tlast;
  wire dma1_st_rx_msg_tready;
  wire dma1_st_rx_msg_tvalid;
  wire [15:0]dma1_tm_dsc_sts_avl;
  wire dma1_tm_dsc_sts_byp;
  wire dma1_tm_dsc_sts_dir;
  wire dma1_tm_dsc_sts_error;
  wire dma1_tm_dsc_sts_irq_arm;
  wire dma1_tm_dsc_sts_mm;
  wire [15:0]dma1_tm_dsc_sts_pidx;
  wire [2:0]dma1_tm_dsc_sts_port_id;
  wire dma1_tm_dsc_sts_qen;
  wire [11:0]dma1_tm_dsc_sts_qid;
  wire dma1_tm_dsc_sts_qinv;
  wire dma1_tm_dsc_sts_rdy;
  wire dma1_tm_dsc_sts_valid;
  wire dma1_usr_flr_clear;
  wire [12:0]dma1_usr_flr_done_fnc;
  wire dma1_usr_flr_done_vld;
  wire [12:0]dma1_usr_flr_fnc;
  wire dma1_usr_flr_set;
  wire dma1_usr_irq_ack;
  wire dma1_usr_irq_fail;
  wire [12:0]dma1_usr_irq_fnc;
  wire dma1_usr_irq_valid;
  wire [10:0]dma1_usr_irq_vec;
  wire gt_refclk1_clk_n;
  wire gt_refclk1_clk_p;
  wire pl0_ref_clk;
  wire pl1_ref_clk;
  wire pspmc_0_IF_PS_CPM_cpm_osc_clk_div2;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_apb_en;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_hold_state;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_init_state;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr;
  wire [3:0]pspmc_0_IF_PS_CPM_cpm_pcr_o_disable;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_start_cal;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_tristate;
  wire pspmc_0_IF_PS_CPM_cpmps_corr_irq;
  wire pspmc_0_IF_PS_CPM_cpmps_misc_irq;
  wire pspmc_0_IF_PS_CPM_cpmps_uncorr_irq;
  wire pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk;
  wire pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce;
  wire [3:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask;
  wire [11:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst;
  wire [3:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget;
  wire [5:0]pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_phyready;
  wire [2:0]pspmc_0_IF_PS_CPM_link0_xpipe_piperate;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce;
  wire [3:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask;
  wire [11:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst;
  wire [3:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget;
  wire [5:0]pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_phyready;
  wire [2:0]pspmc_0_IF_PS_CPM_link1_xpipe_piperate;
  wire pspmc_0_IF_PS_CPM_lpd_refclk_in;
  wire pspmc_0_IF_PS_CPM_lpd_swclk;
  wire pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi0_ps_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arlen;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arqos;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arsize;
  wire [31:0]pspmc_0_IF_PS_CPM_m_axi0_ps_aruser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awlen;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awqos;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awsize;
  wire [31:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awuser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_bid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_bresp;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_buser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rlast;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rresp;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi0_ps_ruser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wlast;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wuser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi1_ps_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arlen;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arqos;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arsize;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi1_ps_aruser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awlen;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awqos;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awsize;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awuser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_bid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_bresp;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_buser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rlast;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rresp;
  wire [16:0]pspmc_0_IF_PS_CPM_m_axi1_ps_ruser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wlast;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb;
  wire [16:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wuser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid;
  wire pspmc_0_IF_PS_CPM_perst0n;
  wire pspmc_0_IF_PS_CPM_perst1n;
  wire pspmc_0_IF_PS_CPM_phy_ready_frbot;
  wire pspmc_0_IF_PS_CPM_phy_ready_tobot;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_cfg_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arlen;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arqos;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arsize;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_aruser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awlen;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awqos;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awsize;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awuser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_bid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_bresp;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_buser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid;
  wire [31:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rlast;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rresp;
  wire [5:0]pspmc_0_IF_PS_CPM_s_axi_cfg_ruser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid;
  wire [31:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wlast;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb;
  wire [5:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wuser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_pcie_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arlen;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arqos;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arsize;
  wire [17:0]pspmc_0_IF_PS_CPM_s_axi_pcie_aruser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awlen;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awqos;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awsize;
  wire [17:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awuser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_bid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_bresp;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_buser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rlast;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rresp;
  wire [16:0]pspmc_0_IF_PS_CPM_s_axi_pcie_ruser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wlast;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb;
  wire [16:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wuser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe0_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe0_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe0_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe0_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe0_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe10_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe10_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe10_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe10_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe10_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe10_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe11_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe11_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe11_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe11_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe11_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe11_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe12_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe12_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe12_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe12_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe12_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe12_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe13_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe13_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe13_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe13_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe13_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe13_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe14_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe14_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe14_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe14_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe14_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe14_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe15_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe15_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe15_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe15_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe15_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe15_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe1_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe1_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe1_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe1_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe1_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe1_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe2_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe2_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe2_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe2_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe2_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe2_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe3_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe3_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe3_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe3_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe3_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe3_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe4_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe4_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe4_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe4_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe4_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe4_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe5_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe5_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe5_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe5_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe5_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe5_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe6_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe6_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe6_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe6_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe6_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe6_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe7_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe7_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe7_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe7_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe7_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe7_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe8_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe8_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe8_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe8_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe8_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe8_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe9_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe9_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe9_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe9_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe9_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe9_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req;

  bd_f29b_cpm_0_0 cpm_0
       (.cpm_cor_irq(cpm_cor_irq),
        .cpm_irq0(cpm_irq0),
        .cpm_irq1(cpm_irq1),
        .cpm_misc_irq(cpm_misc_irq),
        .cpm_osc_clk_div2(pspmc_0_IF_PS_CPM_cpm_osc_clk_div2),
        .cpm_pcr_apb_en(pspmc_0_IF_PS_CPM_cpm_pcr_apb_en),
        .cpm_pcr_dis_npi_clk(pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk),
        .cpm_pcr_fabric_en(pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en),
        .cpm_pcr_gate_reg(pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg),
        .cpm_pcr_hold_state(pspmc_0_IF_PS_CPM_cpm_pcr_hold_state),
        .cpm_pcr_init_state(pspmc_0_IF_PS_CPM_cpm_pcr_init_state),
        .cpm_pcr_mem_clr(pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr),
        .cpm_pcr_o_disable(pspmc_0_IF_PS_CPM_cpm_pcr_o_disable),
        .cpm_pcr_pcomplete(pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete),
        .cpm_pcr_pwr_dn(pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn),
        .cpm_pcr_scan_clr(pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr),
        .cpm_pcr_start_bisr(pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr),
        .cpm_pcr_start_cal(pspmc_0_IF_PS_CPM_cpm_pcr_start_cal),
        .cpm_pcr_tristate(pspmc_0_IF_PS_CPM_cpm_pcr_tristate),
        .cpm_uncor_irq(cpm_uncor_irq),
        .cpmps_corr_irq(pspmc_0_IF_PS_CPM_cpmps_corr_irq),
        .cpmps_misc_irq(pspmc_0_IF_PS_CPM_cpmps_misc_irq),
        .cpmps_uncorr_irq(pspmc_0_IF_PS_CPM_cpmps_uncorr_irq),
        .dma1_axi_aresetn(dma1_axi_aresetn),
        .dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_cmp),
        .dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_port_id),
        .dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_target_vch),
        .dma1_axis_c2h_status_cmp(dma1_axis_c2h_status_status_cmp),
        .dma1_axis_c2h_status_drop(dma1_axis_c2h_status_drop),
        .dma1_axis_c2h_status_error(dma1_axis_c2h_status_error),
        .dma1_axis_c2h_status_last(dma1_axis_c2h_status_last),
        .dma1_axis_c2h_status_qid(dma1_axis_c2h_status_qid),
        .dma1_axis_c2h_status_valid(dma1_axis_c2h_status_valid),
        .dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_cidx),
        .dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_error),
        .dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_func),
        .dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_len),
        .dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_mrkr_req),
        .dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_no_dma),
        .dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_port_id),
        .dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_qid),
        .dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_radr),
        .dma1_c2h_byp_in_mm_0_rdy(dma1_c2h_byp_in_mm_0_ready),
        .dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_sdi),
        .dma1_c2h_byp_in_mm_0_vld(dma1_c2h_byp_in_mm_0_valid),
        .dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_wadr),
        .dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_cidx),
        .dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_error),
        .dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_func),
        .dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_len),
        .dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_mrkr_req),
        .dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_no_dma),
        .dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_port_id),
        .dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_qid),
        .dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_radr),
        .dma1_c2h_byp_in_mm_1_rdy(dma1_c2h_byp_in_mm_1_ready),
        .dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_sdi),
        .dma1_c2h_byp_in_mm_1_vld(dma1_c2h_byp_in_mm_1_valid),
        .dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_wadr),
        .dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_addr),
        .dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_error),
        .dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_func),
        .dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_pfch_tag),
        .dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_port_id),
        .dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_qid),
        .dma1_c2h_byp_in_st_csh_rdy(dma1_c2h_byp_in_st_csh_ready),
        .dma1_c2h_byp_in_st_csh_vld(dma1_c2h_byp_in_st_csh_valid),
        .dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_cidx),
        .dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_dsc),
        .dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_dsc_sz),
        .dma1_c2h_byp_out_error(dma1_c2h_byp_out_error),
        .dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_fmt),
        .dma1_c2h_byp_out_func(dma1_c2h_byp_out_func),
        .dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_mm_chn),
        .dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_pfch_tag),
        .dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_port_id),
        .dma1_c2h_byp_out_qid(dma1_c2h_byp_out_qid),
        .dma1_c2h_byp_out_rdy(dma1_c2h_byp_out_ready),
        .dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_st_mm),
        .dma1_c2h_byp_out_vld(dma1_c2h_byp_out_valid),
        .dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_crdt),
        .dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_dir),
        .dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_fence),
        .dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_qid),
        .dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_rdy),
        .dma1_dsc_crdt_in_vld(dma1_dsc_crdt_in_valid),
        .dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_cidx),
        .dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_error),
        .dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_func),
        .dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_len),
        .dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_mrkr_req),
        .dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_no_dma),
        .dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_port_id),
        .dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_qid),
        .dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_radr),
        .dma1_h2c_byp_in_mm_0_rdy(dma1_h2c_byp_in_mm_0_ready),
        .dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_sdi),
        .dma1_h2c_byp_in_mm_0_vld(dma1_h2c_byp_in_mm_0_valid),
        .dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_wadr),
        .dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_cidx),
        .dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_error),
        .dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_func),
        .dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_len),
        .dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_mrkr_req),
        .dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_no_dma),
        .dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_port_id),
        .dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_qid),
        .dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_radr),
        .dma1_h2c_byp_in_mm_1_rdy(dma1_h2c_byp_in_mm_1_ready),
        .dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_sdi),
        .dma1_h2c_byp_in_mm_1_vld(dma1_h2c_byp_in_mm_1_valid),
        .dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_wadr),
        .dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_addr),
        .dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_cidx),
        .dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_eop),
        .dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_error),
        .dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_func),
        .dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_len),
        .dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_mrkr_req),
        .dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_no_dma),
        .dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_port_id),
        .dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_qid),
        .dma1_h2c_byp_in_st_rdy(dma1_h2c_byp_in_st_ready),
        .dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_sdi),
        .dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_sop),
        .dma1_h2c_byp_in_st_vld(dma1_h2c_byp_in_st_valid),
        .dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_cidx),
        .dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_dsc),
        .dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_dsc_sz),
        .dma1_h2c_byp_out_error(dma1_h2c_byp_out_error),
        .dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_fmt),
        .dma1_h2c_byp_out_func(dma1_h2c_byp_out_func),
        .dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_mm_chn),
        .dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_port_id),
        .dma1_h2c_byp_out_qid(dma1_h2c_byp_out_qid),
        .dma1_h2c_byp_out_rdy(dma1_h2c_byp_out_ready),
        .dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_st_mm),
        .dma1_h2c_byp_out_vld(dma1_h2c_byp_out_valid),
        .dma1_intrfc_clk(dma1_intrfc_clk),
        .dma1_intrfc_resetn(dma1_intrfc_resetn),
        .dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_tcrc),
        .dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_tdata),
        .dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_tlast),
        .dma1_m_axis_h2c_tready(dma1_m_axis_h2c_tready),
        .dma1_m_axis_h2c_tuser_err(dma1_m_axis_h2c_err),
        .dma1_m_axis_h2c_tuser_mdata(dma1_m_axis_h2c_mdata),
        .dma1_m_axis_h2c_tuser_mty(dma1_m_axis_h2c_mty),
        .dma1_m_axis_h2c_tuser_port_id(dma1_m_axis_h2c_port_id),
        .dma1_m_axis_h2c_tuser_qid(dma1_m_axis_h2c_qid),
        .dma1_m_axis_h2c_tuser_zero_byte(dma1_m_axis_h2c_zero_byte),
        .dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_tvalid),
        .dma1_mgmt_cpl_dat(dma1_mgmt_cpl_dat),
        .dma1_mgmt_cpl_rdy(dma1_mgmt_cpl_rdy),
        .dma1_mgmt_cpl_sts(dma1_mgmt_cpl_sts),
        .dma1_mgmt_cpl_vld(dma1_mgmt_cpl_vld),
        .dma1_mgmt_req_adr(dma1_mgmt_req_adr),
        .dma1_mgmt_req_cmd(dma1_mgmt_req_cmd),
        .dma1_mgmt_req_dat(dma1_mgmt_req_dat),
        .dma1_mgmt_req_fnc(dma1_mgmt_req_fnc),
        .dma1_mgmt_req_msc(dma1_mgmt_req_msc),
        .dma1_mgmt_req_rdy(dma1_mgmt_req_rdy),
        .dma1_mgmt_req_vld(dma1_mgmt_req_vld),
        .dma1_qsts_out_data(dma1_qsts_out_data),
        .dma1_qsts_out_op(dma1_qsts_out_op),
        .dma1_qsts_out_port_id(dma1_qsts_out_port_id),
        .dma1_qsts_out_qid(dma1_qsts_out_qid),
        .dma1_qsts_sts_out_rdy(dma1_qsts_out_rdy),
        .dma1_qsts_sts_out_vld(dma1_qsts_out_vld),
        .dma1_s_axis_c2h_cmpt_ctrl_cmpt_type(dma1_s_axis_c2h_cmpt_cmpt_type),
        .dma1_s_axis_c2h_cmpt_ctrl_col_idx(dma1_s_axis_c2h_cmpt_col_idx),
        .dma1_s_axis_c2h_cmpt_ctrl_err_idx(dma1_s_axis_c2h_cmpt_err_idx),
        .dma1_s_axis_c2h_cmpt_ctrl_marker(dma1_s_axis_c2h_cmpt_marker),
        .dma1_s_axis_c2h_cmpt_ctrl_no_wrb_marker(dma1_s_axis_c2h_cmpt_no_wrb_marker),
        .dma1_s_axis_c2h_cmpt_ctrl_port_id(dma1_s_axis_c2h_cmpt_port_id),
        .dma1_s_axis_c2h_cmpt_ctrl_qid(dma1_s_axis_c2h_cmpt_qid),
        .dma1_s_axis_c2h_cmpt_ctrl_user_trig(dma1_s_axis_c2h_cmpt_user_trig),
        .dma1_s_axis_c2h_cmpt_ctrl_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_wait_pld_pkt_id),
        .dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_dpar),
        .dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_size),
        .dma1_s_axis_c2h_cmpt_tdata(dma1_s_axis_c2h_cmpt_data),
        .dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_tready),
        .dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_tvalid),
        .dma1_s_axis_c2h_ctrl_ecc(dma1_s_axis_c2h_ecc),
        .dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_ctrl_has_cmpt),
        .dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_ctrl_len),
        .dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_ctrl_marker),
        .dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_ctrl_port_id),
        .dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_ctrl_qid),
        .dma1_s_axis_c2h_mty(dma1_s_axis_c2h_mty),
        .dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_tcrc),
        .dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_tdata),
        .dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_tlast),
        .dma1_s_axis_c2h_tready(dma1_s_axis_c2h_tready),
        .dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_tvalid),
        .dma1_st_rx_msg_data(dma1_st_rx_msg_tdata),
        .dma1_st_rx_msg_last(dma1_st_rx_msg_tlast),
        .dma1_st_rx_msg_rdy(dma1_st_rx_msg_tready),
        .dma1_st_rx_msg_valid(dma1_st_rx_msg_tvalid),
        .dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_avl),
        .dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_byp),
        .dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_dir),
        .dma1_tm_dsc_sts_err(dma1_tm_dsc_sts_error),
        .dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_irq_arm),
        .dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_mm),
        .dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_pidx),
        .dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_port_id),
        .dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_qen),
        .dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_qid),
        .dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_qinv),
        .dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_rdy),
        .dma1_tm_dsc_sts_vld(dma1_tm_dsc_sts_valid),
        .dma1_usr_flr_clr(dma1_usr_flr_clear),
        .dma1_usr_flr_done_fnc(dma1_usr_flr_done_fnc),
        .dma1_usr_flr_done_vld(dma1_usr_flr_done_vld),
        .dma1_usr_flr_fnc(dma1_usr_flr_fnc),
        .dma1_usr_flr_set(dma1_usr_flr_set),
        .dma1_usr_irq_ack(dma1_usr_irq_ack),
        .dma1_usr_irq_fail(dma1_usr_irq_fail),
        .dma1_usr_irq_fnc(dma1_usr_irq_fnc),
        .dma1_usr_irq_vec(dma1_usr_irq_vec),
        .dma1_usr_irq_vld(dma1_usr_irq_valid),
        .gt_refclk1_n(gt_refclk1_clk_n),
        .gt_refclk1_p(gt_refclk1_clk_p),
        .hsdp_gt_rxoutclk(pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk),
        .hsdp_gt_txusrclk(pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk),
        .hsdp_xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid),
        .hsdp_xpipe0_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip),
        .hsdp_xpipe0_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header),
        .hsdp_xpipe0_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid),
        .hsdp_xpipe0_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset),
        .hsdp_xpipe0_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone),
        .hsdp_xpipe0_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header),
        .hsdp_xpipe0_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone),
        .hsdp_xpipe0_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence),
        .hsdp_xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid),
        .hsdp_xpipe1_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip),
        .hsdp_xpipe1_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header),
        .hsdp_xpipe1_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid),
        .hsdp_xpipe1_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset),
        .hsdp_xpipe1_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone),
        .hsdp_xpipe1_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header),
        .hsdp_xpipe1_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone),
        .hsdp_xpipe1_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence),
        .hsdp_xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid),
        .hsdp_xpipe2_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip),
        .hsdp_xpipe2_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header),
        .hsdp_xpipe2_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid),
        .hsdp_xpipe2_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset),
        .hsdp_xpipe2_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone),
        .hsdp_xpipe2_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header),
        .hsdp_xpipe2_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone),
        .hsdp_xpipe2_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence),
        .link0_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce),
        .link0_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask),
        .link0_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv),
        .link0_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst),
        .link0_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask),
        .link0_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk),
        .link0_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk),
        .link0_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget),
        .link0_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate),
        .link0_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn),
        .link0_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave),
        .link0_xpipe_phyready(pspmc_0_IF_PS_CPM_link0_xpipe_phyready),
        .link0_xpipe_piperate(pspmc_0_IF_PS_CPM_link0_xpipe_piperate),
        .link1_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce),
        .link1_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask),
        .link1_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv),
        .link1_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst),
        .link1_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask),
        .link1_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk),
        .link1_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk),
        .link1_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget),
        .link1_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate),
        .link1_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn),
        .link1_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave),
        .link1_xpipe_phyready(pspmc_0_IF_PS_CPM_link1_xpipe_phyready),
        .link1_xpipe_piperate(pspmc_0_IF_PS_CPM_link1_xpipe_piperate),
        .lpd_refclk_in(pspmc_0_IF_PS_CPM_lpd_refclk_in),
        .lpd_swclk(pspmc_0_IF_PS_CPM_lpd_swclk),
        .lpd_switch_timeout_cnt(pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt),
        .m_axi0_ps_araddr(pspmc_0_IF_PS_CPM_m_axi0_ps_araddr),
        .m_axi0_ps_arburst(pspmc_0_IF_PS_CPM_m_axi0_ps_arburst),
        .m_axi0_ps_arcache(pspmc_0_IF_PS_CPM_m_axi0_ps_arcache),
        .m_axi0_ps_arid(pspmc_0_IF_PS_CPM_m_axi0_ps_arid),
        .m_axi0_ps_arlen(pspmc_0_IF_PS_CPM_m_axi0_ps_arlen),
        .m_axi0_ps_arlock(pspmc_0_IF_PS_CPM_m_axi0_ps_arlock),
        .m_axi0_ps_arprot(pspmc_0_IF_PS_CPM_m_axi0_ps_arprot),
        .m_axi0_ps_arqos(pspmc_0_IF_PS_CPM_m_axi0_ps_arqos),
        .m_axi0_ps_arready(pspmc_0_IF_PS_CPM_m_axi0_ps_arready),
        .m_axi0_ps_arregion(pspmc_0_IF_PS_CPM_m_axi0_ps_arregion),
        .m_axi0_ps_arsize(pspmc_0_IF_PS_CPM_m_axi0_ps_arsize),
        .m_axi0_ps_aruser(pspmc_0_IF_PS_CPM_m_axi0_ps_aruser),
        .m_axi0_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid),
        .m_axi0_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr),
        .m_axi0_ps_awburst(pspmc_0_IF_PS_CPM_m_axi0_ps_awburst),
        .m_axi0_ps_awcache(pspmc_0_IF_PS_CPM_m_axi0_ps_awcache),
        .m_axi0_ps_awid(pspmc_0_IF_PS_CPM_m_axi0_ps_awid),
        .m_axi0_ps_awlen(pspmc_0_IF_PS_CPM_m_axi0_ps_awlen),
        .m_axi0_ps_awlock(pspmc_0_IF_PS_CPM_m_axi0_ps_awlock),
        .m_axi0_ps_awprot(pspmc_0_IF_PS_CPM_m_axi0_ps_awprot),
        .m_axi0_ps_awqos(pspmc_0_IF_PS_CPM_m_axi0_ps_awqos),
        .m_axi0_ps_awready(pspmc_0_IF_PS_CPM_m_axi0_ps_awready),
        .m_axi0_ps_awregion(pspmc_0_IF_PS_CPM_m_axi0_ps_awregion),
        .m_axi0_ps_awsize(pspmc_0_IF_PS_CPM_m_axi0_ps_awsize),
        .m_axi0_ps_awuser(pspmc_0_IF_PS_CPM_m_axi0_ps_awuser),
        .m_axi0_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid),
        .m_axi0_ps_bid(pspmc_0_IF_PS_CPM_m_axi0_ps_bid),
        .m_axi0_ps_bready(pspmc_0_IF_PS_CPM_m_axi0_ps_bready),
        .m_axi0_ps_bresp(pspmc_0_IF_PS_CPM_m_axi0_ps_bresp),
        .m_axi0_ps_buser(pspmc_0_IF_PS_CPM_m_axi0_ps_buser),
        .m_axi0_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid),
        .m_axi0_ps_rdata(pspmc_0_IF_PS_CPM_m_axi0_ps_rdata),
        .m_axi0_ps_rid(pspmc_0_IF_PS_CPM_m_axi0_ps_rid),
        .m_axi0_ps_rlast(pspmc_0_IF_PS_CPM_m_axi0_ps_rlast),
        .m_axi0_ps_rready(pspmc_0_IF_PS_CPM_m_axi0_ps_rready),
        .m_axi0_ps_rresp(pspmc_0_IF_PS_CPM_m_axi0_ps_rresp),
        .m_axi0_ps_ruser(pspmc_0_IF_PS_CPM_m_axi0_ps_ruser),
        .m_axi0_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid),
        .m_axi0_ps_wdata(pspmc_0_IF_PS_CPM_m_axi0_ps_wdata),
        .m_axi0_ps_wid(pspmc_0_IF_PS_CPM_m_axi0_ps_wid),
        .m_axi0_ps_wlast(pspmc_0_IF_PS_CPM_m_axi0_ps_wlast),
        .m_axi0_ps_wready(pspmc_0_IF_PS_CPM_m_axi0_ps_wready),
        .m_axi0_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb),
        .m_axi0_ps_wuser(pspmc_0_IF_PS_CPM_m_axi0_ps_wuser),
        .m_axi0_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid),
        .m_axi1_ps_araddr(pspmc_0_IF_PS_CPM_m_axi1_ps_araddr),
        .m_axi1_ps_arburst(pspmc_0_IF_PS_CPM_m_axi1_ps_arburst),
        .m_axi1_ps_arcache(pspmc_0_IF_PS_CPM_m_axi1_ps_arcache),
        .m_axi1_ps_arid(pspmc_0_IF_PS_CPM_m_axi1_ps_arid),
        .m_axi1_ps_arlen(pspmc_0_IF_PS_CPM_m_axi1_ps_arlen),
        .m_axi1_ps_arlock(pspmc_0_IF_PS_CPM_m_axi1_ps_arlock),
        .m_axi1_ps_arprot(pspmc_0_IF_PS_CPM_m_axi1_ps_arprot),
        .m_axi1_ps_arqos(pspmc_0_IF_PS_CPM_m_axi1_ps_arqos),
        .m_axi1_ps_arready(pspmc_0_IF_PS_CPM_m_axi1_ps_arready),
        .m_axi1_ps_arregion(pspmc_0_IF_PS_CPM_m_axi1_ps_arregion),
        .m_axi1_ps_arsize(pspmc_0_IF_PS_CPM_m_axi1_ps_arsize),
        .m_axi1_ps_aruser(pspmc_0_IF_PS_CPM_m_axi1_ps_aruser),
        .m_axi1_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid),
        .m_axi1_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr),
        .m_axi1_ps_awburst(pspmc_0_IF_PS_CPM_m_axi1_ps_awburst),
        .m_axi1_ps_awcache(pspmc_0_IF_PS_CPM_m_axi1_ps_awcache),
        .m_axi1_ps_awid(pspmc_0_IF_PS_CPM_m_axi1_ps_awid),
        .m_axi1_ps_awlen(pspmc_0_IF_PS_CPM_m_axi1_ps_awlen),
        .m_axi1_ps_awlock(pspmc_0_IF_PS_CPM_m_axi1_ps_awlock),
        .m_axi1_ps_awprot(pspmc_0_IF_PS_CPM_m_axi1_ps_awprot),
        .m_axi1_ps_awqos(pspmc_0_IF_PS_CPM_m_axi1_ps_awqos),
        .m_axi1_ps_awready(pspmc_0_IF_PS_CPM_m_axi1_ps_awready),
        .m_axi1_ps_awregion(pspmc_0_IF_PS_CPM_m_axi1_ps_awregion),
        .m_axi1_ps_awsize(pspmc_0_IF_PS_CPM_m_axi1_ps_awsize),
        .m_axi1_ps_awuser(pspmc_0_IF_PS_CPM_m_axi1_ps_awuser),
        .m_axi1_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid),
        .m_axi1_ps_bid(pspmc_0_IF_PS_CPM_m_axi1_ps_bid),
        .m_axi1_ps_bready(pspmc_0_IF_PS_CPM_m_axi1_ps_bready),
        .m_axi1_ps_bresp(pspmc_0_IF_PS_CPM_m_axi1_ps_bresp),
        .m_axi1_ps_buser(pspmc_0_IF_PS_CPM_m_axi1_ps_buser),
        .m_axi1_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid),
        .m_axi1_ps_rdata(pspmc_0_IF_PS_CPM_m_axi1_ps_rdata),
        .m_axi1_ps_rid(pspmc_0_IF_PS_CPM_m_axi1_ps_rid),
        .m_axi1_ps_rlast(pspmc_0_IF_PS_CPM_m_axi1_ps_rlast),
        .m_axi1_ps_rready(pspmc_0_IF_PS_CPM_m_axi1_ps_rready),
        .m_axi1_ps_rresp(pspmc_0_IF_PS_CPM_m_axi1_ps_rresp),
        .m_axi1_ps_ruser(pspmc_0_IF_PS_CPM_m_axi1_ps_ruser),
        .m_axi1_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid),
        .m_axi1_ps_wdata(pspmc_0_IF_PS_CPM_m_axi1_ps_wdata),
        .m_axi1_ps_wid(pspmc_0_IF_PS_CPM_m_axi1_ps_wid),
        .m_axi1_ps_wlast(pspmc_0_IF_PS_CPM_m_axi1_ps_wlast),
        .m_axi1_ps_wready(pspmc_0_IF_PS_CPM_m_axi1_ps_wready),
        .m_axi1_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb),
        .m_axi1_ps_wuser(pspmc_0_IF_PS_CPM_m_axi1_ps_wuser),
        .m_axi1_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid),
        .pcie1_gt_rxn(PCIE1_GT_grx_n),
        .pcie1_gt_rxp(PCIE1_GT_grx_p),
        .pcie1_gt_txn(PCIE1_GT_gtx_n),
        .pcie1_gt_txp(PCIE1_GT_gtx_p),
        .perst0n(pspmc_0_IF_PS_CPM_perst0n),
        .perst1n(pspmc_0_IF_PS_CPM_perst1n),
        .phy_ready_frbot(pspmc_0_IF_PS_CPM_phy_ready_frbot),
        .phy_ready_tobot(pspmc_0_IF_PS_CPM_phy_ready_tobot),
        .s_axi_cfg_araddr(pspmc_0_IF_PS_CPM_s_axi_cfg_araddr),
        .s_axi_cfg_arburst(pspmc_0_IF_PS_CPM_s_axi_cfg_arburst),
        .s_axi_cfg_arcache(pspmc_0_IF_PS_CPM_s_axi_cfg_arcache),
        .s_axi_cfg_arid(pspmc_0_IF_PS_CPM_s_axi_cfg_arid),
        .s_axi_cfg_arlen(pspmc_0_IF_PS_CPM_s_axi_cfg_arlen),
        .s_axi_cfg_arlock(pspmc_0_IF_PS_CPM_s_axi_cfg_arlock),
        .s_axi_cfg_arprot(pspmc_0_IF_PS_CPM_s_axi_cfg_arprot),
        .s_axi_cfg_arqos(pspmc_0_IF_PS_CPM_s_axi_cfg_arqos),
        .s_axi_cfg_arready(pspmc_0_IF_PS_CPM_s_axi_cfg_arready),
        .s_axi_cfg_arregion(pspmc_0_IF_PS_CPM_s_axi_cfg_arregion),
        .s_axi_cfg_arsize(pspmc_0_IF_PS_CPM_s_axi_cfg_arsize),
        .s_axi_cfg_aruser(pspmc_0_IF_PS_CPM_s_axi_cfg_aruser),
        .s_axi_cfg_arvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid),
        .s_axi_cfg_awaddr(pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr),
        .s_axi_cfg_awburst(pspmc_0_IF_PS_CPM_s_axi_cfg_awburst),
        .s_axi_cfg_awcache(pspmc_0_IF_PS_CPM_s_axi_cfg_awcache),
        .s_axi_cfg_awid(pspmc_0_IF_PS_CPM_s_axi_cfg_awid),
        .s_axi_cfg_awlen(pspmc_0_IF_PS_CPM_s_axi_cfg_awlen),
        .s_axi_cfg_awlock(pspmc_0_IF_PS_CPM_s_axi_cfg_awlock),
        .s_axi_cfg_awprot(pspmc_0_IF_PS_CPM_s_axi_cfg_awprot),
        .s_axi_cfg_awqos(pspmc_0_IF_PS_CPM_s_axi_cfg_awqos),
        .s_axi_cfg_awready(pspmc_0_IF_PS_CPM_s_axi_cfg_awready),
        .s_axi_cfg_awregion(pspmc_0_IF_PS_CPM_s_axi_cfg_awregion),
        .s_axi_cfg_awsize(pspmc_0_IF_PS_CPM_s_axi_cfg_awsize),
        .s_axi_cfg_awuser(pspmc_0_IF_PS_CPM_s_axi_cfg_awuser),
        .s_axi_cfg_awvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid),
        .s_axi_cfg_bid(pspmc_0_IF_PS_CPM_s_axi_cfg_bid),
        .s_axi_cfg_bready(pspmc_0_IF_PS_CPM_s_axi_cfg_bready),
        .s_axi_cfg_bresp(pspmc_0_IF_PS_CPM_s_axi_cfg_bresp),
        .s_axi_cfg_buser(pspmc_0_IF_PS_CPM_s_axi_cfg_buser),
        .s_axi_cfg_bvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid),
        .s_axi_cfg_rdata(pspmc_0_IF_PS_CPM_s_axi_cfg_rdata),
        .s_axi_cfg_rid(pspmc_0_IF_PS_CPM_s_axi_cfg_rid),
        .s_axi_cfg_rlast(pspmc_0_IF_PS_CPM_s_axi_cfg_rlast),
        .s_axi_cfg_rready(pspmc_0_IF_PS_CPM_s_axi_cfg_rready),
        .s_axi_cfg_rresp(pspmc_0_IF_PS_CPM_s_axi_cfg_rresp),
        .s_axi_cfg_ruser(pspmc_0_IF_PS_CPM_s_axi_cfg_ruser),
        .s_axi_cfg_rvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid),
        .s_axi_cfg_wdata(pspmc_0_IF_PS_CPM_s_axi_cfg_wdata),
        .s_axi_cfg_wid(pspmc_0_IF_PS_CPM_s_axi_cfg_wid),
        .s_axi_cfg_wlast(pspmc_0_IF_PS_CPM_s_axi_cfg_wlast),
        .s_axi_cfg_wready(pspmc_0_IF_PS_CPM_s_axi_cfg_wready),
        .s_axi_cfg_wstrb(pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb),
        .s_axi_cfg_wuser(pspmc_0_IF_PS_CPM_s_axi_cfg_wuser),
        .s_axi_cfg_wvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid),
        .s_axi_pcie_araddr(pspmc_0_IF_PS_CPM_s_axi_pcie_araddr),
        .s_axi_pcie_arburst(pspmc_0_IF_PS_CPM_s_axi_pcie_arburst),
        .s_axi_pcie_arcache(pspmc_0_IF_PS_CPM_s_axi_pcie_arcache),
        .s_axi_pcie_arid(pspmc_0_IF_PS_CPM_s_axi_pcie_arid),
        .s_axi_pcie_arlen(pspmc_0_IF_PS_CPM_s_axi_pcie_arlen),
        .s_axi_pcie_arlock(pspmc_0_IF_PS_CPM_s_axi_pcie_arlock),
        .s_axi_pcie_arprot(pspmc_0_IF_PS_CPM_s_axi_pcie_arprot),
        .s_axi_pcie_arqos(pspmc_0_IF_PS_CPM_s_axi_pcie_arqos),
        .s_axi_pcie_arready(pspmc_0_IF_PS_CPM_s_axi_pcie_arready),
        .s_axi_pcie_arregion(pspmc_0_IF_PS_CPM_s_axi_pcie_arregion),
        .s_axi_pcie_arsize(pspmc_0_IF_PS_CPM_s_axi_pcie_arsize),
        .s_axi_pcie_aruser(pspmc_0_IF_PS_CPM_s_axi_pcie_aruser),
        .s_axi_pcie_arvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid),
        .s_axi_pcie_awaddr(pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr),
        .s_axi_pcie_awburst(pspmc_0_IF_PS_CPM_s_axi_pcie_awburst),
        .s_axi_pcie_awcache(pspmc_0_IF_PS_CPM_s_axi_pcie_awcache),
        .s_axi_pcie_awid(pspmc_0_IF_PS_CPM_s_axi_pcie_awid),
        .s_axi_pcie_awlen(pspmc_0_IF_PS_CPM_s_axi_pcie_awlen),
        .s_axi_pcie_awlock(pspmc_0_IF_PS_CPM_s_axi_pcie_awlock),
        .s_axi_pcie_awprot(pspmc_0_IF_PS_CPM_s_axi_pcie_awprot),
        .s_axi_pcie_awqos(pspmc_0_IF_PS_CPM_s_axi_pcie_awqos),
        .s_axi_pcie_awready(pspmc_0_IF_PS_CPM_s_axi_pcie_awready),
        .s_axi_pcie_awregion(pspmc_0_IF_PS_CPM_s_axi_pcie_awregion),
        .s_axi_pcie_awsize(pspmc_0_IF_PS_CPM_s_axi_pcie_awsize),
        .s_axi_pcie_awuser(pspmc_0_IF_PS_CPM_s_axi_pcie_awuser),
        .s_axi_pcie_awvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid),
        .s_axi_pcie_bid(pspmc_0_IF_PS_CPM_s_axi_pcie_bid),
        .s_axi_pcie_bready(pspmc_0_IF_PS_CPM_s_axi_pcie_bready),
        .s_axi_pcie_bresp(pspmc_0_IF_PS_CPM_s_axi_pcie_bresp),
        .s_axi_pcie_buser(pspmc_0_IF_PS_CPM_s_axi_pcie_buser),
        .s_axi_pcie_bvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid),
        .s_axi_pcie_rdata(pspmc_0_IF_PS_CPM_s_axi_pcie_rdata),
        .s_axi_pcie_rid(pspmc_0_IF_PS_CPM_s_axi_pcie_rid),
        .s_axi_pcie_rlast(pspmc_0_IF_PS_CPM_s_axi_pcie_rlast),
        .s_axi_pcie_rready(pspmc_0_IF_PS_CPM_s_axi_pcie_rready),
        .s_axi_pcie_rresp(pspmc_0_IF_PS_CPM_s_axi_pcie_rresp),
        .s_axi_pcie_ruser(pspmc_0_IF_PS_CPM_s_axi_pcie_ruser),
        .s_axi_pcie_rvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid),
        .s_axi_pcie_wdata(pspmc_0_IF_PS_CPM_s_axi_pcie_wdata),
        .s_axi_pcie_wid(pspmc_0_IF_PS_CPM_s_axi_pcie_wid),
        .s_axi_pcie_wlast(pspmc_0_IF_PS_CPM_s_axi_pcie_wlast),
        .s_axi_pcie_wready(pspmc_0_IF_PS_CPM_s_axi_pcie_wready),
        .s_axi_pcie_wstrb(pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb),
        .s_axi_pcie_wuser(pspmc_0_IF_PS_CPM_s_axi_pcie_wuser),
        .s_axi_pcie_wvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid),
        .xpipe0_powerdown(pspmc_0_IF_PS_CPM_xpipe0_powerdown),
        .xpipe0_rx_charisk(pspmc_0_IF_PS_CPM_xpipe0_rx_charisk),
        .xpipe0_rx_data(pspmc_0_IF_PS_CPM_xpipe0_rx_data),
        .xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid),
        .xpipe0_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle),
        .xpipe0_rx_polarity(pspmc_0_IF_PS_CPM_xpipe0_rx_polarity),
        .xpipe0_rx_startblock(pspmc_0_IF_PS_CPM_xpipe0_rx_startblock),
        .xpipe0_rx_status(pspmc_0_IF_PS_CPM_xpipe0_rx_status),
        .xpipe0_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader),
        .xpipe0_rx_termination(pspmc_0_IF_PS_CPM_xpipe0_rx_termination),
        .xpipe0_rx_valid(pspmc_0_IF_PS_CPM_xpipe0_rx_valid),
        .xpipe0_tx_charisk(pspmc_0_IF_PS_CPM_xpipe0_tx_charisk),
        .xpipe0_tx_compliance(pspmc_0_IF_PS_CPM_xpipe0_tx_compliance),
        .xpipe0_tx_data(pspmc_0_IF_PS_CPM_xpipe0_tx_data),
        .xpipe0_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid),
        .xpipe0_tx_deemph(pspmc_0_IF_PS_CPM_xpipe0_tx_deemph),
        .xpipe0_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback),
        .xpipe0_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle),
        .xpipe0_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor),
        .xpipe0_tx_margin(pspmc_0_IF_PS_CPM_xpipe0_tx_margin),
        .xpipe0_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor),
        .xpipe0_tx_precursor(pspmc_0_IF_PS_CPM_xpipe0_tx_precursor),
        .xpipe0_tx_startblock(pspmc_0_IF_PS_CPM_xpipe0_tx_startblock),
        .xpipe0_tx_swing(pspmc_0_IF_PS_CPM_xpipe0_tx_swing),
        .xpipe0_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader),
        .xpipe10_phystatus(pspmc_0_IF_PS_CPM_xpipe10_phystatus),
        .xpipe10_powerdown(pspmc_0_IF_PS_CPM_xpipe10_powerdown),
        .xpipe10_rx_charisk(pspmc_0_IF_PS_CPM_xpipe10_rx_charisk),
        .xpipe10_rx_data(pspmc_0_IF_PS_CPM_xpipe10_rx_data),
        .xpipe10_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid),
        .xpipe10_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle),
        .xpipe10_rx_polarity(pspmc_0_IF_PS_CPM_xpipe10_rx_polarity),
        .xpipe10_rx_startblock(pspmc_0_IF_PS_CPM_xpipe10_rx_startblock),
        .xpipe10_rx_status(pspmc_0_IF_PS_CPM_xpipe10_rx_status),
        .xpipe10_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader),
        .xpipe10_rx_termination(pspmc_0_IF_PS_CPM_xpipe10_rx_termination),
        .xpipe10_rx_valid(pspmc_0_IF_PS_CPM_xpipe10_rx_valid),
        .xpipe10_tx_charisk(pspmc_0_IF_PS_CPM_xpipe10_tx_charisk),
        .xpipe10_tx_compliance(pspmc_0_IF_PS_CPM_xpipe10_tx_compliance),
        .xpipe10_tx_data(pspmc_0_IF_PS_CPM_xpipe10_tx_data),
        .xpipe10_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid),
        .xpipe10_tx_deemph(pspmc_0_IF_PS_CPM_xpipe10_tx_deemph),
        .xpipe10_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback),
        .xpipe10_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle),
        .xpipe10_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor),
        .xpipe10_tx_margin(pspmc_0_IF_PS_CPM_xpipe10_tx_margin),
        .xpipe10_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor),
        .xpipe10_tx_precursor(pspmc_0_IF_PS_CPM_xpipe10_tx_precursor),
        .xpipe10_tx_startblock(pspmc_0_IF_PS_CPM_xpipe10_tx_startblock),
        .xpipe10_tx_swing(pspmc_0_IF_PS_CPM_xpipe10_tx_swing),
        .xpipe10_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader),
        .xpipe11_phystatus(pspmc_0_IF_PS_CPM_xpipe11_phystatus),
        .xpipe11_powerdown(pspmc_0_IF_PS_CPM_xpipe11_powerdown),
        .xpipe11_rx_charisk(pspmc_0_IF_PS_CPM_xpipe11_rx_charisk),
        .xpipe11_rx_data(pspmc_0_IF_PS_CPM_xpipe11_rx_data),
        .xpipe11_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid),
        .xpipe11_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle),
        .xpipe11_rx_polarity(pspmc_0_IF_PS_CPM_xpipe11_rx_polarity),
        .xpipe11_rx_startblock(pspmc_0_IF_PS_CPM_xpipe11_rx_startblock),
        .xpipe11_rx_status(pspmc_0_IF_PS_CPM_xpipe11_rx_status),
        .xpipe11_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader),
        .xpipe11_rx_termination(pspmc_0_IF_PS_CPM_xpipe11_rx_termination),
        .xpipe11_rx_valid(pspmc_0_IF_PS_CPM_xpipe11_rx_valid),
        .xpipe11_tx_charisk(pspmc_0_IF_PS_CPM_xpipe11_tx_charisk),
        .xpipe11_tx_compliance(pspmc_0_IF_PS_CPM_xpipe11_tx_compliance),
        .xpipe11_tx_data(pspmc_0_IF_PS_CPM_xpipe11_tx_data),
        .xpipe11_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid),
        .xpipe11_tx_deemph(pspmc_0_IF_PS_CPM_xpipe11_tx_deemph),
        .xpipe11_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback),
        .xpipe11_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle),
        .xpipe11_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor),
        .xpipe11_tx_margin(pspmc_0_IF_PS_CPM_xpipe11_tx_margin),
        .xpipe11_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor),
        .xpipe11_tx_precursor(pspmc_0_IF_PS_CPM_xpipe11_tx_precursor),
        .xpipe11_tx_startblock(pspmc_0_IF_PS_CPM_xpipe11_tx_startblock),
        .xpipe11_tx_swing(pspmc_0_IF_PS_CPM_xpipe11_tx_swing),
        .xpipe11_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader),
        .xpipe12_phystatus(pspmc_0_IF_PS_CPM_xpipe12_phystatus),
        .xpipe12_powerdown(pspmc_0_IF_PS_CPM_xpipe12_powerdown),
        .xpipe12_rx_charisk(pspmc_0_IF_PS_CPM_xpipe12_rx_charisk),
        .xpipe12_rx_data(pspmc_0_IF_PS_CPM_xpipe12_rx_data),
        .xpipe12_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid),
        .xpipe12_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle),
        .xpipe12_rx_polarity(pspmc_0_IF_PS_CPM_xpipe12_rx_polarity),
        .xpipe12_rx_startblock(pspmc_0_IF_PS_CPM_xpipe12_rx_startblock),
        .xpipe12_rx_status(pspmc_0_IF_PS_CPM_xpipe12_rx_status),
        .xpipe12_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader),
        .xpipe12_rx_termination(pspmc_0_IF_PS_CPM_xpipe12_rx_termination),
        .xpipe12_rx_valid(pspmc_0_IF_PS_CPM_xpipe12_rx_valid),
        .xpipe12_tx_charisk(pspmc_0_IF_PS_CPM_xpipe12_tx_charisk),
        .xpipe12_tx_compliance(pspmc_0_IF_PS_CPM_xpipe12_tx_compliance),
        .xpipe12_tx_data(pspmc_0_IF_PS_CPM_xpipe12_tx_data),
        .xpipe12_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid),
        .xpipe12_tx_deemph(pspmc_0_IF_PS_CPM_xpipe12_tx_deemph),
        .xpipe12_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback),
        .xpipe12_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle),
        .xpipe12_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor),
        .xpipe12_tx_margin(pspmc_0_IF_PS_CPM_xpipe12_tx_margin),
        .xpipe12_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor),
        .xpipe12_tx_precursor(pspmc_0_IF_PS_CPM_xpipe12_tx_precursor),
        .xpipe12_tx_startblock(pspmc_0_IF_PS_CPM_xpipe12_tx_startblock),
        .xpipe12_tx_swing(pspmc_0_IF_PS_CPM_xpipe12_tx_swing),
        .xpipe12_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader),
        .xpipe13_phystatus(pspmc_0_IF_PS_CPM_xpipe13_phystatus),
        .xpipe13_powerdown(pspmc_0_IF_PS_CPM_xpipe13_powerdown),
        .xpipe13_rx_charisk(pspmc_0_IF_PS_CPM_xpipe13_rx_charisk),
        .xpipe13_rx_data(pspmc_0_IF_PS_CPM_xpipe13_rx_data),
        .xpipe13_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid),
        .xpipe13_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle),
        .xpipe13_rx_polarity(pspmc_0_IF_PS_CPM_xpipe13_rx_polarity),
        .xpipe13_rx_startblock(pspmc_0_IF_PS_CPM_xpipe13_rx_startblock),
        .xpipe13_rx_status(pspmc_0_IF_PS_CPM_xpipe13_rx_status),
        .xpipe13_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader),
        .xpipe13_rx_termination(pspmc_0_IF_PS_CPM_xpipe13_rx_termination),
        .xpipe13_rx_valid(pspmc_0_IF_PS_CPM_xpipe13_rx_valid),
        .xpipe13_tx_charisk(pspmc_0_IF_PS_CPM_xpipe13_tx_charisk),
        .xpipe13_tx_compliance(pspmc_0_IF_PS_CPM_xpipe13_tx_compliance),
        .xpipe13_tx_data(pspmc_0_IF_PS_CPM_xpipe13_tx_data),
        .xpipe13_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid),
        .xpipe13_tx_deemph(pspmc_0_IF_PS_CPM_xpipe13_tx_deemph),
        .xpipe13_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback),
        .xpipe13_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle),
        .xpipe13_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor),
        .xpipe13_tx_margin(pspmc_0_IF_PS_CPM_xpipe13_tx_margin),
        .xpipe13_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor),
        .xpipe13_tx_precursor(pspmc_0_IF_PS_CPM_xpipe13_tx_precursor),
        .xpipe13_tx_startblock(pspmc_0_IF_PS_CPM_xpipe13_tx_startblock),
        .xpipe13_tx_swing(pspmc_0_IF_PS_CPM_xpipe13_tx_swing),
        .xpipe13_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader),
        .xpipe14_phystatus(pspmc_0_IF_PS_CPM_xpipe14_phystatus),
        .xpipe14_powerdown(pspmc_0_IF_PS_CPM_xpipe14_powerdown),
        .xpipe14_rx_charisk(pspmc_0_IF_PS_CPM_xpipe14_rx_charisk),
        .xpipe14_rx_data(pspmc_0_IF_PS_CPM_xpipe14_rx_data),
        .xpipe14_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid),
        .xpipe14_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle),
        .xpipe14_rx_polarity(pspmc_0_IF_PS_CPM_xpipe14_rx_polarity),
        .xpipe14_rx_startblock(pspmc_0_IF_PS_CPM_xpipe14_rx_startblock),
        .xpipe14_rx_status(pspmc_0_IF_PS_CPM_xpipe14_rx_status),
        .xpipe14_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader),
        .xpipe14_rx_termination(pspmc_0_IF_PS_CPM_xpipe14_rx_termination),
        .xpipe14_rx_valid(pspmc_0_IF_PS_CPM_xpipe14_rx_valid),
        .xpipe14_tx_charisk(pspmc_0_IF_PS_CPM_xpipe14_tx_charisk),
        .xpipe14_tx_compliance(pspmc_0_IF_PS_CPM_xpipe14_tx_compliance),
        .xpipe14_tx_data(pspmc_0_IF_PS_CPM_xpipe14_tx_data),
        .xpipe14_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid),
        .xpipe14_tx_deemph(pspmc_0_IF_PS_CPM_xpipe14_tx_deemph),
        .xpipe14_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback),
        .xpipe14_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle),
        .xpipe14_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor),
        .xpipe14_tx_margin(pspmc_0_IF_PS_CPM_xpipe14_tx_margin),
        .xpipe14_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor),
        .xpipe14_tx_precursor(pspmc_0_IF_PS_CPM_xpipe14_tx_precursor),
        .xpipe14_tx_startblock(pspmc_0_IF_PS_CPM_xpipe14_tx_startblock),
        .xpipe14_tx_swing(pspmc_0_IF_PS_CPM_xpipe14_tx_swing),
        .xpipe14_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader),
        .xpipe15_phystatus(pspmc_0_IF_PS_CPM_xpipe15_phystatus),
        .xpipe15_powerdown(pspmc_0_IF_PS_CPM_xpipe15_powerdown),
        .xpipe15_rx_charisk(pspmc_0_IF_PS_CPM_xpipe15_rx_charisk),
        .xpipe15_rx_data(pspmc_0_IF_PS_CPM_xpipe15_rx_data),
        .xpipe15_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid),
        .xpipe15_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle),
        .xpipe15_rx_polarity(pspmc_0_IF_PS_CPM_xpipe15_rx_polarity),
        .xpipe15_rx_startblock(pspmc_0_IF_PS_CPM_xpipe15_rx_startblock),
        .xpipe15_rx_status(pspmc_0_IF_PS_CPM_xpipe15_rx_status),
        .xpipe15_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader),
        .xpipe15_rx_termination(pspmc_0_IF_PS_CPM_xpipe15_rx_termination),
        .xpipe15_rx_valid(pspmc_0_IF_PS_CPM_xpipe15_rx_valid),
        .xpipe15_tx_charisk(pspmc_0_IF_PS_CPM_xpipe15_tx_charisk),
        .xpipe15_tx_compliance(pspmc_0_IF_PS_CPM_xpipe15_tx_compliance),
        .xpipe15_tx_data(pspmc_0_IF_PS_CPM_xpipe15_tx_data),
        .xpipe15_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid),
        .xpipe15_tx_deemph(pspmc_0_IF_PS_CPM_xpipe15_tx_deemph),
        .xpipe15_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback),
        .xpipe15_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle),
        .xpipe15_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor),
        .xpipe15_tx_margin(pspmc_0_IF_PS_CPM_xpipe15_tx_margin),
        .xpipe15_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor),
        .xpipe15_tx_precursor(pspmc_0_IF_PS_CPM_xpipe15_tx_precursor),
        .xpipe15_tx_startblock(pspmc_0_IF_PS_CPM_xpipe15_tx_startblock),
        .xpipe15_tx_swing(pspmc_0_IF_PS_CPM_xpipe15_tx_swing),
        .xpipe15_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader),
        .xpipe1_phystatus(pspmc_0_IF_PS_CPM_xpipe1_phystatus),
        .xpipe1_powerdown(pspmc_0_IF_PS_CPM_xpipe1_powerdown),
        .xpipe1_rx_charisk(pspmc_0_IF_PS_CPM_xpipe1_rx_charisk),
        .xpipe1_rx_data(pspmc_0_IF_PS_CPM_xpipe1_rx_data),
        .xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid),
        .xpipe1_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle),
        .xpipe1_rx_polarity(pspmc_0_IF_PS_CPM_xpipe1_rx_polarity),
        .xpipe1_rx_startblock(pspmc_0_IF_PS_CPM_xpipe1_rx_startblock),
        .xpipe1_rx_status(pspmc_0_IF_PS_CPM_xpipe1_rx_status),
        .xpipe1_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader),
        .xpipe1_rx_termination(pspmc_0_IF_PS_CPM_xpipe1_rx_termination),
        .xpipe1_rx_valid(pspmc_0_IF_PS_CPM_xpipe1_rx_valid),
        .xpipe1_tx_charisk(pspmc_0_IF_PS_CPM_xpipe1_tx_charisk),
        .xpipe1_tx_compliance(pspmc_0_IF_PS_CPM_xpipe1_tx_compliance),
        .xpipe1_tx_data(pspmc_0_IF_PS_CPM_xpipe1_tx_data),
        .xpipe1_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid),
        .xpipe1_tx_deemph(pspmc_0_IF_PS_CPM_xpipe1_tx_deemph),
        .xpipe1_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback),
        .xpipe1_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle),
        .xpipe1_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor),
        .xpipe1_tx_margin(pspmc_0_IF_PS_CPM_xpipe1_tx_margin),
        .xpipe1_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor),
        .xpipe1_tx_precursor(pspmc_0_IF_PS_CPM_xpipe1_tx_precursor),
        .xpipe1_tx_startblock(pspmc_0_IF_PS_CPM_xpipe1_tx_startblock),
        .xpipe1_tx_swing(pspmc_0_IF_PS_CPM_xpipe1_tx_swing),
        .xpipe1_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader),
        .xpipe2_phystatus(pspmc_0_IF_PS_CPM_xpipe2_phystatus),
        .xpipe2_powerdown(pspmc_0_IF_PS_CPM_xpipe2_powerdown),
        .xpipe2_rx_charisk(pspmc_0_IF_PS_CPM_xpipe2_rx_charisk),
        .xpipe2_rx_data(pspmc_0_IF_PS_CPM_xpipe2_rx_data),
        .xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid),
        .xpipe2_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle),
        .xpipe2_rx_polarity(pspmc_0_IF_PS_CPM_xpipe2_rx_polarity),
        .xpipe2_rx_startblock(pspmc_0_IF_PS_CPM_xpipe2_rx_startblock),
        .xpipe2_rx_status(pspmc_0_IF_PS_CPM_xpipe2_rx_status),
        .xpipe2_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader),
        .xpipe2_rx_termination(pspmc_0_IF_PS_CPM_xpipe2_rx_termination),
        .xpipe2_rx_valid(pspmc_0_IF_PS_CPM_xpipe2_rx_valid),
        .xpipe2_tx_charisk(pspmc_0_IF_PS_CPM_xpipe2_tx_charisk),
        .xpipe2_tx_compliance(pspmc_0_IF_PS_CPM_xpipe2_tx_compliance),
        .xpipe2_tx_data(pspmc_0_IF_PS_CPM_xpipe2_tx_data),
        .xpipe2_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid),
        .xpipe2_tx_deemph(pspmc_0_IF_PS_CPM_xpipe2_tx_deemph),
        .xpipe2_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback),
        .xpipe2_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle),
        .xpipe2_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor),
        .xpipe2_tx_margin(pspmc_0_IF_PS_CPM_xpipe2_tx_margin),
        .xpipe2_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor),
        .xpipe2_tx_precursor(pspmc_0_IF_PS_CPM_xpipe2_tx_precursor),
        .xpipe2_tx_startblock(pspmc_0_IF_PS_CPM_xpipe2_tx_startblock),
        .xpipe2_tx_swing(pspmc_0_IF_PS_CPM_xpipe2_tx_swing),
        .xpipe2_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader),
        .xpipe3_phystatus(pspmc_0_IF_PS_CPM_xpipe3_phystatus),
        .xpipe3_powerdown(pspmc_0_IF_PS_CPM_xpipe3_powerdown),
        .xpipe3_rx_charisk(pspmc_0_IF_PS_CPM_xpipe3_rx_charisk),
        .xpipe3_rx_data(pspmc_0_IF_PS_CPM_xpipe3_rx_data),
        .xpipe3_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid),
        .xpipe3_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle),
        .xpipe3_rx_polarity(pspmc_0_IF_PS_CPM_xpipe3_rx_polarity),
        .xpipe3_rx_startblock(pspmc_0_IF_PS_CPM_xpipe3_rx_startblock),
        .xpipe3_rx_status(pspmc_0_IF_PS_CPM_xpipe3_rx_status),
        .xpipe3_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader),
        .xpipe3_rx_termination(pspmc_0_IF_PS_CPM_xpipe3_rx_termination),
        .xpipe3_rx_valid(pspmc_0_IF_PS_CPM_xpipe3_rx_valid),
        .xpipe3_tx_charisk(pspmc_0_IF_PS_CPM_xpipe3_tx_charisk),
        .xpipe3_tx_compliance(pspmc_0_IF_PS_CPM_xpipe3_tx_compliance),
        .xpipe3_tx_data(pspmc_0_IF_PS_CPM_xpipe3_tx_data),
        .xpipe3_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid),
        .xpipe3_tx_deemph(pspmc_0_IF_PS_CPM_xpipe3_tx_deemph),
        .xpipe3_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback),
        .xpipe3_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle),
        .xpipe3_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor),
        .xpipe3_tx_margin(pspmc_0_IF_PS_CPM_xpipe3_tx_margin),
        .xpipe3_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor),
        .xpipe3_tx_precursor(pspmc_0_IF_PS_CPM_xpipe3_tx_precursor),
        .xpipe3_tx_startblock(pspmc_0_IF_PS_CPM_xpipe3_tx_startblock),
        .xpipe3_tx_swing(pspmc_0_IF_PS_CPM_xpipe3_tx_swing),
        .xpipe3_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader),
        .xpipe4_phystatus(pspmc_0_IF_PS_CPM_xpipe4_phystatus),
        .xpipe4_powerdown(pspmc_0_IF_PS_CPM_xpipe4_powerdown),
        .xpipe4_rx_charisk(pspmc_0_IF_PS_CPM_xpipe4_rx_charisk),
        .xpipe4_rx_data(pspmc_0_IF_PS_CPM_xpipe4_rx_data),
        .xpipe4_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid),
        .xpipe4_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle),
        .xpipe4_rx_polarity(pspmc_0_IF_PS_CPM_xpipe4_rx_polarity),
        .xpipe4_rx_startblock(pspmc_0_IF_PS_CPM_xpipe4_rx_startblock),
        .xpipe4_rx_status(pspmc_0_IF_PS_CPM_xpipe4_rx_status),
        .xpipe4_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader),
        .xpipe4_rx_termination(pspmc_0_IF_PS_CPM_xpipe4_rx_termination),
        .xpipe4_rx_valid(pspmc_0_IF_PS_CPM_xpipe4_rx_valid),
        .xpipe4_tx_charisk(pspmc_0_IF_PS_CPM_xpipe4_tx_charisk),
        .xpipe4_tx_compliance(pspmc_0_IF_PS_CPM_xpipe4_tx_compliance),
        .xpipe4_tx_data(pspmc_0_IF_PS_CPM_xpipe4_tx_data),
        .xpipe4_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid),
        .xpipe4_tx_deemph(pspmc_0_IF_PS_CPM_xpipe4_tx_deemph),
        .xpipe4_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback),
        .xpipe4_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle),
        .xpipe4_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor),
        .xpipe4_tx_margin(pspmc_0_IF_PS_CPM_xpipe4_tx_margin),
        .xpipe4_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor),
        .xpipe4_tx_precursor(pspmc_0_IF_PS_CPM_xpipe4_tx_precursor),
        .xpipe4_tx_startblock(pspmc_0_IF_PS_CPM_xpipe4_tx_startblock),
        .xpipe4_tx_swing(pspmc_0_IF_PS_CPM_xpipe4_tx_swing),
        .xpipe4_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader),
        .xpipe5_phystatus(pspmc_0_IF_PS_CPM_xpipe5_phystatus),
        .xpipe5_powerdown(pspmc_0_IF_PS_CPM_xpipe5_powerdown),
        .xpipe5_rx_charisk(pspmc_0_IF_PS_CPM_xpipe5_rx_charisk),
        .xpipe5_rx_data(pspmc_0_IF_PS_CPM_xpipe5_rx_data),
        .xpipe5_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid),
        .xpipe5_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle),
        .xpipe5_rx_polarity(pspmc_0_IF_PS_CPM_xpipe5_rx_polarity),
        .xpipe5_rx_startblock(pspmc_0_IF_PS_CPM_xpipe5_rx_startblock),
        .xpipe5_rx_status(pspmc_0_IF_PS_CPM_xpipe5_rx_status),
        .xpipe5_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader),
        .xpipe5_rx_termination(pspmc_0_IF_PS_CPM_xpipe5_rx_termination),
        .xpipe5_rx_valid(pspmc_0_IF_PS_CPM_xpipe5_rx_valid),
        .xpipe5_tx_charisk(pspmc_0_IF_PS_CPM_xpipe5_tx_charisk),
        .xpipe5_tx_compliance(pspmc_0_IF_PS_CPM_xpipe5_tx_compliance),
        .xpipe5_tx_data(pspmc_0_IF_PS_CPM_xpipe5_tx_data),
        .xpipe5_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid),
        .xpipe5_tx_deemph(pspmc_0_IF_PS_CPM_xpipe5_tx_deemph),
        .xpipe5_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback),
        .xpipe5_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle),
        .xpipe5_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor),
        .xpipe5_tx_margin(pspmc_0_IF_PS_CPM_xpipe5_tx_margin),
        .xpipe5_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor),
        .xpipe5_tx_precursor(pspmc_0_IF_PS_CPM_xpipe5_tx_precursor),
        .xpipe5_tx_startblock(pspmc_0_IF_PS_CPM_xpipe5_tx_startblock),
        .xpipe5_tx_swing(pspmc_0_IF_PS_CPM_xpipe5_tx_swing),
        .xpipe5_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader),
        .xpipe6_phystatus(pspmc_0_IF_PS_CPM_xpipe6_phystatus),
        .xpipe6_powerdown(pspmc_0_IF_PS_CPM_xpipe6_powerdown),
        .xpipe6_rx_charisk(pspmc_0_IF_PS_CPM_xpipe6_rx_charisk),
        .xpipe6_rx_data(pspmc_0_IF_PS_CPM_xpipe6_rx_data),
        .xpipe6_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid),
        .xpipe6_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle),
        .xpipe6_rx_polarity(pspmc_0_IF_PS_CPM_xpipe6_rx_polarity),
        .xpipe6_rx_startblock(pspmc_0_IF_PS_CPM_xpipe6_rx_startblock),
        .xpipe6_rx_status(pspmc_0_IF_PS_CPM_xpipe6_rx_status),
        .xpipe6_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader),
        .xpipe6_rx_termination(pspmc_0_IF_PS_CPM_xpipe6_rx_termination),
        .xpipe6_rx_valid(pspmc_0_IF_PS_CPM_xpipe6_rx_valid),
        .xpipe6_tx_charisk(pspmc_0_IF_PS_CPM_xpipe6_tx_charisk),
        .xpipe6_tx_compliance(pspmc_0_IF_PS_CPM_xpipe6_tx_compliance),
        .xpipe6_tx_data(pspmc_0_IF_PS_CPM_xpipe6_tx_data),
        .xpipe6_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid),
        .xpipe6_tx_deemph(pspmc_0_IF_PS_CPM_xpipe6_tx_deemph),
        .xpipe6_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback),
        .xpipe6_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle),
        .xpipe6_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor),
        .xpipe6_tx_margin(pspmc_0_IF_PS_CPM_xpipe6_tx_margin),
        .xpipe6_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor),
        .xpipe6_tx_precursor(pspmc_0_IF_PS_CPM_xpipe6_tx_precursor),
        .xpipe6_tx_startblock(pspmc_0_IF_PS_CPM_xpipe6_tx_startblock),
        .xpipe6_tx_swing(pspmc_0_IF_PS_CPM_xpipe6_tx_swing),
        .xpipe6_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader),
        .xpipe7_phystatus(pspmc_0_IF_PS_CPM_xpipe7_phystatus),
        .xpipe7_powerdown(pspmc_0_IF_PS_CPM_xpipe7_powerdown),
        .xpipe7_rx_charisk(pspmc_0_IF_PS_CPM_xpipe7_rx_charisk),
        .xpipe7_rx_data(pspmc_0_IF_PS_CPM_xpipe7_rx_data),
        .xpipe7_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid),
        .xpipe7_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle),
        .xpipe7_rx_polarity(pspmc_0_IF_PS_CPM_xpipe7_rx_polarity),
        .xpipe7_rx_startblock(pspmc_0_IF_PS_CPM_xpipe7_rx_startblock),
        .xpipe7_rx_status(pspmc_0_IF_PS_CPM_xpipe7_rx_status),
        .xpipe7_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader),
        .xpipe7_rx_termination(pspmc_0_IF_PS_CPM_xpipe7_rx_termination),
        .xpipe7_rx_valid(pspmc_0_IF_PS_CPM_xpipe7_rx_valid),
        .xpipe7_tx_charisk(pspmc_0_IF_PS_CPM_xpipe7_tx_charisk),
        .xpipe7_tx_compliance(pspmc_0_IF_PS_CPM_xpipe7_tx_compliance),
        .xpipe7_tx_data(pspmc_0_IF_PS_CPM_xpipe7_tx_data),
        .xpipe7_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid),
        .xpipe7_tx_deemph(pspmc_0_IF_PS_CPM_xpipe7_tx_deemph),
        .xpipe7_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback),
        .xpipe7_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle),
        .xpipe7_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor),
        .xpipe7_tx_margin(pspmc_0_IF_PS_CPM_xpipe7_tx_margin),
        .xpipe7_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor),
        .xpipe7_tx_precursor(pspmc_0_IF_PS_CPM_xpipe7_tx_precursor),
        .xpipe7_tx_startblock(pspmc_0_IF_PS_CPM_xpipe7_tx_startblock),
        .xpipe7_tx_swing(pspmc_0_IF_PS_CPM_xpipe7_tx_swing),
        .xpipe7_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader),
        .xpipe8_phystatus(pspmc_0_IF_PS_CPM_xpipe8_phystatus),
        .xpipe8_powerdown(pspmc_0_IF_PS_CPM_xpipe8_powerdown),
        .xpipe8_rx_charisk(pspmc_0_IF_PS_CPM_xpipe8_rx_charisk),
        .xpipe8_rx_data(pspmc_0_IF_PS_CPM_xpipe8_rx_data),
        .xpipe8_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid),
        .xpipe8_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle),
        .xpipe8_rx_polarity(pspmc_0_IF_PS_CPM_xpipe8_rx_polarity),
        .xpipe8_rx_startblock(pspmc_0_IF_PS_CPM_xpipe8_rx_startblock),
        .xpipe8_rx_status(pspmc_0_IF_PS_CPM_xpipe8_rx_status),
        .xpipe8_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader),
        .xpipe8_rx_termination(pspmc_0_IF_PS_CPM_xpipe8_rx_termination),
        .xpipe8_rx_valid(pspmc_0_IF_PS_CPM_xpipe8_rx_valid),
        .xpipe8_tx_charisk(pspmc_0_IF_PS_CPM_xpipe8_tx_charisk),
        .xpipe8_tx_compliance(pspmc_0_IF_PS_CPM_xpipe8_tx_compliance),
        .xpipe8_tx_data(pspmc_0_IF_PS_CPM_xpipe8_tx_data),
        .xpipe8_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid),
        .xpipe8_tx_deemph(pspmc_0_IF_PS_CPM_xpipe8_tx_deemph),
        .xpipe8_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback),
        .xpipe8_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle),
        .xpipe8_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor),
        .xpipe8_tx_margin(pspmc_0_IF_PS_CPM_xpipe8_tx_margin),
        .xpipe8_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor),
        .xpipe8_tx_precursor(pspmc_0_IF_PS_CPM_xpipe8_tx_precursor),
        .xpipe8_tx_startblock(pspmc_0_IF_PS_CPM_xpipe8_tx_startblock),
        .xpipe8_tx_swing(pspmc_0_IF_PS_CPM_xpipe8_tx_swing),
        .xpipe8_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader),
        .xpipe9_phystatus(pspmc_0_IF_PS_CPM_xpipe9_phystatus),
        .xpipe9_powerdown(pspmc_0_IF_PS_CPM_xpipe9_powerdown),
        .xpipe9_rx_charisk(pspmc_0_IF_PS_CPM_xpipe9_rx_charisk),
        .xpipe9_rx_data(pspmc_0_IF_PS_CPM_xpipe9_rx_data),
        .xpipe9_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid),
        .xpipe9_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle),
        .xpipe9_rx_polarity(pspmc_0_IF_PS_CPM_xpipe9_rx_polarity),
        .xpipe9_rx_startblock(pspmc_0_IF_PS_CPM_xpipe9_rx_startblock),
        .xpipe9_rx_status(pspmc_0_IF_PS_CPM_xpipe9_rx_status),
        .xpipe9_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader),
        .xpipe9_rx_termination(pspmc_0_IF_PS_CPM_xpipe9_rx_termination),
        .xpipe9_rx_valid(pspmc_0_IF_PS_CPM_xpipe9_rx_valid),
        .xpipe9_tx_charisk(pspmc_0_IF_PS_CPM_xpipe9_tx_charisk),
        .xpipe9_tx_compliance(pspmc_0_IF_PS_CPM_xpipe9_tx_compliance),
        .xpipe9_tx_data(pspmc_0_IF_PS_CPM_xpipe9_tx_data),
        .xpipe9_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid),
        .xpipe9_tx_deemph(pspmc_0_IF_PS_CPM_xpipe9_tx_deemph),
        .xpipe9_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback),
        .xpipe9_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle),
        .xpipe9_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor),
        .xpipe9_tx_margin(pspmc_0_IF_PS_CPM_xpipe9_tx_margin),
        .xpipe9_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor),
        .xpipe9_tx_precursor(pspmc_0_IF_PS_CPM_xpipe9_tx_precursor),
        .xpipe9_tx_startblock(pspmc_0_IF_PS_CPM_xpipe9_tx_startblock),
        .xpipe9_tx_swing(pspmc_0_IF_PS_CPM_xpipe9_tx_swing),
        .xpipe9_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader),
        .xpipe_q0_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack),
        .xpipe_q0_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd),
        .xpipe_q0_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum),
        .xpipe_q0_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload),
        .xpipe_q0_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req),
        .xpipe_q0_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack),
        .xpipe_q0_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd),
        .xpipe_q0_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum),
        .xpipe_q0_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload),
        .xpipe_q0_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req),
        .xpipe_q1_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack),
        .xpipe_q1_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd),
        .xpipe_q1_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum),
        .xpipe_q1_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload),
        .xpipe_q1_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req),
        .xpipe_q1_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack),
        .xpipe_q1_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd),
        .xpipe_q1_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum),
        .xpipe_q1_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload),
        .xpipe_q1_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req),
        .xpipe_q2_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack),
        .xpipe_q2_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd),
        .xpipe_q2_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum),
        .xpipe_q2_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload),
        .xpipe_q2_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req),
        .xpipe_q2_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack),
        .xpipe_q2_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd),
        .xpipe_q2_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum),
        .xpipe_q2_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload),
        .xpipe_q2_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req),
        .xpipe_q3_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack),
        .xpipe_q3_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd),
        .xpipe_q3_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum),
        .xpipe_q3_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload),
        .xpipe_q3_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req),
        .xpipe_q3_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack),
        .xpipe_q3_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd),
        .xpipe_q3_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum),
        .xpipe_q3_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload),
        .xpipe_q3_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req));
  bd_f29b_pspmc_0_0 pspmc_0
       (.cpm_osc_clk_div2(pspmc_0_IF_PS_CPM_cpm_osc_clk_div2),
        .cpm_pcie_noc_axi0_araddr(CPM_PCIE_NOC_0_araddr),
        .cpm_pcie_noc_axi0_arburst(CPM_PCIE_NOC_0_arburst),
        .cpm_pcie_noc_axi0_arcache(CPM_PCIE_NOC_0_arcache),
        .cpm_pcie_noc_axi0_arid(CPM_PCIE_NOC_0_arid),
        .cpm_pcie_noc_axi0_arlen(CPM_PCIE_NOC_0_arlen),
        .cpm_pcie_noc_axi0_arlock(CPM_PCIE_NOC_0_arlock),
        .cpm_pcie_noc_axi0_arprot(CPM_PCIE_NOC_0_arprot),
        .cpm_pcie_noc_axi0_arqos(CPM_PCIE_NOC_0_arqos),
        .cpm_pcie_noc_axi0_arready(CPM_PCIE_NOC_0_arready),
        .cpm_pcie_noc_axi0_arsize(CPM_PCIE_NOC_0_arsize),
        .cpm_pcie_noc_axi0_aruser(CPM_PCIE_NOC_0_aruser),
        .cpm_pcie_noc_axi0_arvalid(CPM_PCIE_NOC_0_arvalid),
        .cpm_pcie_noc_axi0_awaddr(CPM_PCIE_NOC_0_awaddr),
        .cpm_pcie_noc_axi0_awburst(CPM_PCIE_NOC_0_awburst),
        .cpm_pcie_noc_axi0_awcache(CPM_PCIE_NOC_0_awcache),
        .cpm_pcie_noc_axi0_awid(CPM_PCIE_NOC_0_awid),
        .cpm_pcie_noc_axi0_awlen(CPM_PCIE_NOC_0_awlen),
        .cpm_pcie_noc_axi0_awlock(CPM_PCIE_NOC_0_awlock),
        .cpm_pcie_noc_axi0_awprot(CPM_PCIE_NOC_0_awprot),
        .cpm_pcie_noc_axi0_awqos(CPM_PCIE_NOC_0_awqos),
        .cpm_pcie_noc_axi0_awready(CPM_PCIE_NOC_0_awready),
        .cpm_pcie_noc_axi0_awsize(CPM_PCIE_NOC_0_awsize),
        .cpm_pcie_noc_axi0_awuser(CPM_PCIE_NOC_0_awuser),
        .cpm_pcie_noc_axi0_awvalid(CPM_PCIE_NOC_0_awvalid),
        .cpm_pcie_noc_axi0_bid(CPM_PCIE_NOC_0_bid),
        .cpm_pcie_noc_axi0_bready(CPM_PCIE_NOC_0_bready),
        .cpm_pcie_noc_axi0_bresp(CPM_PCIE_NOC_0_bresp),
        .cpm_pcie_noc_axi0_bvalid(CPM_PCIE_NOC_0_bvalid),
        .cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk),
        .cpm_pcie_noc_axi0_rdata(CPM_PCIE_NOC_0_rdata),
        .cpm_pcie_noc_axi0_rid(CPM_PCIE_NOC_0_rid),
        .cpm_pcie_noc_axi0_rlast(CPM_PCIE_NOC_0_rlast),
        .cpm_pcie_noc_axi0_rready(CPM_PCIE_NOC_0_rready),
        .cpm_pcie_noc_axi0_rresp(CPM_PCIE_NOC_0_rresp),
        .cpm_pcie_noc_axi0_rvalid(CPM_PCIE_NOC_0_rvalid),
        .cpm_pcie_noc_axi0_wdata(CPM_PCIE_NOC_0_wdata),
        .cpm_pcie_noc_axi0_wlast(CPM_PCIE_NOC_0_wlast),
        .cpm_pcie_noc_axi0_wready(CPM_PCIE_NOC_0_wready),
        .cpm_pcie_noc_axi0_wstrb(CPM_PCIE_NOC_0_wstrb),
        .cpm_pcie_noc_axi0_wvalid(CPM_PCIE_NOC_0_wvalid),
        .cpm_pcie_noc_axi1_araddr(CPM_PCIE_NOC_1_araddr),
        .cpm_pcie_noc_axi1_arburst(CPM_PCIE_NOC_1_arburst),
        .cpm_pcie_noc_axi1_arcache(CPM_PCIE_NOC_1_arcache),
        .cpm_pcie_noc_axi1_arid(CPM_PCIE_NOC_1_arid),
        .cpm_pcie_noc_axi1_arlen(CPM_PCIE_NOC_1_arlen),
        .cpm_pcie_noc_axi1_arlock(CPM_PCIE_NOC_1_arlock),
        .cpm_pcie_noc_axi1_arprot(CPM_PCIE_NOC_1_arprot),
        .cpm_pcie_noc_axi1_arqos(CPM_PCIE_NOC_1_arqos),
        .cpm_pcie_noc_axi1_arready(CPM_PCIE_NOC_1_arready),
        .cpm_pcie_noc_axi1_arsize(CPM_PCIE_NOC_1_arsize),
        .cpm_pcie_noc_axi1_aruser(CPM_PCIE_NOC_1_aruser),
        .cpm_pcie_noc_axi1_arvalid(CPM_PCIE_NOC_1_arvalid),
        .cpm_pcie_noc_axi1_awaddr(CPM_PCIE_NOC_1_awaddr),
        .cpm_pcie_noc_axi1_awburst(CPM_PCIE_NOC_1_awburst),
        .cpm_pcie_noc_axi1_awcache(CPM_PCIE_NOC_1_awcache),
        .cpm_pcie_noc_axi1_awid(CPM_PCIE_NOC_1_awid),
        .cpm_pcie_noc_axi1_awlen(CPM_PCIE_NOC_1_awlen),
        .cpm_pcie_noc_axi1_awlock(CPM_PCIE_NOC_1_awlock),
        .cpm_pcie_noc_axi1_awprot(CPM_PCIE_NOC_1_awprot),
        .cpm_pcie_noc_axi1_awqos(CPM_PCIE_NOC_1_awqos),
        .cpm_pcie_noc_axi1_awready(CPM_PCIE_NOC_1_awready),
        .cpm_pcie_noc_axi1_awsize(CPM_PCIE_NOC_1_awsize),
        .cpm_pcie_noc_axi1_awuser(CPM_PCIE_NOC_1_awuser),
        .cpm_pcie_noc_axi1_awvalid(CPM_PCIE_NOC_1_awvalid),
        .cpm_pcie_noc_axi1_bid(CPM_PCIE_NOC_1_bid),
        .cpm_pcie_noc_axi1_bready(CPM_PCIE_NOC_1_bready),
        .cpm_pcie_noc_axi1_bresp(CPM_PCIE_NOC_1_bresp),
        .cpm_pcie_noc_axi1_bvalid(CPM_PCIE_NOC_1_bvalid),
        .cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk),
        .cpm_pcie_noc_axi1_rdata(CPM_PCIE_NOC_1_rdata),
        .cpm_pcie_noc_axi1_rid(CPM_PCIE_NOC_1_rid),
        .cpm_pcie_noc_axi1_rlast(CPM_PCIE_NOC_1_rlast),
        .cpm_pcie_noc_axi1_rready(CPM_PCIE_NOC_1_rready),
        .cpm_pcie_noc_axi1_rresp(CPM_PCIE_NOC_1_rresp),
        .cpm_pcie_noc_axi1_rvalid(CPM_PCIE_NOC_1_rvalid),
        .cpm_pcie_noc_axi1_wdata(CPM_PCIE_NOC_1_wdata),
        .cpm_pcie_noc_axi1_wlast(CPM_PCIE_NOC_1_wlast),
        .cpm_pcie_noc_axi1_wready(CPM_PCIE_NOC_1_wready),
        .cpm_pcie_noc_axi1_wstrb(CPM_PCIE_NOC_1_wstrb),
        .cpm_pcie_noc_axi1_wvalid(CPM_PCIE_NOC_1_wvalid),
        .cpm_pcr_apb_en(pspmc_0_IF_PS_CPM_cpm_pcr_apb_en),
        .cpm_pcr_dis_npi_clk(pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk),
        .cpm_pcr_fabric_en(pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en),
        .cpm_pcr_gate_reg(pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg),
        .cpm_pcr_hold_state(pspmc_0_IF_PS_CPM_cpm_pcr_hold_state),
        .cpm_pcr_init_state(pspmc_0_IF_PS_CPM_cpm_pcr_init_state),
        .cpm_pcr_mem_clr(pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr),
        .cpm_pcr_o_disable(pspmc_0_IF_PS_CPM_cpm_pcr_o_disable),
        .cpm_pcr_pcomplete(pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete),
        .cpm_pcr_pwr_dn(pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn),
        .cpm_pcr_scan_clr(pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr),
        .cpm_pcr_start_bisr(pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr),
        .cpm_pcr_start_cal(pspmc_0_IF_PS_CPM_cpm_pcr_start_cal),
        .cpm_pcr_tristate(pspmc_0_IF_PS_CPM_cpm_pcr_tristate),
        .cpmps_corr_irq(pspmc_0_IF_PS_CPM_cpmps_corr_irq),
        .cpmps_misc_irq(pspmc_0_IF_PS_CPM_cpmps_misc_irq),
        .cpmps_uncorr_irq(pspmc_0_IF_PS_CPM_cpmps_uncorr_irq),
        .hsdp_gt_rxoutclk(pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk),
        .hsdp_gt_txusrclk(pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk),
        .hsdp_xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid),
        .hsdp_xpipe0_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip),
        .hsdp_xpipe0_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header),
        .hsdp_xpipe0_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid),
        .hsdp_xpipe0_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset),
        .hsdp_xpipe0_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone),
        .hsdp_xpipe0_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header),
        .hsdp_xpipe0_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone),
        .hsdp_xpipe0_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence),
        .hsdp_xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid),
        .hsdp_xpipe1_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip),
        .hsdp_xpipe1_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header),
        .hsdp_xpipe1_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid),
        .hsdp_xpipe1_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset),
        .hsdp_xpipe1_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone),
        .hsdp_xpipe1_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header),
        .hsdp_xpipe1_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone),
        .hsdp_xpipe1_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence),
        .hsdp_xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid),
        .hsdp_xpipe2_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip),
        .hsdp_xpipe2_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header),
        .hsdp_xpipe2_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid),
        .hsdp_xpipe2_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset),
        .hsdp_xpipe2_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone),
        .hsdp_xpipe2_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header),
        .hsdp_xpipe2_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone),
        .hsdp_xpipe2_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence),
        .if_ps_noc_pci_axi0_ruser(CPM_PCIE_NOC_0_ruser),
        .if_ps_noc_pci_axi0_wuser(CPM_PCIE_NOC_0_wuser),
        .if_ps_noc_pci_axi1_ruser(CPM_PCIE_NOC_1_ruser),
        .if_ps_noc_pci_axi1_wuser(CPM_PCIE_NOC_1_wuser),
        .link0_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce),
        .link0_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask),
        .link0_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv),
        .link0_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst),
        .link0_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask),
        .link0_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk),
        .link0_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk),
        .link0_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget),
        .link0_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate),
        .link0_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn),
        .link0_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave),
        .link0_xpipe_phyready(pspmc_0_IF_PS_CPM_link0_xpipe_phyready),
        .link0_xpipe_piperate(pspmc_0_IF_PS_CPM_link0_xpipe_piperate),
        .link1_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce),
        .link1_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask),
        .link1_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv),
        .link1_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst),
        .link1_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask),
        .link1_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk),
        .link1_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk),
        .link1_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget),
        .link1_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate),
        .link1_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn),
        .link1_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave),
        .link1_xpipe_phyready(pspmc_0_IF_PS_CPM_link1_xpipe_phyready),
        .link1_xpipe_piperate(pspmc_0_IF_PS_CPM_link1_xpipe_piperate),
        .lpd_refclk_in(pspmc_0_IF_PS_CPM_lpd_refclk_in),
        .lpd_swclk(pspmc_0_IF_PS_CPM_lpd_swclk),
        .lpd_switch_timeout_cnt(pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt),
        .m_axi0_ps_araddr(pspmc_0_IF_PS_CPM_m_axi0_ps_araddr),
        .m_axi0_ps_arburst(pspmc_0_IF_PS_CPM_m_axi0_ps_arburst),
        .m_axi0_ps_arcache(pspmc_0_IF_PS_CPM_m_axi0_ps_arcache),
        .m_axi0_ps_arid(pspmc_0_IF_PS_CPM_m_axi0_ps_arid),
        .m_axi0_ps_arlen(pspmc_0_IF_PS_CPM_m_axi0_ps_arlen),
        .m_axi0_ps_arlock(pspmc_0_IF_PS_CPM_m_axi0_ps_arlock),
        .m_axi0_ps_arprot(pspmc_0_IF_PS_CPM_m_axi0_ps_arprot),
        .m_axi0_ps_arqos(pspmc_0_IF_PS_CPM_m_axi0_ps_arqos),
        .m_axi0_ps_arready(pspmc_0_IF_PS_CPM_m_axi0_ps_arready),
        .m_axi0_ps_arregion(pspmc_0_IF_PS_CPM_m_axi0_ps_arregion),
        .m_axi0_ps_arsize(pspmc_0_IF_PS_CPM_m_axi0_ps_arsize),
        .m_axi0_ps_aruser(pspmc_0_IF_PS_CPM_m_axi0_ps_aruser),
        .m_axi0_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid),
        .m_axi0_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr),
        .m_axi0_ps_awburst(pspmc_0_IF_PS_CPM_m_axi0_ps_awburst),
        .m_axi0_ps_awcache(pspmc_0_IF_PS_CPM_m_axi0_ps_awcache),
        .m_axi0_ps_awid(pspmc_0_IF_PS_CPM_m_axi0_ps_awid),
        .m_axi0_ps_awlen(pspmc_0_IF_PS_CPM_m_axi0_ps_awlen),
        .m_axi0_ps_awlock(pspmc_0_IF_PS_CPM_m_axi0_ps_awlock),
        .m_axi0_ps_awprot(pspmc_0_IF_PS_CPM_m_axi0_ps_awprot),
        .m_axi0_ps_awqos(pspmc_0_IF_PS_CPM_m_axi0_ps_awqos),
        .m_axi0_ps_awready(pspmc_0_IF_PS_CPM_m_axi0_ps_awready),
        .m_axi0_ps_awregion(pspmc_0_IF_PS_CPM_m_axi0_ps_awregion),
        .m_axi0_ps_awsize(pspmc_0_IF_PS_CPM_m_axi0_ps_awsize),
        .m_axi0_ps_awuser(pspmc_0_IF_PS_CPM_m_axi0_ps_awuser),
        .m_axi0_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid),
        .m_axi0_ps_bid(pspmc_0_IF_PS_CPM_m_axi0_ps_bid),
        .m_axi0_ps_bready(pspmc_0_IF_PS_CPM_m_axi0_ps_bready),
        .m_axi0_ps_bresp(pspmc_0_IF_PS_CPM_m_axi0_ps_bresp),
        .m_axi0_ps_buser(pspmc_0_IF_PS_CPM_m_axi0_ps_buser),
        .m_axi0_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid),
        .m_axi0_ps_rdata(pspmc_0_IF_PS_CPM_m_axi0_ps_rdata),
        .m_axi0_ps_rid(pspmc_0_IF_PS_CPM_m_axi0_ps_rid),
        .m_axi0_ps_rlast(pspmc_0_IF_PS_CPM_m_axi0_ps_rlast),
        .m_axi0_ps_rready(pspmc_0_IF_PS_CPM_m_axi0_ps_rready),
        .m_axi0_ps_rresp(pspmc_0_IF_PS_CPM_m_axi0_ps_rresp),
        .m_axi0_ps_ruser(pspmc_0_IF_PS_CPM_m_axi0_ps_ruser),
        .m_axi0_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid),
        .m_axi0_ps_wdata(pspmc_0_IF_PS_CPM_m_axi0_ps_wdata),
        .m_axi0_ps_wid(pspmc_0_IF_PS_CPM_m_axi0_ps_wid),
        .m_axi0_ps_wlast(pspmc_0_IF_PS_CPM_m_axi0_ps_wlast),
        .m_axi0_ps_wready(pspmc_0_IF_PS_CPM_m_axi0_ps_wready),
        .m_axi0_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb),
        .m_axi0_ps_wuser(pspmc_0_IF_PS_CPM_m_axi0_ps_wuser),
        .m_axi0_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid),
        .m_axi1_ps_araddr(pspmc_0_IF_PS_CPM_m_axi1_ps_araddr),
        .m_axi1_ps_arburst(pspmc_0_IF_PS_CPM_m_axi1_ps_arburst),
        .m_axi1_ps_arcache(pspmc_0_IF_PS_CPM_m_axi1_ps_arcache),
        .m_axi1_ps_arid(pspmc_0_IF_PS_CPM_m_axi1_ps_arid),
        .m_axi1_ps_arlen(pspmc_0_IF_PS_CPM_m_axi1_ps_arlen),
        .m_axi1_ps_arlock(pspmc_0_IF_PS_CPM_m_axi1_ps_arlock),
        .m_axi1_ps_arprot(pspmc_0_IF_PS_CPM_m_axi1_ps_arprot),
        .m_axi1_ps_arqos(pspmc_0_IF_PS_CPM_m_axi1_ps_arqos),
        .m_axi1_ps_arready(pspmc_0_IF_PS_CPM_m_axi1_ps_arready),
        .m_axi1_ps_arregion(pspmc_0_IF_PS_CPM_m_axi1_ps_arregion),
        .m_axi1_ps_arsize(pspmc_0_IF_PS_CPM_m_axi1_ps_arsize),
        .m_axi1_ps_aruser(pspmc_0_IF_PS_CPM_m_axi1_ps_aruser),
        .m_axi1_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid),
        .m_axi1_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr),
        .m_axi1_ps_awburst(pspmc_0_IF_PS_CPM_m_axi1_ps_awburst),
        .m_axi1_ps_awcache(pspmc_0_IF_PS_CPM_m_axi1_ps_awcache),
        .m_axi1_ps_awid(pspmc_0_IF_PS_CPM_m_axi1_ps_awid),
        .m_axi1_ps_awlen(pspmc_0_IF_PS_CPM_m_axi1_ps_awlen),
        .m_axi1_ps_awlock(pspmc_0_IF_PS_CPM_m_axi1_ps_awlock),
        .m_axi1_ps_awprot(pspmc_0_IF_PS_CPM_m_axi1_ps_awprot),
        .m_axi1_ps_awqos(pspmc_0_IF_PS_CPM_m_axi1_ps_awqos),
        .m_axi1_ps_awready(pspmc_0_IF_PS_CPM_m_axi1_ps_awready),
        .m_axi1_ps_awregion(pspmc_0_IF_PS_CPM_m_axi1_ps_awregion),
        .m_axi1_ps_awsize(pspmc_0_IF_PS_CPM_m_axi1_ps_awsize),
        .m_axi1_ps_awuser(pspmc_0_IF_PS_CPM_m_axi1_ps_awuser),
        .m_axi1_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid),
        .m_axi1_ps_bid(pspmc_0_IF_PS_CPM_m_axi1_ps_bid),
        .m_axi1_ps_bready(pspmc_0_IF_PS_CPM_m_axi1_ps_bready),
        .m_axi1_ps_bresp(pspmc_0_IF_PS_CPM_m_axi1_ps_bresp),
        .m_axi1_ps_buser(pspmc_0_IF_PS_CPM_m_axi1_ps_buser),
        .m_axi1_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid),
        .m_axi1_ps_rdata(pspmc_0_IF_PS_CPM_m_axi1_ps_rdata),
        .m_axi1_ps_rid(pspmc_0_IF_PS_CPM_m_axi1_ps_rid),
        .m_axi1_ps_rlast(pspmc_0_IF_PS_CPM_m_axi1_ps_rlast),
        .m_axi1_ps_rready(pspmc_0_IF_PS_CPM_m_axi1_ps_rready),
        .m_axi1_ps_rresp(pspmc_0_IF_PS_CPM_m_axi1_ps_rresp),
        .m_axi1_ps_ruser(pspmc_0_IF_PS_CPM_m_axi1_ps_ruser),
        .m_axi1_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid),
        .m_axi1_ps_wdata(pspmc_0_IF_PS_CPM_m_axi1_ps_wdata),
        .m_axi1_ps_wid(pspmc_0_IF_PS_CPM_m_axi1_ps_wid),
        .m_axi1_ps_wlast(pspmc_0_IF_PS_CPM_m_axi1_ps_wlast),
        .m_axi1_ps_wready(pspmc_0_IF_PS_CPM_m_axi1_ps_wready),
        .m_axi1_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb),
        .m_axi1_ps_wuser(pspmc_0_IF_PS_CPM_m_axi1_ps_wuser),
        .m_axi1_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid),
        .perst0n(pspmc_0_IF_PS_CPM_perst0n),
        .perst1n(pspmc_0_IF_PS_CPM_perst1n),
        .phy_ready_frbot(pspmc_0_IF_PS_CPM_phy_ready_frbot),
        .phy_ready_tobot(pspmc_0_IF_PS_CPM_phy_ready_tobot),
        .pl0_ref_clk(pl0_ref_clk),
        .pl1_ref_clk(pl1_ref_clk),
        .s_axi_cfg_araddr(pspmc_0_IF_PS_CPM_s_axi_cfg_araddr),
        .s_axi_cfg_arburst(pspmc_0_IF_PS_CPM_s_axi_cfg_arburst),
        .s_axi_cfg_arcache(pspmc_0_IF_PS_CPM_s_axi_cfg_arcache),
        .s_axi_cfg_arid(pspmc_0_IF_PS_CPM_s_axi_cfg_arid),
        .s_axi_cfg_arlen(pspmc_0_IF_PS_CPM_s_axi_cfg_arlen),
        .s_axi_cfg_arlock(pspmc_0_IF_PS_CPM_s_axi_cfg_arlock),
        .s_axi_cfg_arprot(pspmc_0_IF_PS_CPM_s_axi_cfg_arprot),
        .s_axi_cfg_arqos(pspmc_0_IF_PS_CPM_s_axi_cfg_arqos),
        .s_axi_cfg_arready(pspmc_0_IF_PS_CPM_s_axi_cfg_arready),
        .s_axi_cfg_arregion(pspmc_0_IF_PS_CPM_s_axi_cfg_arregion),
        .s_axi_cfg_arsize(pspmc_0_IF_PS_CPM_s_axi_cfg_arsize),
        .s_axi_cfg_aruser(pspmc_0_IF_PS_CPM_s_axi_cfg_aruser),
        .s_axi_cfg_arvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid),
        .s_axi_cfg_awaddr(pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr),
        .s_axi_cfg_awburst(pspmc_0_IF_PS_CPM_s_axi_cfg_awburst),
        .s_axi_cfg_awcache(pspmc_0_IF_PS_CPM_s_axi_cfg_awcache),
        .s_axi_cfg_awid(pspmc_0_IF_PS_CPM_s_axi_cfg_awid),
        .s_axi_cfg_awlen(pspmc_0_IF_PS_CPM_s_axi_cfg_awlen),
        .s_axi_cfg_awlock(pspmc_0_IF_PS_CPM_s_axi_cfg_awlock),
        .s_axi_cfg_awprot(pspmc_0_IF_PS_CPM_s_axi_cfg_awprot),
        .s_axi_cfg_awqos(pspmc_0_IF_PS_CPM_s_axi_cfg_awqos),
        .s_axi_cfg_awready(pspmc_0_IF_PS_CPM_s_axi_cfg_awready),
        .s_axi_cfg_awregion(pspmc_0_IF_PS_CPM_s_axi_cfg_awregion),
        .s_axi_cfg_awsize(pspmc_0_IF_PS_CPM_s_axi_cfg_awsize),
        .s_axi_cfg_awuser(pspmc_0_IF_PS_CPM_s_axi_cfg_awuser),
        .s_axi_cfg_awvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid),
        .s_axi_cfg_bid(pspmc_0_IF_PS_CPM_s_axi_cfg_bid),
        .s_axi_cfg_bready(pspmc_0_IF_PS_CPM_s_axi_cfg_bready),
        .s_axi_cfg_bresp(pspmc_0_IF_PS_CPM_s_axi_cfg_bresp),
        .s_axi_cfg_buser(pspmc_0_IF_PS_CPM_s_axi_cfg_buser),
        .s_axi_cfg_bvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid),
        .s_axi_cfg_rdata(pspmc_0_IF_PS_CPM_s_axi_cfg_rdata),
        .s_axi_cfg_rid(pspmc_0_IF_PS_CPM_s_axi_cfg_rid),
        .s_axi_cfg_rlast(pspmc_0_IF_PS_CPM_s_axi_cfg_rlast),
        .s_axi_cfg_rready(pspmc_0_IF_PS_CPM_s_axi_cfg_rready),
        .s_axi_cfg_rresp(pspmc_0_IF_PS_CPM_s_axi_cfg_rresp),
        .s_axi_cfg_ruser(pspmc_0_IF_PS_CPM_s_axi_cfg_ruser),
        .s_axi_cfg_rvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid),
        .s_axi_cfg_wdata(pspmc_0_IF_PS_CPM_s_axi_cfg_wdata),
        .s_axi_cfg_wid(pspmc_0_IF_PS_CPM_s_axi_cfg_wid),
        .s_axi_cfg_wlast(pspmc_0_IF_PS_CPM_s_axi_cfg_wlast),
        .s_axi_cfg_wready(pspmc_0_IF_PS_CPM_s_axi_cfg_wready),
        .s_axi_cfg_wstrb(pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb),
        .s_axi_cfg_wuser(pspmc_0_IF_PS_CPM_s_axi_cfg_wuser),
        .s_axi_cfg_wvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid),
        .s_axi_pcie_araddr(pspmc_0_IF_PS_CPM_s_axi_pcie_araddr),
        .s_axi_pcie_arburst(pspmc_0_IF_PS_CPM_s_axi_pcie_arburst),
        .s_axi_pcie_arcache(pspmc_0_IF_PS_CPM_s_axi_pcie_arcache),
        .s_axi_pcie_arid(pspmc_0_IF_PS_CPM_s_axi_pcie_arid),
        .s_axi_pcie_arlen(pspmc_0_IF_PS_CPM_s_axi_pcie_arlen),
        .s_axi_pcie_arlock(pspmc_0_IF_PS_CPM_s_axi_pcie_arlock),
        .s_axi_pcie_arprot(pspmc_0_IF_PS_CPM_s_axi_pcie_arprot),
        .s_axi_pcie_arqos(pspmc_0_IF_PS_CPM_s_axi_pcie_arqos),
        .s_axi_pcie_arready(pspmc_0_IF_PS_CPM_s_axi_pcie_arready),
        .s_axi_pcie_arregion(pspmc_0_IF_PS_CPM_s_axi_pcie_arregion),
        .s_axi_pcie_arsize(pspmc_0_IF_PS_CPM_s_axi_pcie_arsize),
        .s_axi_pcie_aruser(pspmc_0_IF_PS_CPM_s_axi_pcie_aruser),
        .s_axi_pcie_arvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid),
        .s_axi_pcie_awaddr(pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr),
        .s_axi_pcie_awburst(pspmc_0_IF_PS_CPM_s_axi_pcie_awburst),
        .s_axi_pcie_awcache(pspmc_0_IF_PS_CPM_s_axi_pcie_awcache),
        .s_axi_pcie_awid(pspmc_0_IF_PS_CPM_s_axi_pcie_awid),
        .s_axi_pcie_awlen(pspmc_0_IF_PS_CPM_s_axi_pcie_awlen),
        .s_axi_pcie_awlock(pspmc_0_IF_PS_CPM_s_axi_pcie_awlock),
        .s_axi_pcie_awprot(pspmc_0_IF_PS_CPM_s_axi_pcie_awprot),
        .s_axi_pcie_awqos(pspmc_0_IF_PS_CPM_s_axi_pcie_awqos),
        .s_axi_pcie_awready(pspmc_0_IF_PS_CPM_s_axi_pcie_awready),
        .s_axi_pcie_awregion(pspmc_0_IF_PS_CPM_s_axi_pcie_awregion),
        .s_axi_pcie_awsize(pspmc_0_IF_PS_CPM_s_axi_pcie_awsize),
        .s_axi_pcie_awuser(pspmc_0_IF_PS_CPM_s_axi_pcie_awuser),
        .s_axi_pcie_awvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid),
        .s_axi_pcie_bid(pspmc_0_IF_PS_CPM_s_axi_pcie_bid),
        .s_axi_pcie_bready(pspmc_0_IF_PS_CPM_s_axi_pcie_bready),
        .s_axi_pcie_bresp(pspmc_0_IF_PS_CPM_s_axi_pcie_bresp),
        .s_axi_pcie_buser(pspmc_0_IF_PS_CPM_s_axi_pcie_buser),
        .s_axi_pcie_bvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid),
        .s_axi_pcie_rdata(pspmc_0_IF_PS_CPM_s_axi_pcie_rdata),
        .s_axi_pcie_rid(pspmc_0_IF_PS_CPM_s_axi_pcie_rid),
        .s_axi_pcie_rlast(pspmc_0_IF_PS_CPM_s_axi_pcie_rlast),
        .s_axi_pcie_rready(pspmc_0_IF_PS_CPM_s_axi_pcie_rready),
        .s_axi_pcie_rresp(pspmc_0_IF_PS_CPM_s_axi_pcie_rresp),
        .s_axi_pcie_ruser(pspmc_0_IF_PS_CPM_s_axi_pcie_ruser),
        .s_axi_pcie_rvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid),
        .s_axi_pcie_wdata(pspmc_0_IF_PS_CPM_s_axi_pcie_wdata),
        .s_axi_pcie_wid(pspmc_0_IF_PS_CPM_s_axi_pcie_wid),
        .s_axi_pcie_wlast(pspmc_0_IF_PS_CPM_s_axi_pcie_wlast),
        .s_axi_pcie_wready(pspmc_0_IF_PS_CPM_s_axi_pcie_wready),
        .s_axi_pcie_wstrb(pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb),
        .s_axi_pcie_wuser(pspmc_0_IF_PS_CPM_s_axi_pcie_wuser),
        .s_axi_pcie_wvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid),
        .xpipe0_powerdown(pspmc_0_IF_PS_CPM_xpipe0_powerdown),
        .xpipe0_rx_charisk(pspmc_0_IF_PS_CPM_xpipe0_rx_charisk),
        .xpipe0_rx_data(pspmc_0_IF_PS_CPM_xpipe0_rx_data),
        .xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid),
        .xpipe0_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle),
        .xpipe0_rx_polarity(pspmc_0_IF_PS_CPM_xpipe0_rx_polarity),
        .xpipe0_rx_startblock(pspmc_0_IF_PS_CPM_xpipe0_rx_startblock),
        .xpipe0_rx_status(pspmc_0_IF_PS_CPM_xpipe0_rx_status),
        .xpipe0_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader),
        .xpipe0_rx_termination(pspmc_0_IF_PS_CPM_xpipe0_rx_termination),
        .xpipe0_rx_valid(pspmc_0_IF_PS_CPM_xpipe0_rx_valid),
        .xpipe0_tx_charisk(pspmc_0_IF_PS_CPM_xpipe0_tx_charisk),
        .xpipe0_tx_compliance(pspmc_0_IF_PS_CPM_xpipe0_tx_compliance),
        .xpipe0_tx_data(pspmc_0_IF_PS_CPM_xpipe0_tx_data),
        .xpipe0_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid),
        .xpipe0_tx_deemph(pspmc_0_IF_PS_CPM_xpipe0_tx_deemph),
        .xpipe0_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback),
        .xpipe0_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle),
        .xpipe0_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor),
        .xpipe0_tx_margin(pspmc_0_IF_PS_CPM_xpipe0_tx_margin),
        .xpipe0_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor),
        .xpipe0_tx_precursor(pspmc_0_IF_PS_CPM_xpipe0_tx_precursor),
        .xpipe0_tx_startblock(pspmc_0_IF_PS_CPM_xpipe0_tx_startblock),
        .xpipe0_tx_swing(pspmc_0_IF_PS_CPM_xpipe0_tx_swing),
        .xpipe0_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader),
        .xpipe10_phystatus(pspmc_0_IF_PS_CPM_xpipe10_phystatus),
        .xpipe10_powerdown(pspmc_0_IF_PS_CPM_xpipe10_powerdown),
        .xpipe10_rx_charisk(pspmc_0_IF_PS_CPM_xpipe10_rx_charisk),
        .xpipe10_rx_data(pspmc_0_IF_PS_CPM_xpipe10_rx_data),
        .xpipe10_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid),
        .xpipe10_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle),
        .xpipe10_rx_polarity(pspmc_0_IF_PS_CPM_xpipe10_rx_polarity),
        .xpipe10_rx_startblock(pspmc_0_IF_PS_CPM_xpipe10_rx_startblock),
        .xpipe10_rx_status(pspmc_0_IF_PS_CPM_xpipe10_rx_status),
        .xpipe10_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader),
        .xpipe10_rx_termination(pspmc_0_IF_PS_CPM_xpipe10_rx_termination),
        .xpipe10_rx_valid(pspmc_0_IF_PS_CPM_xpipe10_rx_valid),
        .xpipe10_tx_charisk(pspmc_0_IF_PS_CPM_xpipe10_tx_charisk),
        .xpipe10_tx_compliance(pspmc_0_IF_PS_CPM_xpipe10_tx_compliance),
        .xpipe10_tx_data(pspmc_0_IF_PS_CPM_xpipe10_tx_data),
        .xpipe10_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid),
        .xpipe10_tx_deemph(pspmc_0_IF_PS_CPM_xpipe10_tx_deemph),
        .xpipe10_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback),
        .xpipe10_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle),
        .xpipe10_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor),
        .xpipe10_tx_margin(pspmc_0_IF_PS_CPM_xpipe10_tx_margin),
        .xpipe10_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor),
        .xpipe10_tx_precursor(pspmc_0_IF_PS_CPM_xpipe10_tx_precursor),
        .xpipe10_tx_startblock(pspmc_0_IF_PS_CPM_xpipe10_tx_startblock),
        .xpipe10_tx_swing(pspmc_0_IF_PS_CPM_xpipe10_tx_swing),
        .xpipe10_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader),
        .xpipe11_phystatus(pspmc_0_IF_PS_CPM_xpipe11_phystatus),
        .xpipe11_powerdown(pspmc_0_IF_PS_CPM_xpipe11_powerdown),
        .xpipe11_rx_charisk(pspmc_0_IF_PS_CPM_xpipe11_rx_charisk),
        .xpipe11_rx_data(pspmc_0_IF_PS_CPM_xpipe11_rx_data),
        .xpipe11_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid),
        .xpipe11_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle),
        .xpipe11_rx_polarity(pspmc_0_IF_PS_CPM_xpipe11_rx_polarity),
        .xpipe11_rx_startblock(pspmc_0_IF_PS_CPM_xpipe11_rx_startblock),
        .xpipe11_rx_status(pspmc_0_IF_PS_CPM_xpipe11_rx_status),
        .xpipe11_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader),
        .xpipe11_rx_termination(pspmc_0_IF_PS_CPM_xpipe11_rx_termination),
        .xpipe11_rx_valid(pspmc_0_IF_PS_CPM_xpipe11_rx_valid),
        .xpipe11_tx_charisk(pspmc_0_IF_PS_CPM_xpipe11_tx_charisk),
        .xpipe11_tx_compliance(pspmc_0_IF_PS_CPM_xpipe11_tx_compliance),
        .xpipe11_tx_data(pspmc_0_IF_PS_CPM_xpipe11_tx_data),
        .xpipe11_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid),
        .xpipe11_tx_deemph(pspmc_0_IF_PS_CPM_xpipe11_tx_deemph),
        .xpipe11_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback),
        .xpipe11_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle),
        .xpipe11_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor),
        .xpipe11_tx_margin(pspmc_0_IF_PS_CPM_xpipe11_tx_margin),
        .xpipe11_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor),
        .xpipe11_tx_precursor(pspmc_0_IF_PS_CPM_xpipe11_tx_precursor),
        .xpipe11_tx_startblock(pspmc_0_IF_PS_CPM_xpipe11_tx_startblock),
        .xpipe11_tx_swing(pspmc_0_IF_PS_CPM_xpipe11_tx_swing),
        .xpipe11_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader),
        .xpipe12_phystatus(pspmc_0_IF_PS_CPM_xpipe12_phystatus),
        .xpipe12_powerdown(pspmc_0_IF_PS_CPM_xpipe12_powerdown),
        .xpipe12_rx_charisk(pspmc_0_IF_PS_CPM_xpipe12_rx_charisk),
        .xpipe12_rx_data(pspmc_0_IF_PS_CPM_xpipe12_rx_data),
        .xpipe12_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid),
        .xpipe12_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle),
        .xpipe12_rx_polarity(pspmc_0_IF_PS_CPM_xpipe12_rx_polarity),
        .xpipe12_rx_startblock(pspmc_0_IF_PS_CPM_xpipe12_rx_startblock),
        .xpipe12_rx_status(pspmc_0_IF_PS_CPM_xpipe12_rx_status),
        .xpipe12_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader),
        .xpipe12_rx_termination(pspmc_0_IF_PS_CPM_xpipe12_rx_termination),
        .xpipe12_rx_valid(pspmc_0_IF_PS_CPM_xpipe12_rx_valid),
        .xpipe12_tx_charisk(pspmc_0_IF_PS_CPM_xpipe12_tx_charisk),
        .xpipe12_tx_compliance(pspmc_0_IF_PS_CPM_xpipe12_tx_compliance),
        .xpipe12_tx_data(pspmc_0_IF_PS_CPM_xpipe12_tx_data),
        .xpipe12_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid),
        .xpipe12_tx_deemph(pspmc_0_IF_PS_CPM_xpipe12_tx_deemph),
        .xpipe12_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback),
        .xpipe12_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle),
        .xpipe12_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor),
        .xpipe12_tx_margin(pspmc_0_IF_PS_CPM_xpipe12_tx_margin),
        .xpipe12_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor),
        .xpipe12_tx_precursor(pspmc_0_IF_PS_CPM_xpipe12_tx_precursor),
        .xpipe12_tx_startblock(pspmc_0_IF_PS_CPM_xpipe12_tx_startblock),
        .xpipe12_tx_swing(pspmc_0_IF_PS_CPM_xpipe12_tx_swing),
        .xpipe12_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader),
        .xpipe13_phystatus(pspmc_0_IF_PS_CPM_xpipe13_phystatus),
        .xpipe13_powerdown(pspmc_0_IF_PS_CPM_xpipe13_powerdown),
        .xpipe13_rx_charisk(pspmc_0_IF_PS_CPM_xpipe13_rx_charisk),
        .xpipe13_rx_data(pspmc_0_IF_PS_CPM_xpipe13_rx_data),
        .xpipe13_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid),
        .xpipe13_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle),
        .xpipe13_rx_polarity(pspmc_0_IF_PS_CPM_xpipe13_rx_polarity),
        .xpipe13_rx_startblock(pspmc_0_IF_PS_CPM_xpipe13_rx_startblock),
        .xpipe13_rx_status(pspmc_0_IF_PS_CPM_xpipe13_rx_status),
        .xpipe13_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader),
        .xpipe13_rx_termination(pspmc_0_IF_PS_CPM_xpipe13_rx_termination),
        .xpipe13_rx_valid(pspmc_0_IF_PS_CPM_xpipe13_rx_valid),
        .xpipe13_tx_charisk(pspmc_0_IF_PS_CPM_xpipe13_tx_charisk),
        .xpipe13_tx_compliance(pspmc_0_IF_PS_CPM_xpipe13_tx_compliance),
        .xpipe13_tx_data(pspmc_0_IF_PS_CPM_xpipe13_tx_data),
        .xpipe13_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid),
        .xpipe13_tx_deemph(pspmc_0_IF_PS_CPM_xpipe13_tx_deemph),
        .xpipe13_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback),
        .xpipe13_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle),
        .xpipe13_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor),
        .xpipe13_tx_margin(pspmc_0_IF_PS_CPM_xpipe13_tx_margin),
        .xpipe13_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor),
        .xpipe13_tx_precursor(pspmc_0_IF_PS_CPM_xpipe13_tx_precursor),
        .xpipe13_tx_startblock(pspmc_0_IF_PS_CPM_xpipe13_tx_startblock),
        .xpipe13_tx_swing(pspmc_0_IF_PS_CPM_xpipe13_tx_swing),
        .xpipe13_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader),
        .xpipe14_phystatus(pspmc_0_IF_PS_CPM_xpipe14_phystatus),
        .xpipe14_powerdown(pspmc_0_IF_PS_CPM_xpipe14_powerdown),
        .xpipe14_rx_charisk(pspmc_0_IF_PS_CPM_xpipe14_rx_charisk),
        .xpipe14_rx_data(pspmc_0_IF_PS_CPM_xpipe14_rx_data),
        .xpipe14_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid),
        .xpipe14_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle),
        .xpipe14_rx_polarity(pspmc_0_IF_PS_CPM_xpipe14_rx_polarity),
        .xpipe14_rx_startblock(pspmc_0_IF_PS_CPM_xpipe14_rx_startblock),
        .xpipe14_rx_status(pspmc_0_IF_PS_CPM_xpipe14_rx_status),
        .xpipe14_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader),
        .xpipe14_rx_termination(pspmc_0_IF_PS_CPM_xpipe14_rx_termination),
        .xpipe14_rx_valid(pspmc_0_IF_PS_CPM_xpipe14_rx_valid),
        .xpipe14_tx_charisk(pspmc_0_IF_PS_CPM_xpipe14_tx_charisk),
        .xpipe14_tx_compliance(pspmc_0_IF_PS_CPM_xpipe14_tx_compliance),
        .xpipe14_tx_data(pspmc_0_IF_PS_CPM_xpipe14_tx_data),
        .xpipe14_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid),
        .xpipe14_tx_deemph(pspmc_0_IF_PS_CPM_xpipe14_tx_deemph),
        .xpipe14_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback),
        .xpipe14_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle),
        .xpipe14_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor),
        .xpipe14_tx_margin(pspmc_0_IF_PS_CPM_xpipe14_tx_margin),
        .xpipe14_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor),
        .xpipe14_tx_precursor(pspmc_0_IF_PS_CPM_xpipe14_tx_precursor),
        .xpipe14_tx_startblock(pspmc_0_IF_PS_CPM_xpipe14_tx_startblock),
        .xpipe14_tx_swing(pspmc_0_IF_PS_CPM_xpipe14_tx_swing),
        .xpipe14_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader),
        .xpipe15_phystatus(pspmc_0_IF_PS_CPM_xpipe15_phystatus),
        .xpipe15_powerdown(pspmc_0_IF_PS_CPM_xpipe15_powerdown),
        .xpipe15_rx_charisk(pspmc_0_IF_PS_CPM_xpipe15_rx_charisk),
        .xpipe15_rx_data(pspmc_0_IF_PS_CPM_xpipe15_rx_data),
        .xpipe15_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid),
        .xpipe15_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle),
        .xpipe15_rx_polarity(pspmc_0_IF_PS_CPM_xpipe15_rx_polarity),
        .xpipe15_rx_startblock(pspmc_0_IF_PS_CPM_xpipe15_rx_startblock),
        .xpipe15_rx_status(pspmc_0_IF_PS_CPM_xpipe15_rx_status),
        .xpipe15_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader),
        .xpipe15_rx_termination(pspmc_0_IF_PS_CPM_xpipe15_rx_termination),
        .xpipe15_rx_valid(pspmc_0_IF_PS_CPM_xpipe15_rx_valid),
        .xpipe15_tx_charisk(pspmc_0_IF_PS_CPM_xpipe15_tx_charisk),
        .xpipe15_tx_compliance(pspmc_0_IF_PS_CPM_xpipe15_tx_compliance),
        .xpipe15_tx_data(pspmc_0_IF_PS_CPM_xpipe15_tx_data),
        .xpipe15_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid),
        .xpipe15_tx_deemph(pspmc_0_IF_PS_CPM_xpipe15_tx_deemph),
        .xpipe15_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback),
        .xpipe15_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle),
        .xpipe15_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor),
        .xpipe15_tx_margin(pspmc_0_IF_PS_CPM_xpipe15_tx_margin),
        .xpipe15_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor),
        .xpipe15_tx_precursor(pspmc_0_IF_PS_CPM_xpipe15_tx_precursor),
        .xpipe15_tx_startblock(pspmc_0_IF_PS_CPM_xpipe15_tx_startblock),
        .xpipe15_tx_swing(pspmc_0_IF_PS_CPM_xpipe15_tx_swing),
        .xpipe15_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader),
        .xpipe1_phystatus(pspmc_0_IF_PS_CPM_xpipe1_phystatus),
        .xpipe1_powerdown(pspmc_0_IF_PS_CPM_xpipe1_powerdown),
        .xpipe1_rx_charisk(pspmc_0_IF_PS_CPM_xpipe1_rx_charisk),
        .xpipe1_rx_data(pspmc_0_IF_PS_CPM_xpipe1_rx_data),
        .xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid),
        .xpipe1_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle),
        .xpipe1_rx_polarity(pspmc_0_IF_PS_CPM_xpipe1_rx_polarity),
        .xpipe1_rx_startblock(pspmc_0_IF_PS_CPM_xpipe1_rx_startblock),
        .xpipe1_rx_status(pspmc_0_IF_PS_CPM_xpipe1_rx_status),
        .xpipe1_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader),
        .xpipe1_rx_termination(pspmc_0_IF_PS_CPM_xpipe1_rx_termination),
        .xpipe1_rx_valid(pspmc_0_IF_PS_CPM_xpipe1_rx_valid),
        .xpipe1_tx_charisk(pspmc_0_IF_PS_CPM_xpipe1_tx_charisk),
        .xpipe1_tx_compliance(pspmc_0_IF_PS_CPM_xpipe1_tx_compliance),
        .xpipe1_tx_data(pspmc_0_IF_PS_CPM_xpipe1_tx_data),
        .xpipe1_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid),
        .xpipe1_tx_deemph(pspmc_0_IF_PS_CPM_xpipe1_tx_deemph),
        .xpipe1_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback),
        .xpipe1_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle),
        .xpipe1_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor),
        .xpipe1_tx_margin(pspmc_0_IF_PS_CPM_xpipe1_tx_margin),
        .xpipe1_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor),
        .xpipe1_tx_precursor(pspmc_0_IF_PS_CPM_xpipe1_tx_precursor),
        .xpipe1_tx_startblock(pspmc_0_IF_PS_CPM_xpipe1_tx_startblock),
        .xpipe1_tx_swing(pspmc_0_IF_PS_CPM_xpipe1_tx_swing),
        .xpipe1_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader),
        .xpipe2_phystatus(pspmc_0_IF_PS_CPM_xpipe2_phystatus),
        .xpipe2_powerdown(pspmc_0_IF_PS_CPM_xpipe2_powerdown),
        .xpipe2_rx_charisk(pspmc_0_IF_PS_CPM_xpipe2_rx_charisk),
        .xpipe2_rx_data(pspmc_0_IF_PS_CPM_xpipe2_rx_data),
        .xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid),
        .xpipe2_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle),
        .xpipe2_rx_polarity(pspmc_0_IF_PS_CPM_xpipe2_rx_polarity),
        .xpipe2_rx_startblock(pspmc_0_IF_PS_CPM_xpipe2_rx_startblock),
        .xpipe2_rx_status(pspmc_0_IF_PS_CPM_xpipe2_rx_status),
        .xpipe2_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader),
        .xpipe2_rx_termination(pspmc_0_IF_PS_CPM_xpipe2_rx_termination),
        .xpipe2_rx_valid(pspmc_0_IF_PS_CPM_xpipe2_rx_valid),
        .xpipe2_tx_charisk(pspmc_0_IF_PS_CPM_xpipe2_tx_charisk),
        .xpipe2_tx_compliance(pspmc_0_IF_PS_CPM_xpipe2_tx_compliance),
        .xpipe2_tx_data(pspmc_0_IF_PS_CPM_xpipe2_tx_data),
        .xpipe2_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid),
        .xpipe2_tx_deemph(pspmc_0_IF_PS_CPM_xpipe2_tx_deemph),
        .xpipe2_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback),
        .xpipe2_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle),
        .xpipe2_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor),
        .xpipe2_tx_margin(pspmc_0_IF_PS_CPM_xpipe2_tx_margin),
        .xpipe2_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor),
        .xpipe2_tx_precursor(pspmc_0_IF_PS_CPM_xpipe2_tx_precursor),
        .xpipe2_tx_startblock(pspmc_0_IF_PS_CPM_xpipe2_tx_startblock),
        .xpipe2_tx_swing(pspmc_0_IF_PS_CPM_xpipe2_tx_swing),
        .xpipe2_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader),
        .xpipe3_phystatus(pspmc_0_IF_PS_CPM_xpipe3_phystatus),
        .xpipe3_powerdown(pspmc_0_IF_PS_CPM_xpipe3_powerdown),
        .xpipe3_rx_charisk(pspmc_0_IF_PS_CPM_xpipe3_rx_charisk),
        .xpipe3_rx_data(pspmc_0_IF_PS_CPM_xpipe3_rx_data),
        .xpipe3_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid),
        .xpipe3_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle),
        .xpipe3_rx_polarity(pspmc_0_IF_PS_CPM_xpipe3_rx_polarity),
        .xpipe3_rx_startblock(pspmc_0_IF_PS_CPM_xpipe3_rx_startblock),
        .xpipe3_rx_status(pspmc_0_IF_PS_CPM_xpipe3_rx_status),
        .xpipe3_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader),
        .xpipe3_rx_termination(pspmc_0_IF_PS_CPM_xpipe3_rx_termination),
        .xpipe3_rx_valid(pspmc_0_IF_PS_CPM_xpipe3_rx_valid),
        .xpipe3_tx_charisk(pspmc_0_IF_PS_CPM_xpipe3_tx_charisk),
        .xpipe3_tx_compliance(pspmc_0_IF_PS_CPM_xpipe3_tx_compliance),
        .xpipe3_tx_data(pspmc_0_IF_PS_CPM_xpipe3_tx_data),
        .xpipe3_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid),
        .xpipe3_tx_deemph(pspmc_0_IF_PS_CPM_xpipe3_tx_deemph),
        .xpipe3_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback),
        .xpipe3_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle),
        .xpipe3_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor),
        .xpipe3_tx_margin(pspmc_0_IF_PS_CPM_xpipe3_tx_margin),
        .xpipe3_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor),
        .xpipe3_tx_precursor(pspmc_0_IF_PS_CPM_xpipe3_tx_precursor),
        .xpipe3_tx_startblock(pspmc_0_IF_PS_CPM_xpipe3_tx_startblock),
        .xpipe3_tx_swing(pspmc_0_IF_PS_CPM_xpipe3_tx_swing),
        .xpipe3_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader),
        .xpipe4_phystatus(pspmc_0_IF_PS_CPM_xpipe4_phystatus),
        .xpipe4_powerdown(pspmc_0_IF_PS_CPM_xpipe4_powerdown),
        .xpipe4_rx_charisk(pspmc_0_IF_PS_CPM_xpipe4_rx_charisk),
        .xpipe4_rx_data(pspmc_0_IF_PS_CPM_xpipe4_rx_data),
        .xpipe4_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid),
        .xpipe4_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle),
        .xpipe4_rx_polarity(pspmc_0_IF_PS_CPM_xpipe4_rx_polarity),
        .xpipe4_rx_startblock(pspmc_0_IF_PS_CPM_xpipe4_rx_startblock),
        .xpipe4_rx_status(pspmc_0_IF_PS_CPM_xpipe4_rx_status),
        .xpipe4_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader),
        .xpipe4_rx_termination(pspmc_0_IF_PS_CPM_xpipe4_rx_termination),
        .xpipe4_rx_valid(pspmc_0_IF_PS_CPM_xpipe4_rx_valid),
        .xpipe4_tx_charisk(pspmc_0_IF_PS_CPM_xpipe4_tx_charisk),
        .xpipe4_tx_compliance(pspmc_0_IF_PS_CPM_xpipe4_tx_compliance),
        .xpipe4_tx_data(pspmc_0_IF_PS_CPM_xpipe4_tx_data),
        .xpipe4_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid),
        .xpipe4_tx_deemph(pspmc_0_IF_PS_CPM_xpipe4_tx_deemph),
        .xpipe4_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback),
        .xpipe4_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle),
        .xpipe4_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor),
        .xpipe4_tx_margin(pspmc_0_IF_PS_CPM_xpipe4_tx_margin),
        .xpipe4_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor),
        .xpipe4_tx_precursor(pspmc_0_IF_PS_CPM_xpipe4_tx_precursor),
        .xpipe4_tx_startblock(pspmc_0_IF_PS_CPM_xpipe4_tx_startblock),
        .xpipe4_tx_swing(pspmc_0_IF_PS_CPM_xpipe4_tx_swing),
        .xpipe4_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader),
        .xpipe5_phystatus(pspmc_0_IF_PS_CPM_xpipe5_phystatus),
        .xpipe5_powerdown(pspmc_0_IF_PS_CPM_xpipe5_powerdown),
        .xpipe5_rx_charisk(pspmc_0_IF_PS_CPM_xpipe5_rx_charisk),
        .xpipe5_rx_data(pspmc_0_IF_PS_CPM_xpipe5_rx_data),
        .xpipe5_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid),
        .xpipe5_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle),
        .xpipe5_rx_polarity(pspmc_0_IF_PS_CPM_xpipe5_rx_polarity),
        .xpipe5_rx_startblock(pspmc_0_IF_PS_CPM_xpipe5_rx_startblock),
        .xpipe5_rx_status(pspmc_0_IF_PS_CPM_xpipe5_rx_status),
        .xpipe5_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader),
        .xpipe5_rx_termination(pspmc_0_IF_PS_CPM_xpipe5_rx_termination),
        .xpipe5_rx_valid(pspmc_0_IF_PS_CPM_xpipe5_rx_valid),
        .xpipe5_tx_charisk(pspmc_0_IF_PS_CPM_xpipe5_tx_charisk),
        .xpipe5_tx_compliance(pspmc_0_IF_PS_CPM_xpipe5_tx_compliance),
        .xpipe5_tx_data(pspmc_0_IF_PS_CPM_xpipe5_tx_data),
        .xpipe5_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid),
        .xpipe5_tx_deemph(pspmc_0_IF_PS_CPM_xpipe5_tx_deemph),
        .xpipe5_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback),
        .xpipe5_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle),
        .xpipe5_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor),
        .xpipe5_tx_margin(pspmc_0_IF_PS_CPM_xpipe5_tx_margin),
        .xpipe5_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor),
        .xpipe5_tx_precursor(pspmc_0_IF_PS_CPM_xpipe5_tx_precursor),
        .xpipe5_tx_startblock(pspmc_0_IF_PS_CPM_xpipe5_tx_startblock),
        .xpipe5_tx_swing(pspmc_0_IF_PS_CPM_xpipe5_tx_swing),
        .xpipe5_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader),
        .xpipe6_phystatus(pspmc_0_IF_PS_CPM_xpipe6_phystatus),
        .xpipe6_powerdown(pspmc_0_IF_PS_CPM_xpipe6_powerdown),
        .xpipe6_rx_charisk(pspmc_0_IF_PS_CPM_xpipe6_rx_charisk),
        .xpipe6_rx_data(pspmc_0_IF_PS_CPM_xpipe6_rx_data),
        .xpipe6_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid),
        .xpipe6_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle),
        .xpipe6_rx_polarity(pspmc_0_IF_PS_CPM_xpipe6_rx_polarity),
        .xpipe6_rx_startblock(pspmc_0_IF_PS_CPM_xpipe6_rx_startblock),
        .xpipe6_rx_status(pspmc_0_IF_PS_CPM_xpipe6_rx_status),
        .xpipe6_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader),
        .xpipe6_rx_termination(pspmc_0_IF_PS_CPM_xpipe6_rx_termination),
        .xpipe6_rx_valid(pspmc_0_IF_PS_CPM_xpipe6_rx_valid),
        .xpipe6_tx_charisk(pspmc_0_IF_PS_CPM_xpipe6_tx_charisk),
        .xpipe6_tx_compliance(pspmc_0_IF_PS_CPM_xpipe6_tx_compliance),
        .xpipe6_tx_data(pspmc_0_IF_PS_CPM_xpipe6_tx_data),
        .xpipe6_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid),
        .xpipe6_tx_deemph(pspmc_0_IF_PS_CPM_xpipe6_tx_deemph),
        .xpipe6_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback),
        .xpipe6_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle),
        .xpipe6_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor),
        .xpipe6_tx_margin(pspmc_0_IF_PS_CPM_xpipe6_tx_margin),
        .xpipe6_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor),
        .xpipe6_tx_precursor(pspmc_0_IF_PS_CPM_xpipe6_tx_precursor),
        .xpipe6_tx_startblock(pspmc_0_IF_PS_CPM_xpipe6_tx_startblock),
        .xpipe6_tx_swing(pspmc_0_IF_PS_CPM_xpipe6_tx_swing),
        .xpipe6_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader),
        .xpipe7_phystatus(pspmc_0_IF_PS_CPM_xpipe7_phystatus),
        .xpipe7_powerdown(pspmc_0_IF_PS_CPM_xpipe7_powerdown),
        .xpipe7_rx_charisk(pspmc_0_IF_PS_CPM_xpipe7_rx_charisk),
        .xpipe7_rx_data(pspmc_0_IF_PS_CPM_xpipe7_rx_data),
        .xpipe7_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid),
        .xpipe7_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle),
        .xpipe7_rx_polarity(pspmc_0_IF_PS_CPM_xpipe7_rx_polarity),
        .xpipe7_rx_startblock(pspmc_0_IF_PS_CPM_xpipe7_rx_startblock),
        .xpipe7_rx_status(pspmc_0_IF_PS_CPM_xpipe7_rx_status),
        .xpipe7_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader),
        .xpipe7_rx_termination(pspmc_0_IF_PS_CPM_xpipe7_rx_termination),
        .xpipe7_rx_valid(pspmc_0_IF_PS_CPM_xpipe7_rx_valid),
        .xpipe7_tx_charisk(pspmc_0_IF_PS_CPM_xpipe7_tx_charisk),
        .xpipe7_tx_compliance(pspmc_0_IF_PS_CPM_xpipe7_tx_compliance),
        .xpipe7_tx_data(pspmc_0_IF_PS_CPM_xpipe7_tx_data),
        .xpipe7_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid),
        .xpipe7_tx_deemph(pspmc_0_IF_PS_CPM_xpipe7_tx_deemph),
        .xpipe7_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback),
        .xpipe7_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle),
        .xpipe7_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor),
        .xpipe7_tx_margin(pspmc_0_IF_PS_CPM_xpipe7_tx_margin),
        .xpipe7_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor),
        .xpipe7_tx_precursor(pspmc_0_IF_PS_CPM_xpipe7_tx_precursor),
        .xpipe7_tx_startblock(pspmc_0_IF_PS_CPM_xpipe7_tx_startblock),
        .xpipe7_tx_swing(pspmc_0_IF_PS_CPM_xpipe7_tx_swing),
        .xpipe7_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader),
        .xpipe8_phystatus(pspmc_0_IF_PS_CPM_xpipe8_phystatus),
        .xpipe8_powerdown(pspmc_0_IF_PS_CPM_xpipe8_powerdown),
        .xpipe8_rx_charisk(pspmc_0_IF_PS_CPM_xpipe8_rx_charisk),
        .xpipe8_rx_data(pspmc_0_IF_PS_CPM_xpipe8_rx_data),
        .xpipe8_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid),
        .xpipe8_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle),
        .xpipe8_rx_polarity(pspmc_0_IF_PS_CPM_xpipe8_rx_polarity),
        .xpipe8_rx_startblock(pspmc_0_IF_PS_CPM_xpipe8_rx_startblock),
        .xpipe8_rx_status(pspmc_0_IF_PS_CPM_xpipe8_rx_status),
        .xpipe8_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader),
        .xpipe8_rx_termination(pspmc_0_IF_PS_CPM_xpipe8_rx_termination),
        .xpipe8_rx_valid(pspmc_0_IF_PS_CPM_xpipe8_rx_valid),
        .xpipe8_tx_charisk(pspmc_0_IF_PS_CPM_xpipe8_tx_charisk),
        .xpipe8_tx_compliance(pspmc_0_IF_PS_CPM_xpipe8_tx_compliance),
        .xpipe8_tx_data(pspmc_0_IF_PS_CPM_xpipe8_tx_data),
        .xpipe8_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid),
        .xpipe8_tx_deemph(pspmc_0_IF_PS_CPM_xpipe8_tx_deemph),
        .xpipe8_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback),
        .xpipe8_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle),
        .xpipe8_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor),
        .xpipe8_tx_margin(pspmc_0_IF_PS_CPM_xpipe8_tx_margin),
        .xpipe8_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor),
        .xpipe8_tx_precursor(pspmc_0_IF_PS_CPM_xpipe8_tx_precursor),
        .xpipe8_tx_startblock(pspmc_0_IF_PS_CPM_xpipe8_tx_startblock),
        .xpipe8_tx_swing(pspmc_0_IF_PS_CPM_xpipe8_tx_swing),
        .xpipe8_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader),
        .xpipe9_phystatus(pspmc_0_IF_PS_CPM_xpipe9_phystatus),
        .xpipe9_powerdown(pspmc_0_IF_PS_CPM_xpipe9_powerdown),
        .xpipe9_rx_charisk(pspmc_0_IF_PS_CPM_xpipe9_rx_charisk),
        .xpipe9_rx_data(pspmc_0_IF_PS_CPM_xpipe9_rx_data),
        .xpipe9_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid),
        .xpipe9_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle),
        .xpipe9_rx_polarity(pspmc_0_IF_PS_CPM_xpipe9_rx_polarity),
        .xpipe9_rx_startblock(pspmc_0_IF_PS_CPM_xpipe9_rx_startblock),
        .xpipe9_rx_status(pspmc_0_IF_PS_CPM_xpipe9_rx_status),
        .xpipe9_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader),
        .xpipe9_rx_termination(pspmc_0_IF_PS_CPM_xpipe9_rx_termination),
        .xpipe9_rx_valid(pspmc_0_IF_PS_CPM_xpipe9_rx_valid),
        .xpipe9_tx_charisk(pspmc_0_IF_PS_CPM_xpipe9_tx_charisk),
        .xpipe9_tx_compliance(pspmc_0_IF_PS_CPM_xpipe9_tx_compliance),
        .xpipe9_tx_data(pspmc_0_IF_PS_CPM_xpipe9_tx_data),
        .xpipe9_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid),
        .xpipe9_tx_deemph(pspmc_0_IF_PS_CPM_xpipe9_tx_deemph),
        .xpipe9_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback),
        .xpipe9_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle),
        .xpipe9_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor),
        .xpipe9_tx_margin(pspmc_0_IF_PS_CPM_xpipe9_tx_margin),
        .xpipe9_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor),
        .xpipe9_tx_precursor(pspmc_0_IF_PS_CPM_xpipe9_tx_precursor),
        .xpipe9_tx_startblock(pspmc_0_IF_PS_CPM_xpipe9_tx_startblock),
        .xpipe9_tx_swing(pspmc_0_IF_PS_CPM_xpipe9_tx_swing),
        .xpipe9_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader),
        .xpipe_q0_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack),
        .xpipe_q0_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd),
        .xpipe_q0_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum),
        .xpipe_q0_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload),
        .xpipe_q0_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req),
        .xpipe_q0_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack),
        .xpipe_q0_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd),
        .xpipe_q0_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum),
        .xpipe_q0_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload),
        .xpipe_q0_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req),
        .xpipe_q1_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack),
        .xpipe_q1_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd),
        .xpipe_q1_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum),
        .xpipe_q1_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload),
        .xpipe_q1_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req),
        .xpipe_q1_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack),
        .xpipe_q1_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd),
        .xpipe_q1_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum),
        .xpipe_q1_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload),
        .xpipe_q1_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req),
        .xpipe_q2_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack),
        .xpipe_q2_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd),
        .xpipe_q2_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum),
        .xpipe_q2_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload),
        .xpipe_q2_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req),
        .xpipe_q2_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack),
        .xpipe_q2_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd),
        .xpipe_q2_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum),
        .xpipe_q2_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload),
        .xpipe_q2_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req),
        .xpipe_q3_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack),
        .xpipe_q3_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd),
        .xpipe_q3_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum),
        .xpipe_q3_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload),
        .xpipe_q3_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req),
        .xpipe_q3_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack),
        .xpipe_q3_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd),
        .xpipe_q3_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum),
        .xpipe_q3_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload),
        .xpipe_q3_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req));
endmodule
