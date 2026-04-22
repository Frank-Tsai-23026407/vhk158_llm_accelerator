/******************************************************************************
// (c) Copyright 2017 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
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
******************************************************************************/
`timescale 1ps/1ps
module bd_6a72_MC_hbmc_0 #(
  parameter          HBM_STACK        = 1, // valid values 1 , 2
  parameter          SWITCH_ENABLE_00 = "TRUE",
  parameter          SWITCH_ENABLE_01 = "TRUE" 
) (



 
    input ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch0_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch0_hbmmc_noc_credit_return_mc_nocout_0
   // input ch0_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch0_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch0_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch0_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch0_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch0_hbmmc_noc_credit_return_mc_nocout_1
   // input ch0_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch0_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch0_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch0_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch0_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch0_hbmmc_noc_credit_return_mc_nocout_2
   // input ch0_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch0_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch0_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch0_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch0_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch0_hbmmc_noc_credit_return_mc_nocout_3
   // input ch0_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch0_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch0_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch0_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch1_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch1_hbmmc_noc_credit_return_mc_nocout_0
   // input ch1_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch1_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch1_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch1_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch1_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch1_hbmmc_noc_credit_return_mc_nocout_1
   // input ch1_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch1_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch1_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch1_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch1_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch1_hbmmc_noc_credit_return_mc_nocout_2
   // input ch1_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch1_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch1_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch1_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch1_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch1_hbmmc_noc_credit_return_mc_nocout_3
   // input ch1_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch1_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch1_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch1_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch2_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch2_hbmmc_noc_credit_return_mc_nocout_0
   // input ch2_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch2_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch2_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch2_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch2_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch2_hbmmc_noc_credit_return_mc_nocout_1
   // input ch2_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch2_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch2_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch2_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch2_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch2_hbmmc_noc_credit_return_mc_nocout_2
   // input ch2_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch2_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch2_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch2_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch2_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch2_hbmmc_noc_credit_return_mc_nocout_3
   // input ch2_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch2_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch2_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch2_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch3_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch3_hbmmc_noc_credit_return_mc_nocout_0
   // input ch3_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch3_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch3_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch3_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch3_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch3_hbmmc_noc_credit_return_mc_nocout_1
   // input ch3_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch3_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch3_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch3_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch3_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch3_hbmmc_noc_credit_return_mc_nocout_2
   // input ch3_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch3_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch3_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch3_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch3_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch3_hbmmc_noc_credit_return_mc_nocout_3
   // input ch3_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch3_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch3_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch3_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch4_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch4_hbmmc_noc_credit_return_mc_nocout_0
   // input ch4_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch4_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch4_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch4_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch4_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch4_hbmmc_noc_credit_return_mc_nocout_1
   // input ch4_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch4_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch4_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch4_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch4_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch4_hbmmc_noc_credit_return_mc_nocout_2
   // input ch4_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch4_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch4_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch4_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch4_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch4_hbmmc_noc_credit_return_mc_nocout_3
   // input ch4_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch4_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch4_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch4_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch5_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch5_hbmmc_noc_credit_return_mc_nocout_0
   // input ch5_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch5_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch5_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch5_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch5_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch5_hbmmc_noc_credit_return_mc_nocout_1
   // input ch5_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch5_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch5_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch5_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch5_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch5_hbmmc_noc_credit_return_mc_nocout_2
   // input ch5_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch5_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch5_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch5_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch5_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch5_hbmmc_noc_credit_return_mc_nocout_3
   // input ch5_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch5_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch5_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch5_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch6_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch6_hbmmc_noc_credit_return_mc_nocout_0
   // input ch6_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch6_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch6_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch6_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch6_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch6_hbmmc_noc_credit_return_mc_nocout_1
   // input ch6_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch6_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch6_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch6_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch6_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch6_hbmmc_noc_credit_return_mc_nocout_2
   // input ch6_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch6_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch6_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch6_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch6_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch6_hbmmc_noc_credit_return_mc_nocout_3
   // input ch6_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch6_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch6_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch6_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch7_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch7_hbmmc_noc_credit_return_mc_nocout_0
   // input ch7_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch7_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch7_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch7_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch7_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch7_hbmmc_noc_credit_return_mc_nocout_1
   // input ch7_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch7_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch7_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch7_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch7_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch7_hbmmc_noc_credit_return_mc_nocout_2
   // input ch7_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch7_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch7_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch7_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch7_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch7_hbmmc_noc_credit_return_mc_nocout_3
   // input ch7_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch7_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch7_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch7_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch8_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch8_hbmmc_noc_credit_return_mc_nocout_0
   // input ch8_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch8_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch8_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch8_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch8_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch8_hbmmc_noc_credit_return_mc_nocout_1
   // input ch8_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch8_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch8_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch8_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch8_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch8_hbmmc_noc_credit_return_mc_nocout_2
   // input ch8_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch8_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch8_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch8_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch8_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch8_hbmmc_noc_credit_return_mc_nocout_3
   // input ch8_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch8_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch8_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch8_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch9_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch9_hbmmc_noc_credit_return_mc_nocout_0
   // input ch9_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch9_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch9_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch9_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch9_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch9_hbmmc_noc_credit_return_mc_nocout_1
   // input ch9_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch9_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch9_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch9_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch9_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch9_hbmmc_noc_credit_return_mc_nocout_2
   // input ch9_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch9_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch9_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch9_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch9_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch9_hbmmc_noc_credit_return_mc_nocout_3
   // input ch9_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch9_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch9_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch9_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch10_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch10_hbmmc_noc_credit_return_mc_nocout_0
   // input ch10_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch10_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch10_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch10_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch10_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch10_hbmmc_noc_credit_return_mc_nocout_1
   // input ch10_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch10_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch10_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch10_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch10_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch10_hbmmc_noc_credit_return_mc_nocout_2
   // input ch10_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch10_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch10_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch10_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch10_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch10_hbmmc_noc_credit_return_mc_nocout_3
   // input ch10_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch10_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch10_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch10_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch11_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch11_hbmmc_noc_credit_return_mc_nocout_0
   // input ch11_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch11_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch11_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch11_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch11_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch11_hbmmc_noc_credit_return_mc_nocout_1
   // input ch11_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch11_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch11_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch11_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch11_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch11_hbmmc_noc_credit_return_mc_nocout_2
   // input ch11_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch11_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch11_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch11_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch11_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch11_hbmmc_noc_credit_return_mc_nocout_3
   // input ch11_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch11_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch11_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch11_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch12_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch12_hbmmc_noc_credit_return_mc_nocout_0
   // input ch12_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch12_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch12_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch12_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch12_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch12_hbmmc_noc_credit_return_mc_nocout_1
   // input ch12_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch12_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch12_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch12_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch12_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch12_hbmmc_noc_credit_return_mc_nocout_2
   // input ch12_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch12_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch12_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch12_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch12_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch12_hbmmc_noc_credit_return_mc_nocout_3
   // input ch12_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch12_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch12_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch12_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch13_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch13_hbmmc_noc_credit_return_mc_nocout_0
   // input ch13_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch13_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch13_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch13_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch13_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch13_hbmmc_noc_credit_return_mc_nocout_1
   // input ch13_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch13_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch13_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch13_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch13_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch13_hbmmc_noc_credit_return_mc_nocout_2
   // input ch13_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch13_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch13_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch13_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch13_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch13_hbmmc_noc_credit_return_mc_nocout_3
   // input ch13_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch13_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch13_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch13_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch14_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch14_hbmmc_noc_credit_return_mc_nocout_0
   // input ch14_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch14_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch14_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch14_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch14_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch14_hbmmc_noc_credit_return_mc_nocout_1
   // input ch14_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch14_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch14_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch14_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch14_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch14_hbmmc_noc_credit_return_mc_nocout_2
   // input ch14_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch14_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch14_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch14_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch14_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch14_hbmmc_noc_credit_return_mc_nocout_3
   // input ch14_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch14_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch14_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch14_hbmmc_noc_valid_mc_noc2mc_in_3
 
    ,input ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_0
   // input ch15_hbmmc_noc_credit_return_en_mc_nocout_0,
   ,input [7:0]ch15_hbmmc_noc_credit_return_mc_nocout_0
   // input ch15_hbmmc_noc_flit_en_mc_noc2mc_in_0,
   ,input [181:0]ch15_hbmmc_noc_flit_mc_noc2mc_in_0
   ,input [1:0]ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_0
   // input ch15_hbmmc_noc_valid_en_mc_noc2mc_in_0,
   ,input [7:0]ch15_hbmmc_noc_valid_mc_noc2mc_in_0
    ,input ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_1
   // input ch15_hbmmc_noc_credit_return_en_mc_nocout_1,
   ,input [7:0]ch15_hbmmc_noc_credit_return_mc_nocout_1
   // input ch15_hbmmc_noc_flit_en_mc_noc2mc_in_1,
   ,input [181:0]ch15_hbmmc_noc_flit_mc_noc2mc_in_1
   ,input [1:0]ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_1
   // input ch15_hbmmc_noc_valid_en_mc_noc2mc_in_1,
   ,input [7:0]ch15_hbmmc_noc_valid_mc_noc2mc_in_1
    ,input ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_2
   // input ch15_hbmmc_noc_credit_return_en_mc_nocout_2,
   ,input [7:0]ch15_hbmmc_noc_credit_return_mc_nocout_2
   // input ch15_hbmmc_noc_flit_en_mc_noc2mc_in_2,
   ,input [181:0]ch15_hbmmc_noc_flit_mc_noc2mc_in_2
   ,input [1:0]ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_2
   // input ch15_hbmmc_noc_valid_en_mc_noc2mc_in_2,
   ,input [7:0]ch15_hbmmc_noc_valid_mc_noc2mc_in_2
    ,input ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_3
   // input ch15_hbmmc_noc_credit_return_en_mc_nocout_3,
   ,input [7:0]ch15_hbmmc_noc_credit_return_mc_nocout_3
   // input ch15_hbmmc_noc_flit_en_mc_noc2mc_in_3,
   ,input [181:0]ch15_hbmmc_noc_flit_mc_noc2mc_in_3
   ,input [1:0]ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_3
   // input ch15_hbmmc_noc_valid_en_mc_noc2mc_in_3,
   ,input [7:0]ch15_hbmmc_noc_valid_mc_noc2mc_in_3
    
 
    ,output ch0_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch0_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch0_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch0_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch0_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch0_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch0_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch0_hbmmc_noc_valid_mc_nocout_0
    ,output ch0_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch0_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch0_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch0_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch0_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch0_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch0_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch0_hbmmc_noc_valid_mc_nocout_1
    ,output ch0_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch0_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch0_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch0_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch0_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch0_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch0_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch0_hbmmc_noc_valid_mc_nocout_2
    ,output ch0_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch0_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch0_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch0_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch0_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch0_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch0_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch0_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch1_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch1_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch1_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch1_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch1_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch1_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch1_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch1_hbmmc_noc_valid_mc_nocout_0
    ,output ch1_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch1_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch1_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch1_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch1_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch1_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch1_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch1_hbmmc_noc_valid_mc_nocout_1
    ,output ch1_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch1_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch1_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch1_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch1_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch1_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch1_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch1_hbmmc_noc_valid_mc_nocout_2
    ,output ch1_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch1_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch1_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch1_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch1_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch1_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch1_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch1_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch2_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch2_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch2_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch2_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch2_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch2_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch2_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch2_hbmmc_noc_valid_mc_nocout_0
    ,output ch2_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch2_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch2_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch2_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch2_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch2_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch2_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch2_hbmmc_noc_valid_mc_nocout_1
    ,output ch2_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch2_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch2_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch2_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch2_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch2_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch2_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch2_hbmmc_noc_valid_mc_nocout_2
    ,output ch2_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch2_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch2_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch2_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch2_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch2_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch2_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch2_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch3_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch3_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch3_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch3_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch3_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch3_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch3_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch3_hbmmc_noc_valid_mc_nocout_0
    ,output ch3_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch3_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch3_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch3_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch3_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch3_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch3_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch3_hbmmc_noc_valid_mc_nocout_1
    ,output ch3_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch3_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch3_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch3_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch3_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch3_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch3_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch3_hbmmc_noc_valid_mc_nocout_2
    ,output ch3_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch3_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch3_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch3_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch3_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch3_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch3_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch3_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch4_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch4_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch4_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch4_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch4_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch4_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch4_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch4_hbmmc_noc_valid_mc_nocout_0
    ,output ch4_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch4_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch4_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch4_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch4_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch4_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch4_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch4_hbmmc_noc_valid_mc_nocout_1
    ,output ch4_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch4_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch4_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch4_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch4_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch4_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch4_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch4_hbmmc_noc_valid_mc_nocout_2
    ,output ch4_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch4_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch4_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch4_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch4_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch4_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch4_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch4_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch5_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch5_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch5_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch5_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch5_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch5_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch5_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch5_hbmmc_noc_valid_mc_nocout_0
    ,output ch5_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch5_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch5_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch5_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch5_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch5_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch5_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch5_hbmmc_noc_valid_mc_nocout_1
    ,output ch5_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch5_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch5_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch5_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch5_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch5_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch5_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch5_hbmmc_noc_valid_mc_nocout_2
    ,output ch5_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch5_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch5_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch5_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch5_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch5_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch5_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch5_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch6_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch6_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch6_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch6_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch6_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch6_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch6_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch6_hbmmc_noc_valid_mc_nocout_0
    ,output ch6_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch6_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch6_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch6_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch6_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch6_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch6_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch6_hbmmc_noc_valid_mc_nocout_1
    ,output ch6_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch6_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch6_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch6_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch6_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch6_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch6_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch6_hbmmc_noc_valid_mc_nocout_2
    ,output ch6_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch6_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch6_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch6_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch6_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch6_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch6_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch6_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch7_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch7_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch7_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch7_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch7_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch7_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch7_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch7_hbmmc_noc_valid_mc_nocout_0
    ,output ch7_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch7_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch7_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch7_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch7_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch7_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch7_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch7_hbmmc_noc_valid_mc_nocout_1
    ,output ch7_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch7_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch7_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch7_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch7_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch7_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch7_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch7_hbmmc_noc_valid_mc_nocout_2
    ,output ch7_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch7_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch7_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch7_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch7_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch7_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch7_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch7_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch8_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch8_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch8_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch8_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch8_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch8_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch8_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch8_hbmmc_noc_valid_mc_nocout_0
    ,output ch8_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch8_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch8_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch8_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch8_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch8_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch8_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch8_hbmmc_noc_valid_mc_nocout_1
    ,output ch8_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch8_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch8_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch8_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch8_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch8_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch8_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch8_hbmmc_noc_valid_mc_nocout_2
    ,output ch8_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch8_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch8_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch8_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch8_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch8_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch8_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch8_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch9_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch9_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch9_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch9_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch9_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch9_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch9_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch9_hbmmc_noc_valid_mc_nocout_0
    ,output ch9_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch9_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch9_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch9_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch9_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch9_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch9_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch9_hbmmc_noc_valid_mc_nocout_1
    ,output ch9_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch9_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch9_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch9_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch9_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch9_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch9_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch9_hbmmc_noc_valid_mc_nocout_2
    ,output ch9_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch9_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch9_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch9_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch9_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch9_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch9_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch9_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch10_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch10_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch10_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch10_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch10_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch10_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch10_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch10_hbmmc_noc_valid_mc_nocout_0
    ,output ch10_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch10_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch10_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch10_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch10_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch10_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch10_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch10_hbmmc_noc_valid_mc_nocout_1
    ,output ch10_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch10_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch10_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch10_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch10_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch10_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch10_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch10_hbmmc_noc_valid_mc_nocout_2
    ,output ch10_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch10_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch10_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch10_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch10_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch10_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch10_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch10_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch11_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch11_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch11_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch11_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch11_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch11_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch11_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch11_hbmmc_noc_valid_mc_nocout_0
    ,output ch11_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch11_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch11_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch11_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch11_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch11_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch11_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch11_hbmmc_noc_valid_mc_nocout_1
    ,output ch11_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch11_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch11_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch11_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch11_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch11_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch11_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch11_hbmmc_noc_valid_mc_nocout_2
    ,output ch11_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch11_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch11_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch11_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch11_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch11_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch11_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch11_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch12_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch12_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch12_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch12_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch12_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch12_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch12_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch12_hbmmc_noc_valid_mc_nocout_0
    ,output ch12_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch12_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch12_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch12_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch12_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch12_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch12_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch12_hbmmc_noc_valid_mc_nocout_1
    ,output ch12_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch12_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch12_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch12_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch12_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch12_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch12_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch12_hbmmc_noc_valid_mc_nocout_2
    ,output ch12_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch12_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch12_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch12_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch12_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch12_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch12_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch12_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch13_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch13_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch13_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch13_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch13_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch13_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch13_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch13_hbmmc_noc_valid_mc_nocout_0
    ,output ch13_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch13_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch13_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch13_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch13_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch13_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch13_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch13_hbmmc_noc_valid_mc_nocout_1
    ,output ch13_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch13_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch13_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch13_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch13_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch13_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch13_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch13_hbmmc_noc_valid_mc_nocout_2
    ,output ch13_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch13_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch13_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch13_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch13_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch13_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch13_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch13_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch14_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch14_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch14_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch14_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch14_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch14_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch14_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch14_hbmmc_noc_valid_mc_nocout_0
    ,output ch14_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch14_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch14_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch14_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch14_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch14_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch14_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch14_hbmmc_noc_valid_mc_nocout_1
    ,output ch14_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch14_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch14_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch14_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch14_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch14_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch14_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch14_hbmmc_noc_valid_mc_nocout_2
    ,output ch14_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch14_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch14_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch14_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch14_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch14_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch14_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch14_hbmmc_noc_valid_mc_nocout_3
 
    ,output ch15_hbmmc_noc_credit_rdy_mc_nocout_0
 //   output ch15_hbmmc_noc_credit_return_en_mc_noc2mc_in_0,
    ,output [7:0]ch15_hbmmc_noc_credit_return_mc_noc2mc_in_0
//    output ch15_hbmmc_noc_flit_en_mc_nocout_0,
    ,output [181:0]ch15_hbmmc_noc_flit_mc_nocout_0
    ,output [1:0]ch15_hbmmc_noc_pdest_id_mc_nocout_0
//    output ch15_hbmmc_noc_valid_en_mc_nocout_0,
    ,output [7:0]ch15_hbmmc_noc_valid_mc_nocout_0
    ,output ch15_hbmmc_noc_credit_rdy_mc_nocout_1
 //   output ch15_hbmmc_noc_credit_return_en_mc_noc2mc_in_1,
    ,output [7:0]ch15_hbmmc_noc_credit_return_mc_noc2mc_in_1
//    output ch15_hbmmc_noc_flit_en_mc_nocout_1,
    ,output [181:0]ch15_hbmmc_noc_flit_mc_nocout_1
    ,output [1:0]ch15_hbmmc_noc_pdest_id_mc_nocout_1
//    output ch15_hbmmc_noc_valid_en_mc_nocout_1,
    ,output [7:0]ch15_hbmmc_noc_valid_mc_nocout_1
    ,output ch15_hbmmc_noc_credit_rdy_mc_nocout_2
 //   output ch15_hbmmc_noc_credit_return_en_mc_noc2mc_in_2,
    ,output [7:0]ch15_hbmmc_noc_credit_return_mc_noc2mc_in_2
//    output ch15_hbmmc_noc_flit_en_mc_nocout_2,
    ,output [181:0]ch15_hbmmc_noc_flit_mc_nocout_2
    ,output [1:0]ch15_hbmmc_noc_pdest_id_mc_nocout_2
//    output ch15_hbmmc_noc_valid_en_mc_nocout_2,
    ,output [7:0]ch15_hbmmc_noc_valid_mc_nocout_2
    ,output ch15_hbmmc_noc_credit_rdy_mc_nocout_3
 //   output ch15_hbmmc_noc_credit_return_en_mc_noc2mc_in_3,
    ,output [7:0]ch15_hbmmc_noc_credit_return_mc_noc2mc_in_3
//    output ch15_hbmmc_noc_flit_en_mc_nocout_3,
    ,output [181:0]ch15_hbmmc_noc_flit_mc_nocout_3
    ,output [1:0]ch15_hbmmc_noc_pdest_id_mc_nocout_3
//    output ch15_hbmmc_noc_valid_en_mc_nocout_3,
    ,output [7:0]ch15_hbmmc_noc_valid_mc_nocout_3





);



bd_6a72_MC_hbmc_0_top_wrapper inst (

 
    .ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch0_hbmmc_noc_credit_return_mc_nocout_0(ch0_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch0_hbmmc_noc_flit_mc_noc2mc_in_0(ch0_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch0_hbmmc_noc_valid_mc_noc2mc_in_0(ch0_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch0_hbmmc_noc_credit_return_mc_nocout_1(ch0_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch0_hbmmc_noc_flit_mc_noc2mc_in_1(ch0_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch0_hbmmc_noc_valid_mc_noc2mc_in_1(ch0_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch0_hbmmc_noc_credit_return_mc_nocout_2(ch0_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch0_hbmmc_noc_flit_mc_noc2mc_in_2(ch0_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch0_hbmmc_noc_valid_mc_noc2mc_in_2(ch0_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch0_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch0_hbmmc_noc_credit_return_mc_nocout_3(ch0_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch0_hbmmc_noc_flit_mc_noc2mc_in_3(ch0_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch0_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch0_hbmmc_noc_valid_mc_noc2mc_in_3(ch0_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch1_hbmmc_noc_credit_return_mc_nocout_0(ch1_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch1_hbmmc_noc_flit_mc_noc2mc_in_0(ch1_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch1_hbmmc_noc_valid_mc_noc2mc_in_0(ch1_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch1_hbmmc_noc_credit_return_mc_nocout_1(ch1_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch1_hbmmc_noc_flit_mc_noc2mc_in_1(ch1_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch1_hbmmc_noc_valid_mc_noc2mc_in_1(ch1_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch1_hbmmc_noc_credit_return_mc_nocout_2(ch1_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch1_hbmmc_noc_flit_mc_noc2mc_in_2(ch1_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch1_hbmmc_noc_valid_mc_noc2mc_in_2(ch1_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch1_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch1_hbmmc_noc_credit_return_mc_nocout_3(ch1_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch1_hbmmc_noc_flit_mc_noc2mc_in_3(ch1_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch1_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch1_hbmmc_noc_valid_mc_noc2mc_in_3(ch1_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch2_hbmmc_noc_credit_return_mc_nocout_0(ch2_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch2_hbmmc_noc_flit_mc_noc2mc_in_0(ch2_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch2_hbmmc_noc_valid_mc_noc2mc_in_0(ch2_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch2_hbmmc_noc_credit_return_mc_nocout_1(ch2_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch2_hbmmc_noc_flit_mc_noc2mc_in_1(ch2_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch2_hbmmc_noc_valid_mc_noc2mc_in_1(ch2_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch2_hbmmc_noc_credit_return_mc_nocout_2(ch2_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch2_hbmmc_noc_flit_mc_noc2mc_in_2(ch2_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch2_hbmmc_noc_valid_mc_noc2mc_in_2(ch2_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch2_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch2_hbmmc_noc_credit_return_mc_nocout_3(ch2_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch2_hbmmc_noc_flit_mc_noc2mc_in_3(ch2_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch2_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch2_hbmmc_noc_valid_mc_noc2mc_in_3(ch2_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch3_hbmmc_noc_credit_return_mc_nocout_0(ch3_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch3_hbmmc_noc_flit_mc_noc2mc_in_0(ch3_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch3_hbmmc_noc_valid_mc_noc2mc_in_0(ch3_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch3_hbmmc_noc_credit_return_mc_nocout_1(ch3_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch3_hbmmc_noc_flit_mc_noc2mc_in_1(ch3_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch3_hbmmc_noc_valid_mc_noc2mc_in_1(ch3_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch3_hbmmc_noc_credit_return_mc_nocout_2(ch3_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch3_hbmmc_noc_flit_mc_noc2mc_in_2(ch3_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch3_hbmmc_noc_valid_mc_noc2mc_in_2(ch3_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch3_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch3_hbmmc_noc_credit_return_mc_nocout_3(ch3_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch3_hbmmc_noc_flit_mc_noc2mc_in_3(ch3_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch3_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch3_hbmmc_noc_valid_mc_noc2mc_in_3(ch3_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch4_hbmmc_noc_credit_return_mc_nocout_0(ch4_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch4_hbmmc_noc_flit_mc_noc2mc_in_0(ch4_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch4_hbmmc_noc_valid_mc_noc2mc_in_0(ch4_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch4_hbmmc_noc_credit_return_mc_nocout_1(ch4_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch4_hbmmc_noc_flit_mc_noc2mc_in_1(ch4_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch4_hbmmc_noc_valid_mc_noc2mc_in_1(ch4_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch4_hbmmc_noc_credit_return_mc_nocout_2(ch4_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch4_hbmmc_noc_flit_mc_noc2mc_in_2(ch4_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch4_hbmmc_noc_valid_mc_noc2mc_in_2(ch4_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch4_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch4_hbmmc_noc_credit_return_mc_nocout_3(ch4_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch4_hbmmc_noc_flit_mc_noc2mc_in_3(ch4_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch4_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch4_hbmmc_noc_valid_mc_noc2mc_in_3(ch4_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch5_hbmmc_noc_credit_return_mc_nocout_0(ch5_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch5_hbmmc_noc_flit_mc_noc2mc_in_0(ch5_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch5_hbmmc_noc_valid_mc_noc2mc_in_0(ch5_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch5_hbmmc_noc_credit_return_mc_nocout_1(ch5_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch5_hbmmc_noc_flit_mc_noc2mc_in_1(ch5_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch5_hbmmc_noc_valid_mc_noc2mc_in_1(ch5_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch5_hbmmc_noc_credit_return_mc_nocout_2(ch5_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch5_hbmmc_noc_flit_mc_noc2mc_in_2(ch5_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch5_hbmmc_noc_valid_mc_noc2mc_in_2(ch5_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch5_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch5_hbmmc_noc_credit_return_mc_nocout_3(ch5_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch5_hbmmc_noc_flit_mc_noc2mc_in_3(ch5_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch5_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch5_hbmmc_noc_valid_mc_noc2mc_in_3(ch5_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch6_hbmmc_noc_credit_return_mc_nocout_0(ch6_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch6_hbmmc_noc_flit_mc_noc2mc_in_0(ch6_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch6_hbmmc_noc_valid_mc_noc2mc_in_0(ch6_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch6_hbmmc_noc_credit_return_mc_nocout_1(ch6_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch6_hbmmc_noc_flit_mc_noc2mc_in_1(ch6_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch6_hbmmc_noc_valid_mc_noc2mc_in_1(ch6_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch6_hbmmc_noc_credit_return_mc_nocout_2(ch6_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch6_hbmmc_noc_flit_mc_noc2mc_in_2(ch6_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch6_hbmmc_noc_valid_mc_noc2mc_in_2(ch6_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch6_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch6_hbmmc_noc_credit_return_mc_nocout_3(ch6_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch6_hbmmc_noc_flit_mc_noc2mc_in_3(ch6_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch6_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch6_hbmmc_noc_valid_mc_noc2mc_in_3(ch6_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch7_hbmmc_noc_credit_return_mc_nocout_0(ch7_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch7_hbmmc_noc_flit_mc_noc2mc_in_0(ch7_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch7_hbmmc_noc_valid_mc_noc2mc_in_0(ch7_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch7_hbmmc_noc_credit_return_mc_nocout_1(ch7_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch7_hbmmc_noc_flit_mc_noc2mc_in_1(ch7_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch7_hbmmc_noc_valid_mc_noc2mc_in_1(ch7_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch7_hbmmc_noc_credit_return_mc_nocout_2(ch7_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch7_hbmmc_noc_flit_mc_noc2mc_in_2(ch7_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch7_hbmmc_noc_valid_mc_noc2mc_in_2(ch7_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch7_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch7_hbmmc_noc_credit_return_mc_nocout_3(ch7_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch7_hbmmc_noc_flit_mc_noc2mc_in_3(ch7_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch7_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch7_hbmmc_noc_valid_mc_noc2mc_in_3(ch7_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch8_hbmmc_noc_credit_return_mc_nocout_0(ch8_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch8_hbmmc_noc_flit_mc_noc2mc_in_0(ch8_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch8_hbmmc_noc_valid_mc_noc2mc_in_0(ch8_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch8_hbmmc_noc_credit_return_mc_nocout_1(ch8_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch8_hbmmc_noc_flit_mc_noc2mc_in_1(ch8_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch8_hbmmc_noc_valid_mc_noc2mc_in_1(ch8_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch8_hbmmc_noc_credit_return_mc_nocout_2(ch8_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch8_hbmmc_noc_flit_mc_noc2mc_in_2(ch8_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch8_hbmmc_noc_valid_mc_noc2mc_in_2(ch8_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch8_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch8_hbmmc_noc_credit_return_mc_nocout_3(ch8_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch8_hbmmc_noc_flit_mc_noc2mc_in_3(ch8_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch8_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch8_hbmmc_noc_valid_mc_noc2mc_in_3(ch8_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch9_hbmmc_noc_credit_return_mc_nocout_0(ch9_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch9_hbmmc_noc_flit_mc_noc2mc_in_0(ch9_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch9_hbmmc_noc_valid_mc_noc2mc_in_0(ch9_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch9_hbmmc_noc_credit_return_mc_nocout_1(ch9_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch9_hbmmc_noc_flit_mc_noc2mc_in_1(ch9_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch9_hbmmc_noc_valid_mc_noc2mc_in_1(ch9_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch9_hbmmc_noc_credit_return_mc_nocout_2(ch9_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch9_hbmmc_noc_flit_mc_noc2mc_in_2(ch9_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch9_hbmmc_noc_valid_mc_noc2mc_in_2(ch9_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch9_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch9_hbmmc_noc_credit_return_mc_nocout_3(ch9_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch9_hbmmc_noc_flit_mc_noc2mc_in_3(ch9_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch9_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch9_hbmmc_noc_valid_mc_noc2mc_in_3(ch9_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch10_hbmmc_noc_credit_return_mc_nocout_0(ch10_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch10_hbmmc_noc_flit_mc_noc2mc_in_0(ch10_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch10_hbmmc_noc_valid_mc_noc2mc_in_0(ch10_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch10_hbmmc_noc_credit_return_mc_nocout_1(ch10_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch10_hbmmc_noc_flit_mc_noc2mc_in_1(ch10_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch10_hbmmc_noc_valid_mc_noc2mc_in_1(ch10_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch10_hbmmc_noc_credit_return_mc_nocout_2(ch10_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch10_hbmmc_noc_flit_mc_noc2mc_in_2(ch10_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch10_hbmmc_noc_valid_mc_noc2mc_in_2(ch10_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch10_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch10_hbmmc_noc_credit_return_mc_nocout_3(ch10_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch10_hbmmc_noc_flit_mc_noc2mc_in_3(ch10_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch10_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch10_hbmmc_noc_valid_mc_noc2mc_in_3(ch10_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch11_hbmmc_noc_credit_return_mc_nocout_0(ch11_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch11_hbmmc_noc_flit_mc_noc2mc_in_0(ch11_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch11_hbmmc_noc_valid_mc_noc2mc_in_0(ch11_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch11_hbmmc_noc_credit_return_mc_nocout_1(ch11_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch11_hbmmc_noc_flit_mc_noc2mc_in_1(ch11_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch11_hbmmc_noc_valid_mc_noc2mc_in_1(ch11_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch11_hbmmc_noc_credit_return_mc_nocout_2(ch11_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch11_hbmmc_noc_flit_mc_noc2mc_in_2(ch11_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch11_hbmmc_noc_valid_mc_noc2mc_in_2(ch11_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch11_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch11_hbmmc_noc_credit_return_mc_nocout_3(ch11_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch11_hbmmc_noc_flit_mc_noc2mc_in_3(ch11_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch11_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch11_hbmmc_noc_valid_mc_noc2mc_in_3(ch11_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch12_hbmmc_noc_credit_return_mc_nocout_0(ch12_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch12_hbmmc_noc_flit_mc_noc2mc_in_0(ch12_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch12_hbmmc_noc_valid_mc_noc2mc_in_0(ch12_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch12_hbmmc_noc_credit_return_mc_nocout_1(ch12_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch12_hbmmc_noc_flit_mc_noc2mc_in_1(ch12_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch12_hbmmc_noc_valid_mc_noc2mc_in_1(ch12_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch12_hbmmc_noc_credit_return_mc_nocout_2(ch12_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch12_hbmmc_noc_flit_mc_noc2mc_in_2(ch12_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch12_hbmmc_noc_valid_mc_noc2mc_in_2(ch12_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch12_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch12_hbmmc_noc_credit_return_mc_nocout_3(ch12_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch12_hbmmc_noc_flit_mc_noc2mc_in_3(ch12_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch12_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch12_hbmmc_noc_valid_mc_noc2mc_in_3(ch12_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch13_hbmmc_noc_credit_return_mc_nocout_0(ch13_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch13_hbmmc_noc_flit_mc_noc2mc_in_0(ch13_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch13_hbmmc_noc_valid_mc_noc2mc_in_0(ch13_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch13_hbmmc_noc_credit_return_mc_nocout_1(ch13_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch13_hbmmc_noc_flit_mc_noc2mc_in_1(ch13_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch13_hbmmc_noc_valid_mc_noc2mc_in_1(ch13_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch13_hbmmc_noc_credit_return_mc_nocout_2(ch13_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch13_hbmmc_noc_flit_mc_noc2mc_in_2(ch13_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch13_hbmmc_noc_valid_mc_noc2mc_in_2(ch13_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch13_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch13_hbmmc_noc_credit_return_mc_nocout_3(ch13_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch13_hbmmc_noc_flit_mc_noc2mc_in_3(ch13_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch13_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch13_hbmmc_noc_valid_mc_noc2mc_in_3(ch13_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch14_hbmmc_noc_credit_return_mc_nocout_0(ch14_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch14_hbmmc_noc_flit_mc_noc2mc_in_0(ch14_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch14_hbmmc_noc_valid_mc_noc2mc_in_0(ch14_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch14_hbmmc_noc_credit_return_mc_nocout_1(ch14_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch14_hbmmc_noc_flit_mc_noc2mc_in_1(ch14_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch14_hbmmc_noc_valid_mc_noc2mc_in_1(ch14_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch14_hbmmc_noc_credit_return_mc_nocout_2(ch14_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch14_hbmmc_noc_flit_mc_noc2mc_in_2(ch14_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch14_hbmmc_noc_valid_mc_noc2mc_in_2(ch14_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch14_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch14_hbmmc_noc_credit_return_mc_nocout_3(ch14_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch14_hbmmc_noc_flit_mc_noc2mc_in_3(ch14_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch14_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch14_hbmmc_noc_valid_mc_noc2mc_in_3(ch14_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_0(ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_0)
    ,.ch15_hbmmc_noc_credit_return_mc_nocout_0(ch15_hbmmc_noc_credit_return_mc_nocout_0)
    ,.ch15_hbmmc_noc_flit_mc_noc2mc_in_0(ch15_hbmmc_noc_flit_mc_noc2mc_in_0)
    ,.ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_0(ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_0)
    ,.ch15_hbmmc_noc_valid_mc_noc2mc_in_0(ch15_hbmmc_noc_valid_mc_noc2mc_in_0)
    ,.ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_1(ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_1)
    ,.ch15_hbmmc_noc_credit_return_mc_nocout_1(ch15_hbmmc_noc_credit_return_mc_nocout_1)
    ,.ch15_hbmmc_noc_flit_mc_noc2mc_in_1(ch15_hbmmc_noc_flit_mc_noc2mc_in_1)
    ,.ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_1(ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_1)
    ,.ch15_hbmmc_noc_valid_mc_noc2mc_in_1(ch15_hbmmc_noc_valid_mc_noc2mc_in_1)
    ,.ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_2(ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_2)
    ,.ch15_hbmmc_noc_credit_return_mc_nocout_2(ch15_hbmmc_noc_credit_return_mc_nocout_2)
    ,.ch15_hbmmc_noc_flit_mc_noc2mc_in_2(ch15_hbmmc_noc_flit_mc_noc2mc_in_2)
    ,.ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_2(ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_2)
    ,.ch15_hbmmc_noc_valid_mc_noc2mc_in_2(ch15_hbmmc_noc_valid_mc_noc2mc_in_2)
    ,.ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_3(ch15_hbmmc_noc_credit_rdy_mc_noc2mc_in_3)
    ,.ch15_hbmmc_noc_credit_return_mc_nocout_3(ch15_hbmmc_noc_credit_return_mc_nocout_3)
    ,.ch15_hbmmc_noc_flit_mc_noc2mc_in_3(ch15_hbmmc_noc_flit_mc_noc2mc_in_3)
    ,.ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_3(ch15_hbmmc_noc_pdest_id_mc_noc2mc_in_3)
    ,.ch15_hbmmc_noc_valid_mc_noc2mc_in_3(ch15_hbmmc_noc_valid_mc_noc2mc_in_3)
 
    ,.ch0_hbmmc_noc_credit_rdy_mc_nocout_0(ch0_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch0_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch0_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch0_hbmmc_noc_flit_mc_nocout_0(ch0_hbmmc_noc_flit_mc_nocout_0)
    ,.ch0_hbmmc_noc_pdest_id_mc_nocout_0(ch0_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch0_hbmmc_noc_valid_mc_nocout_0(ch0_hbmmc_noc_valid_mc_nocout_0)
    ,.ch0_hbmmc_noc_credit_rdy_mc_nocout_1(ch0_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch0_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch0_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch0_hbmmc_noc_flit_mc_nocout_1(ch0_hbmmc_noc_flit_mc_nocout_1)
    ,.ch0_hbmmc_noc_pdest_id_mc_nocout_1(ch0_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch0_hbmmc_noc_valid_mc_nocout_1(ch0_hbmmc_noc_valid_mc_nocout_1)
    ,.ch0_hbmmc_noc_credit_rdy_mc_nocout_2(ch0_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch0_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch0_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch0_hbmmc_noc_flit_mc_nocout_2(ch0_hbmmc_noc_flit_mc_nocout_2)
    ,.ch0_hbmmc_noc_pdest_id_mc_nocout_2(ch0_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch0_hbmmc_noc_valid_mc_nocout_2(ch0_hbmmc_noc_valid_mc_nocout_2)
    ,.ch0_hbmmc_noc_credit_rdy_mc_nocout_3(ch0_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch0_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch0_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch0_hbmmc_noc_flit_mc_nocout_3(ch0_hbmmc_noc_flit_mc_nocout_3)
    ,.ch0_hbmmc_noc_pdest_id_mc_nocout_3(ch0_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch0_hbmmc_noc_valid_mc_nocout_3(ch0_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch1_hbmmc_noc_credit_rdy_mc_nocout_0(ch1_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch1_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch1_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch1_hbmmc_noc_flit_mc_nocout_0(ch1_hbmmc_noc_flit_mc_nocout_0)
    ,.ch1_hbmmc_noc_pdest_id_mc_nocout_0(ch1_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch1_hbmmc_noc_valid_mc_nocout_0(ch1_hbmmc_noc_valid_mc_nocout_0)
    ,.ch1_hbmmc_noc_credit_rdy_mc_nocout_1(ch1_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch1_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch1_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch1_hbmmc_noc_flit_mc_nocout_1(ch1_hbmmc_noc_flit_mc_nocout_1)
    ,.ch1_hbmmc_noc_pdest_id_mc_nocout_1(ch1_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch1_hbmmc_noc_valid_mc_nocout_1(ch1_hbmmc_noc_valid_mc_nocout_1)
    ,.ch1_hbmmc_noc_credit_rdy_mc_nocout_2(ch1_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch1_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch1_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch1_hbmmc_noc_flit_mc_nocout_2(ch1_hbmmc_noc_flit_mc_nocout_2)
    ,.ch1_hbmmc_noc_pdest_id_mc_nocout_2(ch1_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch1_hbmmc_noc_valid_mc_nocout_2(ch1_hbmmc_noc_valid_mc_nocout_2)
    ,.ch1_hbmmc_noc_credit_rdy_mc_nocout_3(ch1_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch1_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch1_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch1_hbmmc_noc_flit_mc_nocout_3(ch1_hbmmc_noc_flit_mc_nocout_3)
    ,.ch1_hbmmc_noc_pdest_id_mc_nocout_3(ch1_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch1_hbmmc_noc_valid_mc_nocout_3(ch1_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch2_hbmmc_noc_credit_rdy_mc_nocout_0(ch2_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch2_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch2_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch2_hbmmc_noc_flit_mc_nocout_0(ch2_hbmmc_noc_flit_mc_nocout_0)
    ,.ch2_hbmmc_noc_pdest_id_mc_nocout_0(ch2_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch2_hbmmc_noc_valid_mc_nocout_0(ch2_hbmmc_noc_valid_mc_nocout_0)
    ,.ch2_hbmmc_noc_credit_rdy_mc_nocout_1(ch2_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch2_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch2_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch2_hbmmc_noc_flit_mc_nocout_1(ch2_hbmmc_noc_flit_mc_nocout_1)
    ,.ch2_hbmmc_noc_pdest_id_mc_nocout_1(ch2_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch2_hbmmc_noc_valid_mc_nocout_1(ch2_hbmmc_noc_valid_mc_nocout_1)
    ,.ch2_hbmmc_noc_credit_rdy_mc_nocout_2(ch2_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch2_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch2_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch2_hbmmc_noc_flit_mc_nocout_2(ch2_hbmmc_noc_flit_mc_nocout_2)
    ,.ch2_hbmmc_noc_pdest_id_mc_nocout_2(ch2_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch2_hbmmc_noc_valid_mc_nocout_2(ch2_hbmmc_noc_valid_mc_nocout_2)
    ,.ch2_hbmmc_noc_credit_rdy_mc_nocout_3(ch2_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch2_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch2_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch2_hbmmc_noc_flit_mc_nocout_3(ch2_hbmmc_noc_flit_mc_nocout_3)
    ,.ch2_hbmmc_noc_pdest_id_mc_nocout_3(ch2_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch2_hbmmc_noc_valid_mc_nocout_3(ch2_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch3_hbmmc_noc_credit_rdy_mc_nocout_0(ch3_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch3_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch3_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch3_hbmmc_noc_flit_mc_nocout_0(ch3_hbmmc_noc_flit_mc_nocout_0)
    ,.ch3_hbmmc_noc_pdest_id_mc_nocout_0(ch3_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch3_hbmmc_noc_valid_mc_nocout_0(ch3_hbmmc_noc_valid_mc_nocout_0)
    ,.ch3_hbmmc_noc_credit_rdy_mc_nocout_1(ch3_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch3_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch3_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch3_hbmmc_noc_flit_mc_nocout_1(ch3_hbmmc_noc_flit_mc_nocout_1)
    ,.ch3_hbmmc_noc_pdest_id_mc_nocout_1(ch3_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch3_hbmmc_noc_valid_mc_nocout_1(ch3_hbmmc_noc_valid_mc_nocout_1)
    ,.ch3_hbmmc_noc_credit_rdy_mc_nocout_2(ch3_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch3_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch3_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch3_hbmmc_noc_flit_mc_nocout_2(ch3_hbmmc_noc_flit_mc_nocout_2)
    ,.ch3_hbmmc_noc_pdest_id_mc_nocout_2(ch3_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch3_hbmmc_noc_valid_mc_nocout_2(ch3_hbmmc_noc_valid_mc_nocout_2)
    ,.ch3_hbmmc_noc_credit_rdy_mc_nocout_3(ch3_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch3_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch3_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch3_hbmmc_noc_flit_mc_nocout_3(ch3_hbmmc_noc_flit_mc_nocout_3)
    ,.ch3_hbmmc_noc_pdest_id_mc_nocout_3(ch3_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch3_hbmmc_noc_valid_mc_nocout_3(ch3_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch4_hbmmc_noc_credit_rdy_mc_nocout_0(ch4_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch4_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch4_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch4_hbmmc_noc_flit_mc_nocout_0(ch4_hbmmc_noc_flit_mc_nocout_0)
    ,.ch4_hbmmc_noc_pdest_id_mc_nocout_0(ch4_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch4_hbmmc_noc_valid_mc_nocout_0(ch4_hbmmc_noc_valid_mc_nocout_0)
    ,.ch4_hbmmc_noc_credit_rdy_mc_nocout_1(ch4_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch4_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch4_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch4_hbmmc_noc_flit_mc_nocout_1(ch4_hbmmc_noc_flit_mc_nocout_1)
    ,.ch4_hbmmc_noc_pdest_id_mc_nocout_1(ch4_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch4_hbmmc_noc_valid_mc_nocout_1(ch4_hbmmc_noc_valid_mc_nocout_1)
    ,.ch4_hbmmc_noc_credit_rdy_mc_nocout_2(ch4_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch4_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch4_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch4_hbmmc_noc_flit_mc_nocout_2(ch4_hbmmc_noc_flit_mc_nocout_2)
    ,.ch4_hbmmc_noc_pdest_id_mc_nocout_2(ch4_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch4_hbmmc_noc_valid_mc_nocout_2(ch4_hbmmc_noc_valid_mc_nocout_2)
    ,.ch4_hbmmc_noc_credit_rdy_mc_nocout_3(ch4_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch4_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch4_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch4_hbmmc_noc_flit_mc_nocout_3(ch4_hbmmc_noc_flit_mc_nocout_3)
    ,.ch4_hbmmc_noc_pdest_id_mc_nocout_3(ch4_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch4_hbmmc_noc_valid_mc_nocout_3(ch4_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch5_hbmmc_noc_credit_rdy_mc_nocout_0(ch5_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch5_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch5_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch5_hbmmc_noc_flit_mc_nocout_0(ch5_hbmmc_noc_flit_mc_nocout_0)
    ,.ch5_hbmmc_noc_pdest_id_mc_nocout_0(ch5_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch5_hbmmc_noc_valid_mc_nocout_0(ch5_hbmmc_noc_valid_mc_nocout_0)
    ,.ch5_hbmmc_noc_credit_rdy_mc_nocout_1(ch5_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch5_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch5_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch5_hbmmc_noc_flit_mc_nocout_1(ch5_hbmmc_noc_flit_mc_nocout_1)
    ,.ch5_hbmmc_noc_pdest_id_mc_nocout_1(ch5_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch5_hbmmc_noc_valid_mc_nocout_1(ch5_hbmmc_noc_valid_mc_nocout_1)
    ,.ch5_hbmmc_noc_credit_rdy_mc_nocout_2(ch5_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch5_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch5_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch5_hbmmc_noc_flit_mc_nocout_2(ch5_hbmmc_noc_flit_mc_nocout_2)
    ,.ch5_hbmmc_noc_pdest_id_mc_nocout_2(ch5_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch5_hbmmc_noc_valid_mc_nocout_2(ch5_hbmmc_noc_valid_mc_nocout_2)
    ,.ch5_hbmmc_noc_credit_rdy_mc_nocout_3(ch5_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch5_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch5_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch5_hbmmc_noc_flit_mc_nocout_3(ch5_hbmmc_noc_flit_mc_nocout_3)
    ,.ch5_hbmmc_noc_pdest_id_mc_nocout_3(ch5_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch5_hbmmc_noc_valid_mc_nocout_3(ch5_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch6_hbmmc_noc_credit_rdy_mc_nocout_0(ch6_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch6_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch6_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch6_hbmmc_noc_flit_mc_nocout_0(ch6_hbmmc_noc_flit_mc_nocout_0)
    ,.ch6_hbmmc_noc_pdest_id_mc_nocout_0(ch6_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch6_hbmmc_noc_valid_mc_nocout_0(ch6_hbmmc_noc_valid_mc_nocout_0)
    ,.ch6_hbmmc_noc_credit_rdy_mc_nocout_1(ch6_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch6_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch6_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch6_hbmmc_noc_flit_mc_nocout_1(ch6_hbmmc_noc_flit_mc_nocout_1)
    ,.ch6_hbmmc_noc_pdest_id_mc_nocout_1(ch6_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch6_hbmmc_noc_valid_mc_nocout_1(ch6_hbmmc_noc_valid_mc_nocout_1)
    ,.ch6_hbmmc_noc_credit_rdy_mc_nocout_2(ch6_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch6_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch6_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch6_hbmmc_noc_flit_mc_nocout_2(ch6_hbmmc_noc_flit_mc_nocout_2)
    ,.ch6_hbmmc_noc_pdest_id_mc_nocout_2(ch6_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch6_hbmmc_noc_valid_mc_nocout_2(ch6_hbmmc_noc_valid_mc_nocout_2)
    ,.ch6_hbmmc_noc_credit_rdy_mc_nocout_3(ch6_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch6_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch6_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch6_hbmmc_noc_flit_mc_nocout_3(ch6_hbmmc_noc_flit_mc_nocout_3)
    ,.ch6_hbmmc_noc_pdest_id_mc_nocout_3(ch6_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch6_hbmmc_noc_valid_mc_nocout_3(ch6_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch7_hbmmc_noc_credit_rdy_mc_nocout_0(ch7_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch7_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch7_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch7_hbmmc_noc_flit_mc_nocout_0(ch7_hbmmc_noc_flit_mc_nocout_0)
    ,.ch7_hbmmc_noc_pdest_id_mc_nocout_0(ch7_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch7_hbmmc_noc_valid_mc_nocout_0(ch7_hbmmc_noc_valid_mc_nocout_0)
    ,.ch7_hbmmc_noc_credit_rdy_mc_nocout_1(ch7_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch7_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch7_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch7_hbmmc_noc_flit_mc_nocout_1(ch7_hbmmc_noc_flit_mc_nocout_1)
    ,.ch7_hbmmc_noc_pdest_id_mc_nocout_1(ch7_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch7_hbmmc_noc_valid_mc_nocout_1(ch7_hbmmc_noc_valid_mc_nocout_1)
    ,.ch7_hbmmc_noc_credit_rdy_mc_nocout_2(ch7_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch7_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch7_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch7_hbmmc_noc_flit_mc_nocout_2(ch7_hbmmc_noc_flit_mc_nocout_2)
    ,.ch7_hbmmc_noc_pdest_id_mc_nocout_2(ch7_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch7_hbmmc_noc_valid_mc_nocout_2(ch7_hbmmc_noc_valid_mc_nocout_2)
    ,.ch7_hbmmc_noc_credit_rdy_mc_nocout_3(ch7_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch7_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch7_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch7_hbmmc_noc_flit_mc_nocout_3(ch7_hbmmc_noc_flit_mc_nocout_3)
    ,.ch7_hbmmc_noc_pdest_id_mc_nocout_3(ch7_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch7_hbmmc_noc_valid_mc_nocout_3(ch7_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch8_hbmmc_noc_credit_rdy_mc_nocout_0(ch8_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch8_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch8_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch8_hbmmc_noc_flit_mc_nocout_0(ch8_hbmmc_noc_flit_mc_nocout_0)
    ,.ch8_hbmmc_noc_pdest_id_mc_nocout_0(ch8_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch8_hbmmc_noc_valid_mc_nocout_0(ch8_hbmmc_noc_valid_mc_nocout_0)
    ,.ch8_hbmmc_noc_credit_rdy_mc_nocout_1(ch8_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch8_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch8_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch8_hbmmc_noc_flit_mc_nocout_1(ch8_hbmmc_noc_flit_mc_nocout_1)
    ,.ch8_hbmmc_noc_pdest_id_mc_nocout_1(ch8_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch8_hbmmc_noc_valid_mc_nocout_1(ch8_hbmmc_noc_valid_mc_nocout_1)
    ,.ch8_hbmmc_noc_credit_rdy_mc_nocout_2(ch8_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch8_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch8_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch8_hbmmc_noc_flit_mc_nocout_2(ch8_hbmmc_noc_flit_mc_nocout_2)
    ,.ch8_hbmmc_noc_pdest_id_mc_nocout_2(ch8_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch8_hbmmc_noc_valid_mc_nocout_2(ch8_hbmmc_noc_valid_mc_nocout_2)
    ,.ch8_hbmmc_noc_credit_rdy_mc_nocout_3(ch8_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch8_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch8_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch8_hbmmc_noc_flit_mc_nocout_3(ch8_hbmmc_noc_flit_mc_nocout_3)
    ,.ch8_hbmmc_noc_pdest_id_mc_nocout_3(ch8_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch8_hbmmc_noc_valid_mc_nocout_3(ch8_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch9_hbmmc_noc_credit_rdy_mc_nocout_0(ch9_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch9_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch9_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch9_hbmmc_noc_flit_mc_nocout_0(ch9_hbmmc_noc_flit_mc_nocout_0)
    ,.ch9_hbmmc_noc_pdest_id_mc_nocout_0(ch9_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch9_hbmmc_noc_valid_mc_nocout_0(ch9_hbmmc_noc_valid_mc_nocout_0)
    ,.ch9_hbmmc_noc_credit_rdy_mc_nocout_1(ch9_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch9_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch9_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch9_hbmmc_noc_flit_mc_nocout_1(ch9_hbmmc_noc_flit_mc_nocout_1)
    ,.ch9_hbmmc_noc_pdest_id_mc_nocout_1(ch9_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch9_hbmmc_noc_valid_mc_nocout_1(ch9_hbmmc_noc_valid_mc_nocout_1)
    ,.ch9_hbmmc_noc_credit_rdy_mc_nocout_2(ch9_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch9_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch9_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch9_hbmmc_noc_flit_mc_nocout_2(ch9_hbmmc_noc_flit_mc_nocout_2)
    ,.ch9_hbmmc_noc_pdest_id_mc_nocout_2(ch9_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch9_hbmmc_noc_valid_mc_nocout_2(ch9_hbmmc_noc_valid_mc_nocout_2)
    ,.ch9_hbmmc_noc_credit_rdy_mc_nocout_3(ch9_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch9_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch9_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch9_hbmmc_noc_flit_mc_nocout_3(ch9_hbmmc_noc_flit_mc_nocout_3)
    ,.ch9_hbmmc_noc_pdest_id_mc_nocout_3(ch9_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch9_hbmmc_noc_valid_mc_nocout_3(ch9_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch10_hbmmc_noc_credit_rdy_mc_nocout_0(ch10_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch10_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch10_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch10_hbmmc_noc_flit_mc_nocout_0(ch10_hbmmc_noc_flit_mc_nocout_0)
    ,.ch10_hbmmc_noc_pdest_id_mc_nocout_0(ch10_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch10_hbmmc_noc_valid_mc_nocout_0(ch10_hbmmc_noc_valid_mc_nocout_0)
    ,.ch10_hbmmc_noc_credit_rdy_mc_nocout_1(ch10_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch10_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch10_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch10_hbmmc_noc_flit_mc_nocout_1(ch10_hbmmc_noc_flit_mc_nocout_1)
    ,.ch10_hbmmc_noc_pdest_id_mc_nocout_1(ch10_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch10_hbmmc_noc_valid_mc_nocout_1(ch10_hbmmc_noc_valid_mc_nocout_1)
    ,.ch10_hbmmc_noc_credit_rdy_mc_nocout_2(ch10_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch10_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch10_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch10_hbmmc_noc_flit_mc_nocout_2(ch10_hbmmc_noc_flit_mc_nocout_2)
    ,.ch10_hbmmc_noc_pdest_id_mc_nocout_2(ch10_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch10_hbmmc_noc_valid_mc_nocout_2(ch10_hbmmc_noc_valid_mc_nocout_2)
    ,.ch10_hbmmc_noc_credit_rdy_mc_nocout_3(ch10_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch10_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch10_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch10_hbmmc_noc_flit_mc_nocout_3(ch10_hbmmc_noc_flit_mc_nocout_3)
    ,.ch10_hbmmc_noc_pdest_id_mc_nocout_3(ch10_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch10_hbmmc_noc_valid_mc_nocout_3(ch10_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch11_hbmmc_noc_credit_rdy_mc_nocout_0(ch11_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch11_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch11_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch11_hbmmc_noc_flit_mc_nocout_0(ch11_hbmmc_noc_flit_mc_nocout_0)
    ,.ch11_hbmmc_noc_pdest_id_mc_nocout_0(ch11_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch11_hbmmc_noc_valid_mc_nocout_0(ch11_hbmmc_noc_valid_mc_nocout_0)
    ,.ch11_hbmmc_noc_credit_rdy_mc_nocout_1(ch11_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch11_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch11_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch11_hbmmc_noc_flit_mc_nocout_1(ch11_hbmmc_noc_flit_mc_nocout_1)
    ,.ch11_hbmmc_noc_pdest_id_mc_nocout_1(ch11_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch11_hbmmc_noc_valid_mc_nocout_1(ch11_hbmmc_noc_valid_mc_nocout_1)
    ,.ch11_hbmmc_noc_credit_rdy_mc_nocout_2(ch11_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch11_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch11_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch11_hbmmc_noc_flit_mc_nocout_2(ch11_hbmmc_noc_flit_mc_nocout_2)
    ,.ch11_hbmmc_noc_pdest_id_mc_nocout_2(ch11_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch11_hbmmc_noc_valid_mc_nocout_2(ch11_hbmmc_noc_valid_mc_nocout_2)
    ,.ch11_hbmmc_noc_credit_rdy_mc_nocout_3(ch11_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch11_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch11_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch11_hbmmc_noc_flit_mc_nocout_3(ch11_hbmmc_noc_flit_mc_nocout_3)
    ,.ch11_hbmmc_noc_pdest_id_mc_nocout_3(ch11_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch11_hbmmc_noc_valid_mc_nocout_3(ch11_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch12_hbmmc_noc_credit_rdy_mc_nocout_0(ch12_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch12_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch12_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch12_hbmmc_noc_flit_mc_nocout_0(ch12_hbmmc_noc_flit_mc_nocout_0)
    ,.ch12_hbmmc_noc_pdest_id_mc_nocout_0(ch12_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch12_hbmmc_noc_valid_mc_nocout_0(ch12_hbmmc_noc_valid_mc_nocout_0)
    ,.ch12_hbmmc_noc_credit_rdy_mc_nocout_1(ch12_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch12_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch12_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch12_hbmmc_noc_flit_mc_nocout_1(ch12_hbmmc_noc_flit_mc_nocout_1)
    ,.ch12_hbmmc_noc_pdest_id_mc_nocout_1(ch12_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch12_hbmmc_noc_valid_mc_nocout_1(ch12_hbmmc_noc_valid_mc_nocout_1)
    ,.ch12_hbmmc_noc_credit_rdy_mc_nocout_2(ch12_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch12_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch12_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch12_hbmmc_noc_flit_mc_nocout_2(ch12_hbmmc_noc_flit_mc_nocout_2)
    ,.ch12_hbmmc_noc_pdest_id_mc_nocout_2(ch12_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch12_hbmmc_noc_valid_mc_nocout_2(ch12_hbmmc_noc_valid_mc_nocout_2)
    ,.ch12_hbmmc_noc_credit_rdy_mc_nocout_3(ch12_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch12_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch12_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch12_hbmmc_noc_flit_mc_nocout_3(ch12_hbmmc_noc_flit_mc_nocout_3)
    ,.ch12_hbmmc_noc_pdest_id_mc_nocout_3(ch12_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch12_hbmmc_noc_valid_mc_nocout_3(ch12_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch13_hbmmc_noc_credit_rdy_mc_nocout_0(ch13_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch13_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch13_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch13_hbmmc_noc_flit_mc_nocout_0(ch13_hbmmc_noc_flit_mc_nocout_0)
    ,.ch13_hbmmc_noc_pdest_id_mc_nocout_0(ch13_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch13_hbmmc_noc_valid_mc_nocout_0(ch13_hbmmc_noc_valid_mc_nocout_0)
    ,.ch13_hbmmc_noc_credit_rdy_mc_nocout_1(ch13_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch13_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch13_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch13_hbmmc_noc_flit_mc_nocout_1(ch13_hbmmc_noc_flit_mc_nocout_1)
    ,.ch13_hbmmc_noc_pdest_id_mc_nocout_1(ch13_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch13_hbmmc_noc_valid_mc_nocout_1(ch13_hbmmc_noc_valid_mc_nocout_1)
    ,.ch13_hbmmc_noc_credit_rdy_mc_nocout_2(ch13_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch13_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch13_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch13_hbmmc_noc_flit_mc_nocout_2(ch13_hbmmc_noc_flit_mc_nocout_2)
    ,.ch13_hbmmc_noc_pdest_id_mc_nocout_2(ch13_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch13_hbmmc_noc_valid_mc_nocout_2(ch13_hbmmc_noc_valid_mc_nocout_2)
    ,.ch13_hbmmc_noc_credit_rdy_mc_nocout_3(ch13_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch13_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch13_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch13_hbmmc_noc_flit_mc_nocout_3(ch13_hbmmc_noc_flit_mc_nocout_3)
    ,.ch13_hbmmc_noc_pdest_id_mc_nocout_3(ch13_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch13_hbmmc_noc_valid_mc_nocout_3(ch13_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch14_hbmmc_noc_credit_rdy_mc_nocout_0(ch14_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch14_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch14_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch14_hbmmc_noc_flit_mc_nocout_0(ch14_hbmmc_noc_flit_mc_nocout_0)
    ,.ch14_hbmmc_noc_pdest_id_mc_nocout_0(ch14_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch14_hbmmc_noc_valid_mc_nocout_0(ch14_hbmmc_noc_valid_mc_nocout_0)
    ,.ch14_hbmmc_noc_credit_rdy_mc_nocout_1(ch14_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch14_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch14_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch14_hbmmc_noc_flit_mc_nocout_1(ch14_hbmmc_noc_flit_mc_nocout_1)
    ,.ch14_hbmmc_noc_pdest_id_mc_nocout_1(ch14_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch14_hbmmc_noc_valid_mc_nocout_1(ch14_hbmmc_noc_valid_mc_nocout_1)
    ,.ch14_hbmmc_noc_credit_rdy_mc_nocout_2(ch14_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch14_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch14_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch14_hbmmc_noc_flit_mc_nocout_2(ch14_hbmmc_noc_flit_mc_nocout_2)
    ,.ch14_hbmmc_noc_pdest_id_mc_nocout_2(ch14_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch14_hbmmc_noc_valid_mc_nocout_2(ch14_hbmmc_noc_valid_mc_nocout_2)
    ,.ch14_hbmmc_noc_credit_rdy_mc_nocout_3(ch14_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch14_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch14_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch14_hbmmc_noc_flit_mc_nocout_3(ch14_hbmmc_noc_flit_mc_nocout_3)
    ,.ch14_hbmmc_noc_pdest_id_mc_nocout_3(ch14_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch14_hbmmc_noc_valid_mc_nocout_3(ch14_hbmmc_noc_valid_mc_nocout_3)
 
    ,.ch15_hbmmc_noc_credit_rdy_mc_nocout_0(ch15_hbmmc_noc_credit_rdy_mc_nocout_0)
    ,.ch15_hbmmc_noc_credit_return_mc_noc2mc_in_0(ch15_hbmmc_noc_credit_return_mc_noc2mc_in_0)
    ,.ch15_hbmmc_noc_flit_mc_nocout_0(ch15_hbmmc_noc_flit_mc_nocout_0)
    ,.ch15_hbmmc_noc_pdest_id_mc_nocout_0(ch15_hbmmc_noc_pdest_id_mc_nocout_0)
    ,.ch15_hbmmc_noc_valid_mc_nocout_0(ch15_hbmmc_noc_valid_mc_nocout_0)
    ,.ch15_hbmmc_noc_credit_rdy_mc_nocout_1(ch15_hbmmc_noc_credit_rdy_mc_nocout_1)
    ,.ch15_hbmmc_noc_credit_return_mc_noc2mc_in_1(ch15_hbmmc_noc_credit_return_mc_noc2mc_in_1)
    ,.ch15_hbmmc_noc_flit_mc_nocout_1(ch15_hbmmc_noc_flit_mc_nocout_1)
    ,.ch15_hbmmc_noc_pdest_id_mc_nocout_1(ch15_hbmmc_noc_pdest_id_mc_nocout_1)
    ,.ch15_hbmmc_noc_valid_mc_nocout_1(ch15_hbmmc_noc_valid_mc_nocout_1)
    ,.ch15_hbmmc_noc_credit_rdy_mc_nocout_2(ch15_hbmmc_noc_credit_rdy_mc_nocout_2)
    ,.ch15_hbmmc_noc_credit_return_mc_noc2mc_in_2(ch15_hbmmc_noc_credit_return_mc_noc2mc_in_2)
    ,.ch15_hbmmc_noc_flit_mc_nocout_2(ch15_hbmmc_noc_flit_mc_nocout_2)
    ,.ch15_hbmmc_noc_pdest_id_mc_nocout_2(ch15_hbmmc_noc_pdest_id_mc_nocout_2)
    ,.ch15_hbmmc_noc_valid_mc_nocout_2(ch15_hbmmc_noc_valid_mc_nocout_2)
    ,.ch15_hbmmc_noc_credit_rdy_mc_nocout_3(ch15_hbmmc_noc_credit_rdy_mc_nocout_3)
    ,.ch15_hbmmc_noc_credit_return_mc_noc2mc_in_3(ch15_hbmmc_noc_credit_return_mc_noc2mc_in_3)
    ,.ch15_hbmmc_noc_flit_mc_nocout_3(ch15_hbmmc_noc_flit_mc_nocout_3)
    ,.ch15_hbmmc_noc_pdest_id_mc_nocout_3(ch15_hbmmc_noc_pdest_id_mc_nocout_3)
    ,.ch15_hbmmc_noc_valid_mc_nocout_3(ch15_hbmmc_noc_valid_mc_nocout_3)





);


endmodule
