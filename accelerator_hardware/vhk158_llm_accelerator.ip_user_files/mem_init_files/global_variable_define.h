/////////////////////////////////////////////////////////////////////////////////////////////////////////////
//185f439ad35e2293624be383394296229a3745323be6fe7e51ba3245d50dcbae
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2019 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// 
//
//       Owner:
//       Revision:       $Id: //depot/icm/proj/everest/7t_n1/shadow/shadowbranches/hsm/hsm.hsm_2.4/rtl/ddrmc_7t_n1/microblaze/cal_sw/src/global_variable_define.h#3 $
//                       $Author: rgaddam $
//                       $DateTime: 2019/04/23 03:27:17 $
//                       $Change: 21310834 $
//       Description:
//           DDRMC : 
//
///////////////////////////////////////////////////////////////////////////////
/***************************************************************************************************/
/******** Following global variabls are initialization one time only *******************************/
/***************************************************************************************************/
#include "bd_6a72_MC0_ddrc_0_phy_cal_config_define.h"
#include "internal_reg_define.h"

#ifdef DEFINE_GLBL_VAR
   #define EXTERN
#else
   #define EXTERN extern
#endif

EXTERN u8  glbl_dqs_bits_riu_map[DQS_BITS][2]  ;
EXTERN u8  glbl_dq_bits_riu_map[DQ_BITS][2]   ;
EXTERN u8  glbl_dq_bits_iob_map[DQ_BITS][2]   ;
EXTERN u8  glbl_dbi_bits_riu_map[DBI_BITS][2] ;

EXTERN u8  glbl_dqs_lnibble2pnibble_map[DQS_BITS];
EXTERN u8  glbl_dq_lnibble2pnibble_map[DQ_BITS];
EXTERN u8  glbl_dbi_lnibble2pnibble_map[DBI_BITS];

EXTERN u8  glbl_dqs_lbit2pnibble_map[DQS_BITS];
EXTERN u8  glbl_dq_lbit2pnibble_map[DQ_BITS];
EXTERN u8  glbl_dq_lbit2pbit_map[DQ_BITS];
EXTERN u8  glbl_dq_pbit2lbit_map[DQ_BITS];
EXTERN u8  glbl_dbi_lbit2pnibble_map[DBI_BITS];

EXTERN u8  glbl_dqs_first_nibble;
EXTERN u8  glbl_dq_first_nibble;
EXTERN u8  glbl_dbi_first_nibble;
EXTERN u8  glbl_cs_first_nibble;
 
EXTERN u8  glbl_dqs_last_nibble;
EXTERN u8  glbl_dq_last_nibble;
EXTERN u8  glbl_dbi_last_nibble;
EXTERN u8  glbl_cs_last_nibble;

EXTERN u32 glbl_dqs_nibble_mask_initial;
EXTERN u32 glbl_dq_nibble_mask_initial;
EXTERN u32 glbl_dbi_nibble_mask_initial;
EXTERN u32 glbl_cs_nibble_mask_initial;

EXTERN u16 glbl_dqs_odly_riu_addr_map[DQS_BITS];
EXTERN u16 glbl_dq_idly_riu_addr_map[DQ_BITS];
EXTERN u16 glbl_dq_odly_riu_addr_map[DQ_BITS];
EXTERN u16 glbl_dbi_idly_riu_addr_map[DBI_BITS];
EXTERN u16 glbl_dbi_odly_riu_addr_map[DBI_BITS];

#ifdef LPDDR4
   EXTERN u8  glbl_cs_bits_riu_map[LP4_MAX_CS_BITS*LP4_MAX_RANKS][2]   ;
   EXTERN u8  glbl_cs_lnibble2pnibble_map[LP4_MAX_CS_BITS*LP4_MAX_RANKS];
   EXTERN u8  glbl_cs_lbit2pnibble_map[LP4_MAX_CS_BITS*LP4_MAX_RANKS];
   EXTERN u16 glbl_ca_odly_riu_addr_map[CA_BITS];
   EXTERN u16 glbl_cs_odly_riu_addr_map[LP4_MAX_CS_BITS*LP4_MAX_RANKS];
   EXTERN u8  glbl_ca_lnibble2pnibble_map[CA_BITS];
   EXTERN u8  glbl_ca_lbit2pnibble_map[CA_BITS];
   EXTERN u8  glbl_ca_first_nibble;
   EXTERN u8  glbl_ca_last_nibble;
   EXTERN u32 glbl_ca_nibble_mask_initial;
   EXTERN u8  glbl_ca_bits_riu_map[CA_BITS][2]   ;
   
   EXTERN u8 glbl_lp4_ch1_nibble_base;
   EXTERN u8 glbl_ch0_mem_rank0_xphy_rank;
   EXTERN u8 glbl_ch0_mem_rank1_xphy_rank;
   EXTERN u8 glbl_ch1_mem_rank0_xphy_rank;
   EXTERN u8 glbl_ch1_mem_rank1_xphy_rank;
   
   EXTERN u8 glbl_ref_rate[2][4];
   EXTERN u16 glbl_cal_tdqsosc[2][4];
   EXTERN u16 glbl_cur_tdqsosc[2][4];
   EXTERN u16 glbl_cal_tdqs2dq[2][4];
   EXTERN u16 glbl_cur_tdqs2dq[2][4];
   EXTERN u16 glbl_cal_wl_dly_rnk[2][16];
   EXTERN u16 glbl_tdqs2dq_max[2][4];
   EXTERN u16 glbl_tdqs2dq_min[2][4];
   EXTERN u16 glbl_dqsosc_wldlyrnk_fine_max[2][16];
   EXTERN u16 glbl_dqsosc_wldlyrnk_fine_min[2][16];
#endif

EXTERN u8 glbl_map_riu[DQS_BITS*2]; 
EXTERN u32 glbl_nibble_reset_mask[2];
         
EXTERN u8 glbl_cal_index;
EXTERN u16 glbl_cal_status;
EXTERN u8 glbl_cal_stage[64];
         
EXTERN u8 glbl_wrlvl;
EXTERN u8 glbl_lp4_mode_default;
EXTERN u8 glbl_bisc_en;
EXTERN u8 glbl_cal_done;
EXTERN u8 glbl_restore_cal_en;
EXTERN u8 glbl_cal_mode_bypass;
EXTERN u16 glbl_rl_dly_qtr[27];
EXTERN u16 glbl_rl_dly_qtr_max;
EXTERN u16 glbl_max_limit_90_degree;
EXTERN u16 glbl_max_limit_180_degree;
EXTERN u8 glbl_mem_write_latency; 
EXTERN u8 glbl_write_latency; 
EXTERN u8 glbl_init_write_latency; 
EXTERN u8 glbl_phy_rank_switch_en;
         
EXTERN u8 glbl_freq_f1;
EXTERN u8 glbl_freq_sre;
EXTERN u8 glbl_freq_switch;
EXTERN u16 glbl_tck;
EXTERN u16 glbl_qtr_dly;
EXTERN u8 glbl_clkfbout_lt;
EXTERN u8 glbl_clkfbout_ht;
EXTERN u8 glbl_divclk_lt;
EXTERN u8 glbl_divclk_ht;
         
EXTERN u8 glbl_add_cmd_delay;
EXTERN u8 glbl_add_cmd_delay_en;
EXTERN u8 glbl_lrdimm_en;

#ifdef DDR4
   EXTERN u32 glbl_mr0;
   EXTERN u32 glbl_mr1[RANKS];
   EXTERN u32 glbl_mr2;
   EXTERN u32 glbl_mr3;
   EXTERN u32 glbl_mr4;
   EXTERN u32 glbl_mr5[RANKS];
   EXTERN u32 glbl_mr6;
               
   EXTERN u8 glbl_rdimm_en;
   EXTERN u8 glbl_3ds_en;
   EXTERN u8 glbl_3ds_lranks;
   EXTERN u8 glbl_rcd_rc0a;
   EXTERN u8 glbl_rcd_rc0f;
   EXTERN u8 glbl_rcd_rc3x;
   EXTERN u8 glbl_rcd_rc5x;
   EXTERN u8 glbl_rcd_rc8x;
   EXTERN u8 glbl_db_bc0a;
   EXTERN u8 glbl_db_f0bc6x;
   EXTERN u8 glbl_clamshell_cfg;
#else
   EXTERN u32 glbl_lp4_mr1;
   EXTERN u32 glbl_lp4_mr2;
   EXTERN u32 glbl_lp4_mr3;
   EXTERN u32 glbl_lp4_mr4;
   EXTERN u32 glbl_lp4_mr5;
   EXTERN u32 glbl_lp4_mr12;
   EXTERN u32 glbl_lp4_mr13;
   EXTERN u32 glbl_lp4_mr14;
   EXTERN u32 glbl_lp4_mr23;
#endif

/*****************************************************************/

/***************************************************************************************************/
/******** Following global variabls are intermediate writes and read *******************************/
/***************************************************************************************************/
EXTERN u8  glbl_bits_riu_map[72][2];
EXTERN u8  glbl_lbit2pnibble_map[72];
EXTERN u16 glbl_pnibble2pbs_bcast_map[27];
EXTERN u8  glbl_mem_read_latency; 
EXTERN u8  glbl_mem_read_latency_dbi_offset; 
EXTERN u8  glbl_initial_read_latency; 
EXTERN u8  glbl_first_nibble;
EXTERN u8  glbl_last_nibble;

EXTERN u32 glbl_nibble_mask_initial;; 
EXTERN u32 glbl_nibble_mask; 
EXTERN u32 glbl_nibble_mask_nqtr; 
EXTERN u32 glbl_nibble_mask_ck; 
EXTERN u32 glbl_nibble_mask_cs; 
EXTERN u32 glbl_bits_error_status_31_0; 
EXTERN u32 glbl_bits_error_status_63_32; 
EXTERN u32 glbl_bits_error_status_95_64; 
EXTERN u32 glbl_bits_error_status_nqtr_17_0; 
EXTERN u32 glbl_error_phy_nibble; 
EXTERN u32 glbl_error_nibble; 
EXTERN u32 glbl_first_error_code; 
EXTERN u32 glbl_bit_mask_31_0; 
EXTERN u32 glbl_bit_mask_63_32; 
EXTERN u32 glbl_bit_mask_95_64; 
EXTERN u32 glbl_bit_mask_nqtr_17_0;
EXTERN u32 glbl_bit_mask_31_0_last; 
EXTERN u32 glbl_bit_mask_63_32_last; 
EXTERN u32 glbl_bit_mask_95_64_last; 
EXTERN u32 glbl_byte_compare_8_0; 
EXTERN u32 glbl_nibble_compare_17_0; 
EXTERN u32 glbl_bit_compare_31_0; 
EXTERN u32 glbl_bit_compare_63_32; 
EXTERN u32 glbl_bit_compare_95_64; 
EXTERN u32 glbl_bit_mask_nqtr_17_0_last;
EXTERN u16 glbl_noise_win[72];
EXTERN u16 glbl_stable_valid_win[72];
EXTERN u16 glbl_stable_valid_win_nqtr[72];
EXTERN u8  glbl_update_nibble_mask;
EXTERN u8  glbl_update_nibble_mask_nqtr;
EXTERN u8  glbl_clear_error;
EXTERN u8  glbl_vref_cal;
EXTERN u8  glbl_delay_stage;
EXTERN int glbl_inc_dec_load;
EXTERN u8  glbl_step_size;
EXTERN u16 glbl_odly_riu_addr_map[72];
#ifdef ENABLE_MICROBLAZE_BFM
   EXTERN char   *glbl_stage_code_string[256]; //[50];
#endif

EXTERN u8  glbl_wr_pre_2tck_cwl_adjust;
EXTERN u8  glbl_wr_pre_2tck_mode;
EXTERN u8  glbl_rd_pre_2tck_mode;
EXTERN u8  glbl_xpi_mirror_en;
EXTERN u8  glbl_xpi_pmi_config;
EXTERN u8  glbl_xpi_write_dm_dbi;
EXTERN u8  glbl_xpi_read_dbi;
EXTERN u8  glbl_num_ch;
EXTERN u8  glbl_wr_dbi_en;
EXTERN u8  glbl_rd_dbi_en;
EXTERN u32 glbl_cal_code;
EXTERN u8  glbl_exptd_pt;
EXTERN u8  glbl_delay_type;
EXTERN u8  glbl_compare_edge_type;
EXTERN u8  glbl_compare_data_type;
EXTERN u8  glbl_compare_data_bits;
EXTERN u8  glbl_pattern_type;
EXTERN u8  glbl_dual_edge_region;
EXTERN u8  glbl_region_type;
EXTERN u8  glbl_phase_no;
EXTERN u32 glbl_cplx_loop_cnt; // [14:7] Loop count to go through the pattern
EXTERN u32 glbl_cplx_row_cnt; // [17:15] Maximum row count value. For fast cal simulation, set it to 0.
EXTERN u32 glbl_cplx_burst_array_index; // [24:20] The max index value when incrementing the burst array sequence. For fast cal simulation, set it to 3.
EXTERN u8  glbl_min_vld_cnt;
EXTERN u8  glbl_cal_first_iteration;
EXTERN u32 glbl_bit_pos;
EXTERN u32 glbl_refresh_en;
EXTERN u32 glbl_t_rfc_slr;
EXTERN u32 glbl_t_rfc_dlr;
EXTERN u32 glbl_t_rfc_slr_1x;
EXTERN u32 glbl_t_rfc_dlr_1x;
EXTERN u32 glbl_pit1_cnt;
EXTERN u32 glbl_ddrmc_clk_cnt;
EXTERN u32 glbl_num_ref_total;
EXTERN u32 glbl_num_ref_cur;
EXTERN u32 glbl_num_ref_prev;
EXTERN u32 glbl_num_ref_cur_max;
EXTERN u32 glbl_num_ref_limit_cnt;
EXTERN u32 glbl_num_ref_iter;
EXTERN u8 glbl_fix_ref_en;
EXTERN u8 glbl_fix_num_ref;
EXTERN u8 glbl_side_ref;
EXTERN u8 glbl_ref_mode_1x;
EXTERN u8 glbl_ref_mode_2x;
EXTERN u8 glbl_ref_mode_4x;
EXTERN u8 glbl_ref_ext_temp;
EXTERN u8 glbl_ref_temp_sensor_en;
EXTERN u8 glbl_ref_speed;
EXTERN u8 glbl_wrvref_value[DQS_BITS];
EXTERN u8 glbl_wrvref_done;
EXTERN u8 glbl_wrvref_default_value;
           
EXTERN u8 glbl_mrep_tap[RANKS][18];
EXTERN u8 glbl_mrd_lat[RANKS][18];
EXTERN u8 glbl_mrd_tap[RANKS][18];
EXTERN u8 glbl_dwl_tap[RANKS][18];
EXTERN u8 glbl_mwd_lat[RANKS][18];
EXTERN u8 glbl_mwd_tap[RANKS][18];
           
EXTERN u8 glbl_cal_error;
EXTERN u8 glbl_post_cal_error;
EXTERN u8 glbl_read_dqs_track_en;
EXTERN u32 glbl_ch0_nibble_mask;
EXTERN u32 glbl_ch1_nibble_mask;
EXTERN u16 glbl_post_cal_status_tracking;
EXTERN u16 glbl_post_cal_status_self_ref;
           
EXTERN u8 glbl_heartbeat;
EXTERN u32 glbl_gpo1;
EXTERN u32 glbl_gpo2;
EXTERN u32 glbl_gpo3;
EXTERN u32 glbl_gpo4;
EXTERN u32 glbl_xpi_oe_val;
EXTERN u32 glbl_xpi_dqs_val;
EXTERN u32 glbl_ipr;
EXTERN u8  glbl_side_cmd_en;
EXTERN u8  glbl_gt_train_en;
EXTERN u16 glbl_lp4_dqs_timer_cnt;
EXTERN u8 glbl_rank_inc;
EXTERN u32 glbl_xram_freq_base;
EXTERN u8 glbl_pcsr_lock;
           
EXTERN u32 glbl_iteration;
EXTERN u32 glbl_pit1_cnt;
EXTERN u32 glbl_pit1_cnt_prev;
EXTERN u32 glbl_pit1_preload;
EXTERN u32 glbl_iteration_limit;
           
EXTERN u8 glbl_ecc_en;
EXTERN u8 glbl_ddr4_2t;
EXTERN u32 glbl_reg_config1;
EXTERN u32 glbl_reg_config2;
EXTERN u32 glbl_reg_scrub1;
EXTERN u32 glbl_reg_scrub2;
EXTERN u32 glbl_reg_scrub4;
EXTERN u32 glbl_reg_scrub5;
EXTERN u32 glbl_reg_scrub6;
EXTERN u32 glbl_reg_scrub7;
EXTERN u32 glbl_reg_scrub8;
#ifdef LPDDR4
   EXTERN u32 glbl_reg_mrs_2;
#endif
EXTERN u8 glbl_en_qtr_dly_upd_wbs;

//2D margin check varaibles
EXTERN u8 glbl_margin_check;
EXTERN u16 glbl_margin_pat;
EXTERN u8 glbl_margin_rank;
EXTERN u32 glbl_margin_sample_count;
EXTERN u16 glbl_margin_pat_len;
EXTERN u16 glbl_margin_loop;
EXTERN u16 glbl_margin_bl;
EXTERN u32 glbl_margin_step;
