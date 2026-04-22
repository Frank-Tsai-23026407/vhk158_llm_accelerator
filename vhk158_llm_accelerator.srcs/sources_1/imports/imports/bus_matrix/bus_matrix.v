//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2001-2013-2026 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : $Date: 2012-10-15 18:01:36 +0100 (Mon, 15 Oct 2012) $
//
//      Revision            : $Revision: 225465 $
//
//      Release Information : Cortex-M System Design Kit-r1p0-01rel0
//
//-----------------------------------------------------------------------------
//
//------------------------------------------------------------------------------
//  Abstract            : BusMatrix is the top-level which connects together
//                        the required Input Stages, MatrixDecodes, Output
//                        Stages and Output Arbitration blocks.
//
//                        Supports the following configured options:
//
//                         - Architecture type 'ahb2',
//                         - 1 slave ports (connecting to masters),
//                         - 4 master ports (connecting to slaves),
//                         - Routing address width of 32 bits,
//                         - Routing data width of 32 bits,
//                         - xUSER signal width of 32 bits,
//                         - Arbiter type 'round',
//                         - Connectivity mapping:
//                             S<0..0> -> M<0..3>,
//                         - Connectivity type 'full'.
//
//------------------------------------------------------------------------------

`timescale 1ns/1ps

module bus_matrix (

    // Common AHB signals
    HCLK,
    HRESETn,

    // System address remapping control
    REMAP,

    // Input port SI0 (inputs from master 0)
    HSEL_CPUS,
    HADDR_CPUS,
    HTRANS_CPUS,
    HWRITE_CPUS,
    HSIZE_CPUS,
    HBURST_CPUS,
    HPROT_CPUS,
    HMASTER_CPUS,
    HWDATA_CPUS,
    HMASTLOCK_CPUS,
    HREADY_CPUS,
    HAUSER_CPUS,
    HWUSER_CPUS,

    // Output port MI0 (inputs from slave 0)
    HRDATA_RAM,
    HREADYOUT_RAM,
    HRESP_RAM,
    HRUSER_RAM,

    // Output port MI1 (inputs from slave 1)
    HRDATA_MPUS,
    HREADYOUT_MPUS,
    HRESP_MPUS,
    HRUSER_MPUS,

    // Output port MI2 (inputs from slave 2)
    HRDATA_VPUS,
    HREADYOUT_VPUS,
    HRESP_VPUS,
    HRUSER_VPUS,

    // Output port MI3 (inputs from slave 3)
    HRDATA_DMAS,
    HREADYOUT_DMAS,
    HRESP_DMAS,
    HRUSER_DMAS,

    // Scan test dummy signals; not connected until scan insertion
    SCANENABLE,   // Scan Test Mode Enable
    SCANINHCLK,   // Scan Chain Input


    // Output port MI0 (outputs to slave 0)
    HSEL_RAM,
    HADDR_RAM,
    HTRANS_RAM,
    HWRITE_RAM,
    HSIZE_RAM,
    HBURST_RAM,
    HPROT_RAM,
    HMASTER_RAM,
    HWDATA_RAM,
    HMASTLOCK_RAM,
    HREADYMUX_RAM,
    HAUSER_RAM,
    HWUSER_RAM,

    // Output port MI1 (outputs to slave 1)
    HSEL_MPUS,
    HADDR_MPUS,
    HTRANS_MPUS,
    HWRITE_MPUS,
    HSIZE_MPUS,
    HBURST_MPUS,
    HPROT_MPUS,
    HMASTER_MPUS,
    HWDATA_MPUS,
    HMASTLOCK_MPUS,
    HREADYMUX_MPUS,
    HAUSER_MPUS,
    HWUSER_MPUS,

    // Output port MI2 (outputs to slave 2)
    HSEL_VPUS,
    HADDR_VPUS,
    HTRANS_VPUS,
    HWRITE_VPUS,
    HSIZE_VPUS,
    HBURST_VPUS,
    HPROT_VPUS,
    HMASTER_VPUS,
    HWDATA_VPUS,
    HMASTLOCK_VPUS,
    HREADYMUX_VPUS,
    HAUSER_VPUS,
    HWUSER_VPUS,

    // Output port MI3 (outputs to slave 3)
    HSEL_DMAS,
    HADDR_DMAS,
    HTRANS_DMAS,
    HWRITE_DMAS,
    HSIZE_DMAS,
    HBURST_DMAS,
    HPROT_DMAS,
    HMASTER_DMAS,
    HWDATA_DMAS,
    HMASTLOCK_DMAS,
    HREADYMUX_DMAS,
    HAUSER_DMAS,
    HWUSER_DMAS,

    // Input port SI0 (outputs to master 0)
    HRDATA_CPUS,
    HREADYOUT_CPUS,
    HRESP_CPUS,
    HRUSER_CPUS,

    // Scan test dummy signals; not connected until scan insertion
    SCANOUTHCLK   // Scan Chain Output

    );


// -----------------------------------------------------------------------------
// Input and Output declarations
// -----------------------------------------------------------------------------

    // Common AHB signals
    input         HCLK;            // AHB System Clock
    input         HRESETn;         // AHB System Reset

    // System address remapping control
    input   [3:0] REMAP;           // REMAP input

    // Input port SI0 (inputs from master 0)
    input         HSEL_CPUS;          // Slave Select
    input  [31:0] HADDR_CPUS;         // Address bus
    input   [1:0] HTRANS_CPUS;        // Transfer type
    input         HWRITE_CPUS;        // Transfer direction
    input   [2:0] HSIZE_CPUS;         // Transfer size
    input   [2:0] HBURST_CPUS;        // Burst type
    input   [3:0] HPROT_CPUS;         // Protection control
    input   [3:0] HMASTER_CPUS;       // Master select
    input  [31:0] HWDATA_CPUS;        // Write data
    input         HMASTLOCK_CPUS;     // Locked Sequence
    input         HREADY_CPUS;        // Transfer done
    input  [31:0] HAUSER_CPUS;        // Address USER signals
    input  [31:0] HWUSER_CPUS;        // Write-data USER signals

    // Output port MI0 (inputs from slave 0)
    input  [31:0] HRDATA_RAM;        // Read data bus
    input         HREADYOUT_RAM;     // HREADY feedback
    input   [1:0] HRESP_RAM;         // Transfer response
    input  [31:0] HRUSER_RAM;        // Read-data USER signals

    // Output port MI1 (inputs from slave 1)
    input  [31:0] HRDATA_MPUS;        // Read data bus
    input         HREADYOUT_MPUS;     // HREADY feedback
    input   [1:0] HRESP_MPUS;         // Transfer response
    input  [31:0] HRUSER_MPUS;        // Read-data USER signals

    // Output port MI2 (inputs from slave 2)
    input  [31:0] HRDATA_VPUS;        // Read data bus
    input         HREADYOUT_VPUS;     // HREADY feedback
    input   [1:0] HRESP_VPUS;         // Transfer response
    input  [31:0] HRUSER_VPUS;        // Read-data USER signals

    // Output port MI3 (inputs from slave 3)
    input  [31:0] HRDATA_DMAS;        // Read data bus
    input         HREADYOUT_DMAS;     // HREADY feedback
    input   [1:0] HRESP_DMAS;         // Transfer response
    input  [31:0] HRUSER_DMAS;        // Read-data USER signals

    // Scan test dummy signals; not connected until scan insertion
    input         SCANENABLE;      // Scan enable signal
    input         SCANINHCLK;      // HCLK scan input


    // Output port MI0 (outputs to slave 0)
    output        HSEL_RAM;          // Slave Select
    output [31:0] HADDR_RAM;         // Address bus
    output  [1:0] HTRANS_RAM;        // Transfer type
    output        HWRITE_RAM;        // Transfer direction
    output  [2:0] HSIZE_RAM;         // Transfer size
    output  [2:0] HBURST_RAM;        // Burst type
    output  [3:0] HPROT_RAM;         // Protection control
    output  [3:0] HMASTER_RAM;       // Master select
    output [31:0] HWDATA_RAM;        // Write data
    output        HMASTLOCK_RAM;     // Locked Sequence
    output        HREADYMUX_RAM;     // Transfer done
    output [31:0] HAUSER_RAM;        // Address USER signals
    output [31:0] HWUSER_RAM;        // Write-data USER signals

    // Output port MI1 (outputs to slave 1)
    output        HSEL_MPUS;          // Slave Select
    output [31:0] HADDR_MPUS;         // Address bus
    output  [1:0] HTRANS_MPUS;        // Transfer type
    output        HWRITE_MPUS;        // Transfer direction
    output  [2:0] HSIZE_MPUS;         // Transfer size
    output  [2:0] HBURST_MPUS;        // Burst type
    output  [3:0] HPROT_MPUS;         // Protection control
    output  [3:0] HMASTER_MPUS;       // Master select
    output [31:0] HWDATA_MPUS;        // Write data
    output        HMASTLOCK_MPUS;     // Locked Sequence
    output        HREADYMUX_MPUS;     // Transfer done
    output [31:0] HAUSER_MPUS;        // Address USER signals
    output [31:0] HWUSER_MPUS;        // Write-data USER signals

    // Output port MI2 (outputs to slave 2)
    output        HSEL_VPUS;          // Slave Select
    output [31:0] HADDR_VPUS;         // Address bus
    output  [1:0] HTRANS_VPUS;        // Transfer type
    output        HWRITE_VPUS;        // Transfer direction
    output  [2:0] HSIZE_VPUS;         // Transfer size
    output  [2:0] HBURST_VPUS;        // Burst type
    output  [3:0] HPROT_VPUS;         // Protection control
    output  [3:0] HMASTER_VPUS;       // Master select
    output [31:0] HWDATA_VPUS;        // Write data
    output        HMASTLOCK_VPUS;     // Locked Sequence
    output        HREADYMUX_VPUS;     // Transfer done
    output [31:0] HAUSER_VPUS;        // Address USER signals
    output [31:0] HWUSER_VPUS;        // Write-data USER signals

    // Output port MI3 (outputs to slave 3)
    output        HSEL_DMAS;          // Slave Select
    output [31:0] HADDR_DMAS;         // Address bus
    output  [1:0] HTRANS_DMAS;        // Transfer type
    output        HWRITE_DMAS;        // Transfer direction
    output  [2:0] HSIZE_DMAS;         // Transfer size
    output  [2:0] HBURST_DMAS;        // Burst type
    output  [3:0] HPROT_DMAS;         // Protection control
    output  [3:0] HMASTER_DMAS;       // Master select
    output [31:0] HWDATA_DMAS;        // Write data
    output        HMASTLOCK_DMAS;     // Locked Sequence
    output        HREADYMUX_DMAS;     // Transfer done
    output [31:0] HAUSER_DMAS;        // Address USER signals
    output [31:0] HWUSER_DMAS;        // Write-data USER signals

    // Input port SI0 (outputs to master 0)
    output [31:0] HRDATA_CPUS;        // Read data bus
    output        HREADYOUT_CPUS;     // HREADY feedback
    output  [1:0] HRESP_CPUS;         // Transfer response
    output [31:0] HRUSER_CPUS;        // Read-data USER signals

    // Scan test dummy signals; not connected until scan insertion
    output        SCANOUTHCLK;     // Scan Chain Output


// -----------------------------------------------------------------------------
// Wire declarations
// -----------------------------------------------------------------------------

    // Common AHB signals
    wire         HCLK;            // AHB System Clock
    wire         HRESETn;         // AHB System Reset

    // System address remapping control
    wire   [3:0] REMAP;           // REMAP signal

    // Input Port SI0
    wire         HSEL_CPUS;          // Slave Select
    wire  [31:0] HADDR_CPUS;         // Address bus
    wire   [1:0] HTRANS_CPUS;        // Transfer type
    wire         HWRITE_CPUS;        // Transfer direction
    wire   [2:0] HSIZE_CPUS;         // Transfer size
    wire   [2:0] HBURST_CPUS;        // Burst type
    wire   [3:0] HPROT_CPUS;         // Protection control
    wire   [3:0] HMASTER_CPUS;       // Master select
    wire  [31:0] HWDATA_CPUS;        // Write data
    wire         HMASTLOCK_CPUS;     // Locked Sequence
    wire         HREADY_CPUS;        // Transfer done

    wire  [31:0] HRDATA_CPUS;        // Read data bus
    wire         HREADYOUT_CPUS;     // HREADY feedback
    wire   [1:0] HRESP_CPUS;         // Transfer response
    wire  [31:0] HAUSER_CPUS;        // Address USER signals
    wire  [31:0] HWUSER_CPUS;        // Write-data USER signals
    wire  [31:0] HRUSER_CPUS;        // Read-data USER signals

    // Output Port MI0
    wire         HSEL_RAM;          // Slave Select
    wire  [31:0] HADDR_RAM;         // Address bus
    wire   [1:0] HTRANS_RAM;        // Transfer type
    wire         HWRITE_RAM;        // Transfer direction
    wire   [2:0] HSIZE_RAM;         // Transfer size
    wire   [2:0] HBURST_RAM;        // Burst type
    wire   [3:0] HPROT_RAM;         // Protection control
    wire   [3:0] HMASTER_RAM;       // Master select
    wire  [31:0] HWDATA_RAM;        // Write data
    wire         HMASTLOCK_RAM;     // Locked Sequence
    wire         HREADYMUX_RAM;     // Transfer done

    wire  [31:0] HRDATA_RAM;        // Read data bus
    wire         HREADYOUT_RAM;     // HREADY feedback
    wire   [1:0] HRESP_RAM;         // Transfer response
    wire  [31:0] HAUSER_RAM;        // Address USER signals
    wire  [31:0] HWUSER_RAM;        // Write-data USER signals
    wire  [31:0] HRUSER_RAM;        // Read-data USER signals

    // Output Port MI1
    wire         HSEL_MPUS;          // Slave Select
    wire  [31:0] HADDR_MPUS;         // Address bus
    wire   [1:0] HTRANS_MPUS;        // Transfer type
    wire         HWRITE_MPUS;        // Transfer direction
    wire   [2:0] HSIZE_MPUS;         // Transfer size
    wire   [2:0] HBURST_MPUS;        // Burst type
    wire   [3:0] HPROT_MPUS;         // Protection control
    wire   [3:0] HMASTER_MPUS;       // Master select
    wire  [31:0] HWDATA_MPUS;        // Write data
    wire         HMASTLOCK_MPUS;     // Locked Sequence
    wire         HREADYMUX_MPUS;     // Transfer done

    wire  [31:0] HRDATA_MPUS;        // Read data bus
    wire         HREADYOUT_MPUS;     // HREADY feedback
    wire   [1:0] HRESP_MPUS;         // Transfer response
    wire  [31:0] HAUSER_MPUS;        // Address USER signals
    wire  [31:0] HWUSER_MPUS;        // Write-data USER signals
    wire  [31:0] HRUSER_MPUS;        // Read-data USER signals

    // Output Port MI2
    wire         HSEL_VPUS;          // Slave Select
    wire  [31:0] HADDR_VPUS;         // Address bus
    wire   [1:0] HTRANS_VPUS;        // Transfer type
    wire         HWRITE_VPUS;        // Transfer direction
    wire   [2:0] HSIZE_VPUS;         // Transfer size
    wire   [2:0] HBURST_VPUS;        // Burst type
    wire   [3:0] HPROT_VPUS;         // Protection control
    wire   [3:0] HMASTER_VPUS;       // Master select
    wire  [31:0] HWDATA_VPUS;        // Write data
    wire         HMASTLOCK_VPUS;     // Locked Sequence
    wire         HREADYMUX_VPUS;     // Transfer done

    wire  [31:0] HRDATA_VPUS;        // Read data bus
    wire         HREADYOUT_VPUS;     // HREADY feedback
    wire   [1:0] HRESP_VPUS;         // Transfer response
    wire  [31:0] HAUSER_VPUS;        // Address USER signals
    wire  [31:0] HWUSER_VPUS;        // Write-data USER signals
    wire  [31:0] HRUSER_VPUS;        // Read-data USER signals

    // Output Port MI3
    wire         HSEL_DMAS;          // Slave Select
    wire  [31:0] HADDR_DMAS;         // Address bus
    wire   [1:0] HTRANS_DMAS;        // Transfer type
    wire         HWRITE_DMAS;        // Transfer direction
    wire   [2:0] HSIZE_DMAS;         // Transfer size
    wire   [2:0] HBURST_DMAS;        // Burst type
    wire   [3:0] HPROT_DMAS;         // Protection control
    wire   [3:0] HMASTER_DMAS;       // Master select
    wire  [31:0] HWDATA_DMAS;        // Write data
    wire         HMASTLOCK_DMAS;     // Locked Sequence
    wire         HREADYMUX_DMAS;     // Transfer done

    wire  [31:0] HRDATA_DMAS;        // Read data bus
    wire         HREADYOUT_DMAS;     // HREADY feedback
    wire   [1:0] HRESP_DMAS;         // Transfer response
    wire  [31:0] HAUSER_DMAS;        // Address USER signals
    wire  [31:0] HWUSER_DMAS;        // Write-data USER signals
    wire  [31:0] HRUSER_DMAS;        // Read-data USER signals


// -----------------------------------------------------------------------------
// Signal declarations
// -----------------------------------------------------------------------------

    // Bus-switch input SI0
    wire         i_sel0;            // HSEL signal
    wire  [31:0] i_addr0;           // HADDR signal
    wire   [1:0] i_trans0;          // HTRANS signal
    wire         i_write0;          // HWRITE signal
    wire   [2:0] i_size0;           // HSIZE signal
    wire   [2:0] i_burst0;          // HBURST signal
    wire   [3:0] i_prot0;           // HPROTS signal
    wire   [3:0] i_master0;         // HMASTER signal
    wire         i_mastlock0;       // HMASTLOCK signal
    wire         i_active0;         // Active signal
    wire         i_held_tran0;       // HeldTran signal
    wire         i_readyout0;       // Readyout signal
    wire   [1:0] i_resp0;           // Response signal
    wire  [31:0] i_auser0;          // HAUSER signal

    // Bus-switch SI0 to MI0 signals
    wire         i_sel0to0;         // Routing selection signal
    wire         i_active0to0;      // Active signal

    // Bus-switch SI0 to MI1 signals
    wire         i_sel0to1;         // Routing selection signal
    wire         i_active0to1;      // Active signal

    // Bus-switch SI0 to MI2 signals
    wire         i_sel0to2;         // Routing selection signal
    wire         i_active0to2;      // Active signal

    // Bus-switch SI0 to MI3 signals
    wire         i_sel0to3;         // Routing selection signal
    wire         i_active0to3;      // Active signal

    wire         i_hready_mux__ram;    // Internal HREADYMUXM for MI0
    wire         i_hready_mux__mpus;    // Internal HREADYMUXM for MI1
    wire         i_hready_mux__vpus;    // Internal HREADYMUXM for MI2
    wire         i_hready_mux__dmas;    // Internal HREADYMUXM for MI3


// -----------------------------------------------------------------------------
// Beginning of main code
// -----------------------------------------------------------------------------

  // Input stage for SI0
  bus_in u_bus_in_0 (

    // Common AHB signals
    .HCLK       (HCLK),
    .HRESETn    (HRESETn),

    // Input Port Address/Control Signals
    .HSELS      (HSEL_CPUS),
    .HADDRS     (HADDR_CPUS),
    .HTRANSS    (HTRANS_CPUS),
    .HWRITES    (HWRITE_CPUS),
    .HSIZES     (HSIZE_CPUS),
    .HBURSTS    (HBURST_CPUS),
    .HPROTS     (HPROT_CPUS),
    .HMASTERS   (HMASTER_CPUS),
    .HMASTLOCKS (HMASTLOCK_CPUS),
    .HREADYS    (HREADY_CPUS),
    .HAUSERS    (HAUSER_CPUS),

    // Internal Response
    .active_ip     (i_active0),
    .readyout_ip   (i_readyout0),
    .resp_ip       (i_resp0),

    // Input Port Response
    .HREADYOUTS (HREADYOUT_CPUS),
    .HRESPS     (HRESP_CPUS),

    // Internal Address/Control Signals
    .sel_ip        (i_sel0),
    .addr_ip       (i_addr0),
    .auser_ip      (i_auser0),
    .trans_ip      (i_trans0),
    .write_ip      (i_write0),
    .size_ip       (i_size0),
    .burst_ip      (i_burst0),
    .prot_ip       (i_prot0),
    .master_ip     (i_master0),
    .mastlock_ip   (i_mastlock0),
    .held_tran_ip   (i_held_tran0)

    );


  // Matrix decoder for SI0
  bus_decoder_CPUS u_bus_decoder_cpus (

    // Common AHB signals
    .HCLK       (HCLK),
    .HRESETn    (HRESETn),

    // Signals from Input stage SI0
    .HREADYS    (HREADY_CPUS),
    .sel_dec        (i_sel0),
    .decode_addr_dec (i_addr0[31:10]),   // HADDR[9:0] is not decoded
    .trans_dec      (i_trans0),

    // Control/Response for Output Stage MI0
    .active_dec0    (i_active0to0),
    .readyout_dec0  (i_hready_mux__ram),
    .resp_dec0      (HRESP_RAM),
    .rdata_dec0     (HRDATA_RAM),
    .ruser_dec0     (HRUSER_RAM),

    // Control/Response for Output Stage MI1
    .active_dec1    (i_active0to1),
    .readyout_dec1  (i_hready_mux__mpus),
    .resp_dec1      (HRESP_MPUS),
    .rdata_dec1     (HRDATA_MPUS),
    .ruser_dec1     (HRUSER_MPUS),

    // Control/Response for Output Stage MI2
    .active_dec2    (i_active0to2),
    .readyout_dec2  (i_hready_mux__vpus),
    .resp_dec2      (HRESP_VPUS),
    .rdata_dec2     (HRDATA_VPUS),
    .ruser_dec2     (HRUSER_VPUS),

    // Control/Response for Output Stage MI3
    .active_dec3    (i_active0to3),
    .readyout_dec3  (i_hready_mux__dmas),
    .resp_dec3      (HRESP_DMAS),
    .rdata_dec3     (HRDATA_DMAS),
    .ruser_dec3     (HRUSER_DMAS),

    .sel_dec0       (i_sel0to0),
    .sel_dec1       (i_sel0to1),
    .sel_dec2       (i_sel0to2),
    .sel_dec3       (i_sel0to3),

    .active_dec     (i_active0),
    .HREADYOUTS (i_readyout0),
    .HRESPS     (i_resp0),
    .HRUSERS    (HRUSER_CPUS),
    .HRDATAS    (HRDATA_CPUS)

    );


  // Output stage for MI0
  bus_out u_bus_out_0 (

    // Common AHB signals
    .HCLK       (HCLK),
    .HRESETn    (HRESETn),

    // Port 0 Signals
    .sel_op0       (i_sel0to0),
    .addr_op0      (i_addr0),
    .auser_op0     (i_auser0),
    .trans_op0     (i_trans0),
    .write_op0     (i_write0),
    .size_op0      (i_size0),
    .burst_op0     (i_burst0),
    .prot_op0      (i_prot0),
    .master_op0    (i_master0),
    .mastlock_op0  (i_mastlock0),
    .wdata_op0     (HWDATA_CPUS),
    .wuser_op0     (HWUSER_CPUS),
    .held_tran_op0  (i_held_tran0),

    // Slave read data and response
    .HREADYOUTM (HREADYOUT_RAM),

    .active_op0    (i_active0to0),

    // Slave Address/Control Signals
    .HSELM      (HSEL_RAM),
    .HADDRM     (HADDR_RAM),
    .HAUSERM    (HAUSER_RAM),
    .HTRANSM    (HTRANS_RAM),
    .HWRITEM    (HWRITE_RAM),
    .HSIZEM     (HSIZE_RAM),
    .HBURSTM    (HBURST_RAM),
    .HPROTM     (HPROT_RAM),
    .HMASTERM   (HMASTER_RAM),
    .HMASTLOCKM (HMASTLOCK_RAM),
    .HREADYMUXM (i_hready_mux__ram),
    .HWUSERM    (HWUSER_RAM),
    .HWDATAM    (HWDATA_RAM)

    );

  // Drive output with internal version
  assign HREADYMUX_RAM = i_hready_mux__ram;


  // Output stage for MI1
  bus_out u_bus_out_1 (

    // Common AHB signals
    .HCLK       (HCLK),
    .HRESETn    (HRESETn),

    // Port 0 Signals
    .sel_op0       (i_sel0to1),
    .addr_op0      (i_addr0),
    .auser_op0     (i_auser0),
    .trans_op0     (i_trans0),
    .write_op0     (i_write0),
    .size_op0      (i_size0),
    .burst_op0     (i_burst0),
    .prot_op0      (i_prot0),
    .master_op0    (i_master0),
    .mastlock_op0  (i_mastlock0),
    .wdata_op0     (HWDATA_CPUS),
    .wuser_op0     (HWUSER_CPUS),
    .held_tran_op0  (i_held_tran0),

    // Slave read data and response
    .HREADYOUTM (HREADYOUT_MPUS),

    .active_op0    (i_active0to1),

    // Slave Address/Control Signals
    .HSELM      (HSEL_MPUS),
    .HADDRM     (HADDR_MPUS),
    .HAUSERM    (HAUSER_MPUS),
    .HTRANSM    (HTRANS_MPUS),
    .HWRITEM    (HWRITE_MPUS),
    .HSIZEM     (HSIZE_MPUS),
    .HBURSTM    (HBURST_MPUS),
    .HPROTM     (HPROT_MPUS),
    .HMASTERM   (HMASTER_MPUS),
    .HMASTLOCKM (HMASTLOCK_MPUS),
    .HREADYMUXM (i_hready_mux__mpus),
    .HWUSERM    (HWUSER_MPUS),
    .HWDATAM    (HWDATA_MPUS)

    );

  // Drive output with internal version
  assign HREADYMUX_MPUS = i_hready_mux__mpus;


  // Output stage for MI2
  bus_out u_bus_out_2 (

    // Common AHB signals
    .HCLK       (HCLK),
    .HRESETn    (HRESETn),

    // Port 0 Signals
    .sel_op0       (i_sel0to2),
    .addr_op0      (i_addr0),
    .auser_op0     (i_auser0),
    .trans_op0     (i_trans0),
    .write_op0     (i_write0),
    .size_op0      (i_size0),
    .burst_op0     (i_burst0),
    .prot_op0      (i_prot0),
    .master_op0    (i_master0),
    .mastlock_op0  (i_mastlock0),
    .wdata_op0     (HWDATA_CPUS),
    .wuser_op0     (HWUSER_CPUS),
    .held_tran_op0  (i_held_tran0),

    // Slave read data and response
    .HREADYOUTM (HREADYOUT_VPUS),

    .active_op0    (i_active0to2),

    // Slave Address/Control Signals
    .HSELM      (HSEL_VPUS),
    .HADDRM     (HADDR_VPUS),
    .HAUSERM    (HAUSER_VPUS),
    .HTRANSM    (HTRANS_VPUS),
    .HWRITEM    (HWRITE_VPUS),
    .HSIZEM     (HSIZE_VPUS),
    .HBURSTM    (HBURST_VPUS),
    .HPROTM     (HPROT_VPUS),
    .HMASTERM   (HMASTER_VPUS),
    .HMASTLOCKM (HMASTLOCK_VPUS),
    .HREADYMUXM (i_hready_mux__vpus),
    .HWUSERM    (HWUSER_VPUS),
    .HWDATAM    (HWDATA_VPUS)

    );

  // Drive output with internal version
  assign HREADYMUX_VPUS = i_hready_mux__vpus;


  // Output stage for MI3
  bus_out u_bus_out_3 (

    // Common AHB signals
    .HCLK       (HCLK),
    .HRESETn    (HRESETn),

    // Port 0 Signals
    .sel_op0       (i_sel0to3),
    .addr_op0      (i_addr0),
    .auser_op0     (i_auser0),
    .trans_op0     (i_trans0),
    .write_op0     (i_write0),
    .size_op0      (i_size0),
    .burst_op0     (i_burst0),
    .prot_op0      (i_prot0),
    .master_op0    (i_master0),
    .mastlock_op0  (i_mastlock0),
    .wdata_op0     (HWDATA_CPUS),
    .wuser_op0     (HWUSER_CPUS),
    .held_tran_op0  (i_held_tran0),

    // Slave read data and response
    .HREADYOUTM (HREADYOUT_DMAS),

    .active_op0    (i_active0to3),

    // Slave Address/Control Signals
    .HSELM      (HSEL_DMAS),
    .HADDRM     (HADDR_DMAS),
    .HAUSERM    (HAUSER_DMAS),
    .HTRANSM    (HTRANS_DMAS),
    .HWRITEM    (HWRITE_DMAS),
    .HSIZEM     (HSIZE_DMAS),
    .HBURSTM    (HBURST_DMAS),
    .HPROTM     (HPROT_DMAS),
    .HMASTERM   (HMASTER_DMAS),
    .HMASTLOCKM (HMASTLOCK_DMAS),
    .HREADYMUXM (i_hready_mux__dmas),
    .HWUSERM    (HWUSER_DMAS),
    .HWDATAM    (HWDATA_DMAS)

    );

  // Drive output with internal version
  assign HREADYMUX_DMAS = i_hready_mux__dmas;


endmodule

// --================================= End ===================================--
