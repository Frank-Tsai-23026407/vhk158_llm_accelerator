`ifndef __HBM_RESPONDER_DEFINES_SVH__
`define __HBM_RESPONDER_DEFINES_SVH__


//////////////////////////////////////////////////////////////////////
// File: hbm_responder_defines.svh 
//
// Descrtiption: 
// This file has all the defines/enums declrations
//////////////////////////////////////////////////////////////////////

`define hbm_warning(TAG, MSG) \
if(!($test$plusargs("IGNORE_WARNING"))) begin \
  $warning("[%s] (%m) %0t : WARNING :: %s", TAG, $time, MSG); \
  end

`define hbm_info(TAG, MSG, MSG_LEVEL) \
  if($test$plusargs("NOC_HBM_RESPONDER_VERBOSITY_NONE")   && MSG_LEVEL <= 0       ||    \
     $test$plusargs("NOC_HBM_RESPONDER_VERBOSITY_LOW")    && MSG_LEVEL <= 1       ||    \
     $test$plusargs("NOC_HBM_RESPONDER_VERBOSITY_MEDIUM") && MSG_LEVEL <= 2       ||    \
     $test$plusargs("NOC_HBM_RESPONDER_VERBOSITY_HIGH")   && MSG_LEVEL <= 3       ||    \
     $test$plusargs("NOC_HBM_RESPONDER_VERBOSITY_FULL")   && MSG_LEVEL <= 4       ||    \
     $test$plusargs("NOC_HBM_RESPONDER_VERBOSITY_DEBUG")  && MSG_LEVEL <= 5 ) begin     \
     $display("INFO: [%s] (%m) %0t : %s", TAG, $time, MSG); \
  end

`define hbm_error(TAG, MSG) \
  if($test$plusargs("VERBOSITY_ERR_TO_WARN")) begin \
    `hbm_warning(TAG, MSG) \
  end \
  else begin \
  $error("[%s] (%m) %0t : ERROR :: %s", TAG, $time, MSG); \
  end

`define hbm_fatal(TAG, MSG) \
  if($test$plusargs("VERBOSITY_FATAL_TO_WARN")) begin \
    `hbm_warning(TAG, MSG) \
  end \
  else if($test$plusargs("VERBOSITY_FATAL_TO_ERR")) begin \
    `hbm_error(TAG, MSG) \
  end \
  else begin \
  $fatal(1,"[%s] (%m) %0t : FATAL_ERROR :: %s", TAG, $time, MSG); \
  end


typedef enum  bit[8:0]  {HBM_NONE=0, HBM_LOW=1, HBM_MEDIUM=2, HBM_HIGH=3, HBM_FULL=4, HBM_DEBUG=5}      hbm_verbosity_t;
typedef enum  bit[4:0]  {RNOP, ACT, PRE, PREA, REFSB, REF, PDE, SRE, PDX, SRX, CNOP, RD, RDA, WR, WRA, MRS}       hbm_command_t;
typedef enum  bit[4:0]  {START, CNOP_F1, RNOP_F1, ACT_F1, ACT_R2, ACT_F2, PRE_F1, REF_F1, PDE_F1, SRE_F1, PDX_F1, SRX_F1, WR_F1, RD_F1, WRA_F1, RDA_F1, MRS_F1}   hbm_command_state_t;
typedef enum  bit[3:0]  {RESET, IDLE, CONFIGURE_DEVICE, SELF_REFRESH, PRECHARGE_POWER_DOWN, ACTIVATING, ACTIVE, WRITING, READING, PRECHARGING, ACTIVE_POWER_DOWN, REFRESHING}  hbm_bank_state_t;


`define GET_DEFAULT_ADDRESS_MAP(addr_width) \
 addr_width == 22+1 ? "RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BA2,NC,NA,NA,NA,NA" : \
 addr_width == 23+1 ? "RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BA1,BA0,BA3,CA5,CA4,CA3,CA2,CA1,BA2,NC,NA,NA,NA,NA" : \
 addr_width == 24+1 ? "RA14,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BA1,BA0,BA3,CA5,CA4,CA3,CA2,CA1,BA2,NC,NA,NA,NA,NA" : \
 addr_width == 25+1 ? "RA14,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,SID,BA1,BA0,BA3,CA5,CA4,CA3,CA2,CA1,BA2,NC,NA,NA,NA,NA" : \
 addr_width == 26+1 ? "RA14,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,SID1,SID0,BA1,BA0,BA3,CA5,CA4,CA3,CA2,CA1,BA2,NC,NA,NA,NA,NA" : \
                    "RA14,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,SID,BA1,BA0,BA3,CA5,CA4,CA3,CA2,CA1,BA2,NC,NA,NA,NA,NA"


`endif
