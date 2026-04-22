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
//       Revision:       $Id: //depot/icm/proj/everest/7t_n1/shadow/shadowbranches/hsm/hsm.hsm_2.4/rtl/ddrmc_7t_n1/microblaze/cal_sw/src/xsdb_reg_define.h#7 $
//                       $Author: rgaddam $
//                       $DateTime: 2019/04/25 11:28:04 $
//                       $Change: 21352856 $
//       Description:
//           DDRMC : 
//
///////////////////////////////////////////////////////////////////////////////

// Avoid the compiler optimization for Size for first silicon bring up. Disable the advanced features accoringly.
// #define VNC_BRING_UP_COMPILER_OPT_NONE

#ifndef ENABLE_MICROBLAZE_BFM
   #ifdef VNC_BRING_UP_COMPILER_OPT_NONE
      #define VNC_DIS_LRDIMM
      #define VNC_DIS_VREF_CAL
      #define VNC_DIS_FS_PD
      #define VNC_DIS_SELF_REF
      #define VNC_DIS_INTR
      #define VNC_DIS_CA_CAL
   #endif
#endif
 
#include "bd_6a72_MC0_ddrc_0_phy_cal_config_define.h"
// Calibration Mode
#define CAL_EN   0x000
#define CAL_SKIP 0x040
#define CAL_LOAD 0x080 

// Calibration Status
#define CAL_IN_PROG  0x0C0
#define CAL_SKIPPED  0x100
#define CAL_LOADED   0x140
#define CAL_PASSED   0x180
#define CAL_FAILED   0x1C0

#ifndef F0_MODE_LPDDR4_CS_CA_TRAIN
   #define F0_MODE_LPDDR4_CS_CA_TRAIN         CAL_EN     
#endif
#ifndef F0_MODE_LPDDR4_CA_VREF_TRAIN              
   #define F0_MODE_LPDDR4_CA_VREF_TRAIN       CAL_SKIP
#endif
#ifndef F0_MODE_LRDIMM_DB_MREP                    
   #define F0_MODE_LRDIMM_DB_MREP             CAL_SKIP
#endif
#ifndef F0_MODE_LRDIMM_DB_MRD_CYCLE               
   #define F0_MODE_LRDIMM_DB_MRD_CYCLE        CAL_SKIP
#endif
#ifndef F0_MODE_LRDIMM_DB_MRD_CENTER              
   #define F0_MODE_LRDIMM_DB_MRD_CENTER       CAL_SKIP
#endif
#ifndef F0_MODE_LRDIMM_DB_DWL                     
   #define F0_MODE_LRDIMM_DB_DWL              CAL_SKIP
#endif
#ifndef F0_MODE_LRDIMM_DB_MWD_CYCLE               
   #define F0_MODE_LRDIMM_DB_MWD_CYCLE        CAL_SKIP
#endif
#ifndef F0_MODE_LRDIMM_DB_MWD_CENTER              
   #define F0_MODE_LRDIMM_DB_MWD_CENTER       CAL_SKIP
#endif
#ifndef F0_MODE_DQS_GATE_CAL                      
   #define F0_MODE_DQS_GATE_CAL               CAL_EN 
#endif
#ifndef F0_MODE_READ_DQ_CAL                       
   #define F0_MODE_READ_DQ_CAL                CAL_EN 
#endif
#ifndef F0_MODE_WRITE_LEVELING                    
   #define F0_MODE_WRITE_LEVELING             CAL_EN 
#endif
#ifndef F0_MODE_WRITE_DQ_DBI_CAL                  
   #define F0_MODE_WRITE_DQ_DBI_CAL           CAL_EN 
#endif
#ifndef F0_MODE_WRITE_LATENCY_CAL                 
   #define F0_MODE_WRITE_LATENCY_CAL          CAL_EN 
#endif
#ifndef F0_MODE_READ_DBI_CAL                      
   #define F0_MODE_READ_DBI_CAL               CAL_EN 
#endif
#ifndef F0_MODE_READ_DQ_VREF_CAL
   #define F0_MODE_READ_DQ_VREF_CAL           CAL_SKIP
#endif
#ifndef F0_MODE_READ_DQ_DBI_CAL_COMPLEX           
   #define F0_MODE_READ_DQ_DBI_CAL_COMPLEX    CAL_EN 
#endif
#ifndef F0_MODE_WRITE_DQ_VREF_CAL                 
   #define F0_MODE_WRITE_DQ_VREF_CAL          CAL_SKIP
#endif
#ifndef F0_MODE_WRITE_DQ_DBI_CAL_COMPLEX          
   #define F0_MODE_WRITE_DQ_DBI_CAL_COMPLEX   CAL_EN 
#endif

#ifndef F0_MODE_PRBS_READ          
   #define F0_MODE_PRBS_READ      	      CAL_SKIP
#endif

#ifndef F0_MODE_PRBS_WRITE          
   #define F0_MODE_PRBS_WRITE       	      CAL_SKIP
#endif

#ifndef MODE_FREQ_SWITCH
   #define MODE_FREQ_SWITCH                   CAL_SKIP
#endif

#ifndef F1_MODE_LPDDR4_CS_CA_TRAIN
   #define F1_MODE_LPDDR4_CS_CA_TRAIN         CAL_SKIP
#endif
#ifndef F1_MODE_LPDDR4_CA_VREF_TRAIN           
   #define F1_MODE_LPDDR4_CA_VREF_TRAIN       CAL_SKIP
#endif
#ifndef F1_MODE_LRDIMM_DB_MREP                 
   #define F1_MODE_LRDIMM_DB_MREP             CAL_SKIP
#endif
#ifndef F1_MODE_LRDIMM_DB_MRD_CYCLE            
   #define F1_MODE_LRDIMM_DB_MRD_CYCLE        CAL_SKIP
#endif
#ifndef F1_MODE_LRDIMM_DB_MRD_CENTER           
   #define F1_MODE_LRDIMM_DB_MRD_CENTER       CAL_SKIP
#endif
#ifndef F1_MODE_LRDIMM_DB_DWL                  
   #define F1_MODE_LRDIMM_DB_DWL              CAL_SKIP
#endif
#ifndef F1_MODE_LRDIMM_DB_MWD_CYCLE            
   #define F1_MODE_LRDIMM_DB_MWD_CYCLE        CAL_SKIP
#endif
#ifndef F1_MODE_LRDIMM_DB_MWD_CENTER           
   #define F1_MODE_LRDIMM_DB_MWD_CENTER       CAL_SKIP
#endif
#ifndef F1_MODE_DQS_GATE_CAL                   
   #define F1_MODE_DQS_GATE_CAL               CAL_SKIP 
#endif
#ifndef F1_MODE_READ_DQ_CAL                    
   #define F1_MODE_READ_DQ_CAL                CAL_SKIP 
#endif
#ifndef F1_MODE_WRITE_LEVELING                 
   #define F1_MODE_WRITE_LEVELING             CAL_SKIP 
#endif
#ifndef F1_MODE_WRITE_DQ_DBI_CAL               
   #define F1_MODE_WRITE_DQ_DBI_CAL           CAL_SKIP 
#endif
#ifndef F1_MODE_WRITE_LATENCY_CAL              
   #define F1_MODE_WRITE_LATENCY_CAL          CAL_SKIP 
#endif
#ifndef F1_MODE_READ_DBI_CAL                   
   #define F1_MODE_READ_DBI_CAL               CAL_SKIP 
#endif
#ifndef F1_MODE_READ_DQ_VREF_CAL
   #define F1_MODE_READ_DQ_VREF_CAL           CAL_SKIP
#endif
#ifndef F1_MODE_READ_DQ_DBI_CAL_COMPLEX        
   #define F1_MODE_READ_DQ_DBI_CAL_COMPLEX    CAL_SKIP 
#endif
#ifndef F1_MODE_WRITE_DQ_VREF_CAL              
   #define F1_MODE_WRITE_DQ_VREF_CAL          CAL_SKIP
#endif
#ifndef F1_MODE_WRITE_DQ_DBI_CAL_COMPLEX       
   #define F1_MODE_WRITE_DQ_DBI_CAL_COMPLEX   CAL_SKIP 
#endif

#ifndef F1_MODE_PRBS_READ          
   #define F1_MODE_PRBS_READ               CAL_SKIP 
#endif

#ifndef F1_MODE_PRBS_WRITE         
   #define F1_MODE_PRBS_WRITE       	      CAL_SKIP 
#endif

#ifndef MODE_EN_VT_TRACK
   #define MODE_EN_VT_TRACK                   CAL_EN 
#endif
#ifndef MODE_READ_DQS_TRACK                 
   #define MODE_READ_DQS_TRACK                CAL_EN
#endif
#ifndef MODE_LPDDR4_WR_DQS_TRACK            
   #define MODE_LPDDR4_WR_DQS_TRACK           CAL_EN
#endif

// Status Register definitions
#define PHY_BISC                                  0x0  | CAL_EN 
#define MEM_INIT                                  0x1  | CAL_EN   

#define F0_LPDDR4_CS_CA_TRAIN                     0x2  | F0_MODE_LPDDR4_CS_CA_TRAIN
#define F0_LPDDR4_CA_VREF_TRAIN                   0x3  | F0_MODE_LPDDR4_CA_VREF_TRAIN
#define F0_LRDIMM_DB_MREP                         0x4  | F0_MODE_LRDIMM_DB_MREP
#define F0_LRDIMM_DB_MRD_CYCLE                    0x5  | F0_MODE_LRDIMM_DB_MRD_CYCLE
#define F0_LRDIMM_DB_MRD_CENTER                   0x6  | F0_MODE_LRDIMM_DB_MRD_CENTER
#define F0_LRDIMM_DB_DWL                          0x7  | F0_MODE_LRDIMM_DB_DWL
#define F0_LRDIMM_DB_MWD_CYCLE                    0x8  | F0_MODE_LRDIMM_DB_MWD_CYCLE
#define F0_LRDIMM_DB_MWD_CENTER                   0x9  | F0_MODE_LRDIMM_DB_MWD_CENTER
#define F0_DQS_GATE_CAL                           0xA  | F0_MODE_DQS_GATE_CAL
#define F0_READ_DQ_CAL                            0xB  | F0_MODE_READ_DQ_CAL
#define F0_WRITE_LEVELING                         0xC  | F0_MODE_WRITE_LEVELING
#define F0_WRITE_DQ_DBI_CAL                       0xD  | F0_MODE_WRITE_DQ_DBI_CAL
#define F0_WRITE_LATENCY_CAL                      0xE  | F0_MODE_WRITE_LATENCY_CAL
#define F0_READ_DBI_CAL                           0xF  | F0_MODE_READ_DBI_CAL
#define F0_READ_DQ_VREF_CAL                       0x10 | F0_MODE_READ_DQ_VREF_CAL
#define F0_READ_DQ_DBI_CAL_COMPLEX                0x11 | F0_MODE_READ_DQ_DBI_CAL_COMPLEX
#define F0_WRITE_DQ_VREF_CAL                      0x12 | F0_MODE_WRITE_DQ_VREF_CAL
#define F0_WRITE_DQ_DBI_CAL_COMPLEX               0x13 | F0_MODE_WRITE_DQ_DBI_CAL_COMPLEX
#define F0_PRBS_READ                		  0x1A | F0_MODE_PRBS_READ 
#define F0_PRBS_WRITE               		  0x1B | F0_MODE_PRBS_WRITE

#define FREQ_SWITCH                               0x1F | MODE_FREQ_SWITCH

#define F1_LPDDR4_CS_CA_TRAIN              0x20 | 0x2  | F1_MODE_LPDDR4_CS_CA_TRAIN
#define F1_LPDDR4_CA_VREF_TRAIN            0x20 | 0x3  | F1_MODE_LPDDR4_CA_VREF_TRAIN
#define F1_LRDIMM_DB_MREP                  0x20 | 0x4  | F1_MODE_LRDIMM_DB_MREP
#define F1_LRDIMM_DB_MRD_CYCLE             0x20 | 0x5  | F1_MODE_LRDIMM_DB_MRD_CYCLE
#define F1_LRDIMM_DB_MRD_CENTER            0x20 | 0x6  | F1_MODE_LRDIMM_DB_MRD_CENTER
#define F1_LRDIMM_DB_DWL                   0x20 | 0x7  | F1_MODE_LRDIMM_DB_DWL
#define F1_LRDIMM_DB_MWD_CYCLE             0x20 | 0x8  | F1_MODE_LRDIMM_DB_MWD_CYCLE
#define F1_LRDIMM_DB_MWD_CENTER            0x20 | 0x9  | F1_MODE_LRDIMM_DB_MWD_CENTER
#define F1_DQS_GATE_CAL                    0x20 | 0xA  | F1_MODE_DQS_GATE_CAL
#define F1_READ_DQ_CAL                     0x20 | 0xB  | F1_MODE_READ_DQ_CAL
#define F1_WRITE_LEVELING                  0x20 | 0xC  | F1_MODE_WRITE_LEVELING
#define F1_WRITE_DQ_DBI_CAL                0x20 | 0xD  | F1_MODE_WRITE_DQ_DBI_CAL
#define F1_WRITE_LATENCY_CAL               0x20 | 0xE  | F1_MODE_WRITE_LATENCY_CAL
#define F1_READ_DBI_CAL                    0x20 | 0xF  | F1_MODE_READ_DBI_CAL
#define F1_READ_DQ_VREF_CAL                0x20 | 0x10 | F1_MODE_READ_DQ_VREF_CAL
#define F1_READ_DQ_DBI_CAL_COMPLEX         0x20 | 0x11 | F1_MODE_READ_DQ_DBI_CAL_COMPLEX
#define F1_WRITE_DQ_VREF_CAL               0x20 | 0x12 | F1_MODE_WRITE_DQ_VREF_CAL
#define F1_WRITE_DQ_DBI_CAL_COMPLEX        0x20 | 0x13 | F1_MODE_WRITE_DQ_DBI_CAL_COMPLEX
#define F1_PRBS_READ                	   0x20 | 0x1A | F1_MODE_PRBS_READ 
#define F1_PRBS_WRITE               	   0x20 | 0x1B | F1_MODE_PRBS_WRITE

#define EN_VT_TRACK                               0x3C | MODE_EN_VT_TRACK
#define READ_DQS_TRACK                            0x3D | MODE_READ_DQS_TRACK
#define LPDDR4_WR_DQS_TRACK                       0x3E | MODE_LPDDR4_WR_DQS_TRACK

#define CAL_DONE                                  0x3F 

#ifdef DDR4
   #define CAL_SEQ { PHY_BISC,                     \
                     MEM_INIT,                     \
                     F0_LRDIMM_DB_MREP,            \
                     F0_LRDIMM_DB_MRD_CYCLE,       \
                     F0_LRDIMM_DB_MRD_CENTER,      \
                     F0_LRDIMM_DB_DWL,             \
                     F0_LRDIMM_DB_MWD_CYCLE,       \
                     F0_LRDIMM_DB_MWD_CENTER,      \
                     F0_DQS_GATE_CAL,              \
                     F0_WRITE_LEVELING,            \
                     F0_READ_DQ_CAL,               \
                     F0_WRITE_DQ_DBI_CAL,          \
                     F0_WRITE_LATENCY_CAL,         \
                     F0_READ_DBI_CAL,              \
                     F0_READ_DQ_VREF_CAL,          \
                     F0_READ_DQ_DBI_CAL_COMPLEX,   \
                     F0_WRITE_DQ_VREF_CAL,         \
                     F0_WRITE_DQ_DBI_CAL_COMPLEX,  \
                     F0_PRBS_READ,                 \
                     F0_PRBS_WRITE,                \
                     FREQ_SWITCH,                  \
                     F1_LRDIMM_DB_MREP,            \
                     F1_LRDIMM_DB_MRD_CYCLE,       \
                     F1_LRDIMM_DB_MRD_CENTER,      \
                     F1_LRDIMM_DB_DWL,             \
                     F1_LRDIMM_DB_MWD_CYCLE,       \
                     F1_LRDIMM_DB_MWD_CENTER,      \
                     F1_DQS_GATE_CAL,              \
                     F1_WRITE_LEVELING,            \
                     F1_READ_DQ_CAL,               \
                     F1_WRITE_DQ_DBI_CAL,          \
                     F1_WRITE_LATENCY_CAL,         \
                     F1_READ_DBI_CAL,              \
                     F1_READ_DQ_VREF_CAL,          \
                     F1_READ_DQ_DBI_CAL_COMPLEX,   \
                     F1_WRITE_DQ_VREF_CAL,         \
                     F1_WRITE_DQ_DBI_CAL_COMPLEX,  \
                     F1_PRBS_READ,                 \
                     F1_PRBS_WRITE,                \
                     EN_VT_TRACK,                  \
                     READ_DQS_TRACK,               \
                     CAL_DONE }
#else            
   #define CAL_SEQ { PHY_BISC,                     \
                     MEM_INIT,                     \
                     F0_LPDDR4_CS_CA_TRAIN,        \
                     F0_LPDDR4_CA_VREF_TRAIN,      \
                     F0_DQS_GATE_CAL,              \
                     F0_WRITE_LEVELING,            \
                     F0_READ_DQ_CAL,               \
                     F0_WRITE_DQ_DBI_CAL,          \
                     F0_WRITE_LATENCY_CAL,         \
                     F0_READ_DBI_CAL,              \
                     F0_READ_DQ_VREF_CAL,          \
                     F0_READ_DQ_DBI_CAL_COMPLEX,   \
                     F0_WRITE_DQ_VREF_CAL,         \
                     F0_WRITE_DQ_DBI_CAL_COMPLEX,  \
                     F0_PRBS_READ,                 \
                     F0_PRBS_WRITE,                \
                     FREQ_SWITCH,                  \
                     F1_LPDDR4_CS_CA_TRAIN,        \
                     F1_LPDDR4_CA_VREF_TRAIN,      \
                     F1_DQS_GATE_CAL,              \
                     F1_WRITE_LEVELING,            \
                     F1_READ_DQ_CAL,               \
                     F1_WRITE_DQ_DBI_CAL,          \
                     F1_WRITE_LATENCY_CAL,         \
                     F1_READ_DBI_CAL,              \
                     F1_READ_DQ_VREF_CAL,          \
                     F1_READ_DQ_DBI_CAL_COMPLEX,   \
                     F1_WRITE_DQ_VREF_CAL,         \
                     F1_WRITE_DQ_DBI_CAL_COMPLEX,  \
                     F1_PRBS_READ,                 \
                     F1_PRBS_WRITE,                \
                     EN_VT_TRACK,                  \
                     READ_DQS_TRACK,               \
                     LPDDR4_WR_DQS_TRACK,          \
                     CAL_DONE }
#endif

#define MAX_DQS_BITS                18
   
// Microblaze DATA RAM for Header and configuration control
#define MBDR_HEADER   RAM_DATA_CAL_OFFSET
#define MBDR_CONFIG   RAM_DATA_CAL_OFFSET + 0x80

// Overriding: Calibration stage enable
// One bit per stage, as per calibration stage encoding.
// Stage BISC (0x0) corresponds to MBDR_CAL_EN_31_0[0]
// Stage F0_DQS_GATE_CAL (0xA) corresponds to MBDR_CAL_EN_31_0[10]
// Stage FREQ_SWITCH (0x1F) corresponds to MBDR_CAL_EN_31_0[31]
// Stage F1_DQS_GATE_CAL (0x2A) corresponds to MBDR_CAL_EN_63_32[10]
// Stage CAL_DONE (0x3F) corresponds to MBDR_CAL_EN_63_32[31]
// MSB bit (corresponds to CAL_DONE) of MBDR_CAL_EN_63_32 is used for calibration stage override
#define MBDR_CAL_EN_31_0   MBDR_CONFIG + 0x0
#define MBDR_CAL_EN_63_32  MBDR_CONFIG + 0x4

// Microblaze DATA RAM for Calibration data for Save/Restore purpose (MBDR)
// Reserve 4 locations for header, if required at system level
// Using 1KB space for single frequency use-case and 2KB space for dual frequency use-case
#define MBDR_BASE_F0   RAM_DATA_CAL_OFFSET + 0x10
#define MBDR_BASE_F1   RAM_DATA_CAL_OFFSET + 0x400

#define MBDR_RL_DLY_QTR                0x000
#define MBDR_RL_DLY_RNK_CRSE_FINE      0x06C
#define MBDR_WL_DLY_RNK_CRSE_FINE      0x0FC
#define MBDR_DQ_IDELAY                 0x18C
#define MBDR_DQ_ODELAY                 0x1EC
#define MBDR_DQS_PQTR                  0x24C
#define MBDR_DQS_NQTR                  0x264
#define MBDR_DQS_ODELAY                0x27C
#define MBDR_DBI_IDELAY                0x294
#define MBDR_DBI_ODELAY                0x2A0
#define MBDR_MEM_READ_VREF             0x2AC
#define MBDR_MEM_WRITE_VREF            0x2C4
#define MBDR_LP4_WL_DQS_CRSE           0x30C
#define MBDR_LP4_CA_ODELAY             0x310
#define MBDR_LP4_CS_ODELAY             0x330
#define MBDR_LP4_CA_TX_OUT_PHASE_90    0x33C
#define MBDR_LP4_CS_TX_OUT_PHASE_90    0x340
#define MBDR_MEM_LP4_TDQSOSC           0x344
#define MBDR_MEM_LP4_TDQS2DQ           0x354

#define MBDR_PHY_RDEN                  0x364
#define MBDR_FIFO_RDEN                 0x380
#define MBDR_XPI_OE_WRDATA_ALL_NIB_DLY 0x384
#define MBDR_PHY_OE_NIB                0x388
#define MBDR_PHY_DATA_NIB              0x398
#define MBDR_XPI_MAP_BITSLIP           0x3A4


// Exchange RAM: Versions
#define XRAM_HEADER_VER                0x000
#define XRAM_C_CODE_MAJOR_VER          0x004
#define XRAM_C_CODE_MINOR_VER          0x008
#define XRAM_CAL_STATUS_MAP_VER        0x00C
#define XRAM_PRE_POST_CAL_MAP_VER      0x010
#define XRAM_ERROR_CODE_VER            0x014
#define XRAM_WARNING_CODE_VER          0x018
#define XRAM_REG_MAP_VER               0x01C
#define XRAM_IP_CONFIG_VER             0x020
#define XRAM_TAG_VER_0                 0x024
#define XRAM_TAG_VER_1                 0x028
#define XRAM_TAG_VER_2                 0x02C

#define VAL_HEADER_VER                     1
#define VAL_C_CODE_MAJOR_VER               4
#define VAL_C_CODE_MINOR_VER               1
#define VAL_CAL_STATUS_MAP_VER             1
#define VAL_PRE_POST_CAL_MAP_VER           1
#define VAL_ERROR_CODE_VER                 2
#define VAL_WARNING_CODE_VER               1
#define VAL_REG_MAP_VER                    5
#define VAL_IP_CONFIG_VER                  1
#define VAL_TAG_VER_0                      1
#define VAL_TAG_VER_1                      0
#define VAL_TAG_VER_2                      0

// Exchange RAM: Configuration
#define XRAM_MEM_TYPE                  0x30
#define XRAM_PHY_RANKS                 0x34
#define XRAM_MEM_RANKS                 0x38
#define XRAM_BYTES                     0x3C
#define XRAM_NIBBLES                   0x40
#define XRAM_BITS_PER_BYTE             0x44
#define XRAM_DBI_PINS                  0x48
#define XRAM_SLOTS                     0x4C
#define XRAM_PINOUT_SELECT             0x50
#define XRAM_DIMM_TYPE                 0x54
#define XRAM_LRANKS                    0x58
#define XRAM_NUM_CHANNELS              0x5C
#define XRAM_DUAL_FREQ_EN              0x60
#define XRAM_DRAM_SIZE                 0x64
#define XRAM_MAX_BITS                  0x68
#define XRAM_MAX_NIBBLES               0x6C
#define XRAM_MAX_BYTES                 0x70
#define XRAM_MAX_DBI_PINS              0x74
#define XRAM_SYS_CLK_8_0               0x78
#define XRAM_SYS_CLK_17_9              0x7C
#define XRAM_UB_CLK_8_0                0x80
#define XRAM_UB_CLK_17_9               0x84
#define XRAM_ECC_EN                    0x88
#define XRAM_REF_EN                    0x8C
#define XRAM_PER_RD_EN                 0x90
#define XRAM_TRAF_SELF_REF_EN          0x94
#define XRAM_TRAF_POWER_DOWN_EN        0x98
#define XRAM_SCRUB_EN                  0x9c
#define XRAM_BISC_EN                   0xA0
#define XRAM_DQS_GATE_PHY_UB           0xA4
#define XRAM_DQS_GATE_TRACK_EN         0xA8
#define XRAM_LP4_OSC_TRACK_EN          0xAC

// Exchange RAM: F0 Configuration
#define XRAM_F0_TCK_LSB                0x200 
#define XRAM_F0_TCK_MSB                0x204
#define XRAM_F0_XPLL_CLKOUTFB_LT       0x208
#define XRAM_F0_XPLL_CLKOUTFB_HT       0x20C
#define XRAM_F0_XPLL_DIVCLK_LT         0x210
#define XRAM_F0_XPLL_DIVCLK_HT         0x214
#define XRAM_F0_MR0_8_0                0x218
#define XRAM_F0_MR0_17_9               0x21C
#define XRAM_F0_MR1_8_0                0x220
#define XRAM_F0_MR1_17_9               0x224
#define XRAM_F0_MR1_RTT_NOM            0x228
#define XRAM_F0_MR2_8_0                0x22C
#define XRAM_F0_MR2_17_9               0x230
#define XRAM_F0_MR3_8_0                0x234
#define XRAM_F0_MR3_17_9               0x238
#define XRAM_F0_MR4_8_0                0x23C
#define XRAM_F0_MR4_17_9               0x240
#define XRAM_F0_MR5_8_0                0x244
#define XRAM_F0_MR5_17_9               0x248
#define XRAM_F0_MR5_RTT_PARK           0x24C
#define XRAM_F0_MR6_8_0                0x250
#define XRAM_F0_MR6_17_9               0x254
#define XRAM_F0_RCD_RC0A               0x258
#define XRAM_F0_RCD_RC0F               0x25C
#define XRAM_F0_RCD_RC3X               0x260
#define XRAM_F0_DB_BC0A                0x264
#define XRAM_F0_DB_F0BC6X              0x268
#define XRAM_F0_LP4_MR12               0x26C
#define XRAM_F0_LP4_MR13               0x270
#define XRAM_F0_LP4_MR14               0x274
#define XRAM_F0_LP4_MR23               0x278
#define XRAM_F0_READ_LATENCY           0x27C
#define XRAM_F0_WRITE_LATENCY          0x280
#define XRAM_F0_DRAM_2T_MODE           0x284
#define XRAM_F0_DM_DBI_EN              0x288
#define XRAM_F0_ADD_CMD_DLY            0x28C
#define XRAM_F0_PAR_ALERT_EN           0x290

// Exchange RAM: F1 Configuration
#define XRAM_F1_TCK_LSB                0x300 
#define XRAM_F1_TCK_MSB                0x304
#define XRAM_F1_XPLL_CLKOUTFB_LT       0x308
#define XRAM_F1_XPLL_CLKOUTFB_HT       0x30C
#define XRAM_F1_XPLL_DIVCLK_LT         0x310
#define XRAM_F1_XPLL_DIVCLK_HT         0x314
#define XRAM_F1_MR0_8_0                0x318
#define XRAM_F1_MR0_17_9               0x31C
#define XRAM_F1_MR1_8_0                0x320
#define XRAM_F1_MR1_17_9               0x324
#define XRAM_F1_MR1_RTT_NOM            0x328
#define XRAM_F1_MR2_8_0                0x32C
#define XRAM_F1_MR2_17_9               0x330
#define XRAM_F1_MR3_8_0                0x334
#define XRAM_F1_MR3_17_9               0x338
#define XRAM_F1_MR4_8_0                0x33C
#define XRAM_F1_MR4_17_9               0x340
#define XRAM_F1_MR5_8_0                0x344
#define XRAM_F1_MR5_17_9               0x348
#define XRAM_F1_MR5_RTT_PARK           0x34C
#define XRAM_F1_MR6_8_0                0x350
#define XRAM_F1_MR6_17_9               0x354
#define XRAM_F1_RCD_RC0A               0x358
#define XRAM_F1_RCD_RC0F               0x35C
#define XRAM_F1_RCD_RC3X               0x360
#define XRAM_F1_DB_BC0A                0x364
#define XRAM_F1_DB_F0BC6X              0x368
#define XRAM_F1_LP4_MR12               0x36C
#define XRAM_F1_LP4_MR13               0x370
#define XRAM_F1_LP4_MR14               0x374
#define XRAM_F1_LP4_MR23               0x378
#define XRAM_F1_READ_LATENCY           0x37C
#define XRAM_F1_WRITE_LATENCY          0x380
#define XRAM_F1_DRAM_2T_MODE           0x384
#define XRAM_F1_DM_DBI_EN              0x388
#define XRAM_F1_ADD_CMD_DLY            0x38C
#define XRAM_F1_PAR_ALERT_EN           0x390

// Exchange RAM: Calibration status
#define XRAM_CAL_POINTER               0x400
#define XRAM_CAL_SUB_STAGE             0x404
#define XRAM_CAL_RANK                  0x408
#define XRAM_CAL_ERROR                 0x40C
#define XRAM_CAL_ERROR_DATA_NIBBLE_8_0       0x410
#define XRAM_CAL_ERROR_DATA_NIBBLE_17_9      0x414
#define XRAM_CAL_ERROR_PHY_NIBBLE_8_0        0x418
#define XRAM_CAL_ERROR_PHY_NIBBLE_17_9       0x41C
#define XRAM_CAL_ERROR_PHY_NIBBLE_26_18      0x420
#define XRAM_CAL_ERROR_BIT_PHY_NIBBLE        0x424
#define XRAM_CAL_PRE_STATUS_8_0        0x490
#define XRAM_CAL_PRE_STATUS_17_9       0x494
#define XRAM_CAL_TIME_8_0              0x498
#define XRAM_CAL_TIME_17_9             0x49C
#define XRAM_CAL_POST_STATUS_TRACKING  0x4A0
#define XRAM_CAL_POST_STATUS_SELF_REF  0x4A4
#define XRAM_CAL_POST_STATUS           0x4A8
#define XRAM_CAL_WARNING               0x4C0
#define XRAM_CAL_SEQ_STATUS            0x600
#define XRAM_CAL_STAGE_TIME            0x700

// Exchange RAM: F0/F1 Data
// BISC values
#define XRAM_BISC_PQTR_ALIGN                   0x800
#define XRAM_BISC_NQTR_ALIGN                   0x848
#define XRAM_BISC_MON_ALIGN                    0x890
#define XRAM_BISC_IDLY0_ALIGN                  0x8D8
#define XRAM_BISC_IDLY1_ALIGN                  0x920
#define XRAM_BISC_IDLY2_ALIGN                  0x968
#define XRAM_BISC_IDLY3_ALIGN                  0x9B0
#define XRAM_BISC_IDLY4_ALIGN                  0x9F8
#define XRAM_BISC_IDLY5_ALIGN                  0xA40
#define XRAM_BISC_PQTR                         0xA88
#define XRAM_BISC_NQTR                         0xAD0
#define XRAM_BISC_RL_DLY_QTR                   0xB18

// VT Tracking
#define XRAM_VTTRACK_RLDLYQTR                  0xB60
#define XRAM_VTTRACK_RLDLYQTR_MAX              0xBA8
#define XRAM_VTTRACK_RLDLYQTR_MIN              0xBF0

// DQS Tracking
#define XRAM_DQSTRACK_RLDLYRNK_CRSE            0xC38
#define XRAM_DQSTRACK_RLDLYRNK_FINE            0xC80
#define XRAM_DQSTRACK_RLDLYRNK_CRSE_MAX        0xCC8
#define XRAM_DQSTRACK_RLDLYRNK_FINE_MAX        0xD10
#define XRAM_DQSTRACK_RLDLYRNK_CRSE_MIN        0xD58
#define XRAM_DQSTRACK_RLDLYRNK_FINE_MIN        0xDA0

// Read & Write margining data
#define XRAM_RDMARGIN_PQTR_LEFT                0xDE8
#define XRAM_RDMARGIN_PQTR_RIGHT               0xE30
#define XRAM_RDMARGIN_NQTR_LEFT                0xE78
#define XRAM_RDMARGIN_NQTR_RIGHT               0xEC0
#define XRAM_WRMARGIN_LEFT                     0xF08
#define XRAM_WRMARGIN_RIGHT                    0xF50

// LP4 DQS Oscillator tracking data
#define XRAM_LP4DQSOSCTRACK_TDQS2DQ               0xF98
#define XRAM_LP4DQSOSCTRACK_TDQS2DQ_MAX           0xFB8
#define XRAM_LP4DQSOSCTRACK_TDQS2DQ_MIN           0xFD8

// Exchange RAM: F0/F1 VRef calibration data
#define XRAM_RDVREF_VREF_DEF                   0x1000
#define XRAM_RDVREF_LEFT_VREF_DEF              0x1004
#define XRAM_RDVREF_RIGHT_VREF_DEF             0x104C
#define XRAM_RDVREF_VREF_UPP_BOUND             0x1094
#define XRAM_RDVREF_LEFT_VREF_UPP_BOUND        0x10DC
#define XRAM_RDVREF_RIGHT_VREF_UPP_BOUND       0x1124
#define XRAM_RDVREF_VREF_LOW_BOUND             0x116C
#define XRAM_RDVREF_LEFT_VREF_LOW_BOUND        0x11B4
#define XRAM_RDVREF_RIGHT_VREF_LOW_BOUND       0x11FC
#define XRAM_RDVREF_VREF_FINAL                 0x1244
#define XRAM_RDVREF_LEFT_VREF_FINAL            0x128C
#define XRAM_RDVREF_RIGHT_VREF_FINAL           0x12D4
#define XRAM_WRVREF_VREF_DEF                   0x131C
#define XRAM_WRVREF_LEFT_VREF_DEF              0x1320
#define XRAM_WRVREF_RIGHT_VREF_DEF             0x1440
#define XRAM_WRVREF_VREF_UPP_BOUND             0x1560
#define XRAM_WRVREF_LEFT_VREF_UPP_BOUND        0x1680
#define XRAM_WRVREF_RIGHT_VREF_UPP_BOUND       0x17A0
#define XRAM_WRVREF_VREF_LOW_BOUND             0x18C0
#define XRAM_WRVREF_LEFT_VREF_LOW_BOUND        0x19E0
#define XRAM_WRVREF_RIGHT_VREF_LOW_BOUND       0x1B00
#define XRAM_WRVREF_LEFT_VREF_FINAL            0x1C20
#define XRAM_WRVREF_RIGHT_VREF_FINAL           0x1D40
#define XRAM_WRVREF_VREF_FINAL                 0x1E60

// Exchange RAM: Margin check registers
#define XRAM_MGCHK_CTRL          	       0x1F80
#define XRAM_MGCHK_UNIT          	       0x1F84
#define XRAM_MGCHK_BITSEL        	       0x1F88
#define XRAM_MGCHK_RANK          	       0x1F8C
#define XRAM_MGCHK_RD_VREF_1     	       0x1F90
#define XRAM_MGCHK_RD_VREF_0     	       0x1F94
#define XRAM_MGCHK_WR_VREF       	       0x1F98
#define XRAM_MGCHK_STEP          	       0x1F9C
#define XRAM_MGCHK_PAT_CONFIG_0  	       0x1FA0
#define XRAM_MGCHK_PAT_CONFIG_1  	       0x1FA4
#define XRAM_MGCHK_PAT_CONFIG_2  	       0x1FA8
#define XRAM_MGCHK_TEST_MODE     	       0x1FAC
#define XRAM_MGCHK_DEF_RD_VREF_1 	       0x1FB0
#define XRAM_MGCHK_DEF_RD_VREF_0 	       0x1FB4
#define XRAM_MGCHK_DEF_WR_VREF   	       0x1FB8
#define XRAM_MGCHK_TIMER  	   	       0x1FBC
#define XRAM_MGCHK_SAMPLE  	   	       0x1FC0
#define XRAM_MGCHK_LOOP  	   	       0x1FC4
#define XRAM_MGCHK_LEN  	   	       0x1FC8
#define XRAM_MGCHK_BL	  	   	       0x1FCC
#define XRAM_MGCHK	  	   	       0x1FD0



//added MGCHK before each variable
#define MGCHK_START    0
#define MGCHK_ABORT  1
#define MGCHK_ENABLE   2
#define MGCHK_ACK    3
#define MGCHK_DONE   4
#define MGCHK_ERROR  5
#define MGCHK_STATUS 6

#define READ_MARGIN  0
#define WRITE_MARGIN 1
#define MARGIN_CHECK  2

// Exchange RAM: F0/F1 calibration data (F0 base is 0x2000 and F1 base is 0x5000)
#define XRAM_BASE_F0                           0x2000
#define XRAM_BASE_F1                           0x5000

#define XRAM_F0_CALBISC_RL_DLY_QTR             0x2000
#define XRAM_F0_DQSGATE_STG1_OVERFLOW          0x2048
#define XRAM_F0_DQSGATE_STG1_READ_LAT          0x2148
#define XRAM_F0_DQSGATE_STG1_RLDLYRNK_CRSE     0x2268
#define XRAM_F0_DQSGATE_STG1_RLDLYRNK_FINE     0x2388
#define XRAM_F0_DQSGATE_STG2_READ_LAT          0x24A8
#define XRAM_F0_DQSGATE_STG2_RLDLYRNK_CRSE     0x25C8
#define XRAM_F0_DQSGATE_MAX_READ_LAT           0x26E8
#define XRAM_F0_DQSGATE_READ_LAT_FINAL         0x26EC
#define XRAM_F0_DQSGATE_RLDLYRNK_CRSE_FINAL    0x2734
#define XRAM_F0_WRLVL_CRSE_STG1                0x2854
#define XRAM_F0_WRLVL_OFFSET                   0x2974
#define XRAM_F0_WRLVL_CRSE_FINAL               0x2A94
#define XRAM_F0_WRLVL_NOISE_FCRSE              0x2BB4
#define XRAM_F0_WRLVL_FINE_LEFT                0x2CD4
#define XRAM_F0_WRLVL_FINE_RIGHT               0x2DF4
#define XRAM_F0_WRLVL_FINE_FINAL               0x2F14
#define XRAM_F0_RDDQ_QTR_DESKEW                0x3034
#define XRAM_F0_RDDQ_IDELAY_FINAL              0x307C
#define XRAM_F0_RDDQ_PQTR_LEFT                 0x319C
#define XRAM_F0_RDDQ_NQTR_LEFT                 0x31E4
#define XRAM_F0_RDDQ_PQTR_RIGHT_FCRSE          0x322C
#define XRAM_F0_RDDQ_NQTR_RIGHT_FCRSE          0x3274
#define XRAM_F0_RDDQ_PQTR_RIGHT                0x32BC
#define XRAM_F0_RDDQ_NQTR_RIGHT                0x3304
#define XRAM_F0_RDDQ_PQTR_FINAL                0x334C
#define XRAM_F0_RDDQ_NQTR_FINAL                0x3394

#ifdef DDR4
   #define XRAM_F0_WRDQDBI_STG1_DQS_DELAY         0x33DC
   #define XRAM_F0_WRDQDBI_STG1_BYTE_STATUS       0x3424
   #define XRAM_F0_WRDQDBI_STG1_BIT_STATUS        0x342C
   #define XRAM_F0_WRDQDBI_STG2_DQS_ODLY          0x3450
   #define XRAM_F0_WRDQDBI_STG2_DQ_ODLY           0x3498
   #define XRAM_F0_WRDQDBI_STG3_DQ_ODLY           0x35B8
   #define XRAM_F0_WRDQDBI_DESKEW_DQ_ODLY_FCRSE   0x36D8
   #define XRAM_F0_WRDQDBI_DESKEW_DQ_ODLY         0x37F8
   #define XRAM_F0_WRDQDBI_STG4_DQS_DELAY         0x3918
   #define XRAM_F0_WRDQDBI_STG4_BYTE_STATUS       0x393C
   #define XRAM_F0_WRDQDBI_STG5_DQS_ODLY          0x3944
   #define XRAM_F0_WRDQDBI_STG6_DBI_ODLY          0x3968
   #define XRAM_F0_WRDQDBI_DESKEW_DBI_ODLY_FCRSE  0x398C
   #define XRAM_F0_WRDQDBI_DESKEW_DBI_ODLY        0x39B0
   #define XRAM_F0_WRDQDBI_LEFT_EDGE_DQ           0x39D4
   #define XRAM_F0_WRDQDBI_LEFT_EDGE_DBI          0x3AF4
   #define XRAM_F0_WRDQDBI_RIGHT_MARGIN_FCRSE     0x3B18
   #define XRAM_F0_WRDQDBI_RIGHT_EDGE_DQS         0x3B60
#else
   #define XRAM_F0_WRDQDBI_STG1A_WLDLYRNK_CRSE         0x33DC
   #define XRAM_F0_WRDQDBI_STG1A_DQ0_ODLY              0x3424
   #define XRAM_F0_WRDQDBI_STG1B_WLDLYRNK_CRSE         0x346C
   #define XRAM_F0_WRDQDBI_STG1B_DQ0_ODLY              0x34B4
   #define XRAM_F0_WRDQDBI_STG1C_WLDLYRNK_CRSE         0x34FC
   #define XRAM_F0_WRDQDBI_STG2A_WLDLYRNK_CRSE         0x3544
   #define XRAM_F0_WRDQDBI_STG2A_DBI_ODLY              0x358C
   #define XRAM_F0_WRDQDBI_STG2B_WLDLYRNK_CRSE         0x35D4
   #define XRAM_F0_WRDQDBI_STG2B_DBI_ODLY              0x361C
   #define XRAM_F0_WRDQDBI_STG2C_WLDLYRNK_CRSE         0x3664
   #define XRAM_F0_WRDQDBI_WLDLYRNK_CRSE_FINAL         0x36AC
   #define XRAM_F0_WRDQDBI_STG4A_DESKEW_DQ_ODLY_FCRSE  0x36F4
   #define XRAM_F0_WRDQDBI_STG4B_DESKEW_DQ_ODLY        0x3814
   #define XRAM_F0_WRDQDBI_STG5A_DESKEW_DBI_ODLY_FCRSE 0x3934
   #define XRAM_F0_WRDQDBI_STG5B_DESKEW_DBI_ODLY       0x397C
   #define XRAM_F0_WRDQDBI_STG6A_VALID_WINDOW_FCRSE    0x39C4
   #define XRAM_F0_WRDQDBI_WINDOW_MARGIN               0x3A0C
   #define XRAM_F0_WRDQDBI_RESERVED                    0x3A54
#endif

   #define XRAM_F0_WRDQDBI_LEFT_MARGIN                 0x3BA8
   #define XRAM_F0_WRDQDBI_RIGHT_MARGIN                0x3BF0
   #define XRAM_F0_WRDQDBI_ODLY_DQS_FINAL              0x3C38
   #define XRAM_F0_WRDQDBI_ODLY_DQ_FINAL               0x3C80
   #define XRAM_F0_WRDQDBI_ODLY_DBI_FINAL              0x3DA0

#define XRAM_F0_WRLAT_INIT_LATENCY             0x3DC4
#define XRAM_F0_WRLAT_MATCH                    0x3DC8
#define XRAM_F0_WRLAT_MIN_LATENCY              0x3EE8
#define XRAM_F0_WRLAT_XPI_OE_ALL_FINAL         0x3EEC
#define XRAM_F0_WRLAT_XPI_WRDATA_ALL_FINAL     0x3EF0
#define XRAM_F0_WRLAT_PHY_OE_NIB_FINAL         0x3EF4
#define XRAM_F0_WRLAT_PHY_DATA_NIB_FINAL       0x3F3C
#define XRAM_F0_WRLAT_WLDLYRNK_CRSE_FINAL      0x3F84
#define XRAM_F0_RDCMPLX_IDELAY_OFFSET          0x40A4
#define XRAM_F0_RDCMPLX_PQTR_LEFT_SHORT        0x40EC
#define XRAM_F0_RDCMPLX_NQTR_LEFT_SHORT        0x4134
#define XRAM_F0_RDCMPLX_PQTR_LEFT              0x417C
#define XRAM_F0_RDCMPLX_NQTR_LEFT              0x41C4
#define XRAM_F0_RDCMPLX_PQTR_RIGHT_SHORT_FCRSE 0x420C
#define XRAM_F0_RDCMPLX_NQTR_RIGHT_SHORT_FCRSE 0x4254
#define XRAM_F0_RDCMPLX_PQTR_RIGHT_SHORT       0x429C
#define XRAM_F0_RDCMPLX_NQTR_RIGHT_SHORT       0x42E4
#define XRAM_F0_RDCMPLX_PQTR_RIGHT             0x432C
#define XRAM_F0_RDCMPLX_NQTR_RIGHT             0x4374
#define XRAM_F0_RDCMPLX_PQTR_FINAL             0x43BC
#define XRAM_F0_RDCMPLX_NQTR_FINAL             0x4404
#define XRAM_F0_WRCMPLX_RIGHT_MARGIN_FCRSE     0x444C
#define XRAM_F0_WRCMPLX_RIGHT_MARGIN           0x4494
#define XRAM_F0_WRCMPLX_LEFT_MARGIN_FCRSE      0x44DC
#define XRAM_F0_WRCMPLX_LEFT_MARGIN            0x4524
#define XRAM_F0_WRCMPLX_ODLY_DQS_FINAL         0x456C
#define XRAM_F0_WRCMPLX_ODLY_DQ_FINAL          0x45B4
#define XRAM_F0_WRCMPLX_ODLY_DBI_FINAL         0x46D4
#define XRAM_F0_RDPRBS_PQTR_LEFT_MARGIN        0x46F8
#define XRAM_F0_RDPRBS_PQTR_RIGHT_MARGIN       0x4740
#define XRAM_F0_RDPRBS_NQTR_LEFT_MARGIN        0x4788
#define XRAM_F0_RDPRBS_NQTR_RIGHT_MARGIN       0x47D0
#define XRAM_F0_WRPRBS_LEFT_MARGIN             0x4818
#define XRAM_F0_WRPRBS_RIGHT_MARGIN            0x4860
#define XRAM_F0_CALBISC_RL_DLY_PQTR            0x48A8
#define XRAM_F0_CALBISC_RL_DLY_NQTR            0x48F0

#ifdef DDR4
// LRDIMM Data buffer related
   #define XRAM_F0_DB_MREP_MRD_LAT                0x4938
   #define XRAM_F0_DB_MRD_CENTER                  0x4A58
   #define XRAM_F0_DB_DWL_MWD_LAT                 0x4B78
   #define XRAM_F0_DB_MWD_CENTER                  0x4C98

#else
// LP4 DQS Oscillator tracking data
   #define XRAM_LP4DQSOSCTRACK_WLDLYRNK0_FINE     0x4938
   #define XRAM_LP4DQSOSCTRACK_WLDLYRNK0_FINE_MAX 0x4978
   #define XRAM_LP4DQSOSCTRACK_WLDLYRNK0_FINE_MIN 0x49B8
   #define XRAM_LP4DQSOSCTRACK_WLDLYRNK1_FINE     0x49F8
   #define XRAM_LP4DQSOSCTRACK_WLDLYRNK1_FINE_MAX 0x4A38
   #define XRAM_LP4DQSOSCTRACK_WLDLYRNK1_FINE_MIN 0x4A78
#endif



// Error codes
// 1    - XPLL Timeout waiting for lock
#define ERR_CODE_1_XPLL_TIMEOUT                                                                                      1
// 2    - XPLL found calibration error
#define ERR_CODE_2_XPLL_CAL_ERROR                                                                                    2
// 3    - XPHY BISC timeout waiting for BISC fixdly rdy
#define ERR_CODE_3_XPHY_BISC_TIMEOUT                                                                                 3
// 4    - XPHY BISC found rl dly qtr value to be 0
#define ERR_CODE_4_XPHY_BISC_RLDLYQTR_ZERO                                                                           4
// 5    - MEM INIT timeout waiting for memory initialization to complete
#define ERR_CODE_5_MEM_INIT_TIMEOUT                                                                                  5
// 6    - DQS gating timeout waiting for XPHY gate training to complete
#define ERR_CODE_6_DQS_GATE_TRAIN_TIMEOUT                                                                            6
// 7    - DQS gating reached maximum read latency limit
#define ERR_CODE_7_DQS_GATE_MAX_READ_LATENCY_LIMIT                                                                   7
// 8    - DQS gating found rank to rank skew greater than expected
#define ERR_CODE_8_DQS_GATE_HIGHER_RANK_2_RANK_SKEW                                                                  8
// 9    - Write leveling failed to find rising edge using coarse and fine offsets
#define ERR_CODE_9_WRLVL_FAIL_RISE_EDGE_DETECTION                                                                    9
// 10   - Write leveling failed in stable 0 confirmation stage
#define ERR_CODE_10_WRLVL_FAIL_STABLE_0_CONFIRMATION                                                                10
// 11   - Write leveling reached maximum taps to find noise width by incrementing DQS odelay
#define ERR_CODE_11_WRLVL_FAIL_HIGHER_NOISE_WIDTH                                                                   11

// 12   - Read DQ failed to find rising edge valid window by incrementing PQTR
#define ERR_CODE_12_RD_DQ_FAIL_RISE_EDGE_VALID_PQTR                                                                 12
// 13   - Read DQ failed to find rising edge valid window by incrementing DQ idelay
#define ERR_CODE_13_RD_DQ_FAIL_RISE_EDGE_VALID_DQ_IDELAY                                                            13
// 14   - Read DQ failed to find rising edge noise region by incrementing DQ idelay by higher taps
#define ERR_CODE_14_RD_DQ_FAIL_RISE_EDGE_NOISE_DQ_IDELAY_HIGHER_TAPS                                                14
// 15   - Read DQ failed to find rising edge noise region by incrementing DQ idelay
#define ERR_CODE_15_RD_DQ_FAIL_RISE_EDGE_NOISE_DQ_IDELAY                                                            15
// 16   - Read DQ failed to find noise region by incrementing DQ idelay
#define ERR_CODE_16_RD_DQ_FAIL_NOISE_DQ_IDELAY                                                                      16
// 17   - Read DQ failed to find left edge by incrementing PQTR and NQTR
#define ERR_CODE_17_RD_DQ_FAIL_LEFT_EDGE_PQTR_NQTR                                                                  17
// 18   - Read DQ failed to find right edge by decrementing PQTR and NQTR
#define ERR_CODE_18_RD_DQ_FAIL_RIGHT_EDGE_PQTR_NQTR                                                                 18
// 19   - Read DQ failed in negative test post sanity check
#define ERR_CODE_19_RD_DQ_FAIL_NEGATIVE_SANITY_CHECK                                                                19
// 20   - Read DQ failed in positive test post sanity check
#define ERR_CODE_20_RD_DQ_FAIL_POSITIVE_SANITY_CHECK                                                                20

// 21   - Write DQ-DBI failed to find valid window by moving DQS odelay first and then DQ odelay
#define ERR_CODE_21_WR_DQ_DBI_FAIL_VALID_WINDOW_DQS_DQ_ODELAY                                                       21
// 22   - Write DQ-DBI failed to find the noise region for per-bit deskew by incrementing DQ odelay by higher taps
#define ERR_CODE_22_WR_DQ_DBI_FAIL_NOISE_DQ_ODELAY_HIGHER_TAPS                                                      22
// 23   - Write DQ-DBI failed to find the noise region for per-bit deskew by incrementing DQ odelay
#define ERR_CODE_23_WR_DQ_DBI_FAIL_NOISE_DQ_ODELAY                                                                  23
// 24   - Write DQ-DBI failed to find valid window by moving DQS odelay first and then DBI odelay
#define ERR_CODE_24_WR_DQ_DBI_FAIL_VALID_WINDOW_DQS_DBI_ODELAY                                                      24
// 25   - Write DQ-DBI failed to find the noise region for per-bit deskew by incrementing DBI odelay by higher taps
#define ERR_CODE_25_WR_DQ_DBI_FAIL_NOISE_DBI_ODELAY_HIGHER_TAPS                                                     25
// 26   - Write DQ-DBI failed to find the noise region for per-bit deskew by incrementing DBI odelay
#define ERR_CODE_26_WR_DQ_DBI_FAIL_NOISE_DBI_ODELAY                                                                 26
// 27   - Write DQ-DBI failed to find the right edge by incrementing DQS odelay by higher taps
#define ERR_CODE_27_WR_DQ_DBI_FAIL_RIGHT_EDGE_DQS_ODELAY_HIGHER_TAPS                                                27
// 28   - Write DQ-DBI failed to find the right edge by incrementing DQS odelay
#define ERR_CODE_28_WR_DQ_DBI_FAIL_RIGHT_EDGE_DQS_ODELAY                                                            28
// 29   - Write DQ-DBI failed in post sanity check
#define ERR_CODE_29_WR_DQ_DBI_FAIL_POST_SANITY_CHECK                                                                29
// 30   - Write DQ-DBI failed to find the valid window by incrementing DQ odelay
#define ERR_CODE_30_WR_DQ_DBI_FAIL_VALID_WINDOW_DQ_ODELAY                                                           30
// 31   - Write DQ-DBI doesn't have enough taps to decrement DQ odelay
#define ERR_CODE_31_WR_DQ_DBI_DQ_ODELAY_DEC_OUT_OF_TAPS                                                             31
// 32   - Write DQ-DBI failed to find the valid window by incrementing DBI odelay
#define ERR_CODE_32_WR_DQ_DBI_FAIL_VALID_WINDOW_DBI_ODELAY                                                          32
// 33   - Write DQ-DBI failed to find the left edge by incrementing DQ odelay by higher taps
#define ERR_CODE_33_WR_DQ_DBI_FAIL_LEFT_EDGE_DQ_ODELAY_HIGHER_TAPS                                                  33
// 34   - Write DQ-DBI failed to find the left edge by incrementing DQ odelay
#define ERR_CODE_34_WR_DQ_DBI_FAIL_LEFT_EDGE_DQ_ODELAY                                                              34
// 35   - Write DQ-DBI read DQS oscillator value to be 0
#define ERR_CODE_35_WR_DQ_DBI_FAIL_DQS_OSC_VALUE_ZERO                                                               35
// 36   - Write DQ-DBI computed tDQS2DQ value to be out of range
#define ERR_CODE_36_WR_DQ_DBI_FAIL_DQS_OSC_VALUE_OUT_OF_RANGE                                                       36

// 37   - Write latency failed to find expected data pattern
#define ERR_CODE_37_WRLAT_PATTERN_MISMATCH                                                                          37
// 38   - Write latency found larger rank to rank skews than is supported
#define ERR_CODE_38_WRLAT_HIGHER_RANK_2_RANK_SKEW                                                                   38
// 39   - Write latency failed in post sanity check
#define ERR_CODE_39_WRLAT_FAIL_POST_SANITY_CHECK                                                                    39
// 40   - Write latency failed in sanity check 1
#define ERR_CODE_40_WRLAT_FAIL_SANITY_CHECK_1                                                                       40
// 41   - Write latency failed in sanity check 2
#define ERR_CODE_41_WRLAT_FAIL_SANITY_CHECK_2                                                                       41
// 42   - Write latency failed in read complex pattern sanity check
#define ERR_CODE_42_WRLAT_FAIL_RD_COMPLEX_SANITY_CHECK                                                              42
// 43   - Write latency failed in write complex pattern sanity check
#define ERR_CODE_43_WRLAT_FAIL_WR_COMPLEX_SANITY_CHECK                                                              43
// 44   - Write latency failed in PRBS read pattern sanity check
#define ERR_CODE_44_WRLAT_FAIL_RD_PRBS_SANITY_CHECK                                                                 44
// 45   - Write latency failed in PRBS write pattern sanity check
#define ERR_CODE_45_WRLAT_FAIL_WR_PRBS_SANITY_CHECK                                                                 45
// 46   - Write latency read DQS oscillator value unexpectedly found to be 0
#define ERR_CODE_46_WRLAT_FAIL_DQS_OSC_VALUE_ZERO                                                                   46
// 47   - Write latency computed tDQS2DQ value to be out of range
#define ERR_CODE_47_WRLAT_FAIL_DQS_OSC_VALUE_OUT_OF_RANGE                                                           47

// 48   - Read DBI failed to find valid window by incrementing DBI idelay
#define ERR_CODE_48_RD_DBI_FAIL_VALID_WINDOW_DBI_IDELAY                                                             48

// 49   - Read complex failed to find noise region by incrementing DQ idelay
#define ERR_CODE_49_RD_COMPLEX_FAIL_NOISE_DQ_IDELAY                                                                 49
// 50   - Read complex failed to find left edge by incrementing PQTR and NQTR using short complex burst
#define ERR_CODE_50_RD_COMPLEX_FAIL_LEFT_EDGE_PQTR_NQTR_SHORT_BURST                                                 50
// 51   - Read complex failed to find left edge by incrementing PQTR and NQTR
#define ERR_CODE_51_RD_COMPLEX_FAIL_LEFT_EDGE_PQTR_NQTR                                                             51
// 52   - Read complex failed to find right edge by decrementing PQTR and NQTR using short compex burst
#define ERR_CODE_52_RD_COMPLEX_FAIL_RIGHT_EDGE_PQTR_NQTR_SHORT_BURST                                                52
// 53   - Read complex failed to find right edge by decrementing PQTR and NQTR
#define ERR_CODE_53_RD_COMPLEX_FAIL_RIGHT_EDGE_PQTR_NQTR                                                            53
// 54   - Read complex failed in positive test post sanity check
#define ERR_CODE_54_RD_COMPLEX_FAIL_POSITIVE_POST_SANITY_CHECK                                                      54

// 55   - Write complex failed to find the left edge by incrementing DQ odelay by higher taps
#define ERR_CODE_55_WR_COMPLEX_FAIL_LEFT_EDGE_DQ_ODELAY_HIGHER_TAPS                                                 55
// 56   - Write complex failed to find the left edge by incrementing DQ odelay
#define ERR_CODE_56_WR_COMPLEX_FAIL_LEFT_EDGE_DQ_ODELAY                                                             56
// 57   - Write complex failed to find the right edge by incrementing DQS odelay by higher taps
#define ERR_CODE_57_WR_COMPLEX_FAIL_RIGHT_EDGE_DQS_ODELAY_HIGHER_TAPS                                               57
// 58   - Write complex failed to find the right edge by incrementing DQS odelay
#define ERR_CODE_58_WR_COMPLEX_FAIL_RIGHT_EDGE_DQS_ODELAY                                                           58
// 59   - Write complex failed in post sanity check
#define ERR_CODE_59_WR_COMPLEX_FAIL_POST_SANITY_CHECK                                                               59
// 60   - Write complex failed to find the right edge by decrementing DQ odelay by higher taps
#define ERR_CODE_60_WR_COMPLEX_FAIL_RIGHT_EDGE_DQ_ODELAY_HIGHER_TAPS                                                60
// 61   - Write complex failed to find the right edge by decrementing DQ odelay
#define ERR_CODE_61_WR_COMPLEX_FAIL_RIGHT_EDGE_DQ_ODELAY                                                            61
// 62   - Write complex failed in post sanity check 1
#define ERR_CODE_62_WR_COMPLEX_FAIL_POST_SANITY_CHECK_1                                                             62
// 63   - Write complex read DQS oscillator value unexpectedly found to be 0
#define ERR_CODE_63_WR_COMPLEX_FAIL_DQS_OSC_VALUE_ZERO                                                              63
// 64   - Write complex computed tDQS2DQ value to be out of range
#define ERR_CODE_64_WR_COMPLEX_FAIL_DQS_OSC_VALUE_OUT_OF_RANGE                                                      64

// 65   - Read PRBS failed in pre sanity check
#define ERR_CODE_65_RD_PRBS_FAIL_PRE_SANITY_CHECK                                                                   65
// 66   - Read PRBS failed to find left edge by incrementing PQTR and NQTR
#define ERR_CODE_66_RD_PRBS_FAIL_LEFT_EDGE_PQTR_NQTR                                                                66
// 67   - Read PRBS failed to find right edge by decrementing PQTR and NQTR
#define ERR_CODE_67_RD_PRBS_FAIL_RIGHT_EDGE_PQTR_NQTR                                                               67
// 68   - Read PRBS failed in positive test post sanity check
#define ERR_CODE_68_RD_PRBS_FAIL_POST_SANITY_CHECK                                                                  68
// 69   - Write PRBS failed to find left margin by incrementing DQ odelays by higher taps
#define ERR_CODE_69_WR_PRBS_FAIL_LEFT_MARGIN_DQ_ODELAY_HIGHER_TAPS                                                  69
// 70   - Write PRBS failed to find left margin by incrementing DQ odelays
#define ERR_CODE_70_WR_PRBS_FAIL_LEFT_MARGIN_DQ_ODELAY                                                              70
// 71   - Write PRBS failed to find right margin by incrementing DQS odelays by higher taps
#define ERR_CODE_71_WR_PRBS_FAIL_RIGHT_MARGIN_DQS_ODELAY_HIGHER_TAPS                                                71
// 72   - Write PRBS failed to find right margin by incrementing DQS odelays
#define ERR_CODE_72_WR_PRBS_FAIL_RIGHT_MARGIN_DQS_ODELAY                                                            72
// 73   - Write PRBS failed to find right margin by decrementing DQ odelays by higher taps
#define ERR_CODE_73_WR_PRBS_FAIL_RIGHT_MARGIN_DQ_ODELAY_HIGHER_TAPS                                                 73
// 74   - Write PRBS failed to find right margin by decrementing DQ odelays
#define ERR_CODE_74_WR_PRBS_FAIL_RIGHT_MARGIN_DQ_ODELAY                                                             74
// 75   - Write PRBS failed in post sanity check 1
#define ERR_CODE_75_WR_PRBS_FAIL_POST_SANITY_CHECK_1                                                                75

// 76   - Calibration enable VTC failed in post sanity check 1
#define ERR_CODE_76_EN_VTC_FAIL_POST_SANITY_CHECK_1                                                                 76
// 77   - Calibration read DQS tracking failed in post sanity check 1
#define ERR_CODE_77_CAL_DQS_GATE_TRACKING_FAIL_POST_SANITY_CHECK_1                                                  77
// 78   - Calibration read DQS tracking found RLDLYRNK coarse underflow
#define ERR_CODE_78_CAL_DQS_GATE_TRACKING_RLDLYRNK_COARSE_UNDERFLOW                                                 78
// 79   - Cailbration read DQS tracking found RLDLYRNK coarse overflow
#define ERR_CODE_79_CAL_DQS_GATE_TRACKING_RLDLYRNK_COARSE_OVERFLOW                                                  79
// 80   - Calibration LP4 oscillator tracking failed in pre sanity check 1
#define ERR_CODE_80_CAL_LP4_OSC_TRACK_FAIL_PRE_SANITY_CHECK_1                                                       80
// 81   - Calibration LP4 oscillator tracking failed in sanity check 1
#define ERR_CODE_81_CAL_LP4_OSC_TRACK_FAIL_SANITY_CHECK_1                                                           81
// 82   - Calibration LP4 oscillator tracking failed in post sanity check 1
#define ERR_CODE_82_CAL_LP4_OSC_TRACK_FAIL_POST_SANITY_CHECK_1                                                      82
// 83   - Calibration LP4 oscillator tracking read DQS oscillator value to be 0
#define ERR_CODE_83_CAL_LP4_OSC_TRACK_FAIL_DQS_OSC_VALUE_ZERO                                                       83
// 84   - Calibration LP4 oscillator tracking computed tDQS2DQ value to be out of range
#define ERR_CODE_84_CAL_LP4_OSC_TRACK_FAIL_DQS_OSC_VALUE_OUT_OF_RANGE                                               84

// 85   - Read DQS gate tracking found RLDLYRNK coarse underflow
#define ERR_CODE_85_DQS_GATE_TRACKING_RLDLYRNK_COARSE_UNDERFLOW                                                     85
// 86   - Read DQS gate tracking found RLDLYRNK coarse overflow
#define ERR_CODE_86_DQS_GATE_TRACKING_RLDLYRNK_COARSE_OVERFLOW                                                      86
// 87   - LP4 oscillator tracking read DQS oscillator value to be 0
#define ERR_CODE_87_LP4_OSC_TRACK_FAIL_DQS_OSC_VALUE_ZERO                                                           87
// 88   - LP4 oscillator tracking computed tDQS2DQ value to be out of range
#define ERR_CODE_88_LP4_OSC_TRACK_FAIL_DQS_OSC_VALUE_OUT_OF_RANGE                                                   88
// 89   - LP4 oscillator tracking rank switching did not take effect
#define ERR_CODE_89_LP4_OSC_TRACK_FAIL_BUSY_RANK_SWITCHING                                                          89

// 90   - Self refresh exit DQS gating timeout waiting for XPHY gate training done signal
#define ERR_CODE_90_SELF_REF_EXIT_DQS_GATE_TIMOUT                                                                   90
// 91   - Self refresh exit DQS gating reached maximum read latency limit
#define ERR_CODE_91_SELF_REF_EXIT_DQS_GATE_MAX_READ_LATENCY_LIMIT                                                   91
// 92   - Self refresh exit DQS gating found rank to rank skew greater than expected
#define ERR_CODE_92_SELF_REF_EXIT_DQS_GATE_HIGHER_RANK_2_RANK_SKEW                                                  92
// 93   - Self refresh exit read DQS tracking failed in sanity check ddr
#define ERR_CODE_93_SELF_REF_EXIT_DQS_GATE_TRACKING_FAIL_POST_SANITY_CHECK                                          93
// 94   - Self refresh exit read DQS tracking found RLDLYRNK coarse underflow
#define ERR_CODE_94_SELF_REF_EXIT_DQS_GATE_TRACKING_RLDLYRNK_COARSE_UNDERFLOW                                       94
// 95   - Self refresh exit read DQS tracking found RLDLYRNK coarse overflow
#define ERR_CODE_95_SELF_REF_EXIT_DQS_GATE_TRACKING_RLDLYRNK_COARSE_OVERFLOW                                        95

// 96   - Frequency switching waiting for BISC pause ready signal
#define ERR_CODE_96_FREQ_SWITCH_BISC_PAUSE_READY_TIMEOUT                                                            96
// 97   - Frequency switching timeout waiting for XPLL lock signal
#define ERR_CODE_97_FREQ_SWITCH_XPLL_TIMEOUT                                                                        97
// 98   - Frequency switching XPLL found calibration error
#define ERR_CODE_98_FREQ_SWITCH_XPLL_CAL_ERROR                                                                      98
// 99   - Frequency switching timeout waiting for BISC fixdly rdy signal
#define ERR_CODE_99_FREQ_SWITCH_XPHY_BISC_TIMEOUT                                                                   99
// 100  - Frequency switching found zero rl dly qtr value after XPHY BISC
#define ERR_CODE_100_FREQ_SWITCH_XPHY_BISC_RLDLYQTR_ZERO                                                           100
// 101  - Frequency switching failed in enable VTC post sanity check 1
#define ERR_CODE_101_FREQ_SWITCH_EN_VTC_FAIL_POST_SANITY_CHECK_1                                                   101

// 102  - Parity error occurred during transaction re-transmission
#define ERR_CODE_102_ALERT_PARITY_ERROR_DURING_COMMAND_RETRY                                                       102

// 103  - Watchdog timeout while polling scrub busy after scrub being stopped
#define ERR_CODE_103_WATCHDOG_TIMEOUT_POLL_SCRUB_BUSY_AFTER_SCRUB_STOP                                        103
// 104  - Watchdog timeout while polling scrub busy after scrub being enabled
#define ERR_CODE_104_WATCHDOG_TIMEOUT_POLL_SCRUB_BUSY_AFTER_SCRUB_ENABLE                                        104
// 105  - Watchdog timeout while polling self refresh entry request from DC FSM
#define ERR_CODE_105_WATCHDOG_TIMEOUT_POLL_SELF_REF_ENTRY_REQ_FROM_DC_FSM                                        105
// 106  - Watchdog timeout while polling self refresh exit request from DC FSM
#define ERR_CODE_106_WATCHDOG_TIMEOUT_POLL_SELF_REF_EXIT_REQ_FROM_DC_FSM                                        106
// 107  - Watchdog timeout while polling self refresh exit done from DC FSM
#define ERR_CODE_107_WATCHDOG_TIMEOUT_POLL_SELF_REF_EXIT_DONE_FROM_DC_FSM                                        107

// 108  - Calibration enable VTC timeout waiting for phy_rdy
#define ERR_CODE_108_EN_VTC_FAIL_PHY_RDY_TIMEOUT                                                                108
// 109  - Frequency switching enable VTC timeout waiting for phy_rdy
#define ERR_CODE_109_FREQ_SWITCH_EN_VTC_FAIL_PHY_RDY_TIMEOUT                                                    109

// 110  - Restore calibration timeout waiting for XPLL lock signal
#define ERR_CODE_110_RESTORE_CAL_XPLL_TIMEOUT                                                                   110
// 111  - Restore calibration XPLL found calibration error
#define ERR_CODE_111_RESTORE_CAL_XPLL_CAL_ERROR                                                                 111
// 112  - Restore calibration timeout waiting for BISC fixdly rdy signal
#define ERR_CODE_112_RESTORE_CAL_XPHY_BISC_TIMEOUT                                                              112
// 113  - Restore calibration found zero rl dly qtr value after XPHY BISC
#define ERR_CODE_113_RESTORE_CAL_XPHY_BISC_RLDLYQTR_ZERO                                                        113
// 114  - Restore calibration failed in enable VTC post sanity check 1
#define ERR_CODE_114_RESTORE_CAL_EN_VTC_FAIL_POST_SANITY_CHECK_1                                                114
// 115 	- Restore calibration enable VTC failed with phy_rdy timeout
#define ERR_CODE_115_RESTORE_CAL_EN_VTC_FAIL_PHY_RDY_TIMEOUT                                                    115

// 116  - CA calibration failed to find noise right edge while incrementing CA odelay by higher taps
#define ERR_CODE_116_CA_CAL_FAIL_NOISE_RIGHT_CA_ODELAY_HIGHER_TAPS                                              116
// 117  - CA calibration failed to find noise right edge while incrementing CA odelay
#define ERR_CODE_117_CA_CAL_FAIL_NOISE_RIGHT_CA_ODELAY                                                          117
// 118  - CA calibration failed in CA odelay centering stage
#define ERR_CODE_118_CA_CAL_FAIL_CENTERING_CA_ODELAY                                                            118

// 119  - CA calibration failed to find noise right edge while incrementing CS odelay by higher taps
#define ERR_CODE_119_CA_CAL_FAIL_NOISE_RIGHT_CS_ODELAY_HIGHER_TAPS                                              119
// 120 	- CA calibration failed to find noise right edge while incrementing CS odelay
#define ERR_CODE_120_CA_CAL_FAIL_NOISE_RIGHT_CS_ODELAY                                                          120
// 121 	- CA calibration failed in CS odelay centering stage
#define ERR_CODE_121_CA_CAL_FAIL_CENTERING_CS_ODELAY                                                            121

// 122  - Write DQ-DBI calibration failed to find right edge deep noise by incrementing DQ odelay
#define ERR_CODE_122_WR_DQ_DBI_FAIL_RIGHT_EDGE_DEEP_NOISE_INC_DQ_ODELAY                                         122
// 123  - Write DQ-DBI calibration failed to find right edge deep noise by incrementing DBI odelay
#define ERR_CODE_123_WR_DQ_DBI_FAIL_RIGHT_EDGE_DEEP_NOISE_INC_DBI_ODELAY                                        123
// 124  - Write DQ-DBI calibration failed to find right edge valid window by incrementing DBI odelay
#define ERR_CODE_124_WR_DQ_DBI_FAIL_RIGHT_EDGE_VALID_WINDOW_INC_DBI_ODELAY                                      124
// 125  - Write DQ-DBI calibration failed to find right edge low noise by decrementing DBI odelay
#define ERR_CODE_125_WR_DQ_DBI_FAIL_RIGHT_EDGE_LOW_NOISE_DEC_DBI_ODELAY                                         125
// 126  - Write DQ-DBI calibration failed to find right edge valid window by incrementing DQ odelay
#define ERR_CODE_126_WR_DQ_DBI_FAIL_RIGHT_EDGE_VALID_WINDOW_INC_DQ_ODELAY                                       126
// 127  - Write DQ-DBI calibration failed to find right edge low noise by decrementing DQ odelay
#define ERR_CODE_127_WR_DQ_DBI_FAIL_RIGHT_EDGE_LOW_NOISE_DEC_DQ_ODELAY                                          127
// 128  - 2D Margin check error
#define ERR_CODE_128_2D_MARGIN_CHECK_READ_ERROR                                          			128
// 129  - 2D Margin check error
#define ERR_CODE_129_2D_MARGIN_CHECK_WRITE_ERROR                                          			129
// 130  - 2D Margin check error
#define ERR_CODE_130_2D_MARGIN_CHECK_INVALID_RANK_ERROR                                          		130
// 131  - MPR read error during cal done
#define ERR_CODE_131_MPR_READ_ERROR    										131
