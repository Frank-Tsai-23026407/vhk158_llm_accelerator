//-----------------------------------------------------------------------------
//
// (c) Copyright 2023-2027 Advanced Micro Devices, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------
//
// Project : AMD Versal Adaptive SoC CPM 5
// File    : qdma_wrapper.sv
// Version : 1.0
//-----------------------------------------------------------------------------

`include "cpm5_axi4mm_axi_bridge.vh"
`include "cpm5_interface.svh"

`timescale 1ps/1ps

module cpm5_v1_0_17_qdma_wrapper 
import cpm5_v1_0_17_pkg::*;
#(
  parameter TCQ = 100,
  parameter CRC_WIDTH = 32,
  parameter IS_MM_ONLY = 0,
  parameter C_AXISTEN_IF_WIDTH = 512,

  parameter MDMA_H2C_TUSER_WIDTH        = 128,
  parameter MDMA_H2C_DSC_IN_NUM_ST_CHNL = 1,
  parameter MDMA_C2H_DSC_IN_NUM_ST_CHNL = 2,
  parameter MDMA_DSC_IN_NUM_MM_CHNL     = 2,
  parameter MDMA_TM_DSC_STS_NUM_CHNL    = 1,
  parameter MDMA_H2C_DSC_IN_NUM_CHNL    = MDMA_H2C_DSC_IN_NUM_ST_CHNL + MDMA_DSC_IN_NUM_MM_CHNL,
  parameter MDMA_C2H_DSC_IN_NUM_CHNL    = MDMA_C2H_DSC_IN_NUM_ST_CHNL + MDMA_DSC_IN_NUM_MM_CHNL,
  parameter C_CPM_PCIE_QDMA_FABDEMUX_OPT = 0
)
(
  input  user_clk,

  output reg user_reset,
  output reg user_lnk_up,

  // MDMA ports
  output mdma_resetn,
  input  dma_resetn,

  // To dma_fab_out port
  input [1023:0] m_axis_pcie_cq_tdata,
  input [31:0]   m_axis_pcie_cq_tkeep,
  input [464:0]  m_axis_pcie_cq_tuser,
  input          m_axis_pcie_cq_tlast,
  input          m_axis_pcie_cq_tvalid,

  input m_axis_pcie_cq_vld,
  input m_axis_pcie_rc_vld,
  input m_axis_pcie_rc_tlast,

  output [1023:0] s_axis_cc_tdata,
  output [164:0]  s_axis_cc_tuser,
  output [1023:0] s_axis_rq_tdata,
  output [372:0]  s_axis_rq_tuser,

  input        cfg_10b_tag_requester_enable,
  input        cfg_atomic_requester_enable,
  input [7:0]  cfg_bus_number,
  input        cfg_ccix_edr_data_rate_change_req,
  input [2:0]  cfg_current_speed,
  input        cfg_edr_enable,
  input        cfg_err_cor_out,
  input        cfg_err_fatal_out,
  input        cfg_err_nonfatal_out,
  input [15:0] cfg_ext_function_number,
  input        cfg_ext_read_received,
  input [9:0]  cfg_ext_register_number,
  input        cfg_ext_tag_enable,
  input [3:0]  cfg_ext_write_byte_enable,
  input [31:0] cfg_ext_write_data,
  input        cfg_ext_write_received,
  input [11:0] cfg_fc_cpld,
  input [1:0]  cfg_fc_cpld_scale,
  input [7:0]  cfg_fc_cplh,
  input [1:0]  cfg_fc_cplh_scale,
  input [11:0] cfg_fc_npd,
  input [1:0]  cfg_fc_npd_scale,
  input [7:0]  cfg_fc_nph,
  input [1:0]  cfg_fc_nph_scale,
  input [11:0] cfg_fc_pd,
  input [1:0]  cfg_fc_pd_scale,
  input [7:0]  cfg_fc_ph,
  input [1:0]  cfg_fc_ph_scale,
  input [2:0]  cfg_function_power_state,
  input [3:0]  cfg_function_status,
  input        cfg_hot_reset_out,
  input [31:0] cfg_interrupt_msi_data,
  input        cfg_interrupt_msi_enable,
  input        cfg_interrupt_msi_fail,
  input        cfg_interrupt_msi_mask_update,
  input [2:0]  cfg_interrupt_msi_mmenable,
  input        cfg_interrupt_msi_sent,
  input        cfg_interrupt_msix_enable,
  input        cfg_interrupt_msix_mask,
  input        cfg_interrupt_msix_vec_pending_status,
  input        cfg_interrupt_sent,
  input [1:0]  cfg_link_power_state,
  input [4:0]  cfg_local_error_out,
  input [5:0]  cfg_ltssm_state,
  input [1:0]  cfg_max_payload,
  input [2:0]  cfg_max_read_req,
  input [31:0] cfg_mgmt_read_data,
  input        cfg_mgmt_read_write_done,
  input        cfg_msg_received,
  input [7:0]  cfg_msg_received_data,
  input [4:0]  cfg_msg_received_type,
  input        cfg_msg_transmit_done,
  input [2:0]  cfg_negotiated_width,
  input        cfg_pasid_enable,
  input        cfg_pasid_exec_permission_enable,
  input        cfg_pasid_privil_mode_enable,
  input [23:0] cfg_perfunc_out,
  input        cfg_perfunc_vld,
  input        cfg_phy_link_down,
  input [1:0]  cfg_phy_link_status,
  input        cfg_pl_status_change,
  input        cfg_power_state_change_interrupt,
  input        cfg_rcb_status,
  input [1:0]  cfg_rx_pm_state,
  input [1:0]  cfg_tx_pm_state,
  input        cfg_vc1_enable,
  input        cfg_vc1_negotiation_pending,
  input        cfg_wrreq_bme_vld,
  input        cfg_wrreq_flr_vld,
  input [15:0] cfg_wrreq_func_num,
  input        cfg_wrreq_msi_vld,
  input        cfg_wrreq_msix_vld,
  input [5:0]  pcie_cq_np_req_count,
  input [3:0]  pcie_rq_seq_num_vld,
  input [5:0]  pcie_rq_seq_num0,
  input [5:0]  pcie_rq_seq_num1,
  input [5:0]  pcie_rq_seq_num2,
  input [5:0]  pcie_rq_seq_num3,
  input [39:0] pcie_rq_tag,
  input [3:0]  pcie_rq_tag_av,
  input [3:0]  pcie_rq_tag_vld,
  input [3:0]  pcie_tfc_npd_av,
  input [3:0]  pcie_tfc_nph_av,

  output [15:0] cfg_interrupt_msi_function_number,
  output [31:0] cfg_interrupt_msi_pending_status,
  output [ 1:0] cfg_interrupt_msi_tph_type,
  output [63:0] cfg_interrupt_msix_address,

  output       axis_c2h_dmawr_cmp ,
  output       axis_c2h_dmawr_target_vch ,
  output [2:0] axis_c2h_dmawr_port_id ,

  // Report the C2H Status case
  output        axis_c2h_status_drop,
  output        axis_c2h_status_last,
  output        axis_c2h_status_cmp  ,
  output        axis_c2h_status_valid  ,
  output        axis_c2h_status_error  ,
  output [11:0] axis_c2h_status_qid  ,
  output [2:0]  axis_c2h_status_port_id  ,
  output        axis_c2h_status_host_target_id  ,

  // mdma C2H Slave Ports
  input [C_AXISTEN_IF_WIDTH-1 :0] s_axis_mdma_c2h_data,
  input [CRC_WIDTH-1:0] s_axis_mdma_c2h_crc,
  input  [15:0]  s_axis_mdma_c2h_ctrl_len,
  input  [11:0]  s_axis_mdma_c2h_ctrl_qid,
  input          s_axis_mdma_c2h_ctrl_has_cmpt,
  input          s_axis_mdma_c2h_ctrl_marker,
  input  [2:0]   s_axis_mdma_c2h_ctrl_port_id,
  input          s_axis_mdma_c2h_ctrl_num_buf_ov,
  input          s_axis_mdma_c2h_ctrl_drop_req,
  input          s_axis_mdma_c2h_ctrl_var_desc,
  input  [3:0]   s_axis_mdma_c2h_ctrl_host_id,
  input  [6:0]   s_axis_mdma_c2h_ctrl_ecc,
  input          s_axis_mdma_c2h_tvalid,
  input          s_axis_mdma_c2h_tlast,
  input  [5:0]   s_axis_mdma_c2h_mty,
  output logic   s_axis_mdma_c2h_tready,

  // mdma C2H Wrb Slave Ports
  input  [511:0] s_axis_mdma_c2h_cmpt_tdata,
  input  [1:0]   s_axis_mdma_c2h_cmpt_size,
  input  [15:0]  s_axis_mdma_c2h_cmpt_dpar,
  input  [12:0]  s_axis_mdma_c2h_cmpt_ctrl_cqid,
  input          s_axis_mdma_c2h_cmpt_ctrl_marker,
  input          s_axis_mdma_c2h_cmpt_ctrl_no_wrb_marker,
  input          s_axis_mdma_c2h_cmpt_ctrl_user_trig,
  input  [1:0]   s_axis_mdma_c2h_cmpt_ctrl_cmpt_type,
  input  [15:0]  s_axis_mdma_c2h_cmpt_ctrl_wait_pld_pkt_id,
  input  [2:0]   s_axis_mdma_c2h_cmpt_ctrl_port_id,
  input  [2:0]   s_axis_mdma_c2h_cmpt_ctrl_col_idx,
  input  [2:0]   s_axis_mdma_c2h_cmpt_ctrl_err_idx,
  input          s_axis_mdma_c2h_cmpt_ctrl_pld_virt_ch,
  input          s_axis_mdma_c2h_cmpt_ctrl_non_blocking,
  input          s_axis_mdma_c2h_cmpt_ctrl_prty0,
  input          s_axis_mdma_c2h_cmpt_ctrl_prty1,
  input          s_axis_mdma_c2h_cmpt_tvalid,
  output logic   s_axis_mdma_c2h_cmpt_tready,

  // mdma H2C Master Ports
  output [C_AXISTEN_IF_WIDTH-1 :0] m_axis_mdma_h2c_tdata,
  output [CRC_WIDTH-1:0] m_axis_mdma_h2c_tcrc,
  output [6:0]  m_axis_mdma_h2c_tuser_ecc,
  output [2:0]  m_axis_mdma_h2c_tuser_port_id,
  output [12:0] m_axis_mdma_h2c_tuser_qid,
  output [5:0]  m_axis_mdma_h2c_tuser_mty,
  output [31:0] m_axis_mdma_h2c_tuser_mdata,
  output        m_axis_mdma_h2c_tuser_zero_byte,
  output        m_axis_mdma_h2c_tuser_err,
  output        m_axis_mdma_h2c_tlast,
  output        m_axis_mdma_h2c_tvalid,
  input         m_axis_mdma_h2c_tready,

  // H2C Descriptor Bypass Out Interface
  output [255:0] h2c_byp_out_dsc,
  output         h2c_byp_out_st_mm,
  output [1:0]   h2c_byp_out_dsc_sz,
  output [4:0]   h2c_byp_out_cnt,
  output [2:0]   h2c_byp_out_fmt,
  output [3:0]   h2c_byp_out_host_id,
  output         h2c_byp_out_pasid_en,
  output [21:0]  h2c_byp_out_pasid,
  output [12:0]  h2c_byp_out_qid,
  output         h2c_byp_out_error,
  output [11:0]  h2c_byp_out_func,
  output [15:0]  h2c_byp_out_cidx,
  output         h2c_byp_out_mm_chn,
  output [2:0]   h2c_byp_out_port_id,
  output         h2c_byp_out_vld,
  input          h2c_byp_out_rdy,

  // C2H Descriptor Bypass Out Interface
  output [255:0] c2h_byp_out_dsc,
  output        c2h_byp_out_st_mm,
  output [1:0]  c2h_byp_out_dsc_sz,
  output [4:0]  c2h_byp_out_cnt,
  output [2:0]  c2h_byp_out_fmt,
  output [3:0]  c2h_byp_out_host_id,
  output        c2h_byp_out_pasid_en,
  output [21:0] c2h_byp_out_pasid,
  output [12:0] c2h_byp_out_qid,
  output        c2h_byp_out_error,
  output [11:0] c2h_byp_out_func,
  output [15:0] c2h_byp_out_cidx,
  output        c2h_byp_out_mm_chn,
  output        c2h_byp_out_var_desc,
  output [6:0]  c2h_byp_out_pfch_tag,
  output [2:0]  c2h_byp_out_port_id,
  output        c2h_byp_out_vld,
  input         c2h_byp_out_rdy,

  // H2C Descriptor Bypass In Interface
 // Desciptor Bypass In for mdma
 // 2 channels for Hard IP
  input         h2c_byp_in_mm_0_vld,
  output        h2c_byp_in_mm_0_rdy,
  input  [63:0] h2c_byp_in_mm_0_radr,
  input  [63:0] h2c_byp_in_mm_0_wadr,
  input  [1:0]  h2c_byp_in_mm_0_at,
  input         h2c_byp_in_mm_0_no_dma,
  input  [15:0] h2c_byp_in_mm_0_len,
  input         h2c_byp_in_mm_0_sdi,
  input         h2c_byp_in_mm_0_mrkr_req,
  input  [12:0] h2c_byp_in_mm_0_qid,
  input         h2c_byp_in_mm_0_error,
  input  [15:0] h2c_byp_in_mm_0_cidx,
  input  [2:0]  h2c_byp_in_mm_0_port_id,
  input  [3:0]  h2c_byp_in_mm_0_host_id,
  input  [11:0] h2c_byp_in_mm_0_func,
  input         h2c_byp_in_mm_0_csh_pasid_en,
  input  [21:0] h2c_byp_in_mm_0_csh_pasid,

  input         h2c_byp_in_mm_1_vld,
  output        h2c_byp_in_mm_1_rdy,
  input  [63:0] h2c_byp_in_mm_1_radr,
  input  [63:0] h2c_byp_in_mm_1_wadr,
  input  [1:0]  h2c_byp_in_mm_1_at,
  input         h2c_byp_in_mm_1_no_dma,
  input  [15:0] h2c_byp_in_mm_1_len,
  input         h2c_byp_in_mm_1_sdi,
  input         h2c_byp_in_mm_1_mrkr_req,
  input  [12:0] h2c_byp_in_mm_1_qid,
  input         h2c_byp_in_mm_1_error,
  input  [15:0] h2c_byp_in_mm_1_cidx,
  input  [2:0]  h2c_byp_in_mm_1_port_id,
  input  [3:0]  h2c_byp_in_mm_1_host_id,
  input  [11:0] h2c_byp_in_mm_1_func,
  input         h2c_byp_in_mm_1_csh_pasid_en,
  input  [21:0] h2c_byp_in_mm_1_csh_pasid,

  input         h2c_byp_in_st_vld,
  input  [12:0] h2c_byp_in_st_qid,
  output        h2c_byp_in_st_rdy,
  input  [63:0] h2c_byp_in_st_addr,
  input  [15:0] h2c_byp_in_st_len,
  input  [1:0]  h2c_byp_in_st_at,
  input         h2c_byp_in_st_sop,
  input         h2c_byp_in_st_eop,
  input         h2c_byp_in_st_sdi,
  input         h2c_byp_in_st_mrkr_req,
  input         h2c_byp_in_st_no_dma,
  input         h2c_byp_in_st_pasid_en,
  input  [21:0] h2c_byp_in_st_pasid,
  input         h2c_byp_in_st_error,
  input  [11:0] h2c_byp_in_st_func,
  input  [2:0]  h2c_byp_in_st_port_id,
  input  [3:0]  h2c_byp_in_st_host_id,
  input  [15:0] h2c_byp_in_st_cidx,

  // C2H Descriptor Bypass In Interface
  input  [63:0] c2h_byp_in_st_csh_addr,
  input         c2h_byp_in_st_csh_vld,
  output        c2h_byp_in_st_csh_rdy,
  input  [15:0] c2h_byp_in_st_csh_len,
  input  [1:0]  c2h_byp_in_st_csh_at,
  input         c2h_byp_in_st_csh_error,
  input  [11:0] c2h_byp_in_st_csh_func,
  input         c2h_byp_in_st_csh_pasid_en,
  input  [21:0] c2h_byp_in_st_csh_pasid,
  input  [6:0]  c2h_byp_in_st_csh_pfch_tag,
  input  [3:0]  c2h_byp_in_st_csh_host_id,
  input         c2h_byp_in_st_csh_var_desc,
  input  [2:0]  c2h_byp_in_st_csh_port_id,
  input  [2:0]  c2h_byp_in_st_csh_fmt,
  input  [15:0] c2h_byp_in_st_csh_cidx,

  input  [63:0] c2h_byp_in_mm_0_radr,
  input  [63:0] c2h_byp_in_mm_0_wadr,
  input         c2h_byp_in_mm_0_vld,
  output        c2h_byp_in_mm_0_rdy,
  input  [1:0]  c2h_byp_in_mm_0_at,
  input         c2h_byp_in_mm_0_no_dma,
  input  [15:0] c2h_byp_in_mm_0_len,
  input         c2h_byp_in_mm_0_sdi,
  input         c2h_byp_in_mm_0_mrkr_req,
  input  [12:0] c2h_byp_in_mm_0_qid,
  input         c2h_byp_in_mm_0_error,
  input  [11:0] c2h_byp_in_mm_0_func,
  input  [15:0] c2h_byp_in_mm_0_cidx,
  input  [2:0]  c2h_byp_in_mm_0_port_id,
  input  [3:0]  c2h_byp_in_mm_0_host_id,
  input         c2h_byp_in_mm_0_pasid_en,
  input  [21:0] c2h_byp_in_mm_0_pasid,

  input  [63:0] c2h_byp_in_mm_1_radr,
  input  [63:0] c2h_byp_in_mm_1_wadr,
  input         c2h_byp_in_mm_1_vld,
  output        c2h_byp_in_mm_1_rdy,
  input  [1:0]  c2h_byp_in_mm_1_at,
  input         c2h_byp_in_mm_1_no_dma,
  input  [15:0] c2h_byp_in_mm_1_len,
  input         c2h_byp_in_mm_1_sdi,
  input         c2h_byp_in_mm_1_mrkr_req,
  input  [12:0] c2h_byp_in_mm_1_qid,
  input         c2h_byp_in_mm_1_error,
  input  [11:0] c2h_byp_in_mm_1_func,
  input  [15:0] c2h_byp_in_mm_1_cidx,
  input  [2:0]  c2h_byp_in_mm_1_port_id,
  input  [3:0]  c2h_byp_in_mm_1_host_id,
  input         c2h_byp_in_mm_1_pasid_en,
  input  [21:0] c2h_byp_in_mm_1_pasid,

  // Descriptor Fetch Engine Out
  input         mdma_tm_dsc_sts_rdy,
  output        mdma_tm_dsc_sts_vld,
  output        mdma_tm_dsc_sts_byp,
  output        mdma_tm_dsc_sts_qen,
  output        mdma_tm_dsc_sts_dir,
  output        mdma_tm_dsc_sts_mm,
  output        mdma_tm_dsc_sts_error,
  output [12:0] mdma_tm_dsc_sts_qid,
  output [15:0] mdma_tm_dsc_sts_avl,
  output [2:0]  mdma_tm_dsc_sts_port_id,
  output        mdma_tm_dsc_sts_qinv,
  output        mdma_tm_dsc_sts_irq_arm,
  output        mdma_tm_dsc_sts_vio_dsc_crdt,
  output        mdma_tm_dsc_sts_vio_en,
  output [11:0] mdma_tm_dsc_sts_fnid,
  output [15:0] mdma_tm_dsc_sts_pidx,
  output        mdma_tm_dsc_sts_vio_hw_db,
  output        mdma_tm_dsc_sts_vio_sw_db,
  output        mdma_tm_dsc_sts_vio_avl_flg,

  // STS_OUT
  output [7:0]  qsts_out_op ,
  output [63:0] qsts_out_data ,
  output [2:0]  qsts_out_port_id ,
  output [12:0] qsts_out_qid ,
  output logic  qsts_sts_out_vld,
  input  logic  qsts_sts_out_rdy,

  // Descriptor credit In
  input        mdma_dsc_crdt_in_vld,
  output       mdma_dsc_crdt_in_rdy,
  input [15:0] mdma_dsc_crdt_in_crdt,
  input        mdma_dsc_crdt_in_dir,
  input        mdma_dsc_crdt_in_fence,
  input [12:0] mdma_dsc_crdt_in_qid,

  output       virtio_dsc_crdt_in_rdy ,
  input        virtio_dsc_crdt_in_vld ,
  input [15:0] virtio_dsc_crdt_in_crdt ,
  input [12:0] virtio_dsc_crdt_in_qid ,
  input        virtio_dsc_crdt_in_dir ,
  input [15:0] virtio_dsc_crdt_in_idx ,

  // User IRQ
  input        usr_irq_in_vld,
  input [3:0]  usr_irq_in_host_id,
  input [10:0] usr_irq_in_vec,
  input [12:0] usr_irq_in_func,
  output       usr_irq_out_ack,
  output       usr_irq_out_fail,

  input         mgmt_req_vld,
  input  [31:0] mgmt_req_dat,
  input  [31:0] mgmt_req_adr,
  input  [12:0] mgmt_req_fnc,
  input  [5:0]  mgmt_req_msc,
  input  [1:0]  mgmt_req_cmd,
  output        mgmt_req_rdy,
  output        mgmt_cpl_vld,
  output  [1:0] mgmt_cpl_sts,
  output [31:0] mgmt_cpl_dat,
  input         mgmt_cpl_rdy,

  // VDM
  input         st_rx_msg_rdy,
  output [31:0] st_rx_msg_data,
  output        st_rx_msg_valid,
  output        st_rx_msg_last,

  input  [12:0] usr_flr_done_fnc,
  input         usr_flr_done_vld,
  output [12:0] usr_flr_fnc,
  output        usr_flr_vld,
  // end of MDMA ports

  input         cfg_ext_read_data_valid_usr,
  input  [31:0] cfg_ext_read_data_usr,
  output [15:0] cfg_ext_function_number_usr,
  output        cfg_ext_read_received_usr,
  output [9:0]  cfg_ext_register_number_usr,
  output [3:0]  cfg_ext_write_byte_enable_usr,
  output [31:0] cfg_ext_write_data_usr,
  output        cfg_ext_write_received_usr,

  input  attr_pl_upstream_facing_i
);

  localparam COM_FAB_OIF_WIDTH = $bits(com_fab_oif_t);
  localparam COM_FAB_IIF_WIDTH = $bits(com_fab_iif_t);
  localparam MDMA_FAB_OIF_WIDTH = $bits(mdma_fab_oif_t);
  localparam MDMA_FAB_IIF_WIDTH = $bits(mdma_fab_iif_t);

  logic [1949:0] mdma_fabric_a_out; // output relative to hard block // [1524:   0]
  logic [2699:0] mdma_fabric_a_in; //Input relative to hard block
  
  attr_dma_sp_t  attr_dma;
  mdma_sts_out_t mdma_sts_out;
  
  wire axi_resetn;
  wire sys_or_hot_rst;
  wire user_reset_int;
  wire user_lnk_up_int;
  reg user_reset_cdc_o;
  reg user_lnk_up_cdc_o;
  wire fab_out_axi_resetn;
  reg [8:0] rst_count = 0;
  reg [7:0] crdt_count = 0;
  reg crdt_rst = 1;
  reg crdt_rls = 0;

  (*keep = "true"*) logic [5:0]  soft_fab_mst_crd_rst;
  (*keep = "true"*) logic [5:0]  soft_fab_slv_crd_rls_en;

    // sideband: flr
  usr_flr_if_in_t  mdma_flr_in;
  usr_flr_if_out_t mdma_flr_out;

  logic          mdma_mgmt_req_vld; // to demux
  dma_mgmt_req_t mdma_mgmt_req   ; // to demux
  logic          mdma_mgmt_req_rdy; // from demux

  logic          mdma_mgmt_cpl_vld; // from demux
  dma_mgmt_cpl_t mdma_mgmt_cpl   ; // from demux
  logic          mdma_mgmt_cpl_rdy; // to demux

  mdma_desc_rsp_drop_t c2h_drop;
  mdma_c2h_pcie_cmp_t  c2h_pcie_cmp;
  
  mdma_c2h_st_mhost_feedback_t   c2h_st_mhost_feedback;
  
  dma_err_out_t  mdma_dma_err_out;
  dma_err_out_t  dma_err_out;

  cfg_ext_usr_in_t      cfg_ext_usr_in;
  cfg_ext_usr_out_t     cfg_ext_usr_out;

  axi_intr_out_t axi_interrupt_out;
  axi_intr_in_t  axi_interrupt_in;

  com_fab_oif_t fab_out_temp;
  assign fab_out_temp    =  (com_fab_oif_t'(mdma_fabric_a_out[COM_FAB_OIF_WIDTH-1 :0]));
  assign fab_out_axi_resetn    = fab_out_temp.axi_resetn;
  assign user_lnk_up_int = (cfg_phy_link_status == 2'b11 ) ? 1'b1 : 1'b0;

  assign sys_or_hot_rst = !fab_out_axi_resetn ||  cfg_hot_reset_out;

  logic [12:0] h2c_qbase_dec;
  //assign h2c_qbase_dec = (attr_dma.mdma_cfg.flat_qnum)? (13'b0_0000_0010_0000 << attr_dma.mdma_cfg.h2c_qbase): ('0);
  assign h2c_qbase_dec = 13'h0;

  assign qsts_out_op      = mdma_sts_out.op;
  assign qsts_out_data    = mdma_sts_out.data;
  assign qsts_out_port_id = mdma_sts_out.port_id;
  assign qsts_out_qid    = mdma_sts_out.qid | ((mdma_sts_out.op==H2C_MM_MRKR_RSP || mdma_sts_out.op==H2C_ST_MRKR_RSP)?  h2c_qbase_dec : '0);

  assign axis_c2h_dmawr_cmp = c2h_pcie_cmp.cmp;
  assign axis_c2h_dmawr_target_vch = c2h_pcie_cmp.virt_ch;
  assign axis_c2h_dmawr_port_id = c2h_pcie_cmp.port_id;

  mdma_c2h_axis_data_t mdma_c2h_axis_data;
  assign mdma_c2h_axis_data.tdata = s_axis_mdma_c2h_data;
  assign mdma_c2h_axis_data.par = '0;

  mdma_h2c_axis_data_t mdma_h2c_axis_data;
  assign m_axis_mdma_h2c_tdata = mdma_h2c_axis_data.tdata;

  assign dma_err_out.valid     = mdma_dma_err_out.valid;
  assign dma_err_out.source    = mdma_dma_err_out.source;

  // C2h drop
  assign axis_c2h_status_drop  = c2h_drop.drop;
  assign axis_c2h_status_last  = c2h_drop.last;
  assign axis_c2h_status_valid = c2h_drop.valid;
  assign axis_c2h_status_qid   = '0 | c2h_drop.qid;
  assign axis_c2h_status_cmp   = c2h_drop.cmp;
  assign axis_c2h_status_error = c2h_drop.error;
  assign axis_c2h_status_host_target_id = c2h_drop.host_target_id;
  assign axis_c2h_status_port_id = c2h_drop.port_id;

  // C2H Stream Completion Connection
  mdma_c2h_wrb_data_t s_axis_c2h_cmpt_tdata_net;
  assign s_axis_c2h_cmpt_tdata_net.wrb_data = s_axis_mdma_c2h_cmpt_tdata;
  assign s_axis_c2h_cmpt_tdata_net.dpar     = s_axis_mdma_c2h_cmpt_dpar;

  assign mdma_flr_in.fnc = usr_flr_done_fnc;
  assign mdma_flr_in.vld = usr_flr_done_vld; // done to dma from user
  assign usr_flr_fnc     = mdma_flr_out.fnc; // dma to user
  assign usr_flr_vld     = mdma_flr_out.vld; // done

  assign mdma_mgmt_req_vld = mgmt_req_vld;
  assign mdma_mgmt_req.dat = mgmt_req_dat;
  assign mdma_mgmt_req.adr = mgmt_req_adr;
  assign mdma_mgmt_req.fnc = mgmt_req_fnc;
  assign mdma_mgmt_req.msc = mgmt_req_msc;
  assign mdma_mgmt_req.cmd = mgmt_req_cmd;
  assign mgmt_req_rdy = mdma_mgmt_req_rdy;

  assign mgmt_cpl_vld = mdma_mgmt_cpl_vld;
  assign mgmt_cpl_sts = mdma_mgmt_cpl.sts;
  assign mgmt_cpl_dat = mdma_mgmt_cpl.dat;
  assign mdma_mgmt_cpl_rdy = mgmt_cpl_rdy;

  assign cfg_ext_usr_in.cfg_ext_read_data_vld = cfg_ext_read_data_valid_usr;
  assign cfg_ext_usr_in.cfg_ext_read_data = cfg_ext_read_data_usr; 
  assign cfg_ext_function_number_usr = cfg_ext_usr_out.cfg_ext_function_number;
  assign cfg_ext_read_received_usr = cfg_ext_usr_out.cfg_ext_read_received;
  assign cfg_ext_register_number_usr = cfg_ext_usr_out.cfg_ext_register_number;
  assign cfg_ext_write_byte_enable_usr = cfg_ext_usr_out.cfg_ext_write_byte_enable;
  assign cfg_ext_write_data_usr = cfg_ext_usr_out.cfg_ext_write_data;
  assign cfg_ext_write_received_usr = cfg_ext_usr_out.cfg_ext_write_received;

  //#####################################################################
  //                            Controller 0
  //######################################################################

  // CDC for the user_lnk_up output
  // this will deassert asynchronously with phy_ready and assert synchronously
  xpm_cdc_async_rst #(
    .DEST_SYNC_FF   (2),
    .RST_ACTIVE_HIGH(0)
  ) user_lnk_up_cdc (
    .src_arst   (user_lnk_up_int),
    .dest_arst  (user_lnk_up_cdc_o),
    .dest_clk   (user_clk)
  );

  // Additional reset register that can be replicated by the tools to facilitate timing closure
  always @(posedge user_clk or negedge user_lnk_up_int) begin
    if(!user_lnk_up_int) begin
      user_lnk_up <= 1'b0;
    end else begin
      user_lnk_up <= user_lnk_up_cdc_o;
    end
  end

  // CDC for the user_reset output
  // this will assert asynchronously with phy_ready and deassert synchronously
  assign user_reset_int = sys_or_hot_rst || cfg_phy_link_down || !cfg_phy_link_status[1];

  xpm_cdc_async_rst #(
    .DEST_SYNC_FF   (2),
    .RST_ACTIVE_HIGH(1)
  ) user_reset_cdc (
    .src_arst  (user_reset_int),
    .dest_arst (user_reset_cdc_o),
    .dest_clk  (user_clk)
  );
  // Additional reset register that can be replicated by the tools to facilitate timing closure
  always @(posedge user_clk or posedge user_reset_int) begin
    if(user_reset_int) begin
      user_reset <= 1'b1;
    end else begin
      user_reset <= user_reset_cdc_o;
    end
  end
  
  generate
  if (!IS_MM_ONLY)
  begin : AXIST
    //######################################################################################
    //                           MDMA soft logic
    //######################################################################################

    // Fabric Cfg Output Pin Sharing
    always_comb 
    begin
      mdma_fabric_a_out[1949:1525] =  {
         pcie_tfc_nph_av
        ,pcie_tfc_npd_av
        ,pcie_rq_tag_vld
        ,pcie_rq_tag_av
        ,pcie_rq_tag
        ,pcie_rq_seq_num3
        ,pcie_rq_seq_num2
        ,pcie_rq_seq_num1
        ,pcie_rq_seq_num0
        ,pcie_rq_seq_num_vld
        ,pcie_cq_np_req_count
        ,cfg_wrreq_msix_vld
        ,cfg_wrreq_msi_vld
        ,cfg_wrreq_func_num
        ,cfg_wrreq_flr_vld
        ,cfg_wrreq_bme_vld
        ,cfg_vc1_negotiation_pending
        ,cfg_vc1_enable
        ,cfg_tx_pm_state
        ,cfg_rx_pm_state
        ,cfg_rcb_status
        ,cfg_power_state_change_interrupt
        ,cfg_pl_status_change
        ,cfg_phy_link_status
        ,cfg_phy_link_down
        ,cfg_perfunc_vld
        ,cfg_perfunc_out
        ,cfg_pasid_privil_mode_enable
        ,cfg_pasid_exec_permission_enable
        ,cfg_pasid_enable
        ,cfg_negotiated_width
        ,cfg_msg_transmit_done
        ,cfg_msg_received_type
        ,cfg_msg_received_data
        ,cfg_msg_received
        ,cfg_mgmt_read_write_done
        ,cfg_mgmt_read_data
        ,cfg_max_read_req
        ,cfg_max_payload
        ,cfg_ltssm_state
        ,cfg_local_error_out
        ,cfg_link_power_state
        ,cfg_interrupt_sent
        ,cfg_interrupt_msix_vec_pending_status
        ,cfg_interrupt_msix_mask
        ,cfg_interrupt_msix_enable
        ,cfg_interrupt_msi_sent
        ,cfg_interrupt_msi_mmenable
        ,cfg_interrupt_msi_mask_update
        ,cfg_interrupt_msi_fail
        ,cfg_interrupt_msi_enable
        ,cfg_interrupt_msi_data
        ,cfg_hot_reset_out
        ,cfg_function_status
        ,cfg_function_power_state
        ,cfg_fc_ph_scale
        ,cfg_fc_ph
        ,cfg_fc_pd_scale
        ,cfg_fc_pd
        ,cfg_fc_nph_scale
        ,cfg_fc_nph
        ,cfg_fc_npd_scale
        ,cfg_fc_npd
        ,cfg_fc_cplh_scale
        ,cfg_fc_cplh
        ,cfg_fc_cpld_scale
        ,cfg_fc_cpld
        ,cfg_ext_write_received
        ,cfg_ext_write_data
        ,cfg_ext_write_byte_enable
        ,cfg_ext_tag_enable
        ,cfg_ext_register_number
        ,cfg_ext_read_received
        ,cfg_ext_function_number
        ,cfg_err_nonfatal_out
        ,cfg_err_fatal_out
        ,cfg_err_cor_out
        ,cfg_edr_enable
        ,cfg_current_speed
        ,cfg_ccix_edr_data_rate_change_req
        ,cfg_bus_number
        ,cfg_atomic_requester_enable
        ,cfg_10b_tag_requester_enable
      } | 425'b0;
    end

    assign mdma_fabric_a_out[1524:0] = {
        m_axis_pcie_rc_vld,
        m_axis_pcie_cq_vld,
        m_axis_pcie_rc_tlast,
        m_axis_pcie_cq_tuser[464:0],
        m_axis_pcie_cq_tlast,
        m_axis_pcie_cq_tkeep[31:0],
        m_axis_pcie_cq_tdata[1023:0]
      } | 1525'b0;

    assign {
        s_axis_cc_tuser[164 :0],
        s_axis_rq_tuser[372 :0],
        s_axis_rq_tdata[1023:0],
        s_axis_cc_tdata[1023:0]
      } = mdma_fabric_a_in[2585:0];

    assign {
        cfg_interrupt_msi_tph_type[1:0],
        cfg_interrupt_msi_function_number[15:0],
        cfg_interrupt_msi_pending_status[31:0],
        cfg_interrupt_msix_address[63:0] 
      } = mdma_fabric_a_in[2699:2586];

    // QDMA Mux/Demux.
    cpm5_v1_0_17_mdma_fab_demux #(
      .TCQ(TCQ),
      .MDMA_CRC_INBAND(0)
    //.C_CPM_PCIE_QDMA_FABDEMUX_OPT(C_CPM_PCIE_QDMA_FABDEMUX_OPT)
    ) u_demux (
      .clk(user_clk),
      .rst_n(fab_out_axi_resetn),

      .en_8k_cmpt_qid(1'b0),
      .axi_resetn(axi_resetn),
      .demux_rst_n(mdma_resetn),

      .dma_sel(1'b1),

      // mdma C2H Slave Ports
      .s_axis_mdma_c2h_data  (mdma_c2h_axis_data),
      .s_axis_mdma_c2h_tvalid(s_axis_mdma_c2h_tvalid),
      .s_axis_mdma_c2h_tlast (s_axis_mdma_c2h_tlast),
      .s_axis_mdma_c2h_mty   (s_axis_mdma_c2h_mty),
      .s_axis_mdma_c2h_tready(s_axis_mdma_c2h_tready),
      .s_axis_mdma_c2h_crc   (s_axis_mdma_c2h_crc),
      
      .s_axis_mdma_c2h_ctrl_len     (s_axis_mdma_c2h_ctrl_len),
      .s_axis_mdma_c2h_ctrl_qid     (s_axis_mdma_c2h_ctrl_qid),
      .s_axis_mdma_c2h_ctrl_has_cmpt(s_axis_mdma_c2h_ctrl_has_cmpt),
      .s_axis_mdma_c2h_ctrl_marker  (s_axis_mdma_c2h_ctrl_marker),
      .s_axis_mdma_c2h_ctrl_port_id (s_axis_mdma_c2h_ctrl_port_id),
      .s_axis_mdma_c2h_ctrl_num_buf_ov(s_axis_mdma_c2h_ctrl_num_buf_ov),
      .s_axis_mdma_c2h_ctrl_drop_req(s_axis_mdma_c2h_ctrl_drop_req),
      .s_axis_mdma_c2h_ctrl_var_desc(s_axis_mdma_c2h_ctrl_var_desc),
      .s_axis_mdma_c2h_ctrl_host_id (s_axis_mdma_c2h_ctrl_host_id),
      .s_axis_mdma_c2h_ctrl_ecc     (s_axis_mdma_c2h_ctrl_ecc),

      // mdma C2H Wrb Slave Ports
      .s_axis_mdma_c2h_cmpt_data(s_axis_c2h_cmpt_tdata_net),
      .s_axis_mdma_c2h_cmpt_tvalid(s_axis_mdma_c2h_cmpt_tvalid),
      .s_axis_mdma_c2h_cmpt_tready(s_axis_mdma_c2h_cmpt_tready),
        
      .s_axis_mdma_c2h_cmpt_ctrl_cqid   (s_axis_mdma_c2h_cmpt_ctrl_cqid),
      .s_axis_mdma_c2h_cmpt_ctrl_prty0  (s_axis_mdma_c2h_cmpt_ctrl_prty0),
      .s_axis_mdma_c2h_cmpt_ctrl_prty1  (s_axis_mdma_c2h_cmpt_ctrl_prty1),
      .s_axis_mdma_c2h_cmpt_ctrl_marker (s_axis_mdma_c2h_cmpt_ctrl_marker),
      .s_axis_mdma_c2h_cmpt_ctrl_port_id(s_axis_mdma_c2h_cmpt_ctrl_port_id),
      .s_axis_mdma_c2h_cmpt_ctrl_col_idx(s_axis_mdma_c2h_cmpt_ctrl_col_idx),
      .s_axis_mdma_c2h_cmpt_ctrl_err_idx(s_axis_mdma_c2h_cmpt_ctrl_err_idx),
      .s_axis_mdma_c2h_cmpt_ctrl_wrb_type(mdma_c2h_wrb_type_e'(s_axis_mdma_c2h_cmpt_size[1:0])),
      .s_axis_mdma_c2h_cmpt_ctrl_user_trig(s_axis_mdma_c2h_cmpt_ctrl_user_trig),
      .s_axis_mdma_c2h_cmpt_ctrl_cmpt_type(mdma_c2h_cmpt_type_e'(s_axis_mdma_c2h_cmpt_ctrl_cmpt_type[1:0])),
      .s_axis_mdma_c2h_cmpt_ctrl_pld_virt_ch(s_axis_mdma_c2h_cmpt_ctrl_pld_virt_ch),
      .s_axis_mdma_c2h_cmpt_ctrl_non_blocking(s_axis_mdma_c2h_cmpt_ctrl_non_blocking),
      .s_axis_mdma_c2h_cmpt_ctrl_no_wrb_marker(s_axis_mdma_c2h_cmpt_ctrl_no_wrb_marker),
      .s_axis_mdma_c2h_cmpt_ctrl_wait_pld_pkt_id(s_axis_mdma_c2h_cmpt_ctrl_wait_pld_pkt_id),

      // mdma H2C Master Ports
      .m_axis_mdma_h2c_tdata (mdma_h2c_axis_data),
      .m_axis_mdma_h2c_tcrc  (m_axis_mdma_h2c_tcrc),
      .m_axis_mdma_h2c_tlast (m_axis_mdma_h2c_tlast),
      .m_axis_mdma_h2c_tvalid(m_axis_mdma_h2c_tvalid),
      .m_axis_mdma_h2c_tready(m_axis_mdma_h2c_tready),
        
      .m_axis_mdma_h2c_tuser_ecc(m_axis_mdma_h2c_tuser_ecc),
      .m_axis_mdma_h2c_tuser_qid(m_axis_mdma_h2c_tuser_qid),
      .m_axis_mdma_h2c_tuser_mty(m_axis_mdma_h2c_tuser_mty),
      .m_axis_mdma_h2c_tuser_err(m_axis_mdma_h2c_tuser_err),
      .m_axis_mdma_h2c_tuser_mdata(m_axis_mdma_h2c_tuser_mdata),
      .m_axis_mdma_h2c_tuser_port_id(m_axis_mdma_h2c_tuser_port_id),
      .m_axis_mdma_h2c_tuser_zero_byte(m_axis_mdma_h2c_tuser_zero_byte),

      // H2C Descriptor Bypass Out Interface
      .h2c_byp_out_dsc     (h2c_byp_out_dsc),
      .h2c_byp_out_st_mm   (h2c_byp_out_st_mm),
      .h2c_byp_out_dsc_sz  (h2c_byp_out_dsc_sz),
      .h2c_byp_out_cnt     (h2c_byp_out_cnt),
      .h2c_byp_out_fmt     (h2c_byp_out_fmt),
      .h2c_byp_out_host_id (h2c_byp_out_host_id),
      .h2c_byp_out_pasid_en(h2c_byp_out_pasid_en),
      .h2c_byp_out_pasid   (h2c_byp_out_pasid),
      .h2c_byp_out_qid     (h2c_byp_out_qid),
      .h2c_byp_out_error   (h2c_byp_out_error),
      .h2c_byp_out_func    (h2c_byp_out_func),
      .h2c_byp_out_cidx    (h2c_byp_out_cidx),
      .h2c_byp_out_mm_chn  (h2c_byp_out_mm_chn),
      .h2c_byp_out_port_id (h2c_byp_out_port_id),
      .h2c_byp_out_vld     (h2c_byp_out_vld),
      .h2c_byp_out_rdy     (h2c_byp_out_rdy),

      // C2H Descriptor Bypass Out Interface
      .c2h_byp_out_dsc     (c2h_byp_out_dsc),
      .c2h_byp_out_st_mm   (c2h_byp_out_st_mm),
      .c2h_byp_out_dsc_sz  (c2h_byp_out_dsc_sz),
      .c2h_byp_out_cnt     (c2h_byp_out_cnt),
      .c2h_byp_out_fmt     (c2h_byp_out_fmt),
      .c2h_byp_out_host_id (c2h_byp_out_host_id),
      .c2h_byp_out_pasid_en(c2h_byp_out_pasid_en),
      .c2h_byp_out_pasid   (c2h_byp_out_pasid),
      .c2h_byp_out_qid     (c2h_byp_out_qid),
      .c2h_byp_out_error   (c2h_byp_out_error),
      .c2h_byp_out_func    (c2h_byp_out_func),
      .c2h_byp_out_cidx    (c2h_byp_out_cidx),
      .c2h_byp_out_mm_chn  (c2h_byp_out_mm_chn),
      .c2h_byp_out_var_desc(c2h_byp_out_var_desc),
      .c2h_byp_out_pfch_tag(c2h_byp_out_pfch_tag),
      .c2h_byp_out_port_id (c2h_byp_out_port_id),
      .c2h_byp_out_vld     (c2h_byp_out_vld),
      .c2h_byp_out_rdy     (c2h_byp_out_rdy),

      // H2C Descriptor Bypass In Interface
      // Desciptor Bypass In for mdma
      // 2 channels for Hard IP
      .h2c_byp_in_mm_0_vld     (h2c_byp_in_mm_0_vld),
      .h2c_byp_in_mm_0_rdy     (h2c_byp_in_mm_0_rdy),
      .h2c_byp_in_mm_0_radr    (h2c_byp_in_mm_0_radr),
      .h2c_byp_in_mm_0_wadr    (h2c_byp_in_mm_0_wadr),
      .h2c_byp_in_mm_0_at      (h2c_byp_in_mm_0_at),
      .h2c_byp_in_mm_0_no_dma  (h2c_byp_in_mm_0_no_dma),
      .h2c_byp_in_mm_0_len     (h2c_byp_in_mm_0_len),
      .h2c_byp_in_mm_0_sdi     (h2c_byp_in_mm_0_sdi),
      .h2c_byp_in_mm_0_mrkr_req(h2c_byp_in_mm_0_mrkr_req),
      .h2c_byp_in_mm_0_qid     (h2c_byp_in_mm_0_qid),
      .h2c_byp_in_mm_0_error   (h2c_byp_in_mm_0_error),
      .h2c_byp_in_mm_0_cidx    (h2c_byp_in_mm_0_cidx),
      .h2c_byp_in_mm_0_port_id (h2c_byp_in_mm_0_port_id),
      .h2c_byp_in_mm_0_host_id (h2c_byp_in_mm_0_host_id),
      .h2c_byp_in_mm_0_func    (h2c_byp_in_mm_0_func),
      .h2c_byp_in_mm_0_csh_pasid_en(h2c_byp_in_mm_0_csh_pasid_en),
      .h2c_byp_in_mm_0_csh_pasid(h2c_byp_in_mm_0_csh_pasid),

      .h2c_byp_in_mm_1_vld     (h2c_byp_in_mm_1_vld),
      .h2c_byp_in_mm_1_rdy     (h2c_byp_in_mm_1_rdy),
      .h2c_byp_in_mm_1_radr    (h2c_byp_in_mm_1_radr),
      .h2c_byp_in_mm_1_wadr    (h2c_byp_in_mm_1_wadr),
      .h2c_byp_in_mm_1_at      (h2c_byp_in_mm_1_at),
      .h2c_byp_in_mm_1_no_dma  (h2c_byp_in_mm_1_no_dma),
      .h2c_byp_in_mm_1_len     (h2c_byp_in_mm_1_len),
      .h2c_byp_in_mm_1_sdi     (h2c_byp_in_mm_1_sdi),
      .h2c_byp_in_mm_1_mrkr_req(h2c_byp_in_mm_1_mrkr_req),
      .h2c_byp_in_mm_1_qid     (h2c_byp_in_mm_1_qid),
      .h2c_byp_in_mm_1_error   (h2c_byp_in_mm_1_error),
      .h2c_byp_in_mm_1_cidx    (h2c_byp_in_mm_1_cidx),
      .h2c_byp_in_mm_1_port_id (h2c_byp_in_mm_1_port_id),
      .h2c_byp_in_mm_1_host_id (h2c_byp_in_mm_1_host_id),
      .h2c_byp_in_mm_1_func    (h2c_byp_in_mm_1_func),
      .h2c_byp_in_mm_1_csh_pasid_en(h2c_byp_in_mm_1_csh_pasid_en),
      .h2c_byp_in_mm_1_csh_pasid(h2c_byp_in_mm_1_csh_pasid),

      .h2c_byp_in_st_vld     (h2c_byp_in_st_vld),
      .h2c_byp_in_st_qid     (h2c_byp_in_st_qid),
      .h2c_byp_in_st_rdy     (h2c_byp_in_st_rdy),
      .h2c_byp_in_st_addr    (h2c_byp_in_st_addr),
      .h2c_byp_in_st_len     (h2c_byp_in_st_len),
      .h2c_byp_in_st_at      (h2c_byp_in_st_at),
      .h2c_byp_in_st_sop     (h2c_byp_in_st_sop),
      .h2c_byp_in_st_eop     (h2c_byp_in_st_eop),
      .h2c_byp_in_st_sdi     (h2c_byp_in_st_sdi),
      .h2c_byp_in_st_mrkr_req(h2c_byp_in_st_mrkr_req),
      .h2c_byp_in_st_no_dma  (h2c_byp_in_st_no_dma),
      .h2c_byp_in_st_pasid_en(h2c_byp_in_st_pasid_en),
      .h2c_byp_in_st_pasid   (h2c_byp_in_st_pasid),
      .h2c_byp_in_st_error   (h2c_byp_in_st_error),
      .h2c_byp_in_st_func    (h2c_byp_in_st_func),
      .h2c_byp_in_st_port_id (h2c_byp_in_st_port_id),
      .h2c_byp_in_st_host_id (h2c_byp_in_st_host_id),
      .h2c_byp_in_st_cidx    (h2c_byp_in_st_cidx),

      // C2H Descriptor Bypass In Interface
      .c2h_byp_in_st_csh_addr    (c2h_byp_in_st_csh_addr),
      .c2h_byp_in_st_csh_vld     (c2h_byp_in_st_csh_vld),
      .c2h_byp_in_st_csh_rdy     (c2h_byp_in_st_csh_rdy),
      .c2h_byp_in_st_csh_len     (c2h_byp_in_st_csh_len),
      .c2h_byp_in_st_csh_at      (c2h_byp_in_st_csh_at),
      .c2h_byp_in_st_csh_error   (c2h_byp_in_st_csh_error),
      .c2h_byp_in_st_csh_func    (c2h_byp_in_st_csh_func),
      .c2h_byp_in_st_csh_pasid_en(c2h_byp_in_st_csh_pasid_en),
      .c2h_byp_in_st_csh_pasid   (c2h_byp_in_st_csh_pasid),
      .c2h_byp_in_st_csh_pfch_tag(c2h_byp_in_st_csh_pfch_tag),
      .c2h_byp_in_st_csh_host_id (c2h_byp_in_st_csh_host_id),
      .c2h_byp_in_st_csh_var_desc(c2h_byp_in_st_csh_var_desc),
      .c2h_byp_in_st_csh_port_id (c2h_byp_in_st_csh_port_id),
      .c2h_byp_in_st_csh_fmt     (c2h_byp_in_st_csh_fmt),
      .c2h_byp_in_st_csh_cidx    (c2h_byp_in_st_csh_cidx),

      .c2h_byp_in_mm_0_radr    (c2h_byp_in_mm_0_radr),
      .c2h_byp_in_mm_0_wadr    (c2h_byp_in_mm_0_wadr),
      .c2h_byp_in_mm_0_vld     (c2h_byp_in_mm_0_vld),
      .c2h_byp_in_mm_0_rdy     (c2h_byp_in_mm_0_rdy),
      .c2h_byp_in_mm_0_at      (c2h_byp_in_mm_0_at),
      .c2h_byp_in_mm_0_no_dma  (c2h_byp_in_mm_0_no_dma),
      .c2h_byp_in_mm_0_len     (c2h_byp_in_mm_0_len),
      .c2h_byp_in_mm_0_sdi     (c2h_byp_in_mm_0_sdi),
      .c2h_byp_in_mm_0_mrkr_req(c2h_byp_in_mm_0_mrkr_req),
      .c2h_byp_in_mm_0_qid     (c2h_byp_in_mm_0_qid),
      .c2h_byp_in_mm_0_error   (c2h_byp_in_mm_0_error),
      .c2h_byp_in_mm_0_func    (c2h_byp_in_mm_0_func),
      .c2h_byp_in_mm_0_cidx    (c2h_byp_in_mm_0_cidx),
      .c2h_byp_in_mm_0_port_id (c2h_byp_in_mm_0_port_id),
      .c2h_byp_in_mm_0_host_id (c2h_byp_in_mm_0_host_id),
      .c2h_byp_in_mm_0_pasid_en(c2h_byp_in_mm_0_pasid_en),
      .c2h_byp_in_mm_0_pasid   (c2h_byp_in_mm_0_pasid),

      .c2h_byp_in_mm_1_radr    (c2h_byp_in_mm_1_radr),
      .c2h_byp_in_mm_1_wadr    (c2h_byp_in_mm_1_wadr),
      .c2h_byp_in_mm_1_vld     (c2h_byp_in_mm_1_vld),
      .c2h_byp_in_mm_1_rdy     (c2h_byp_in_mm_1_rdy),
      .c2h_byp_in_mm_1_at      (c2h_byp_in_mm_1_at),
      .c2h_byp_in_mm_1_no_dma  (c2h_byp_in_mm_1_no_dma),
      .c2h_byp_in_mm_1_len     (c2h_byp_in_mm_1_len),
      .c2h_byp_in_mm_1_sdi     (c2h_byp_in_mm_1_sdi),
      .c2h_byp_in_mm_1_mrkr_req(c2h_byp_in_mm_1_mrkr_req),
      .c2h_byp_in_mm_1_qid     (c2h_byp_in_mm_1_qid),
      .c2h_byp_in_mm_1_error   (c2h_byp_in_mm_1_error),
      .c2h_byp_in_mm_1_func    (c2h_byp_in_mm_1_func),
      .c2h_byp_in_mm_1_cidx    (c2h_byp_in_mm_1_cidx),
      .c2h_byp_in_mm_1_port_id (c2h_byp_in_mm_1_port_id),
      .c2h_byp_in_mm_1_host_id (c2h_byp_in_mm_1_host_id),
      .c2h_byp_in_mm_1_pasid_en(c2h_byp_in_mm_1_pasid_en),
      .c2h_byp_in_mm_1_pasid   (c2h_byp_in_mm_1_pasid),

      // Descriptor Fetch Engine Out
      .mdma_tm_dsc_sts_rdy    (mdma_tm_dsc_sts_rdy),
      .mdma_tm_dsc_sts_vld    (mdma_tm_dsc_sts_vld),
      .mdma_tm_dsc_sts_byp    (mdma_tm_dsc_sts_byp),
      .mdma_tm_dsc_sts_qen    (mdma_tm_dsc_sts_qen),
      .mdma_tm_dsc_sts_dir    (mdma_tm_dsc_sts_dir),
      .mdma_tm_dsc_sts_mm     (mdma_tm_dsc_sts_mm),
      .mdma_tm_dsc_sts_error  (mdma_tm_dsc_sts_error),
      .mdma_tm_dsc_sts_qid    (mdma_tm_dsc_sts_qid),
      .mdma_tm_dsc_sts_avl    (mdma_tm_dsc_sts_avl),
      .mdma_tm_dsc_sts_port_id(mdma_tm_dsc_sts_port_id),
      .mdma_tm_dsc_sts_qinv   (mdma_tm_dsc_sts_qinv),
      .mdma_tm_dsc_sts_irq_arm(mdma_tm_dsc_sts_irq_arm),
      .mdma_tm_dsc_sts_vio_dsc_crdt(mdma_tm_dsc_sts_vio_dsc_crdt),
      .mdma_tm_dsc_sts_vio_en (mdma_tm_dsc_sts_vio_en),
      .mdma_tm_dsc_sts_fnid   (mdma_tm_dsc_sts_fnid),
      .mdma_tm_dsc_sts_pidx   (mdma_tm_dsc_sts_pidx),
      .mdma_tm_dsc_sts_vio_hw_db(mdma_tm_dsc_sts_vio_hw_db),
      .mdma_tm_dsc_sts_vio_sw_db(mdma_tm_dsc_sts_vio_sw_db),
      .mdma_tm_dsc_sts_vio_avl_flg (mdma_tm_dsc_sts_vio_avl_flg),

      // STS_OUT
      .mdma_sts_out    (mdma_sts_out),
      .mdma_sts_out_vld(qsts_sts_out_vld),
      .mdma_sts_out_rdy(qsts_sts_out_rdy),

      // Descriptor credit In
      .mdma_dsc_crdt_in_vld  (mdma_dsc_crdt_in_vld),
      .mdma_dsc_crdt_in_rdy  (mdma_dsc_crdt_in_rdy),
      .mdma_dsc_crdt_in_crdt (mdma_dsc_crdt_in_crdt),
      .mdma_dsc_crdt_in_op   (MDMA_CRD_ADD),
      .mdma_dsc_crdt_in_dir  (mdma_dsc_crdt_in_dir),
      .mdma_dsc_crdt_in_fence(mdma_dsc_crdt_in_fence),
      .mdma_dsc_crdt_in_qid  (mdma_dsc_crdt_in_qid),

      .virtio_dsc_crdt_in_rdy (virtio_dsc_crdt_in_rdy),
      .virtio_dsc_crdt_in_vld (virtio_dsc_crdt_in_vld),
      .virtio_dsc_crdt_in_crdt(virtio_dsc_crdt_in_crdt),
      .virtio_dsc_crdt_in_qid (virtio_dsc_crdt_in_qid),
      .virtio_dsc_crdt_in_dir (virtio_dsc_crdt_in_dir),
      .virtio_dsc_crdt_in_idx (virtio_dsc_crdt_in_idx),

      .soft_fab_mst_crd_rst   (soft_fab_mst_crd_rst),
      .soft_fab_slv_crd_rls_en(soft_fab_slv_crd_rls_en),

      .usr_irq_in_vld (usr_irq_in_vld),
      .usr_irq_in_vec (usr_irq_in_vec),
      .usr_irq_in_func(usr_irq_in_func),
      .usr_irq_in_host_id(usr_irq_in_host_id),

      .usr_irq_out_ack (usr_irq_out_ack),
      .usr_irq_out_fail(usr_irq_out_fail),

      .fab_in(mdma_fabric_a_in[COM_FAB_IIF_WIDTH+:MDMA_FAB_IIF_WIDTH]),
      .fab_out(mdma_fab_oif_t'(mdma_fabric_a_out[COM_FAB_OIF_WIDTH+:MDMA_FAB_OIF_WIDTH]))
    );

    always @(posedge user_clk) begin
      if (~fab_out_axi_resetn) begin
        crdt_rst <= 1;
        rst_count <= 0;
      end
      else if (rst_count[8])
      begin
        crdt_rst <= 0;
        rst_count <= rst_count ;
      end
      else
      begin
        crdt_rst <= crdt_rst;
        rst_count <= rst_count + 1;
      end
    end

    always @(posedge user_clk) begin
      if (~fab_out_axi_resetn) begin
        crdt_rls <= 0;
        crdt_count <= 0;
      end
      else if (~crdt_rst & crdt_count[7])
      begin
        crdt_rls <= 1;
        crdt_count <= crdt_count ;
      end
      else if (~crdt_rst)
      begin
        crdt_rls <= crdt_rls;
        crdt_count <= crdt_count + 1;
      end
    end
    
    cpm5_v1_0_17_soft_fab_shim #(
      .TCQ(TCQ)
    ) u_soft_fab_shim (
      .clk        (user_clk),
      .rst_n      (fab_out_axi_resetn),
      .axi_resetn (axi_resetn),
      .dma_resetn (dma_resetn),
      .dma_sel    (1'b1),

      .fab_in  (mdma_fabric_a_in[COM_FAB_IIF_WIDTH-1 :0]),
      .fab_out (com_fab_oif_t'(mdma_fabric_a_out[COM_FAB_OIF_WIDTH-1 :0])),

      .dma_mgmt_req_vld (mdma_mgmt_req_vld),
      .dma_mgmt_req     (mdma_mgmt_req),
      .dma_mgmt_req_rdy (mdma_mgmt_req_rdy),
      .dma_mgmt_cpl_vld (mdma_mgmt_cpl_vld),
      .dma_mgmt_cpl     (mdma_mgmt_cpl),
      .dma_mgmt_cpl_rdy (mdma_mgmt_cpl_rdy),

      .st_rx_msg_rdy   (st_rx_msg_rdy),
      .st_rx_msg_data  (st_rx_msg_data),
      .st_rx_msg_valid (st_rx_msg_valid),
      .st_rx_msg_last  (st_rx_msg_last),
      .st_rx_msg_error (st_rx_msg_error),

      .cfg_ext_usr_in  (cfg_ext_usr_in),
      .cfg_ext_usr_out (cfg_ext_usr_out),

      .c2h_drop(c2h_drop),
      .c2h_pcie_cmp(c2h_pcie_cmp),
      .c2h_st_mhost_feedback (c2h_st_mhost_feedback),

      .dma_err_out (mdma_dma_err_out),

      .flr_in  (mdma_flr_in),
      .flr_out (mdma_flr_out),

      .axi_interrupt_out (axi_interrupt_out),
      .axi_interrupt_in  (axi_interrupt_in),

      .hard_fab_mst_crd_rst_in (crdt_rst),
      .hard_fab_slv_crd_rls_in (crdt_rls),
      .soft_fab_mst_crd_rst_in (crdt_rst),
      .soft_fab_slv_crd_rls_in (crdt_rls),

      .soft_fab_mst_crd_rst_out    (soft_fab_mst_crd_rst),
      .soft_fab_slv_crd_rls_en_out (soft_fab_slv_crd_rls_en)
    );

  end
  endgenerate

endmodule
