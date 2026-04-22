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
//       Revision:       $Id: //depot/icm/proj/everest/7t_n1/shadow/shadowbranches/hsm/hsm.hsm_2.4/rtl/ddrmc_7t_n1/microblaze/cal_sw/src/riu_reg_define.h#2 $
//                       $Author: rgaddam $
//                       $DateTime: 2019/02/19 07:08:51 $
//                       $Change: 20624036 $
//       Description:
//           DDRMC : 
//
///////////////////////////////////////////////////////////////////////////////
//
/* Bitslice Control */
#define PHYSICAL_NIBBLE       0x00001000 //to 0x00002FFF
#define RIU_SIZE                   64
//
////#PCSR REGISTERS--
//#define XPHY_PCSR  0x000 //--16--Programming Control/Status Register--
////--GATEREG--rw--boolean--[0]--0x1--Gate reg--
////--RESERVED--rw--boolean--[2:1]--0x1--Output disable for AXI interface--
////--INITSTATE--rw--boolean--[3]--0x1--Initialize XPHY logic--
////--HOLDSTATE--rw--boolean--[4]--0x1--Hold XPHY BISC state--
////--RESERVED--raz--uint--[6:5]--0x0--Reseved for future use--
////--TRISTATE--rw--boolean--[7]--0x1--Initialize XPHY logic--
////--APBEN--rw--boolean--[8]--0x0--Enable APB interface--
////--NPICLKEN--rw--boolean--[9]--0x1--NPI Clock Enable--
////--PWRDN--rw--boolean--[10]--0x0--Power Down--
////--RESERVED--raz--boolean--[11]--0x0--Reseved for future use--
////--PCOMPLETE--rw--boolean--[12]--0x0--Programming Complete--
////--INCAL--ro--boolean--[13]--0x0--In Calibration--
////--CALDONE--ro--boolean--[14]--0x0--Calibration Done--
////--RESERVED--raz--boolean--[15]--0x0--Reseved for future use--
////--
////# INTERRUPT REGISTERS--
////--
////# Interrupt Status Register--
//#define XPHY_ISR  0x004 //--16--Interrupt Status Register for intrN. This is a sticky register that holds the value of the interrupt until cleared by a value of 1.--TRUE--XPHY_IMR--XPHY_IEN--XPY_IDS
////--npi_invld_addr--wtc--boolean--[0]--0x0--NPI is trying to access reserved/unused location.--
////--RESERVED--raz--uint--[15:1]--0x0--Reseved for future use--
////--
////# Interrupt Mask Register--
//#define XPHY_IMR  0x008 //--16--Interrupt Mask Register for intrN. This is a read-only location and can be atomically altered by either the IDR or the IER.--XPHY_ISR--TRUE--XPHY_IEN--XPHY_IDS
////--npi_invld_addr--wtc--boolean--[0]--0x0--interrupt is set when NPI is trying to access reserved/unused location.--
////--RESERVED--raz--uint--[15:1]--0x0--Reseved for future use--
////--
////# Interrupt Enable Register--
//#define XPHY_IEN  0x00C //--16--Interrupt Enable Register. A write of one to this location will unmask the interrupt. (IMR: 0)--XPHY_ISR--XPHY_IMR--TRUE--XPHY_IDS
////--npi_invld_addr--wtc--boolean--[0]--0x0--interrupt is set when NPI is trying to access reserved/unused location.--
////--RESERVED--raz--uint--[15:1]--0x0--Reseved for future use--
////--
////# Interrupt Disable Register--
//#define XPHY_IDS  0x010 //--16--Interrupt Disable Register. A write of one to this location will mask the interrupt. (IMR: 1)--XPHY_ISR--XPHY_IMR--XPHY_IEN--TRUE
////--npi_invld_addr--wtc--boolean--[0]--0x0--interrupt is set when NPI is trying to access reserved/unused location.--
////--RESERVED--raz--uint--[15:1]--0x0--Reseved for future use--
////--
////# END OF INTERRUPT REGISTERS--
////--
////#XPHY REGISTERS--
//#define CFG_NIBBLE_CTRL0  0x014 //--16--CFG--Nibble Control 0--
////--en_other_pclk--rw--boolean--[0]--0x0--Enable Other PCLK. When set, nibble uses PCLK from neighbouring nibble.--
////--en_other_nclk--rw--boolean--[1]--0x0--Enable Other NCLK. When set, nibble uses NCLK from neighbouring nibble.--
////--inv_rxclk--rw--boolean--[2]--0x0--Invert the clock path from IOB to Rx Bitslice-0.--
////--serial_mode--rw--boolean--[3]--0x0--TRUE--Set to 1 t put differential IOB pair into serial mode. When set, serial data is sampled using clock selected CLK_SRC (PLL0, PLL1 or GCLK_IN).--
////--tx_gating--rw--boolean--[4]--0x0--Transmit Clock Gating. When set, the transmit clock is controlled by clb2phy_wren otherwise clock is free running.--
////--rx_gating--rw--boolean--[5]--0x0--Receive Clock Gating. When set, sampling clock coming from IOB is gated by clb2phy_rden otherwise clock directly samples the serial data.--
////--rxgating_extend--rw--boolean--[6]--0x0--Enable Preamble extension for DQS_BIAS--
////--fixdly_mask_en--rw--boolean--[7]--0x0--Set to mask fixdly_rdy when overrun or underrun is observed during alignment phase--
////--clr_gate--rw--uint--[8]--0x0--Clear gate for bisc--
////--eco24_sync_async--rw--uint--[9]--0x0--Diablo backward compatibility for bisc--
////--dis_dyn_mode_tx--rw--boolean--[10]--0x0--Disable Tx bitslice dynamic mode for bisc backward compatibilty--
////--dis_dyn_mode_rx--rw--boolean--[11]--0x0--Disable Rx bitslice dynamic mode for bisc backward compatibilty--
////--RESERVED--rw--boolean--[15:12]--0x0--Reserved--
////--
//#define CFG_NIBBLE_CTRL1  0x018 //--16--CFG--Nibble Control 1--
////--rx_clk_phase_p--rw--boolean--[0]--0x0--Rx clock phase P. When set, read DQS_P or any source synchronous input clock is shifted by 90 deg otherwise no phase shift.--
////--rx_clk_phase_n--rw--boolean--[1]--0x0--Rx clock phase N. When set, read DQS_N or any source synchronous input clock is shifted by 90 deg otherwise no phase shift.--
////--tx_out_phase_90_0--rw--boolean--[2]--0x0--TRUE--Bitslice-0 Transmit output phase 90. When set, transmit data from bitslice 0 is shift by 90 deg otherwise no shift.--
////--tx_out_phase_90_1--rw--boolean--[3]--0x0--TRUE--Bitslice-1 Transmit output phase 90. When set, transmit data from bitslice 1 is shift by 90 deg otherwise no shift.--
////--tx_out_phase_90_2--rw--boolean--[4]--0x0--TRUE--Bitslice-2 Transmit output phase 90. When set, transmit data from bitslice 2 is shift by 90 deg otherwise no shift.--
////--tx_out_phase_90_3--rw--boolean--[5]--0x0--TRUE--Bitslice-3 Transmit output phase 90. When set, transmit data from bitslice 3 is shift by 90 deg otherwise no shift.--
////--tx_out_phase_90_4--rw--boolean--[6]--0x0--TRUE--Bitslice-4 Transmit output phase 90. When set, transmit data from bitslice 4 is shift by 90 deg otherwise no shift.--
////--tx_out_phase_90_5--rw--boolean--[7]--0x0--TRUE--Bitslice-5 Transmit output phase 90. When set, transmit data from bitslice 5 is shift by 90 deg otherwise no shift.--
////--RESERVED--raz--boolean--[8]--0x0--Reseved for future use--
////--tx_out_phase_90_tri--rw--boolean--[9]--0x0--TRUE--Tristate output phase 90. When set, tristate enable from tristate bitslice is shift by 90 deg otherwise no shift.--
////--tx_out_phase_90_refclk--rw--boolean--[10]--0x0--TRUE--RefClk Tx bitslice output phase 90. When set, tristate enable from tristate bitslice is shift by 90 deg otherwise no shift.--
////--tx_out_phase_90_refdata--rw--boolean--[11]--0x0--TRUE--Reference Data Tx bitslice output phase 90. When set, tristate enable from tristate bitslice is shift by 90 deg otherwise no shift.--
////--RESERVED--rw--uint--[15:12]--0x0--Reserved for future use--
////--
//#define CFG_IODLY_VT_CTRL  0x01C //--16--CFG--Iodelay VT Control--
////--idly_en_vtc_0--rw--boolean--[0]--0x1--Bitslice-0 IDelay  VT Compensation. When reset, IDelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--idly_en_vtc_1--rw--boolean--[1]--0x1--Bitslice-1 IDelay VT track. When reset, IDelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--idly_en_vtc_2--rw--boolean--[2]--0x1--Bitslice-2 IDelay VT track. When reset, IDelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--idly_en_vtc_3--rw--boolean--[3]--0x1--Bitslice-3 IDelay VT track. When reset, IDelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--idly_en_vtc_4--rw--boolean--[4]--0x1--Bitslice-4 IDelay VT track. When reset, IDelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--idly_en_vtc_5--rw--boolean--[5]--0x1--Bitslice-5 IDelay VT track. When reset, IDelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--RESERVED--raz--boolean--[7:6]--0x0--Reseved for future use--
////--odly_en_vtc_0--rw--boolean--[8]--0x1--Bitslice-0 ODelay VT track. When reset, ODelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--odly_en_vtc_1--rw--boolean--[9]--0x1--Bitslice-1 ODelay VT track. When reset, ODelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--odly_en_vtc_2--rw--boolean--[10]--0x1--Bitslice-2 ODelay VT track. When reset, ODelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--odly_en_vtc_3--rw--boolean--[11]--0x1--Bitslice-3 ODelay VT track. When reset, ODelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--odly_en_vtc_4--rw--boolean--[12]--0x1--Bitslice-4 ODelay VT track. When reset, ODelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--odly_en_vtc_5--rw--boolean--[13]--0x1--Bitslice-5 ODelay VT track. When reset, ODelay is adjusted/compensated for VT variation otherwise no VT compensation and delay can be updated from fabric.--
////--RESERVED--raz--boolean--[15:14]--0x0--Reseved for future use--
////--
//#define CFG_CALIB_CTRL  0x020 //--16--CFG--Calibration Control--
////--self_calibrate--rw--boolean--[0]--0x0--Self Calibrate. When set, BISC calibration is run at reset de-assertion otherwise calibration will not be run. Upon completion Xphy asserts FIXDLY_RDY.--
////--dis_vttrack_ibit--rw--boolean--[1]--0x0--Setting dis_vttrack_ibit disables IDELAY bisc VT tracking, default is enabled--
////--dis_vttrack_obit--rw--boolean--[2]--0x0--Setting dis_vttrack_obit disables ODELAY bisc VT tracking, default is enabled--
////--recalibrate_en_0--rw--boolean--[3]--0x0--TRUE--Bitslice-0 calibration enable. When set, BISC injects reference clock into data path for calibration. Otherwise bitslice is not calibrated. If any of the I or O delay format in the nibble is TIME then this bit gets set.--
////--recalibrate_en_1--rw--boolean--[4]--0x0--TRUE--Bitslice-1 calibration enable. When set, BISC injects reference clock into data path for calibration. Otherwise bitslice is not calibrated. If I or O delay in the bitslice is TIME then this bit gets set.--
////--recalibrate_en_2--rw--boolean--[5]--0x0--TRUE--Bitslice-2 calibration enable. When set, BISC injects reference clock into data path for calibration. Otherwise bitslice is not calibrated.  If I or O delay in the bitslice is TIME then this bit gets set.--
////--recalibrate_en_3--rw--boolean--[6]--0x0--TRUE--Bitslice-3 calibration enable. When set, BISC injects reference clock into data path for calibration. Otherwise bitslice is not calibrated.  If I or O delay in the bitslice is TIME then this bit gets set.--
////--recalibrate_en_4--rw--boolean--[7]--0x0--TRUE--Bitslice-4 calibration enable. When set, BISC injects reference clock into data path for calibration. Otherwise bitslice is not calibrated.  If I or O delay in the bitslice is TIME then this bit gets set.--
////--recalibrate_en_5--rw--boolean--[8]--0x0--TRUE--Bitslice-5 calibration enable. When set, BISC injects reference clock into data path for calibration. Otherwise bitslice is not calibrated.  If I or O delay in the bitslice is TIME then this bit gets set.--
////--RESERVED--raz--boolean--[10:9]--0x0--Reseved for future use--
////--fixdly_rdy--ro--boolean--[11]--0x0--Fixed Delay calibration. When high indicates the calibration is complete otherwise calibration in progress.--
////--phy_rdy--ro--boolean--[12]--0x0--Pht ready. This will be set after clb2phy_ctrl_en_vtc = 1. When set, indicates Phy is ready for transmit and/or receive dat otherwise VT calibration base line measurement in progress.--
////--bsc_reset--rw--boolean--[13]--0x0--Software BISC reset. When set, BISC will be reset. This is for bisc backward compatibility--
////--dis_vttrack_qdly--rw--boolean--[14]--0x0--Quarter (PQTR and NQTR) delays VT track. When set, quarter delays are not adjusted/compensated for VT variation otherwise adjusted for VT compensation.--
////--pause_rdy--ro--boolean--[15]--0x0--Indicates BISC state machine is in pause. This will be set as a result of BISC Pause register field in debug register is set.--
////--
//#define CFG_TX_INIT  0x024 //--16--CFG--Transmit Init --
////--tx_init_0--rw--boolean--[0]--0x0--Bitslice-0 output power-on state. When set, bitslice drives a 1 onto IOB otherwise drives a 0.--
////--tx_init_1--rw--boolean--[1]--0x0--Bitslice-1 output power-on state. When set, bitslice drives a 1 onto IOB otherwise drives a 0.--
////--tx_init_2--rw--boolean--[2]--0x0--Bitslice-2 output power-on state. When set, bitslice drives a 1 onto IOB otherwise drives a 0.--
////--tx_init_3--rw--boolean--[3]--0x0--Bitslice-3 output power-on state. When set, bitslice drives a 1 onto IOB otherwise drives a 0.--
////--tx_init_4--rw--boolean--[4]--0x0--Bitslice-4 output power-on state. When set, bitslice drives a 1 onto IOB otherwise drives a 0.--
////--tx_init_5--rw--boolean--[5]--0x0--Bitslice-5 output power-on state. When set, bitslice drives a 1 onto IOB otherwise drives a 0.--
////--RESERVED--raz--uint--[7:6]--0x0--Reseved for future use--
////--tx_init_tri--rw--boolean--[8]--0x0--Tristate power-on state. When reset, tristate is enabled otherwise no tristate.--
////--tx_diff_0--rw--boolean--[9]--0x0--Bitslice-0 differential mode. When set bitslice is in differential mode--
////--tx_diff_1--rw--boolean--[10]--0x0--Bitslice-1 differential mode. When set bitslice is in differential mode--
////--tx_diff_2--rw--boolean--[11]--0x0--Bitslice-2 differential mode. When set bitslice is in differential mode--
////--tx_diff_3--rw--boolean--[12]--0x0--Bitslice-3 differential mode. When set bitslice is in differential mode--
////--tx_diff_4--rw--boolean--[13]--0x0--Bitslice-4 differential mode. When set bitslice is in differential mode--
////--tx_diff_5--rw--boolean--[14]--0x0--Bitslice-5 differential mode. When set bitslice is in differential mode--
////--RESERVED--raz--uint--[15]--0x0--Reseved for future use--
////--
//#define CFG_NIBBLE_CTRL2  0x028 //--16--CFG--Nibble Control 2--
////--ibuf_dis_0--rw--boolean--[0]--0x0--Bitslice-0 receiver turn off control. When set, receiever is turned off otherwise it is on--
////--ibuf_dis_1--rw--boolean--[1]--0x0--Bitslice-1 receiver turn off control. When set, receiever is turned off otherwise it is on--
////--ibuf_dis_2--rw--boolean--[2]--0x0--Bitslice-2 receiver turn off control. When set, receiever is turned off otherwise it is on--
////--ibuf_dis_3--rw--boolean--[3]--0x0--Bitslice-3 receiver turn off control. When set, receiever is turned off otherwise it is on--
////--ibuf_dis_4--rw--boolean--[4]--0x0--Bitslice-4 receiver turn off control. When set, receiever is turned off otherwise it is on--
////--ibuf_dis_5--rw--boolean--[5]--0x0--Bitslice-5 receiver turn off control. When set, receiever is turned off otherwise it is on--
////--RESERVED--raz--uint--[7:6]--0x0--Reseved for future use--
////--broadcast_disable--rw--boolean--[8]--0x0--When this bit is set, PHY will not respond (or ignore) the broadcase write commands.--
////--RESERVED--raz--uint--[9]--0x0--Reseved for future use--
////--odt_0--rw--boolean--[10]--0x0--Bitslice-0 ODT control. When set ODT is disabled otherwise it is enabled. This bit is valid only when DMC is selected (clb_dmc_sel_0 = 0).--
////--odt_1--rw--boolean--[11]--0x0--Bitslice-0 ODT control. When set ODT is disabled otherwise it is enabled. This bit is valid only when DMC is selected (clb_dmc_sel_1 = 0).--
////--odt_2--rw--boolean--[12]--0x0--Bitslice-0 ODT control. When set ODT is disabled otherwise it is enabled. This bit is valid only when DMC is selected (clb_dmc_sel_2 = 0).--
////--odt_3--rw--boolean--[13]--0x0--Bitslice-0 ODT control. When set ODT is disabled otherwise it is enabled. This bit is valid only when DMC is selected (clb_dmc_sel_3 = 0).--
////--odt_4--rw--boolean--[14]--0x0--Bitslice-0 ODT control. When set ODT is disabled otherwise it is enabled. This bit is valid only when DMC is selected (clb_dmc_sel_4 = 0).--
////--odt_5--rw--boolean--[15]--0x0--Bitslice-0 ODT control. When set ODT is disabled otherwise it is enabled. This bit is valid only when DMC is selected (clb_dmc_sel_5 = 0).--
////--
//#define CFG_NIBBLE_CTRL3  0x02C //--16--CFG--Nibble Control 0--
////--lp4_dqs--rw--boolean--[0]--0x0--Enable Other PCLK. When set, nibble uses PCLK from neighbouring nibble.--
////--lp4_rd_preamble--rw--boolean--[1]--0x0--Set for LPDDR4 toggling preamble --
////--lp4_rd_pstamble--rw--boolean--[2]--0x0--Set for LPDDR4 extended (and toggling) postamble --
////--clk_src--rw--boolean--[4:3]--0x0--Enable Other NCLK. When set, nibble uses NCLK from neighbouring nibble.--
////--en_dyn_odly_mode--rw--boolean--[5]--0x0--Disable ODelay dynamic mode. --
////--odt_control_src--rw--boolean--[6]--0x0--ODT control select. When set, ODT is controlled by clb2phy_odt otherwise controlled by XPHY--
////--en_clk_to_ext_e--rw--boolean--[7]--0x0--Enable clock to external east. When set, nibble forwards the clock to east side nibble in the bank otherwise no clock forwarding.--
////--en_clk_to_ext_w--rw--boolean--[8]--0x0--Enable clock to external west. When set, nibble forwards the clock to west side nibble in the bank otherwise no clock forwarding.--
////--rx_data_width--rw--uint--[10:9]--0x00--"Rx data width.
////0: Data width of 8
////1: Data width of 2
////2: Data width of 4"--
////--tx_data_width--rw--uint--[12:11]--0x00--"Tx data width.
////0: Data width of 8
////1: Data width of 4
////2: Data width of 2"--
////--dqs_gate_cal--rw--boolean--[14:13]--0x0--"Setting dqs_gate_cal[0] enables auto-gate calibration.
////Setting dqs_gate_cal[1] enables auto-gate tracking."--
////--crse_dly_enable--rw--boolean--[15]--0x0--When set, BISC will employ the Coarse delay when determining quarter delay push-out for PDQS and NDQS if pqtr and nqtr saturate.--
////--
//#define CFG_PRE_EMPHASIS  0x030 //--16--CFG--Pre-emphasis and coarse step size--
////--en_pre_emphasis_0--rw--boolean--[0]--0x0--Bitslice-0 Pre-emphasis Enable. When set, pre-emaphasis logic is enabled otherwise no pre-emphasis.--
////--en_pre_emphasis_1--rw--boolean--[1]--0x0--Bitslice-1 Pre-emphasis Enable. When set, pre-emaphasis logic is enabled otherwise no pre-emphasis.--
////--en_pre_emphasis_2--rw--boolean--[2]--0x0--Bitslice-2 Pre-emphasis Enable. When set, pre-emaphasis logic is enabled otherwise no pre-emphasis.--
////--en_pre_emphasis_3--rw--boolean--[3]--0x0--Bitslice-3 Pre-emphasis Enable. When set, pre-emaphasis logic is enabled otherwise no pre-emphasis.--
////--en_pre_emphasis_4--rw--boolean--[4]--0x0--Bitslice-4 Pre-emphasis Enable. When set, pre-emaphasis logic is enabled otherwise no pre-emphasis.--
////--en_pre_emphasis_5--rw--boolean--[5]--0x0--Bitslice-5 Pre-emphasis Enable. When set, pre-emaphasis logic is enabled otherwise no pre-emphasis.--
////--RESERVED--rw--boolean--[15:6]--0x0--Reseved for future use--
////--
//#define CFG_LB_CASCADE  0x034 //--16--CFG--Loopback and Cascade--
////--cascade_0--rw--boolean--[0]--0x0--Bitslice-0 delay cascade. When set ODelay is cascaded to IDelay to provide double the delay otherwise  IDelay and ODelay operate independently. When cascade is enabled both clb2phy_idelaly_* and clb2phy_olday_* interfaces are used to load delays into corresponding delay lines.--
////--cascade_1--rw--boolean--[1]--0x0--Bitslice-1 delay cascade. When set ODelay is cascaded to IDelay to provide double the delay otherwise  IDelay and ODelay operate independently. When cascade is enabled both clb2phy_idelaly_* and clb2phy_olday_* interfaces are used to load delays into corresponding delay lines.--
////--cascade_2--rw--boolean--[2]--0x0--Bitslice-2 delay cascade. When set ODelay is cascaded to IDelay to provide double the delay otherwise  IDelay and ODelay operate independently. When cascade is enabled both clb2phy_idelaly_* and clb2phy_olday_* interfaces are used to load delays into corresponding delay lines.--
////--cascade_3--rw--boolean--[3]--0x0--Bitslice-3 delay cascade. When set ODelay is cascaded to IDelay to provide double the delay otherwise  IDelay and ODelay operate independently. When cascade is enabled both clb2phy_idelaly_* and clb2phy_olday_* interfaces are used to load delays into corresponding delay lines.--
////--cascade_4--rw--boolean--[4]--0x0--Bitslice-4 delay cascade. When set ODelay is cascaded to IDelay to provide double the delay otherwise  IDelay and ODelay operate independently. When cascade is enabled both clb2phy_idelaly_* and clb2phy_olday_* interfaces are used to load delays into corresponding delay lines.--
////--cascade_5--rw--boolean--[5]--0x0--Bitslice-5 delay cascade. When set ODelay is cascaded to IDelay to provide double the delay otherwise  IDelay and ODelay operate independently. When cascade is enabled both clb2phy_idelaly_* and clb2phy_olday_* interfaces are used to load delays into corresponding delay lines.--
////--RESERVED--rw--uint--[7:6]--0x0--Reseved for future use--
////--loopback_0--rw--boolean--[8]--0x0--Bitslice-0 loopback. When set, iob2phy_i is driven by phy2iob_o otherwise it is driven by IOB.--
////--loopback_1--rw--boolean--[9]--0x0--Bitslice-1 loopback. When set, iob2phy_i is driven by phy2iob_o otherwise it is driven by IOB.--
////--loopback_2--rw--boolean--[10]--0x0--Bitslice-2 loopback. When set, iob2phy_i is driven by phy2iob_o otherwise it is driven by IOB.--
////--loopback_3--rw--boolean--[11]--0x0--Bitslice-3 loopback. When set, iob2phy_i is driven by phy2iob_o otherwise it is driven by IOB.--
////--loopback_4--rw--boolean--[12]--0x0--Bitslice-4 loopback. When set, iob2phy_i is driven by phy2iob_o otherwise it is driven by IOB.--
////--loopback_5--rw--boolean--[13]--0x0--Bitslice-5 loopback. When set, iob2phy_i is driven by phy2iob_o otherwise it is driven by IOB.--
////--RESERVED--raz--uint--[15:14]--0x0--Reseved for future use--
////--
//#define CFG_DMCSEL_RT  0x038 //--16--CFG--Bitslice interface select--
////--clb_dmc_sel_0--rw--boolean--[0]--0x0--Bitslice-0 CLB or DMC interface select. When set, CLB interface is enabled otherwise DMC interface enabled.--
////--clb_dmc_sel_1--rw--boolean--[1]--0x0--Bitslice-1 CLB or DMC interface select. When set, CLB interface is enabled otherwise DMC interface enabled.--
////--clb_dmc_sel_2--rw--boolean--[2]--0x0--Bitslice-2 CLB or DMC interface select. When set, CLB interface is enabled otherwise DMC interface enabled.--
////--clb_dmc_sel_3--rw--boolean--[3]--0x0--Bitslice-3 CLB or DMC interface select. When set, CLB interface is enabled otherwise DMC interface enabled.--
////--clb_dmc_sel_4--rw--boolean--[4]--0x0--Bitslice-4 CLB or DMC interface select. When set, CLB interface is enabled otherwise DMC interface enabled.--
////--clb_dmc_sel_5--rw--boolean--[5]--0x0--Bitslice-5 CLB or DMC interface select. When set, CLB interface is enabled otherwise DMC interface enabled.--
////--RESERVED--rw--uint--[7:6]--0x0--Reseved for future use--
////--routethru_0--rw--boolean--[8]--0x0--Bitslice-0 Routethru. When set, bitslices is configured as serdes otherwise as routethru.--
////--routethru_1--rw--boolean--[9]--0x0--Bitslice-1 Routethru. When set, bitslices is configured as serdes otherwise as routethru.--
////--routethru_2--rw--boolean--[10]--0x0--Bitslice-2 Routethru. When set, bitslices is configured as serdes otherwise as routethru.--
////--routethru_3--rw--boolean--[11]--0x0--Bitslice-3 Routethru. When set, bitslices is configured as serdes otherwise as routethru.--
////--routethru_4--rw--boolean--[12]--0x0--Bitslice-4 Routethru. When set, bitslices is configured as serdes otherwise as routethru.--
////--routethru_5--rw--boolean--[13]--0x0--Bitslice-5 Routethru. When set, bitslices is configured as serdes otherwise as routethru.--
////--clb_dmc_riusel--rw--boolean--[14]--0x0--CLB RIU or DMC RIU select. When set, CLB RIU interface is enabled otherwise DMC RIU interface enabled.--
////--RESERVED--rw--boolean--[15]--0x0--Reseved for future use--
////--
//#define CFG_FIFO_MODE  0x03C //--16--CFG--Fifo mode--
////--fifo_mode_0--rw--uint--[1:0]--0x0--"Bitslice-0 Fifo mode.
////00: Bypass
////01: Pipe line
////10: FIFO
////11: Reserved"--
////--fifo_mode_1--rw--uint--[3:2]--0x0--"Bitslice-1 Fifo mode.
////00: Bypass
////01: Pipe line
////10: FIFO
////11: Reserved"--
////--fifo_mode_2--rw--uint--[5:4]--0x0--"Bitslice-2 Fifo mode.
////00: Bypass
////01: Pipe line
////10: FIFO
////11: Reserved"--
////--fifo_mode_3--rw--uint--[7:6]--0x0--"Bitslice-3 Fifo mode.
////00: Bypass
////01: Pipe line
////10: FIFO
////11: Reserved"--
////--fifo_mode_4--rw--uint--[9:8]--0x0--"Bitslice-4 Fifo mode.
////00: Bypass
////01: Pipe line
////10: FIFO
////11: Reserved"--
////--fifo_mode_5--rw--uint--[11:10]--0x0--"Bitslice-5 Fifo mode.
////00: Bypass
////01: Pipe line
////10: FIFO
////11: Reserved"--
////--fifo_sync_mode--rw--boolean--[12]--0x0--Fifo synchronous mode. When set, FIFO is operated in synchronous mode otherwise asynchronous.--
////--RESERVED--raz--uint--[15:13]--0x0--Reseved for future use--
////--
//#define CFG_RF  0x040 //--16--CFG--Rounding Factor--
////--rounding_factor--rw--uint--[7:0]--0x0--Rounding factor. Used for BISC calculations to form baseline for VT tracking.--
////--RESERVED--raz--uint--[15:8]--0x0--Reseved for future use--
////--
//#define CFG_RD_IDLE_COUNT  0x044 //--16--CFG--Read idle count--
////--rd_idle_count--rw--uint--[5:0]--0x10--Read idle count. After programmed number of clocks (which clock?) read ODT is disabled.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define CFG_BS_RST_MASK  0x048 //--32--CFG--Bitslice reset mask--
//--bs_reset_mask--rw--uint--[5:0]--0x0--Bitslice reset mask. When set, the corresponding bitslice will not get reset when a 1 is written to BS_RESET_CTRL.bs_reset.--
//--bs_reset_tri_mask--rw--boolean--[6]--0x0--Bitslice-tri reset mask. When set, the tristate bitslice will not get reset when a 1 is written to BS_RESET_CTRL.bs_reset_tri.--
//--mon_reset_mask--rw--boolean--[7]--0x0--Monitor reset mask. When set, monitor logic will not get reset when a 1 is written to BS_RESET_CTRL.mon_reset.--
//--bs_reset_width--rw--uint--[11:8]--0x0--Defines the width of the Bitslice reset when clr_gate, bs_reset, bs_reset_tri or mon_reset bit in BS_RESET_CTRL is set.--
//--
//#define BS_RESET_CTRL  0x04C //--16--Bitslice reset control--
////--clr_gate--rw--boolean--[0]--0x0--Clear gate. Width of the pulse is defined by BS_RESET_MASK.bs_reset_width  
////--bs_reset--rw--boolean--[1]--0x0--Bitslice reset. When set, bitslices not masked by bs_reset_mask get reset.--
////--bs_reset_tri--rw--boolean--[2]--0x0--Bitslice-tri reset. When set, bitslice-tri get reset if not masked by bs_reset_tri_mask--
////--mon_reset--rw--boolean--[3]--0x0--Monitor reset. When set, monitor logic get reset if not masked by mon_reset_mask--
////--bsc_reset--rw--boolean--[4]--0x0--Software BISC reset. When set, BISC will be reset. --
////--RESERVED--raz--uint--[7:5]--0x0--Reseved for future use--
////--gt_status--ro--boolean--[8]--0x0--Gate status. The state of DQS sampled with internal PLL clock is presented here. --
////--RESERVED--raz--uint--[15:9]--0x0--Reseved for future use--
////--
//#define BISC_BS_RESET_CTRL  0x050 //--16--Bitslice reset control--
////--bisc_bs_reset--rw--boolean--[6:0]--0x0--Bitslice reset. When set resets bistslice for bisc backward bisc compatibility--
////--bisc_bs_reset_tri--rw--uint--[7]--0x0--Tri Bitslice reset. When set resets bistslice for backward bisc compatibility--
////--bisc_mon_reset--rw--boolean--[8]--0x0--Monitor reset. When set, resets the master phase detect--
////--ififo_bypass--rw--uint--[15:9]--0x0--When set bypasses FIFO on per bitslice basis for backward bisc compatibility--
////--
//#define IODLY_BCAST_MASK  0x054 //--16--IO delay broadcast mask--
////--idly_mask--rw--uint--[5:0]--0x0--Broadcast IDelay mask--
////--odly_mask--rw--uint--[11:6]--0x0--Broadcast ODelay mask--
////--RESERVED--raz--uint--[15:12]--0x0--Reseved for future use--
////--
//#define IODLY_BCAST_CTRL  0x058 //--16--IO delay broadcast control--
////--idly_en--wo--boolean--[0]--0x0--"Broadcase IDelay enable. Increment or decrement IDelays not masked by IODLY_BCAST_CTRL.bcast_idly_mask register.
////Bcast_idly_en, bcast_idly_inc
////0x :  No broadcast increment/decrement
////10: IDelay broadcast decrement
////11: IDelay broadcast increment"--
////--idly_inc--wo--boolean--[1]--0x0--Broadcase IDelay increment/decrement. Self clear. See the description for bcast_idly_en.--
////--odly_en--wo--boolean--[2]--0x0--"Broadcase ODelay enable. Increment or decrement ODelays not masked by IODLY_BCAST_CTRL.bcast_odly_mask register.
////Bcast_odly_en, bcast_odly_inc
////0x :  No broadcast increment/decrement
////10: ODelay broadcast decrement
////11: ODelay broadcast increment"--
////--odly_inc--wo--boolean--[3]--0x0--Broadcase ODelay increment/decrement.  Self clear. See the description for bcast_odly_en.--
////--RESERVED--raz--uint--[15:4]--0x0--Reseved for future use--
////--
//#define PQTR  0x05C //--16--PQTR delay--
////--pqtr_dly--rw--uint--[8:0]--0x0--P quarter delay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--pqtr_crse--wo--boolean--[13]--0x0--"P quarter delay coarse increment/decrement select. When set, PQTR delay will be updated by coarse step based on pqtr_dec and pqtr_inc.
////pqtr_crse, pqtr_dec, pqtr_inc
////000,
////011,
////100,
////111: Load the write data to pqtr_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--pqtr_dec--wo--boolean--[14]--0x0--P quarter delay decrement. See the description for pqtr_crse.--
////--pqtr_inc--wo--boolean--[15]--0x0--P quarter delay increment. See the description for pqtr_crse.--
////--
//#define NQTR  0x060 //--16--NQTR delay--
////--nqtr_dly--rw--uint--[8:0]--0x0--N quarter delay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--nqtr_crse--wo--boolean--[13]--0x0--"N quarter delay coarse increment/decrement select. When set, NQTR delay will be updated by coarse step based on nqtr_dec and nqtr_inc.
////nqtr_crse, nqtr_dec, nqtr_inc
////000,
////011,
////100,
////111: Load the write data to nqtr_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--nqtr_dec--wo--boolean--[14]--0x0--N quarter delay decrement. See the description for pqtr_crse.--
////--nqtr_inc--wo--boolean--[15]--0x0--N quarter delay increment. See the description for pqtr_crse.--
////--
//#define MON  0x064 //--16--Monitor delay--
////--mon_dly--rw--uint--[9:0]--0x0--Monitor delay.--
////--RESERVED--raz--uint--[12:10]--0x0--Reseved for future use--
////--mon_crse--wo--boolean--[13]--0x0--"Monitor delay coarse increment/decrement select. When set, Monitor delay will be updated by coarse step based on mon_dec and mon_inc.
////mon_crse, mon_dec, mon_inc
////000,
////011,
////100,
////111: Load the write data to mon_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--mon_dec--wo--boolean--[14]--0x0--Monitor delay decrement. See the description for pqtr_crse.--
////--mon_inc--wo--boolean--[15]--0x0--Monitor delay increment. See the description for pqtr_crse.--
////--
//#define TRISTATE_ODLY  0x068 //--16--Bitslice-tri delay--
////--tristate_dly--rw--uint--[8:0]--0x0--Bitslice-tri delay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--tristate_crse--wo--boolean--[13]--0x0--"Bitslice-tri delay coarse increment/decrement select. When set, Bitslice-tri delay will be updated by coarse step based on tristate_dec and tristate_inc.
////tristate_crse, tristate_dec, tristate_inc
////000,
////011,
////100,
////111: Load the write data to tristate_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--tristate_dec--wo--boolean--[14]--0x0--Bitslice-tri  delay decrement. See the description for tristate_crse.--
////--tristate_inc--wo--boolean--[15]--0x0--Bitslice-tri  delay increment. See the description for tristate_crse.--
////--
//#define ODLY0  0x06C //--16--Bitslice-0 odelay--
////--odly0_dly--rw--uint--[8:0]--0x0--Bitslice-0 Odelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--odly0_crse--wo--boolean--[13]--0x0--"Bitslice-0 odelay coarse increment/decrement select. When set, Bitslice-0 Odelay will be updated by coarse step based on odly0_dec and odly0_inc.
////odly0_crse, odly0_dec, odly0_inc
////000,
////011,
////100,
////111: Load the write data to odly0_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--odly0_dec--wo--boolean--[14]--0x0--Bitslice-0  delay decrement. See the description for odly0_crse.--
////--odly0_inc--wo--boolean--[15]--0x0--Bitslice-0  delay increment. See the description for odly0_crse.--
////--
//#define ODLY1  0x070 //--16--Bitslice-1 odelay--
////--odly1_dly--rw--uint--[8:0]--0x0--Bitslice-1 Odelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--odly1_crse--wo--boolean--[13]--0x0--"Bitslice-1 odelay coarse increment/decrement select. When set, Bitslice-1 Odelay will be updated by coarse step based on odly1_dec and odly1_inc.
////odly1_crse, odly1_dec, odly1_inc
////000,
////011,
////100,
////111: Load the write data to odly1_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--odly1_dec--wo--boolean--[14]--0x0--Bitslice-1  delay decrement. See the description for odly1_crse.--
////--odly1_inc--wo--boolean--[15]--0x0--Bitslice-1  delay increment. See the description for odly1_crse.--
////--
//#define ODLY2  0x074 //--16--Bitslice-2 odelay--
////--odly2_dly--rw--uint--[8:2]--0x0--Bitslice-2 Odelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--odly2_crse--wo--boolean--[13]--0x0--"Bitslice-2 odelay coarse increment/decrement select. When set, Bitslice-2 Odelay will be updated by coarse step based on odly2_dec and odly2_inc.
////odly2_crse, odly2_dec, odly2_inc
////000,
////011,
////100,
////111: Load the write data to odly2_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--odly2_dec--wo--boolean--[14]--0x0--Bitslice-2  delay decrement. See the description for odly2_crse.--
////--odly2_inc--wo--boolean--[15]--0x0--Bitslice-2  delay increment. See the description for odly2_crse.--
////--
//#define ODLY3  0x078 //--16--Bitslice-3 odelay--
////--odly3_dly--rw--uint--[8:0]--0x0--Bitslice-3 Odelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--odly3_crse--wo--boolean--[13]--0x0--"Bitslice-3 odelay coarse increment/decrement select. When set, Bitslice-3 Odelay will be updated by coarse step based on odly3_dec and odly3_inc.
////odly3_crse, odly3_dec, odly3_inc
////000,
////011,
////100,
////111: Load the write data to odly3_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--odly3_dec--wo--boolean--[14]--0x0--Bitslice-3  delay decrement. See the description for odly3_crse.--
////--odly3_inc--wo--boolean--[15]--0x0--Bitslice-3  delay increment. See the description for odly3_crse.--
////--
//#define ODLY4  0x07C //--16--Bitslice-4 odelay--
////--odly4_dly--rw--uint--[8:0]--0x0--Bitslice-4 Odelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--odly4_crse--wo--boolean--[13]--0x0--"Bitslice-4 odelay coarse increment/decrement select. When set, Bitslice-4 Odelay will be updated by coarse step based on odly4_dec and odly4_inc.
////odly4_crse, odly4_dec, odly4_inc
////000,
////011,
////100,
////111: Load the write data to odly4_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--odly4_dec--wo--boolean--[14]--0x0--Bitslice-4  delay decrement. See the description for odly4_crse.--
////--odly4_inc--wo--boolean--[15]--0x0--Bitslice-4  delay increment. See the description for odly4_crse.--
////--
//#define ODLY5  0x080 //--16--Bitslice-5 odelay--
////--odly5_dly--rw--uint--[8:0]--0x0--Bitslice-5 Odelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--odly5_crse--wo--boolean--[13]--0x0--"Bitslice-5 odelay coarse increment/decrement select. When set, Bitslice-5 Odelay will be updated by coarse step based on odly5_dec and odly5_inc.
////odly5_crse, odly5_dec, odly5_inc
////000,
////011,
////100,
////111: Load the write data to odly5_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--odly5_dec--wo--boolean--[14]--0x0--Bitslice-5  delay decrement. See the description for odly5_crse.--
////--odly5_inc--wo--boolean--[15]--0x0--Bitslice-5  delay increment. See the description for odly5_crse.--
////--
//#define IDLY0  0x084 //--16--Bitslice-0 idelay--
////--idly0_dly--rw--uint--[8:0]--0x0--Bitslice-0 idelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--idly0_crse--wo--boolean--[13]--0x0--#NAME?--"Bitslice-0 idelay coarse increment/decrement select. When set, Bitslice-0 idelay will be updated by coarse step based on idly0_dec and idly0_inc.
////idly0_crse, idly0_dec, idly0_inc
////000,
////011,
////100,
////111: Load the write data to idly0_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--idly0_dec--wo--boolean--[14]--0x0--Bitslice-0  delay decrement. See the description for idly0_crse.--
////--idly0_inc--wo--boolean--[15]--0x0--Bitslice-0  delay increment. See the description for idly0_crse.--
////--
//#define IDLY1  0x088 //--16--Bitslice-1 idelay--
////--idly1_dly--rw--uint--[8:0]--0x0--Bitslice-1 idelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--idly1_crse--wo--boolean--[13]--0x0--"Bitslice-1 idelay coarse increment/decrement select. When set, Bitslice-1 idelay will be updated by coarse step based on idly1_dec and idly1_inc.
////idly1_crse, idly1_dec, idly1_inc
////000,
////011,
////100,
////111: Load the write data to idly1_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--idly1_dec--wo--boolean--[14]--0x0--Bitslice-1  delay decrement. See the description for idly1_crse.--
////--idly1_inc--wo--boolean--[15]--0x0--Bitslice-1  delay increment. See the description for idly1_crse.--
////--
//#define IDLY2  0x08C //--16--Bitslice-2 idelay--
////--idly2_dly--rw--uint--[8:0]--0x0--Bitslice-2 idelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--idly2_crse--wo--boolean--[13]--0x0--"Bitslice-2 idelay coarse increment/decrement select. When set, Bitslice-2 idelay will be updated by coarse step based on idly2_dec and idly2_inc.
////idly2_crse, idly2_dec, idly2_inc
////000,
////011,
////100,
////111: Load the write data to idly2_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--idly2_dec--wo--boolean--[14]--0x0--Bitslice-2  delay decrement. See the description for idly2_crse.--
////--idly2_inc--wo--boolean--[15]--0x0--Bitslice-2  delay increment. See the description for idly2_crse.--
////--
//#define IDLY3  0x090 //--16--Bitslice-3 idelay--
////--idly3_dly--rw--uint--[8:0]--0x0--Bitslice-3 idelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--idly3_crse--wo--boolean--[13]--0x0--"Bitslice-3 idelay coarse increment/decrement select. When set, Bitslice-3 idelay will be updated by coarse step based on idly3_dec and idly3_inc.
////idly3_crse, idly3_dec, idly3_inc
////000,
////011,
////100,
////111: Load the write data to idly3_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--idly3_dec--wo--boolean--[14]--0x0--Bitslice-3  delay decrement. See the description for idly3_crse.--
////--idly3_inc--wo--boolean--[15]--0x0--Bitslice-3  delay increment. See the description for idly3_crse.--
////--
//#define IDLY4  0x094 //  16--Bitslice-4 idelay--
////--idly4_dly--rw--uint--[8:0]--0x0--Bitslice-4 idelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--idly4_crse--wo--boolean--[13]--0x0--"Bitslice-4 idelay coarse increment/decrement select. When set, Bitslice-4 idelay will be updated by coarse step based on idly4_dec and idly4_inc.
////idly4_crse, idly4_dec, idly4_inc
////000,
////011,
////100,
////111: Load the write data to idly4_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--idly4_dec--wo--boolean--[14]--0x0--Bitslice-4  delay decrement. See the description for idly4_crse.--
////--idly4_inc--wo--boolean--[15]--0x0--Bitslice-4  delay increment. See the description for idly4_crse.--
////--
//#define IDLY5  0x098 //  16--Bitslice-5 idelay--
////--idly5_dly--rw--uint--[8:0]--0x0--Bitslice-5 idelay.--
////--RESERVED--raz--uint--[12:9]--0x0--Reseved for future use--
////--idly5_crse--wo--boolean--[13]--0x0--"Bitslice-5 idelay coarse increment/decrement select. When set, Bitslice-5 idelay will be updated by coarse step based on idly5_dec and idly5_inc.
////idly5_crse, idly5_dec, idly5_inc
////000,
////011,
////100,
////111: Load the write data to idly5_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--idly5_dec--wo--boolean--[14]--0x0--Bitslice-5  delay decrement. See the description for idly5_crse.--
////--idly5_inc--wo--boolean--[15]--0x0--Bitslice-5  delay increment. See the description for idly5_crse.--
////--
//#define PQTR_ALIGN  0x09C //  16--PQTR align--
////--pqtr_align--rw--uint--[6:0]--0x0--TRUE--PQTR align delay.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define NQTR_ALIGN  0x0A0 //  16--NQTR align--
////--nqtr_align--rw--uint--[6:0]--0x0--TRUE--NQTR align delay.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define MON_ALIGN  0x0A4 //  16--Monitor align--
////--mon_align--rw--uint--[6:0]--0x0--TRUE--Monitor align delay--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define IDLY0_ALIGN  0x0A8 //  16--IDelay0 align--
////--idly0_align--rw--uint--[6:0]--0x0--TRUE--Idelay0 align delay.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define IDLY1_ALIGN  0x0AC //  16--IDelay1 align--
////--idly1_align--rw--uint--[6:0]--0x0--TRUE--Idelay1 align delay.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define IDLY2_ALIGN  0x0B0 //  16--IDelay2 align--
////--idly2_align--rw--uint--[6:0]--0x0--TRUE--Idelay2 align delay.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define IDLY3_ALIGN  0x0B4 //  16--IDelay3 align--
////--idly3_align--rw--uint--[6:0]--0x0--TRUE--Idelay3 align delay.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define IDLY4_ALIGN  0x0B8 //  16--IDelay4 align--
////--idly4_align--rw--uint--[6:0]--0x0--TRUE--Idelay4 align delay.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define IDLY5_ALIGN  0x0BC //  16--IDelay5 align--
////--idly5_align--rw--[6:0]--0x0--TRUE--Idelay5 align delay.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define PQTR_RATIO  0x0C0 //  16--PQTR Ratio--
////--pqtr_ratio--rw--uint--[15:0]--0x0--TRUE--PQTR delay ratio. Used by BISC for VT tracking.--
////--
//#define NQTR_RATIO  0x0C4 //  16--NQTR Ratio--
////--nqtr_ratio--rw--uint--[15:0]--0x0--TRUE--NQTR delay ratio. Used by BISC for VT tracking.--
////--
//#define IDLY0_RATIO  0x0C8 //--16--IDelay0 Ratio--
////--idly0_ratio--rw--uint--[15:0]--0x0--TRUE--IDelay0 delay ratio. Used by BISC for VT tracking.--
////--
//#define IDLY1_RATIO  0x0CC //--16--IDelay1 Ratio--
////--idly1_ratio--rw--uint--[15:0]--0x0--TRUE--IDelay1 delay ratio. Used by BISC for VT tracking.--
////--
//#define IDLY2_RATIO  0x0D0 //--16--IDelay2 Ratio--
////--idly2_ratio--rw--uint--[15:0]--0x0--TRUE--IDelay2 delay ratio. Used by BISC for VT tracking.--
////--
//#define IDLY3_RATIO  0x0D4 //--16--IDelay3 Ratio--
////--idly3_ratio--rw--uint--[15:0]--0x0--TRUE--IDelay3 delay ratio. Used by BISC for VT tracking.--
////--
//#define IDLY4_RATIO  0x0D8 //--16--IDelay4 Ratio--
////--idly4_ratio--rw--uint--[15:0]--0x0--TRUE--IDelay4 delay ratio. Used by BISC for VT tracking.--
////--
//#define IDLY5_RATIO  0x0DC //--16--IDelay5 Ratio--
////--idly5_ratio--rw--uint--[15:0]--0x0--TRUE--IDelay5 delay ratio. Used by BISC for VT tracking.--
////--
//#define WL_TRAIN  0x0E0 //--16--Write level mode--
////--wl_train--rw--boolean--[0]--0x0--Write level mode. When set, XPHY is put in write leveling mode otherwise normal operation.--
////--en_vtc--rw--boolean--[1]--0x0--Delay control enable VTC. When set, Xphy prepares the base line for the VT compensation and upon completion it assert PHY_RDY.--
////--RESERVED--raz--uint--[15:2]--0x0--Reseved for future use--
////--
//#define WLDLYRNK0  0x0E4 //--16--Rank-0 write level delay--
////--wl_dly_rnk0_fine--rw--uint--[8:0]--0x0--Rank-0 write level fine delay.--
////--wl_dly_rnk0_crse--rw--uint--[12:9]--0x0--Rank-0 write level coarse delay.--
////--wl_dly_rnk0_crse_sel--rw--boolean--[13]--0x0--"Rank-0 write level coarse update select. When set, delay will be updated by coarse step based on wl_dly_rnk0_dec and wl_dly_rnk0_inc.
////wl_dly_rnk0_crse_sel, wl_dly_rnk0_dec, wl_dly_rnk0_inc
////000,
////011,
////100,
////111: Load the write data to wl_dly_rnk0_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--wl_dly_rnk0_dec--rw--boolean--[14]--0x0--Rank-0 write level delay decrement. See the description for wl_dly_rnk0_crse_sel.--
////--wl_dly_rnk0_inc--rw--boolean--[15]--0x0--Rank-0 write level delay increment. See the description for wl_dly_rnk0_crse_sel.--
////--
//#define WLDLYRNK1  0x0E8 //--16--Rank-1 write level delay--
////--wl_dly_rnk1_fine--rw--uint--[8:0]--0x0--Rank-1 write level fine delay.--
////--wl_dly_rnk1_crse--rw--uint--[12:9]--0x0--Rank-1 write level coarse delay.--
////--wl_dly_rnk1_crse_sel--rw--boolean--[13]--0x0--"Rank-1 write level coarse update select. When set, delay will be updated by coarse step based on wl_dly_rnk1_dec and wl_dly_rnk1_inc.
////wl_dly_rnk1_crse_sel, wl_dly_rnk1_dec, wl_dly_rnk1_inc
////000,
////011,
////100,
////111: Load the write data to wl_dly_rnk1_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--wl_dly_rnk1_dec--rw--boolean--[14]--0x0--Rank-1 write level delay decrement. See the description for wl_dly_rnk1_crse_sel.--
////--wl_dly_rnk1_inc--rw--boolean--[15]--0x0--Rank-1 write level delay increment. See the description for wl_dly_rnk1_crse_sel.--
////--
//#define WLDLYRNK2  0x0EC //--16--Rank-2 write level delay--
////--wl_dly_rnk2_fine--rw--uint--[8:0]--0x0--Rank-2 write level fine delay.--
////--wl_dly_rnk2_crse--rw--uint--[12:9]--0x0--Rank-2 write level coarse delay.--
////--wl_dly_rnk2_crse_sel--rw--boolean--[13]--0x0--"Rank-2 write level coarse update select. When set, delay will be updated by coarse step based on wl_dly_rnk2_dec and wl_dly_rnk2_inc.
////wl_dly_rnk2_crse_sel, wl_dly_rnk2_dec, wl_dly_rnk2_inc
////000,
////011,
////100,
////111: Load the write data to wl_dly_rnk2_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--wl_dly_rnk2_dec--rw--boolean--[14]--0x0--Rank-2 write level delay decrement. See the description for wl_dly_rnk2_crse_sel.--
////--wl_dly_rnk2_inc--rw--boolean--[15]--0x0--Rank-2 write level delay increment. See the description for wl_dly_rnk2_crse_sel.--
////--
//#define WLDLYRNK3  0x0F0 //--16--Rank-3 write level delay--
////--wl_dly_rnk3_fine--rw--uint--[8:0]--0x0--Rank-3 write level fine delay.--
////--wl_dly_rnk3_crse--rw--uint--[12:9]--0x0--Rank-3 write level coarse delay.--
////--wl_dly_rnk3_crse_sel--rw--boolean--[13]--0x0--"Rank-0 write level coarse update select. When set, delay will be updated by coarse step based on wl_dly_rnk3_dec and wl_dly_rnk3_inc.
////wl_dly_rnk3_crse_sel, wl_dly_rnk3_dec, wl_dly_rnk3_inc
////000,
////011,
////100,
////111: Load the write data to wl_dly_rnk3_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--wl_dly_rnk3_inc--rw--boolean--[14]--0x0--Rank-3 write level delay decrement. See the description for wl_dly_rnk3_crse_sel.--
////--wl_dly_rnk3_dec--rw--boolean--[15]--0x0--Rank-3 write level delay increment. See the description for wl_dly_rnk3_crse_sel.--
////--
//#define RLDLYRNK0  0x0F4 //--16--Rank-0 read level delay--
////--rl_dly_rnk0_fine--rw--uint--[8:0]--0x0--Rank-0 read level fine delay.--
////--rl_dly_rnk0_crse--rw--uint--[12:9]--0x0--Rank-0 read level coarse delay.--
////--rl_dly_rnk0_crse_sel--rw--boolean--[13]--0x0--"Rank-0 read level coarse update select. When set, delay will be updated by coarse step based on rl_dly_rnk0_dec and rl_dly_rnk0_inc. Bits[15:13] are cleared after delayline has been updated.
////rl_dly_rnk0_crse_sel, rl_dly_rnk0_dec, rl_dly_rnk0_inc
////000,
////011,
////100,
////111: Load the read data to rl_dly_rnk0_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--rl_dly_rnk0_inc--rw--boolean--[14]--0x0--Rank-0 read level delay decrement. This bit gets cleared after delay line has been updated with new delay. See the description for rl_dly_rnk0_crse_sel.--
////--rl_dly_rnk0_dec--rw--boolean--[15]--0x0--Rank-0 read level delay increment. This bit gets cleared after delay line has been updated with new delay. See the description for rl_dly_rnk0_crse_sel.--
////--
//#define RLDLYRNK1  0x0F8 //--16--Rank-1 read level delay--
////--rl_dly_rnk1_fine--rw--uint--[8:0]--0x0--Rank-1 read level fine delay.--
////--rl_dly_rnk1_crse--rw--uint--[12:9]--0x0--Rank-1 read level coarse delay.--
////--rl_dly_rnk1_crse_sel--rw--boolean--[13]--0x0--"Rank-1 read level coarse update select. When set, delay will be updated by coarse step based on rl_dly_rnk1_dec and rl_dly_rnk1_inc. Bits[15:13] are cleared after delayline has been updated.
////rl_dly_rnk1_crse_sel, rl_dly_rnk1_dec, rl_dly_rnk1_inc
////000,
////011,
////100,
////111: Load the read data to rl_dly_rnk1_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--rl_dly_rnk1_inc--rw--boolean--[14]--0x0--Rank-1 read level delay decrement. This bit gets cleared after delay line has been updated with new delay. See the description for rl_dly_rnk1_crse_sel.--
////--rl_dly_rnk1_dec--rw--boolean--[15]--0x0--Rank-1 read level delay increment. This bit gets cleared after delay line has been updated with new delay. See the description for rl_dly_rnk1_crse_sel.--
////--
//#define RLDLYRNK2  0x0FC //--16--Rank-2 read level delay--
////--rl_dly_rnk2_fine--rw--uint--[8:0]--0x0--Rank-2 read level fine delay.--
////--rl_dly_rnk2_crse--rw--uint--[12:9]--0x0--Rank-2 read level coarse delay.--
////--rl_dly_rnk2_crse_sel--rw--boolean--[13]--0x0--"Rank-2 read level coarse update select. When set, delay will be updated by coarse step based on rl_dly_rnk2_dec and rl_dly_rnk2_inc. Bits[15:13] are cleared after delayline has been updated.
////rl_dly_rnk2_crse_sel, rl_dly_rnk2_dec, rl_dly_rnk2_inc
////000,
////011,
////100,
////111: Load the read data to rl_dly_rnk2_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--rl_dly_rnk2_inc--rw--boolean--[14]--0x0--Rank-2 read level delay decrement. This bit gets cleared after delay line has been updated with new delay. See the description for rl_dly_rnk2_crse_sel.--
////--rl_dly_rnk2_dec--rw--boolean--[15]--0x0--Rank-2 read level delay increment. This bit gets cleared after delay line has been updated with new delay. See the description for rl_dly_rnk2_crse_sel.--
////--
//#define RLDLYRNK3  0x100 //--16--Rank-3 read level delay--
////--rl_dly_rnk3_fine--rw--uint--[8:0]--0x0--Rank-3 read level fine delay.--
////--rl_dly_rnk3_crse--rw--uint--[12:9]--0x0--Rank-3 read level coarse delay.--
////--rl_dly_rnk3_crse_sel--rw--boolean--[13]--0x0--"Rank-3 read level coarse update select. When set, delay will be updated by coarse step based on rl_dly_rnk3_dec and rl_dly_rnk3_inc. Bits[15:13] are cleared after delayline has been updated.
////rl_dly_rnk3_crse_sel, rl_dly_rnk3_dec, rl_dly_rnk3_inc
////000,
////011,
////100,
////111: Load the read data to rl_dly_rnk3_dly directly
////001: Increment by one step
////010: Decrement by one step
////101: Increment by incdec_crse
////110: Decrement by incdec_crse"--
////--rl_dly_rnk3_inc--rw--boolean--[14]--0x0--Rank-3 read level delay decrement. This bit gets cleared after delay line has been updated with new delay. See the description for rl_dly_rnk3_crse_sel.--
////--rl_dly_rnk3_dec--rw--boolean--[15]--0x0--Rank-3 read level delay increment. This bit gets cleared after delay line has been updated with new delay. See the description for rl_dly_rnk3_crse_sel.--
////--
//#define RL_DLY_RATIO  0x104 //--16--Read delay ratio--
////--rd_dly_ratio--rw--uint--[15:0]--0x0--Read delay ratio. Used by BISC for VT tracking.--
////--
//#define RL_DLY_QTR  0x108 //--16--Read Quarter cycle delay--
////--rl_dly_qtr--rw--uint--[8:0]--0x0--Read quarter cycle delay. Used by firmware to know the number of taps equivalent to 90deg to detect quarter cycle rollover.--
////--RESERVED--raz--uint--[15:9]--0x0--Reseved for future use--
////--
//#define CRSE_DLY  0x10C //--16--Coarse Delay--
////--crse_dly--rw--uint--[6:0]--0x0--This is extended delay in front of PQTR and NQTR delays for lower frequencies. Enables when crse_dly_en is set.--
////--RESERVED--raz--uint--[15:7]--0x0--Reseved for future use--
////--
//#define RD_DBG_RW_INDEX  0x110 //--16--Debug read/write index--
////--dbg_rd_index--rw--uint--[7:0]--0x0--Debug read index register. Mux selection address for debug status read.--
////--dbg_wr_index--rw--uint--[15:8]--0x0--Debug write index register. Mux selection address for debug status write.--
////--
//#define RD_DBG_RD_STATUS  0x114 //--16--Debug read status.--
////--dbg_rd_status--ro--uint--[15:0]--0x0--Debug read data.--
////--
//#define DBG_WR_STATUS  0x118 //--16--Debug write --
////--dbg_wr_status--wo--uint--[15:0]--0x0--Debug write data.--
////--
//#define DFD_CTRL  0x11C //--16--Debug counter--
////--dbg_ct_start_en--rw--boolean--[0]--0x0--Debug counter start.--
////--RESERVED--raz--uint--[15:1]--0x0--Reseved for future use--
////--
//#define INCDEC_CRSE  0x120 //--16--Inc/dec coarse value--
////--incdec_crse--rw--uint--[7:0]--0x0--Coarse adjustment value. This delays are increment or decrement by this value when a coarse adjustment is made.--
////--RESERVED--rw--boolean--[15:8]--0x0--Reseved for future use--
////--
//#define CFG_TX_XMUX_CTRL0  0x124 //--16--CFG--Used for controling output impedance of IOB driver and de-emphasis. The 3 bits control O_0, O_1, and O_2 respectively. Seting any to '0' passes the de-serialized data, O,  to IOB. Setting to a '1' passes a 1-UI delayed version of the data. If de-emphasis is enabled (see CFG_PRE_EMPHASIS ), then a '1' further causes the 1-UI delayed output to be inverted (i.e.OZ1). Refer to IOB DID for mapping of xmux values to effective output impedance.--
////--tx_xmux_ctrl_0--rw--boolean--[2:0]--0x0--Bitslice-0 pre-emphasis level--
////--tx_xmux_ctrl_1--rw--boolean--[5:3]--0x0--Bitslice-1 pre-emphasis level--
////--tx_xmux_ctrl_2--rw--boolean--[8:6]--0x0--Bitslice-2 pre-emphasis level--
////--RESERVED--raz--uint--[15:9]--0x0--Reseved for future use--
////--
//#define CFG_TX_XMUX_CTRL1  0x128 //--16--CFG--Used for controling output impedance of IOB driver and de-emphasis. The 3 bits control O_0, O_1, and O_2 respectively. Seting any to '0' passes the de-serialized data, O,  to IOB. Setting to a '1' passes a 1-UI delayed version of the data. If de-emphasis is enabled (see CFG_PRE_EMPHASIS ), then a '1' further causes the 1-UI delayed output to be inverted (i.e.OZ1). Refer to IOB DID for mapping of xmux values to effective output impedance.--
////--tx_xmux_ctrl_3--rw--boolean--[2:0]--0x0--Bitslice-3 pre-emphasis level--
////--tx_xmux_ctrl_4--rw--boolean--[5:3]--0x0--Bitslice-4 pre-emphasis level--
////--tx_xmux_ctrl_5--rw--boolean--[8:6]--0x0--Bitslice-5 pre-emphasis level--
////--RESERVED--raz--uint--[15:9]--0x0--Reseved for future use--
////--
//#define CFG_TBYTE_CTL  0x12C //--16--CFG--Nibble Control 2--
////--tbyte_ctl_0--rw--boolean--[0]--0x0--Bitslice-0 tristate control. When set, tristate is controlled by clb2phy_wren otherwise controlled by clb2phy_txbit_t.--
////--tbyte_ctl_1--rw--boolean--[1]--0x0--Bitslice-1 tristate control. When set, tristate is controlled by clb2phy_wren otherwise controlled by clb2phy_txbit_t.--
////--tbyte_ctl_2--rw--boolean--[2]--0x0--Bitslice-2 tristate control. When set, tristate is controlled by clb2phy_wren otherwise controlled by clb2phy_txbit_t.--
////--tbyte_ctl_3--rw--boolean--[3]--0x0--Bitslice-3 tristate control. When set, tristate is controlled by clb2phy_wren otherwise controlled by clb2phy_txbit_t.--
////--tbyte_ctl_4--rw--boolean--[4]--0x0--Bitslice-4 tristate control. When set, tristate is controlled by clb2phy_wren otherwise controlled by clb2phy_txbit_t.--
////--tbyte_ctl_5--rw--boolean--[5]--0x0--Bitslice-5 tristate control. When set, tristate is controlled by clb2phy_wren otherwise controlled by clb2phy_txbit_t.--
////--RESERVED--raz--uint--[15:6]--0x0--Reseved for future use--
////--
//#define CFG_IOB0_0  0x130 //--16--CFG--IOB0 configuration0--
////--iob0_0--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_1  0x134 //--16--CFG--IOB0 configuration1--
////--iob0_1--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_2  0x138 //--16--CFG--IOB0 configuration2--
////--iob0_2--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_3  0x13C //--16--CFG--IOB0 configuration3--
////--iob0_3--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_4  0x140 //--16--CFG--IOB0 configuration4--
////--iob0_4--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_5  0x144 //--16--CFG--IOB0 configuration5--
////--iob0_5--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_6  0x148 //--16--CFG--IOB0 configuration6--
////--iob0_6--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_7  0x14C //--16--CFG--IOB0 configuration7--
////--iob0_7--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_8  0x150 //--16--CFG--IOB0 configuration8--
////--iob0_8--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB0_9  0x154 //--16--CFG--IOB0 configuration9--
////--iob0_9--rw--uint--[15:0]--0x0--IOB0 configuration--
////--
//#define CFG_IOB1_0  0x158 //--16--CFG--IOB1 configuration0--
////--iob1_0--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_1  0x15C //--16--CFG--IOB1 configuration1--
////--iob1_1--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_2  0x160 //--16--CFG--IOB1 configuration2--
////--iob1_2--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_3  0x164 //--16--CFG--IOB1 configuration3--
////--iob1_3--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_4  0x168 //--16--CFG--IOB1 configuration4--
////--iob1_4--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_5  0x16C //--16--CFG--IOB1 configuration5--
////--iob1_5--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_6  0x170 //--16--CFG--IOB1 configuration6--
////--iob16--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_7  0x174 //--16--CFG--IOB1 configuration7--
////--iob1_7--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_8  0x178 //--16--CFG--IOB1 configuration8--
////--iob1_8--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB1_9  0x17C //--16--CFG--IOB1 configuration9--
////--iob1_9--rw--uint--[15:0]--0x0--IOB1 configuration--
////--
//#define CFG_IOB2_0  0x180 //--16--CFG--IOB2 configuration0--
////--iob2_0--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_1  0x184 //--16--CFG--IOB2 configuration1--
////--iob2_1--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_2  0x188 //--16--CFG--IOB2 configuration2--
////--IOB2_2--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_3  0x18C //--16--CFG--IOB2 configuration3--
////--IOB2_3--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_4  0x190 //--16--CFG--IOB2 configuration4--
////--IOB2_4--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_5  0x194 //--16--CFG--IOB2 configuration5--
////--IOB2_5--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_6  0x198 //--16--CFG--IOB2 configuration6--
////--IOB26--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_7  0x19C //--16--CFG--IOB2 configuration7--
////--IOB2_7--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_8  0x1A0 //--16--CFG--IOB2 configuration8--
////--IOB2_8--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB2_9  0x1A4 //--16--CFG--IOB2 configuration9--
////--IOB2_9--rw--uint--[15:0]--0x0--IOB2 configuration--
////--
//#define CFG_IOB3_0  0x1A8 //--16--CFG--IOB3 configuration0--
////--iob3_0--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_1  0x1AC //--16--CFG--IOB3 configuration1--
////--iob3_1--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_2  0x1B0 //--16--CFG--IOB3 configuration2--
////--IOB3_2--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_3  0x1B4 //--16--CFG--IOB3 configuration3--
////--IOB3_3--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_4  0x1B8 //--16--CFG--IOB3 configuration4--
////--IOB3_4--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_5  0x1BC //--16--CFG--IOB3 configuration5--
////--IOB3_5--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_6  0x1C0 //--16--CFG--IOB3 configuration6--
////--IOB36--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_7  0x1C4 //--16--CFG--IOB3 configuration7--
////--IOB3_7--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_8  0x1C8 //--16--CFG--IOB3 configuration8--
////--IOB3_8--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB3_9  0x1CC //--16--CFG--IOB3 configuration9--
////--IOB3_9--rw--uint--[15:0]--0x0--IOB3 configuration--
////--
//#define CFG_IOB4_0  0x1D0 //--16--CFG--IOB4 configuration0--
////--iob4_0--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_1  0x1D4 //--16--CFG--IOB4 configuration1--
////--iob4_1--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_2  0x1D8 //--16--CFG--IOB4 configuration2--
////--IOB4_2--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_3  0x1DC //--16--CFG--IOB4 configuration3--
////--IOB4_3--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_4  0x1E0 //--16--CFG--IOB4 configuration4--
////--IOB4_4--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_5  0x1E4 //--16--CFG--IOB4 configuration5--
////--IOB4_5--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_6  0x1E8 //--16--CFG--IOB4 configuration6--
////--IOB46--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_7  0x1EC //--16--CFG--IOB4 configuration7--
////--IOB4_7--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_8  0x1F0 //--16--CFG--IOB4 configuration8--
////--IOB4_8--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB4_9  0x1F4 //--16--CFG--IOB4 configuration9--
////--IOB4_9--rw--uint--[15:0]--0x0--IOB4 configuration--
////--
//#define CFG_IOB5_0  0x1F8 //--16--CFG--IOB5 configuration0--
////--iob5_0--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_1  0x1FC //--16--CFG--IOB5 configuration1--
////--iob5_1--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_2  0x200 //--16--CFG--IOB5 configuration2--
////--IOB5_2--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_3  0x204 //--16--CFG--IOB5 configuration3--
////--IOB5_3--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_4  0x208 //--16--CFG--IOB5 configuration4--
////--IOB5_4--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_5  0x20C //--16--CFG--IOB5 configuration5--
////--IOB5_5--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_6  0x210 //--16--CFG--IOB5 configuration6--
////--IOB5_6--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_7  0x214 //--16--CFG--IOB5 configuration7--
////--IOB5_7--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_8  0x218 //--16--CFG--IOB5 configuration8--
////--IOB5_8--rw--uint--[15:0]--0x0--IOB5 configuration--
////--
//#define CFG_IOB5_9  0x21C //--16--CFG--IOB5 configuration9--
////--IOB5_9--rw--uint--[15:0]--0x0--IOB5 configuration--
////


//----------------- RPI Interface for broadcasting the RIU Registers -----------------------------//
#define RLDLY_DEC_POS          0 
#define RLDLY_INC_POS          1 
#define RLDLY_CRSE_EN_POS      2 
#define RLDLY_RNK_MASK_POS     4 
#define RLDLY_RNK_MASK_MASK    0x0F0 

#define QTR_DEC_DLY_POS        14
#define QTR_INC_DLY_POS        15
#define QTR_CRSE_EN_POS        13

#define IDLY_BCAST_EN_POS      0
#define IDLY_INC_POS           1
#define IDLY_CRSE_EN_POS       2

#define ODLY_BCAST_EN_POS      3
#define ODLY_INC_POS           4
#define ODLY_CRSE_EN_POS       5

#define BITS_BS_RESET_MASK_POS 0
#define CLR_GATE_POS        0
#define BS_RESET_POS        1
#define BS_RESET_WT         0x6
//RPI Address Bit Description

//Address bits Description
//
//[5:0] RIU Address
#define RIU_REG_ADDR_POS     0
#define RIU_REG_ADDR_WIDTH   8
#define RIU_REG_ADDR_MASK    0x00FF
//
//[10:6] RIU Nibble selection (ignored when using broadcast)
#define RIU_NIB_POS          8
#define RIU_NIB_WIDTH        5
#define RIU_NIB_MASK         0x1F00
//
//[13:11] RIU Broadcast mask selection
#define RIU_BCAST_MASK_POS   8 
#define RIU_BCAST_MASK_WIDTH 5
#define RIU_BCAST_MASK_MASK  0x1F00
//
//[14] RIU Broadcast Enable
#define RIU_BCAST_EN_POS     14
#define RIU_BCAST_EN_WIDTH   1
#define RIU_BCAST_EN_MASK    0x4000
//
//[15] RPI Register Selection
#define RPI_REG_EN_POS       15
#define RPI_REG_EN_WIDTH     1
#define RPI_REG_EN_MASK      0x8000

//RPI Address map
//
//Address Range Name Description
//
//0x0000_0000 - 0x0000_3FFF RPI Direct Nibble Select Command gets set to only one Nibble based on the address selected
//
//0x0000_4000 - 0x0000_7FFF RPI Broadcast Command gets broadcast to RIU based on register selection
//
//0x0000_8000 - 0x0000_8007 RPI Registers Direct Register access
//
//0x0000_8008 - 0x0000_FFFF RESERVED


//RPI Registers
//
//Register Name Address offset Size Description
//
#define RPI_BCAST_NIBBLE_MASK0 0x00008000 // 27 Nibble Mask 0. One bit per nibble, a 1 indicates a nibble is to be enabled for the given command.
               
#define RPI_BCAST_NIBBLE_MASK1 0x00008001 // 27 Nibble Mask 1. One bit per nibble, a 1 indicates a nibble is to be enabled for the given command.
               
#define RPI_BCAST_NIBBLE_MASK2 0x00008002 // 27 Nibble Mask 2. One bit per nibble, a 1 indicates a nibble is to be enabled for the given command.
               
#define RPI_BCAST_NIBBLE_MASK3 0x00008003 // 27 Nibble Mask 3. One bit per nibble, a 1 indicates a nibble is to be enabled for the given command.
               
#define RPI_BCAST_NIBBLE_MASK4 0x00008004 // 27 Nibble Mask 4. One bit per nibble, a 1 indicates a nibble is to be enabled for the given command.
               
#define RPI_BCAST_NIBBLE_MASK5 0x00008005 // 27 Nibble Mask 5. One bit per nibble, a 1 indicates a nibble is to be enabled for the given command.
               
#define RPI_BCAST_NIBBLE_MASK6 0x00008006 // 27 Nibble Mask 6. One bit per nibble, a 1 indicates a nibble is to be enabled for the given command.
               
#define RPI_BCAST_NIBBLE_MASK7 0x00008007 // 27 Nibble Mask 7. One bit per nibble, a 1 indicates a nibble is to be enabled for the given command.

#define RIU_NIBBLE_SEL_ADJ     0x00008008 //Sets Pipeline on Nibble_sel
#define RIU_R_VALID_ADJ        0x00008009 //Sets Pipeline on read data capture
#define RIU_READ_DATA_DBG      0x0000800A //Debug data for RIU read





//#define DUP_NIBBLE_CTRL0 0x00
#define CFG_NIBBLE_CTRL0 0x00
//#define DUP_NIBBLE_CTRL1 0x01
#define CFG_NIBBLE_CTRL1 0x01
//#define DUP_CALIB_CTRL 0x02
#define CFG_CALIB_CTRL 0x02
#define BS_RESET_CTRL 0x03
#define BISC_BS_RESET_CTRL 0x04
#define IODLY_BCAST_MASK 0x05
#define IODLY_BCAST_CTRL 0x06
#define PQTR 0x07
#define NQTR 0x08
#define MON 0x09
#define TRISTATE_ODLY 0x0a
#define ODLY0 0x0b
#define ODLY1 0x0c
#define ODLY2 0x0d
#define ODLY3 0x0e
#define ODLY4 0x0f
#define ODLY5 0x10
//#define BS_RESET_MASK 0x11
#define CFG_BS_RST_MASK 0x11
#define IDLY0 0x12
#define IDLY1 0x13
#define IDLY2 0x14
#define IDLY3 0x15
#define IDLY4 0x16
#define IDLY5 0x17
#define CRSE_DLY 0x18
#define PQTR_ALIGN 0x19
#define NQTR_ALIGN 0x1a
#define MON_ALIGN 0x1b
#define IDLY0_ALIGN 0x1c
#define IDLY1_ALIGN 0x1d
#define IDLY2_ALIGN 0x1e
#define IDLY3_ALIGN 0x1f
#define IDLY4_ALIGN 0x20
#define IDLY5_ALIGN 0x21
#define RLDLYUPDATE 0x22
#define PQTR_RATIO 0x23
#define NQTR_RATIO 0x24
#define IDLY0_RATIO 0x25
#define IDLY1_RATIO 0x26
#define IDLY2_RATIO 0x27
#define IDLY3_RATIO 0x28
#define IDLY4_RATIO 0x29
#define IDLY5_RATIO 0x2a
#define WL_TRAIN 0x2b
#define WLDLYRNK0 0x2c
#define WLDLYRNK1 0x2d
#define WLDLYRNK2 0x2e
#define WLDLYRNK3 0x2f
#define RLDLYRNK0 0x30
#define RLDLYRNK1 0x31
#define RLDLYRNK2 0x32
#define RLDLYRNK3 0x33
#define RD_IDLE_COUNT 0x34
#define RL_DLY_RATIO 0x35
#define RL_DLY_QTR 0x36
#define DBG_WR_STATUS 0x37
#define RD_DBG_RW_INDEX 0x38
#define RD_DBG_RD_STATUS 0x39
#define DFD_CTRL 0x3a
#define INCDEC_CRSE 0x3b
#define IOB_CAN_CTRL0 0x3c
#define IOB_CAN_CTRL1 0x3d
//Duplicate registers implemented in XPHY
#define DUP_NIBBLE_CTRL2 0x3e
#define DUP_TX_XMUX_CTRL0 0x3f
#define DUP_TX_XMUX_CTRL1 0x40
#define VREF_CTRL 0x41
#define LP4_WL_DQS 0x4a
#define DIS_DYN_MODE 0x4b


// Register fields
#define FIXDLY_MASK_EN_POS 7

#define XPHY_RESET_ASSERT   0x3F
#define XPHY_RESET_DEASSERT 0x0

#define WL_TRAIN_EN_VTC_POS 1
#define SELF_CALIBRATE_POS 0
#define BISC_FIXDLY_RDY_POS 11
#define BISC_PHY_RDY_POS 12
#define DIS_DQS_TRACK_POS 7
#define COARSE_UNDERFLOW_POS 14
#define COARSE_OVERFLOW_POS 15
#define BISC_PAUSE_POS 7
#define PAUSE_RDY_POS 15

#define XPLL_PCSR_MASK     0x0
#define XPLL_PCSR_CONTROL  0x1
#define XPLL_PCSR_STATUS   0x2

#define XPLL_PCSR_ODISABLE  0x3C
#define XPLL_PCSR_INITSTATE 0x40
#define XPLL_PCSR_GATEREG   0x02
#define XPLL_PCSR_CALDONE   0x10
#define XPLL_PCSR_CALERROR  0x20

#define XPLL_REG_0_ADDR   10 // 0x28
#define XPLL_REG_1_ADDR   11 // 0x2C
#define XPLL_REG_2_ADDR   12 // 0x30
#define XPLL_REG_3_ADDR   13 // 0x34
#define XPLL_REG_4_ADDR   14 // 0x38
#define XPLL_REG_5_ADDR   15 // 0x3C
#define XPLL_REG_6_ADDR   16 // 0x40
#define XPLL_REG_7_ADDR   17 // 0x44
#define XPLL_REG_8_ADDR   18 // 0x48
#define XPLL_REG_9_ADDR   19 // 0x4C
#define XPLL_REG_10_ADDR  20 // 0x50
#define XPLL_REG_11_ADDR  21 // 0x54
#define XPLL_REG_12_ADDR  22 // 0x58
#define XPLL_REG_13_ADDR  23 // 0x5C
#define XPLL_REG_14_ADDR  24 // 0x60
#define XPLL_REG_15_ADDR  25 // 0x64
#define XPLL_REG_16_ADDR  26 // 0x68
#define XPLL_REG_17_ADDR  27 // 0x6C
#define XPLL_REG_18_ADDR  28 // 0x70
#define XPLL_REG_19_ADDR  29 // 0x74
#define XPLL_REG_20_ADDR  30 // 0x78
#define XPLL_REG_21_ADDR  31 // 0x7C
#define XPLL_REG_22_ADDR  32 // 0x80
#define XPLL_REG_23_ADDR  33 // 0x84
#define XPLL_REG_24_ADDR  34 // 0x88
#define XPLL_REG_25_ADDR  35 // 0x8C
#define XPLL_REG_26_ADDR  36 // 0x90
#define XPLL_REG_27_ADDR  37 // 0x94
#define XPLL_REG_28_ADDR  38 // 0x98
#define XPLL_REG_29_ADDR  39 // 0x9C
#define XPLL_REG_30_ADDR  40 // 0xA0
#define XPLL_REG_31_ADDR  41 // 0xA4
#define XPLL_REG_32_ADDR  42 // 0xA8
#define XPLL_REG_33_ADDR  43 // 0xAC
#define XPLL_REG_34_ADDR  44 // 0xB0
#define XPLL_REG_35_ADDR  45 // 0xB4
#define XPLL_REG_36_ADDR  46 // 0xB8
#define XPLL_REG_37_ADDR  47 // 0xBC
#define XPLL_REG_38_ADDR  48 // 0xC0
#define XPLL_REG_39_ADDR  49 // 0xC4
#define XPLL_REG_40_ADDR  50 // 0xC8
#define XPLL_REG_41_ADDR  51 // 0xCC
#define XPLL_REG_42_ADDR  52 // 0xD0
