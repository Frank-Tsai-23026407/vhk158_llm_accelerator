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
//       Revision:       $Id: //depot/icm/proj/everest/7t_n1/shadow/shadowbranches/hsm/hsm.hsm_2.4/rtl/ddrmc_7t_n1/microblaze/cal_sw/src/internal_reg_define.h#5 $
//                       $Author: rgaddam $
//                       $DateTime: 2019/04/28 12:58:54 $
//                       $Change: 21407526 $
//       Description:
//           DDRMC : 
//
///////////////////////////////////////////////////////////////////////////////

// FIXME: Temporary defines - Start
#ifndef F0_REG_CONFIG1
   #define F0_REG_CONFIG1               0 
#endif
#ifndef F0_REG_CONFIG2
   #define F0_REG_CONFIG2               0 
#endif
#ifndef F0_REG_SCRUB2
   #define F0_REG_SCRUB2                0 
#endif
#ifndef F0_REG_MRS_2
   #define F0_REG_MRS_2                 0 
#endif

#ifndef F1_REG_CONFIG1
   #define F1_REG_CONFIG1               0 
#endif
#ifndef F1_REG_CONFIG2
   #define F1_REG_CONFIG2               0 
#endif
#ifndef F1_REG_SCRUB2
   #define F1_REG_SCRUB2                0 
#endif
#ifndef F1_REG_MRS_2
   #define F1_REG_MRS_2                 0 
#endif

#ifndef DB_F6BC4X
   #define DB_F6BC4X    0x0
#endif

#ifndef DB_F5BC5X
   #define DB_F5BC5X    0x0
#endif
// Temporary defines - End

#define BLK 0

#ifdef ENABLE_MICROBLAZE_BFM
FILE *DebugLogFile, *calib_stg_dly_log;
/* Note that this requires at least 1 argument, just list printf() would */
#define DEBUG_PRINTF( ...) \
     read_simulation_time(fd_response_time,DebugLogFile); \
     fprintf(DebugLogFile, __VA_ARGS__); \
     fflush(DebugLogFile);
#define RECORD_DLY( ...) \
     fprintf(calib_stg_dly_log, __VA_ARGS__); \
     fflush(calib_stg_dly_log);
#else
#define DEBUG_PRINTF( ...) /* NULL */
#define RECORD_DLY( ...) /*NULL*/
#endif

#define CPLX_LOOP_CNT_MIN 1               // [14:7] Loop count to go through the pattern
#define CPLX_ROW_CNT_MIN  7               // [17:15] Maximum row count value. For fast cal simulation, set it to 0.
#define CPLX_BURST_ARRAY_INDEX_MIN 0x3   // [24:20] The max index value when incrementing the burst array sequence. For fast cal simulation, set it to 3.

#define HW_CAL_EN      
#define FIX_EDT_999807
#ifndef DIS_MEM_FILL
   #define DIS_MEM_FILL  0
#endif

#define es1       1
#define es2       2
// default as false if not defined in cal config

#define CEIL(A,B)  ((A)/(B) + (((A)%(B)) ? 1:0))

#ifdef HW_CAL_EN      
     #define MIN_VLD_CNT 15
     #define SAMPLE_CNT 15

   #define MIN_VLD_CNT_CPLX 15

#ifdef S80_DEVICE
   #if SI_REVISION == es1           // CR-1032286 issue
    #define CPLX_LOOP_CNT  glbl_margin_check? glbl_margin_loop : 1               // [14:7] Loop count to go through the pattern
   #else
    #define CPLX_LOOP_CNT  glbl_margin_check? glbl_margin_loop : 3               // [14:7] Loop count to go through the pattern
   #endif
#else
   #define CPLX_LOOP_CNT  glbl_margin_check? glbl_margin_loop : 3               // [14:7] Loop count to go through the pattern
#endif

   #define CPLX_ROW_CNT  7               // [17:15] Maximum row count value. For fast cal simulation, set it to 0.
   #define CPLX_BANK_CNT 3               // [19:18] Maximum bank count value. For fast cal simulation, set it to 3.
   #define CPLX_BURST_ARRAY_INDEX glbl_margin_check ? glbl_margin_bl:0x17   // [24:20] The max index value when incrementing the burst array sequence. For fast cal simulation, set it to 3.
   #define CPLX_PATTERN_LENGTH glbl_margin_check? glbl_margin_pat_len:0x1D   // [30:25] Indicates the pattern length, which registers loaded are valid

#elif ICVAR_DELAY_EN
     #define MIN_VLD_CNT 15
     #define SAMPLE_CNT 15

   #define MIN_VLD_CNT_CPLX 5

#ifdef S80_DEVICE
   #if SI_REVISION == es1           // CR-1032286 issue
    #define CPLX_LOOP_CNT  glbl_margin_check? glbl_margin_loop : 1               // [14:7] Loop count to go through the pattern
   #else
    #define CPLX_LOOP_CNT  glbl_margin_check? glbl_margin_loop : 3               // [14:7] Loop count to go through the pattern
   #endif
#else
   #define CPLX_LOOP_CNT 3               // [14:7] Loop count to go through the pattern
#endif

   #define CPLX_ROW_CNT  7               // [17:15] Maximum row count value. For fast cal simulation, set it to 0.
   #define CPLX_BANK_CNT 3               // [19:18] Maximum bank count value. For fast cal simulation, set it to 3.
   #define CPLX_BURST_ARRAY_INDEX glbl_margin_check ? glbl_margin_bl:0x17   // [24:20] The max index value when incrementing the burst array sequence. For fast cal simulation, set it to 3.
   #define CPLX_PATTERN_LENGTH glbl_margin_check? glbl_margin_pat_len:0x1D   // [30:25] Indicates the pattern length, which registers loaded are valid

#else
   #define MIN_VLD_CNT  5
   #define MIN_VLD_CNT_CPLX 1
   //#define SAMPLE_CNT glbl_margin_check ? glbl_margin_sample_count:1
   #define SAMPLE_CNT 1
   #define CPLX_LOOP_CNT  glbl_margin_check? glbl_margin_loop : 1               // [14:7] Loop count to go through the pattern
   #define CPLX_BURST_ARRAY_INDEX glbl_margin_check ? glbl_margin_bl:3   // [24:20] The max index value when incrementing the burst array sequence. For fast cal simulation, set it to 3.
   #define CPLX_PATTERN_LENGTH glbl_margin_check? glbl_margin_pat_len:0x1D   // [30:25] Indicates the pattern length, which registers loaded are valid
   #define CPLX_ROW_CNT  1            // [17:15] Maximum row count value. For fast cal simulation, set it to 0.
   #define CPLX_BANK_CNT 3            // [19:18] Maximum bank count value. For fast cal simulation, set it to 3.
#endif

// Read Vref range: 0 to 511
#define     XPIO_VREF_MIN_LIMIT                      0x10
#define     XPIO_VREF_MAX_LIMIT                      0x1F0

#define     CA_VREF_MIN_LIMIT                      0x0
#define     CA_VREF_MAX_LIMIT                      0x32

   #define DQ_NIBBLES        (DQ_BITS / 4)
   #define DQ_BYTES          (DQ_BITS / 8)
   #define DBI_BITS          DQS_BITS
   #define NIBBLE_PER_DQS    (DQ_NIBBLES / DQS_BITS)
   #define BITS_PER_DQS      (DQ_BITS / DQS_BITS)
   #define BITS_PER_DQS_MASK ((1 << BITS_PER_DQS) - 1)


#define FINE_CRS_STEP_SIZE 10 

#define     NIBBLE_EN_MAP                          0x7FFFFFF

#define BANK0_PLL0_RPI_NIBBLE 27
#define BANK0_PLL1_RPI_NIBBLE 28
#define BANK1_PLL0_RPI_NIBBLE 29
#define BANK1_PLL1_RPI_NIBBLE 30
#define BANK2_PLL0_RPI_NIBBLE 31
#define BANK2_PLL1_RPI_NIBBLE 32

#define     XPHY_BASED_DQS_TRAIN                          0
#define     MCS_BASED_DQS_TRAIN                           1
#define     GT_SAMPLES                              SAMPLE_CNT
#define     GT_STATUS_UNSTABLE                      3
#define     GT_STATUS_STABLE_ZERO                   0x2   // Stable Zero
#define     GT_STATUS_B2B_STABLE_ZERO               0xAAA // 6 back to back 01 is equivaltent to stable zero
#define     GT_STATUS_B2B_STABLE_ZERO_COUNT         0x8   // 6 back to back 01 is equivaltent to stable zero
#define     GT_STATUS_STABLE_ONE                    0x1   // Stable One
#define     GT_STATUS_B2B_STABLE_ONE                0x555 // 6 back to back 10 is equivaltent to stable zero
#define     GT_STATUS_B2B_STABLE_ONE_COUNT          0x6   // 6 back to back 10 is equivaltent to stable zero
#define     RD_CMD2GT_SAMPLE_DELAY                  20    // Delay value to sample gt start after read command assertion

#define     GT_ACCUMULATED_PAT_SAMPLE_3RD_EDGE      0x2A121  /*18'b10_10_10_00_01_00_10_00_01*/
#define     GT_ACCUMULATED_PAT_SAMPLE_3RD_EDGE_MASK 0x3F333  /*18'b11_11_11_00_11_00_11_00_11*/

#define     GT_STABLE_0_PAT_BEFORE_3RD_EDGE_MASK    0xFFF    /*16'b00_00_01_01_01_01_01_01*/
#define     GT_NOISE_PAT_BEFORE_3RD_EDGE_MASK       0x1      /*16'b00_00_00_00_00_00_00_01*/
#define     GT_STABLE_1_PAT_AFTER_3RD_EDGE_MASK     0xFFF    /*16'b00_00_10_10_10_10_10_10*/


#define     FT_LIMIT_MAX                           512
//#define     MIN_VLD_CNT		                   15 // Minimum value is 1

#define     P_DELAY                                0
#define     N_DELAY                                1
#define     DQ_DELAY                               2
#define     P_N_DELAY                              3
#define     P_N_DQ_DELAY                           4
#define     DBI_DELAY                              5
#define     DQ_DBI_DELAY                           6
#define     CA_DELAY                               7
#define     CS_DELAY                               8

#define     PARTIAL                                0
#define     FULL                                   1
#define     LOW_NOISE                              3
#define     DEEP_NOISE                             4
#define     BITS                                   0
#define     NIBBLES                                1
#define     BYTES                                  2
#define     RISE                                   1
#define     DUAL                                   0
#define     FALL                                  -1
#define     INC                                    1
#define     DEC                                   -1
#define     LOAD                                   0
#define     COARSE                                 1
#define     FINE                                   0
#define     COARSE_FINE                            2
#define     DQS_RD_LAT_MAX                         20 // DQS Read latency limit                    

#define     RIU_PMC_NIBLE_MASK                     1  // For getting position information of used nibbles in the design
#define     RIU_PMC_DATA_NIBBLE_MASK               2  // For gettting position information of used data nibbles in the design 
#define     RIU_PMC_ADDR_CNTRL_NIBBLE_MASK         3  // For gettting position information of used address/control nibbles in the design 
#define     RIU_UB_NIBBLE_MASK                     4  // For masking any nibble/nibbls in the design 
#define     RIU_UB_NIBBLE_MASK_BYPASS              5  // For bypassing broad casting 
#define     RD_LAT_OFFSET                          6  // Offset for DQS Read latency register
#define     RIU_RNK_FINE_REG_OFFSET                0
#define     RIU_RNK_COARSE_REG_OFFSET              0
#define     RIU_RST_BIT_SLICE_OFFSET               7  // Offset for bit slice reset register

#define LP4_NOP                                    0x00000000
#define LP4_MODE_REG_WRITE                         0x00016006
#define LP4_MODE_REG_READ                          0x0000000E
#define LP4_ROW_PREACHARGE                         0x00000030
#define LP4_BANK_REF                               0x00000008
#define LP4_SELF_REF_ENTRY                         0x00000018
#define LP4_SELF_REF_EXIT                          0x00000014
#define LP4_ROW_ACTIVE                             0x00003001
#define LP4_COL_WRITE                              0x00012004
#define LP4_COL_MASK_WRITE                         0x0001200C
#define LP4_COL_READ                               0x00012002
#define LP4_ENABLE_MPR                             0x00000004
#define LP4_DISABLE_MPR                            0x0000FFFB
#define LP4_ENABLE_PMB_TRAIN                       0x00000400
#define LP4_DISABLE_PMB_TRAIN                      0x0000FBFF

// MPC read DQ command followed by CAS-2 command
#define LP4_MPC_RD_DQ                              0x000120E0  

// MPC write/read FIFO commands followed by CAS-2 command
#define LP4_MPC_RD_FIFO                            0x00000041
#define LP4_MPC_WR_FIFO                            0x00000047

// MPC-1 commands do not require CAS-2 command
#define LP4_MPC_NOP                                0x00000000
#define LP4_MPC_START_DQS_OSC                      0x0000004B  
#define LP4_MPC_STOP_DQS_OSC                       0x0000004D  
#define LP4_MPC_START_ZQCAL                        0x0000004F  
#define LP4_MPC_LATCH_ZQCAL                        0x00000051  

#define MEM_NOP                                    0x0000000F
#define MEM_MODE_REG_WRITE                         0x00000008
#define MEM_MODE_REG_READ                          0x0000004D
#define MEM_ROW_ACTIVE                             0x00000000
#define MEM_ROW_PREACHARGE                         0x0000000A
#define MEM_COL_WRITE                              0x000000AC
#define MEM_COL_READ                               0x0000014D
#define MEM_BANK_REF                               0x00000009
#define MEM_SELF_REF_ENTRY                         0x00000009
#define MEM_SELF_REF_EXIT                          0x0000001F
#define MEM_ZQ_SHORT_CAL                           0x0000000E
#define MEM_ENABLE_MPR                             0x00000004
#define MEM_DISABLE_MPR                            0x0000FFFB
#define MEM_ENABLE_PMB_TRAIN                       0x00000400
#define MEM_DISABLE_PMB_TRAIN                      0x0000FBFF
#define MEM_CLR_PARITY_ERR                         0xFFFFFFEF
#define COL_RD                                     0x0
#define COL_WR                                     0x1
#define ACTIVATE                                   0x2
#define PRECHARGE                                  0x3

#define CA                                         0x0
#define CK                                         0x1
#define CS                                         0x2
#define DQ                                         0x3
#define SIMPLE                                     0x0
#define COMPLEX                                    0x1
#define PRBS					   0x2



#define MC_RLAT_MASK				   0xffffff80	
#define MC_WLAT_MASK			           0xffff80ff
#define MC_RLAT_POS				   0	
#define MC_WLAT_POS			           8
#define RIU_DIS_RX_GATE 		           0x00000020
#define RIU_REF_CLK_EN_MASK                        0x000001f8
#define RIU_WL_DELAY_FINE_MASK 		   	   0x01FF
#define RIU_WL_DELAY_FINE_OFFSET 		   0x0
#define RIU_WL_DELAY_CRSE_MASK 			   0x0E00
#define RIU_WL_DELAY_CRSE_OFFSET 		   9

#define WL_DLY_CRSE_SEARCH_LIMIT    		   6

#define DQS_COARSE_PAT_MASK	    		   0x33
#define DQS_COARSE_PAT              		   0x21
#define DQS_COARSE_STABLE_0_PAT_MASK 		   0x0c 
#define DQS_COARSE_STABLE_0_PAT     		   0x08

#define DQ_DQS_PHASE_11  			   0x000000F0   // (0000_0011_1111_0000)      (0000_0011_1111_1100)
#define DQ_DQS_PHASE_01  			   0x00000000   // (0000_0010_0000_0000)      (0000_0010_0000_1100)   
#define DBI_DQS_PHASE_11                           0x0000000C
#define DBI_DQS_PHASE_01                           0x00000000
#define WR_CENTER_SANITY_TEST_PATTERN		   0x0f0f0f0f

#define WL_PATTERN_12 				   0xFFFFFF69 
#define WL_PATTERN_8 			   	   0xFFFF69a5 
#define WL_PATTERN_4 				   0xFF69A55A 
#define WL_PATTERN_0 				   0x69A55A0F 
#define WL_PATTERN_M_4 				   0xA55A0F00 
#define WR_LATENCY_SANITY_TEST_PATTERN 		   0x429CE739

#define LP4_WL_PATTERN_12_0 			   0x8B1F4E69 
#define LP4_WL_PATTERN_12_1 			   0xFFFFFF73
#define LP4_WL_PATTERN_8_0 			   0x1F4E69A5 
#define LP4_WL_PATTERN_8_1 			   0xFFFF738B 
#define LP4_WL_PATTERN_4_0 			   0x4E69A55A
#define LP4_WL_PATTERN_4_1 			   0xFF738B1F 
#define LP4_WL_PATTERN_0_0 			   0x69A55A0F 
#define LP4_WL_PATTERN_0_1 			   0x738B1F4E 
#define LP4_WL_PATTERN_M_4_0 			   0xA55A0F00
#define LP4_WL_PATTERN_M_4_1 			   0x8B1F4E69 

#define LP4_WR_LATENCY_SANITY_TEST_PATTERN_0 	   0x429CE739
#define LP4_WR_LATENCY_SANITY_TEST_PATTERN_1 	   0x8DE40E1A

#define WL_TRAIN_ON			           0x1
#define WL_TRAIN_OFF			           0x0
#define WR_EXTEND_DATA           		   0x1

#define DB_F0BC1X_PACKAGE_RANK_TIMING_ALIGNMENT_ENABLE              0x80
#define DB_DQ0_STABLE_ONE  1
#define DB_DQ0_STABLE_ZERO 2
#define DB_DQ0_UNSTABLE    3
#define DB_STABLE_FILTER_WIDTH    8
#define DB_NOISE_EDGE_MAX  16
#define DB_STABLE_WINDOW_MIN    5
#define DB_STABLE_WINDOW_WARN   10

#define         DDR_DB_MREP_START              0
#define         DDR_DB_MREP_DONE               1
#define         DDR_DB_MRD_CYCLE_START         2
#define         DDR_DB_MRD_CYCLE_DONE          3
#define         DDR_DB_MRD_CENTER_START        4
#define         DDR_DB_MRD_CENTER_DONE         5
#define         DDR_DB_DWL_START               6
#define         DDR_DB_DWL_DONE                7
#define         DDR_DB_MWD_CYCLE_START         8
#define         DDR_DB_MWD_CYCLE_DONE          9
#define         DDR_DB_MWD_CENTER_START       10 
#define         DDR_DB_MWD_CENTER_DONE        11 

#define 	DB_MREP_LEFT		0
#define 	DB_MREP_RIGHT		1
#define 	DB_MREP_EDGE		2
#define 	DB_MRD_LATENCY		3
#define 	DB_MRD_LEFT		4
#define 	DB_MRD_RIGHT		5
#define 	DB_MRD_CENTER		6
#define 	DB_DWL_LEFT		7
#define 	DB_DWL_RIGHT		8
#define 	DB_DWL_EDGE		9
#define 	DB_MWD_LATENCY		10
#define 	DB_MWD_LEFT		11	
#define 	DB_MWD_RIGHT		12	
#define 	DB_MWD_CENTER		13

#define DDR_WARN_DB_RANK0_MREP_WIDER_NOISE_WINDOW             400
#define DDR_WARN_DB_RANK0_MRD_CENTER_NARROW_VALID_WINDOW      401
#define DDR_WARN_DB_RANK0_DWL_WIDER_NOISE_WINDOW              402
#define DDR_WARN_DB_RANK0_MWD_CENTER_NARROW_VALID_WINDOW      403
 
#define DDR_WARN_DB_RANK1_MREP_WIDER_NOISE_WINDOW             410
#define DDR_WARN_DB_RANK1_MRD_CENTER_NARROW_VALID_WINDOW      411
#define DDR_WARN_DB_RANK1_DWL_WIDER_NOISE_WINDOW              412
#define DDR_WARN_DB_RANK1_MWD_CENTER_NARROW_VALID_WINDOW      413
 
#define DDR_WARN_DB_RANK2_MREP_WIDER_NOISE_WINDOW             420
#define DDR_WARN_DB_RANK2_MRD_CENTER_NARROW_VALID_WINDOW      421
#define DDR_WARN_DB_RANK2_DWL_WIDER_NOISE_WINDOW              422
#define DDR_WARN_DB_RANK2_MWD_CENTER_NARROW_VALID_WINDOW      423
 
#define DDR_WARN_DB_RANK3_MREP_WIDER_NOISE_WINDOW             430
#define DDR_WARN_DB_RANK3_MRD_CENTER_NARROW_VALID_WINDOW      431
#define DDR_WARN_DB_RANK3_DWL_WIDER_NOISE_WINDOW              432
#define DDR_WARN_DB_RANK3_MWD_CENTER_NARROW_VALID_WINDOW      433
 
//------------- Microblaze Address Map -------------------------//
#define AXI_DP_INCL_PCSR 	 0x00000000 //– 0x0000_7FFF	32kB	               AXI DP	        MicroBlaze, rest of system
#define EXCHANGE_RAM 	         0x00008000 //– 0x0000_FFFF	32kB (8K x 9 used)     EXCHANGE RAM     MicroBlaze, NPI
#define MDM_DEBUG 	         0x00010000 //– 0x0001_7FFF	32kB	               MDM NPI	        NPI
#define SPARE	                 0x00018000 //– 0x0001_8FFF	4kB	               AXI DP	        MicrBlaze, rest of system
#define RAM_INSTR_ECC_STAT_CNTL  0x00019000 //– 0x0001_9FFF	4kB	       	       LMB	        MicroBlaze
#define RAM_DATA_ECC_STAT_CNTL   0x0001A000 //– 0x0001_AFFF	4kB	               LMB	        MicroBlaze
#define IO_MODULE                0x0001B000 //– 0x0001_BFFF	4kB	               LMB	        MicroBlaze
#define RAM_DATA	         0x0001C000 //– 0x0001_FFFF	16kB	               LMB RAM NPI	MicroBlaze, NPI
#define RAM_INSTR	         0x00020000 //– 0x0003_FFFF	128kB	               LMB RAM NPI	MicroBlaze, NPI
#define DDRMC	                 0x00040000 //– 0x0007_FFFF	256kB	               AXI DP	        MicroBlaze, rest of system
#define X_PHY_RIU	         0x00080000 //– 0x000B_FFFF	256kB	               AXI DP	        MicroBlaze, rest of system
#define FABRIC	                 0x000C0000 //– 0x000F_FFFF	256kB	               AXI DP	        MicroBlaze, rest of system

#define RAM_DATA_CAL_OFFSET	 0x00003000 //– Actual address 0x0001_F000 - 4KB

// IO Module register address map
#define IO_UART_RX     0x1B000
#define IO_UART_TX     0x1B004
#define IO_UART_STATUS 0x1B008
#define IO_IRQ_MODE    0x1B00C
#define IO_GPO1        0x1B010
#define IO_GPO2        0x1B014
#define IO_GPO3        0x1B018
#define IO_GPO4        0x1B01C
#define IO_GPI1        0x1B020
#define IO_GPI2        0x1B024
#define IO_GPI3        0x1B028
#define IO_GPI4        0x1B02C
#define IO_IRQ_STATUS  0x1B030
#define IO_IRQ_PENDING 0x1B034
#define IO_IRQ_ENABLE  0x1B038
#define IO_IRQ_ACK     0x1B03C
#define IO_PIT1_PRELOAD 0x1B040
#define IO_PIT1_COUNTER 0x1B044
#define IO_PIT1_CONTROL 0x1B048

#ifdef FIX_EDT_999807
// Self refresh entry & exit interrupts from DMC are invalid
   #define IRQ_EN 0x7FC30000       // Enabling required interrupts
#else   
   #define IRQ_EN 0x7FCF0000       // Enabling required interrupts
#endif   
#define IRQ_EN_ALERT 0x03000000 // [25:24] - Alert interrupts
#define IRQ_EN_ALERT_CH0 0x01000000 // [24] - Alert interrupts
#define IRQ_EN_ALERT_CH1 0x02000000 // [25] - Alert interrupts
#define IRQ_EN_DQS_OSC 0x00C00000 // [23:22] - Alert interrupts

// GPO3
// 0 - CALDONE
// 1 - RESTORE_DONE
// 2 - CAL_BUSY, CAL in progress
// 3 - CAL_ERROR
// 4 - HEARTBEAT
// [10:5] - CAL_CODE, Calibration stage code
// [13:11] - CAL_STATUS, Passed, Failed, Skipped
// [14] - Pre_cal status - Microblaze woke up
// [15] - Pre_cal status - XPLL is locked
#define GPO3_HEARTBEAT_POS  4
#define GPO3_CAL_STATUS_POS 5
#define GPO3_UB_AWAKE_POS  14
#define GPO3_XPLL_LOCK     15
#define GPO3_POST_CAL_TRACKING_POS 16
#define GPO3_POST_CAL_SELF_REF_POS 24

#define GPO3_CAL_DONE      0x1
#define GPO3_RESTORE_DONE  0x2
#define GPO3_CAL_BUSY      0x4
#define GPO3_CAL_ERROR     0x8
#define GPO3_POST_CAL_ERROR GPO3_CAL_DONE | GPO3_CAL_ERROR

// CAL_STATUS - [13:5], [3:0]
#define GPO3_CAL_STATUS_CLR 0xFFFFC010

#define IRQ_OFFSET            16

#define CH0_BS_RST_REQ         0
#define CH1_BS_RST_REQ         1
#define SELF_REF_ENTRY_REQ     2
#define SELF_REF_EXIT_REQ      3
#define CH0_GT_STAT_VAL_RDY    4
#define CH1_GT_STAT_VAL_RDY    5
#define CH0_OSC_VAL_RDY        6
#define CH1_OSC_VAL_RDY        7
#define CH0_ALERT_PAR_ERR      8
#define CH1_ALERT_PAR_ERR      9
#define PMC2UB_SWITCH_FREQ    10
#define PMC2UB_SR_EXIT        11
#define PMC2UB_SPARE_0        12
#define PMC2UB_SPARE_1        13
#define PMC2UB_SPARE_2        14

// POST_CAL_STATUS_TRACKING
#define POST_CAL_STATUS_DQS_GATE_TRACK_RUNNING          0
#define POST_CAL_STATUS_DQS_GATE_TRACK_UNDERFLOW        1
#define POST_CAL_STATUS_DQS_GATE_TRACK_OVERFLOW         2
#define POST_CAL_STATUS_LP4_OSC_TRACK_RUNNING_CH0       4
#define POST_CAL_STATUS_LP4_OSC_TRACK_RUNNING_CH1       5
#define POST_CAL_STATUS_LP4_OSC_TRACK_ERROR_CH0         6
#define POST_CAL_STATUS_LP4_OSC_TRACK_ERROR_CH1         7

// POST_CAL_STATUS_SELF_REF
#define POST_CAL_STATUS_SELF_REF_ENTRY_ERROR            0
#define POST_CAL_STATUS_SELF_REF_EXIT_ERROR             1
#define POST_CAL_STATUS_FREQ_SWITCH_RESTORE_ERROR       2
#define POST_CAL_STATUS_POWER_DOWN_RESTORE_ERROR        3
#define POST_CAL_STATUS_ALERT_PARITY_ERROR_CH0          4
#define POST_CAL_STATUS_ALERT_PARITY_ERROR_CH1          5

//GPO4
#define CH0_BS_RST_ACK          0
#define CH1_BS_RST_ACK          1
#define SELF_REF_ENTRY_ACK      2
#define SELF_REF_EXIT_ACK       3
#define FREQ_SWITCH_ACK         4
#define UB2PMC_SR_EXIT_ACK      5
#define UB2PMC_SPARE_0_ACK      6
#define UB2PMC_SPARE_1_ACK      7
#define UB2PMC_SPARE_2_ACK      8

#define CH0_BS_RST_DONE         16
#define CH1_BS_RST_DONE         17
#define SELF_REF_ENTRY_DONE     18
#define SELF_REF_EXIT_DONE      19
#define FREQ_SWITCH_DONE        20
#define UB2PMC_SR_EXIT_DONE     21
#define UB2PMC_SPARE_0_DONE     22
#define UB2PMC_SPARE_1_DONE     23
#define UB2PMC_SPARE_2_DONE     24

#define UB2PMC_VT_TRACK_ERR     31

//////////// LPDDR4 timing patameters ////////////////////////
#define T_DQSCKE         120 // 250 ns  In the CA training mode after stable dqs 0 to cke 1->0  minimum delay
#define T_CKELCK         120 // 250 ns  CKE 1->0 to clock frequency change minimumdelay
#define T_CKPRECS        120 // 250 ns  Valid clock start to CS assertion minimum delay
#define T_CKPSTCS        120 // 250 ns  CS assertion to Valid clock change minimum delay
#define T_CAENT          40  // CKE->0 to first dqs rise edge to updated the vref minimum delay
#define T_VREF_CA_LONG   500 // 250 ns  after updating the vref to cs assertion minimum delay
#define T_VREF_CA_SHORT  40  // 80 ns
#define T_ADR            62  // CS assertion to ca pattern feedback response maximum delay
#define T_CACD           40  // tADR/tCK = 20ns/tCK CS assertion to CS assertion minimum delay 
#define T_CKEHDQS        120 // 250 ns  In the CA training mode after cke 0->1 to stable dqs 0 release minimum delay

#define VREF_CRSE_JMP  4
#define VREF_UPPER_LIMIT  0x30
#define VREF_LOWER_LIMIT  0x2
#define VREF_PERC_LIMIT 70

#define NOC_CLK_PERIOD 1000
// #define UB_CLK_MIN 2500
// #define UB_CLK_MAX 1666
// #define PIT1_PRELOAD_CNT 0x0FFFFFFF
// #define T_REFI_1X_CNT (T_REFI_1X / UB_CLK_MIN)
// #define T_REFI_1X_CNT (T_REFI_1X / (TCK * 2))

#ifdef LPDDR4
  #define T_REFI 3900000
#else
  #define T_REFI 7800000
#endif

#define DDRMC_CLK_CNT_LOAD 0x00FFFFFF


//============ PINOUT MAP related defines ==============
#ifdef LPDDR4

#ifndef CS_RIU_MAP
   #define CS_RIU_MAP       LP4_CS_RIU_MAP
#endif

#ifndef CA_RIU_MAP
   #define CA_RIU_MAP       LP4_CA_RIU_MAP
#endif

#ifndef CS_BITS
   #define CS_BITS          LP4_CS_BITS
#endif

#ifndef CA_BITS
   #define CA_BITS          LP4_CA_BITS
#endif

#define LP4_CA_BITS         (LP4_CS_BITS * 6)

// PO23 - LP4 2x32 PE Pinout
#if PINOUT_SELECT == 23
   // Per rank CS bits
   #define LP4_MAX_RANKS 2
   #define LP4_MAX_CS_BITS  2
   #define LP4_CS_BITS      ((DQS_BITS / 2) / 2)

   #define LP4_CS0_A_0      {2, 1}
   #define LP4_CS1_A_0      {2, 1}
   #define LP4_CA_A_0       {0, 1}, {8, 4}, {8, 3}, {5, 1}, {6, 1}, {8, 2} 

   #define LP4_CS0_A_1      {16, 1}
   #define LP4_CS1_A_1      {16, 1}
   #define LP4_CA_A_1       {17, 5}, {12, 1}, {9, 1}, {17, 3}, {13, 1}, {17, 2} 

   #define LP4_CS_RIU_MAP   { LP4_CS0_A_0, LP4_CS0_A_1, LP4_CS1_A_0, LP4_CS1_A_1 }

   #define LP4_CA_RIU_MAP   { LP4_CA_A_0, LP4_CA_A_1 }

#else // PO24, PO25, PO26

   #define LP4_CS0_A_0      {7, 4}
   #define LP4_CS1_A_0      {7, 1}
   #define LP4_CA_A_0       {7, 3}, {7, 2}, {7, 0}, {7, 5}, {6, 2}, {6, 3} 

   #define LP4_CS0_B_0      {0, 1}
   #define LP4_CS1_B_0      {3, 1}
   #define LP4_CA_B_0       {5, 2}, {4, 5}, {5, 5}, {5, 4}, {4, 3}, {4, 2} 

   #define LP4_CS0_A_1      {19, 0}
   #define LP4_CS1_A_1      {18, 5}
   #define LP4_CA_A_1       {19, 3}, {19, 2}, {19, 5}, {19, 4}, {18, 2}, {18, 3}

   #define LP4_CS0_B_1      {20, 1}
   #define LP4_CS1_B_1      {25, 1}
   #define LP4_CA_B_1       {22, 4}, {22, 5}, {23, 5}, {22, 3}, {22, 2}, {23, 4} 

// PO24 - LP4 2x16 Pinout
#if PINOUT_SELECT == 24
   // Per rank CS bits
   #define LP4_MAX_RANKS 2
   #define LP4_MAX_CS_BITS  2
   #define LP4_CS_BITS      (DQS_BITS / 2)

   // B_0 is mapped as B_1 in this configuration, to seperate our as per controller channel mapping
   #define LP4_CS_RIU_MAP   { LP4_CS0_A_0, LP4_CS0_B_0, LP4_CS1_A_0, LP4_CS1_B_0 }

   #define LP4_CA_RIU_MAP   { LP4_CA_A_0, LP4_CA_B_0 }

// PO25 - LP4 1x48 Pinout
#elif PINOUT_SELECT == 25
   // Per rank CS bits
   #define LP4_MAX_RANKS 2
   #define LP4_MAX_CS_BITS  3
   #define LP4_CS_BITS      (DQS_BITS / 2)

   #define LP4_CS_RIU_MAP   { LP4_CS0_A_0, LP4_CS0_B_0, LP4_CS0_A_1, LP4_CS1_A_0, LP4_CS1_B_0, LP4_CS1_A_1 }

   #define LP4_CA_RIU_MAP   { LP4_CA_A_0, LP4_CA_B_0, LP4_CA_A_1 }

// PO26 - LP4 2x32 Pinout
// #elif PINOUT_SELECT == 26
#else
   // Per rank CS bits
   #define LP4_MAX_RANKS 2
   #define LP4_MAX_CS_BITS  4
   #define LP4_CS_BITS      (DQS_BITS / 2)

   #define LP4_CS_RIU_MAP   { LP4_CS0_A_0, LP4_CS0_B_0, LP4_CS0_A_1, LP4_CS0_B_1, LP4_CS1_A_0, LP4_CS1_B_0, LP4_CS1_A_1, LP4_CS1_B_1 }

   #define LP4_CA_RIU_MAP   { LP4_CA_A_0, LP4_CA_B_0, LP4_CA_A_1, LP4_CA_B_1 }

#endif // PO24, PO25, PO26
#endif // PO23

#endif // LPDDR4

#define TCK_TH_DQS_GATE   1250
#define TCK_TH_WR_LVL     1250
#define TCK_TH_RD_CAL     1250
#define TCK_TH_WR_CAL     1250
#define TCK_TH_RD_CMPLX    938
#define TCK_TH_WR_CMPLX    938
#define TCK_TH_RD_PRBS    1250
#define TCK_TH_WR_PRBS    1250
#define TCK_TH_RD_VREF     938
#define TCK_TH_WR_VREF     938

#define TCK_TH_REF_SRE    1876

// Microblaze BFM does quicker IO transactions, hence need more bs-resets as compared to RTL
#ifdef ENABLE_MICROBLAZE_BFM
  #define BS_RESET_EXTEND   800
#else
  #define BS_RESET_EXTEND   2100
#endif
