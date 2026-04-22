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
//  Abstract            : BusMatrixLite is a wrapper module that wraps around
//                        the BusMatrix module to give AHB Lite compliant
//                        slave and master interfaces.
//
//-----------------------------------------------------------------------------

`timescale 1ns/1ps

module bus_matrix_lite (

    // Common AHB signals
    HCLK,
    HRESETn,

    // System Address Remap control
    REMAP,

    // Input port SI0 (inputs from master 0)
    HADDR_CPUS,
    HTRANS_CPUS,
    HWRITE_CPUS,
    HSIZE_CPUS,
    HBURST_CPUS,
    HPROT_CPUS,
    HWDATA_CPUS,
    HMASTLOCK_CPUS,
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
    HWDATA_DMAS,
    HMASTLOCK_DMAS,
    HREADYMUX_DMAS,
    HAUSER_DMAS,
    HWUSER_DMAS,

    // Input port SI0 (outputs to master 0)
    HRDATA_CPUS,
    HREADY_CPUS,
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

    // System Address Remap control
    input   [3:0] REMAP;           // System Address REMAP control

    // Input port SI0 (inputs from master 0)
    input  [31:0] HADDR_CPUS;         // Address bus
    input   [1:0] HTRANS_CPUS;        // Transfer type
    input         HWRITE_CPUS;        // Transfer direction
    input   [2:0] HSIZE_CPUS;         // Transfer size
    input   [2:0] HBURST_CPUS;        // Burst type
    input   [3:0] HPROT_CPUS;         // Protection control
    input  [31:0] HWDATA_CPUS;        // Write data
    input         HMASTLOCK_CPUS;     // Locked Sequence
    input  [31:0] HAUSER_CPUS;        // Address USER signals
    input  [31:0] HWUSER_CPUS;        // Write-data USER signals

    // Output port MI0 (inputs from slave 0)
    input  [31:0] HRDATA_RAM;        // Read data bus
    input         HREADYOUT_RAM;     // HREADY feedback
    input         HRESP_RAM;         // Transfer response
    input  [31:0] HRUSER_RAM;        // Read-data USER signals

    // Output port MI1 (inputs from slave 1)
    input  [31:0] HRDATA_MPUS;        // Read data bus
    input         HREADYOUT_MPUS;     // HREADY feedback
    input         HRESP_MPUS;         // Transfer response
    input  [31:0] HRUSER_MPUS;        // Read-data USER signals

    // Output port MI2 (inputs from slave 2)
    input  [31:0] HRDATA_VPUS;        // Read data bus
    input         HREADYOUT_VPUS;     // HREADY feedback
    input         HRESP_VPUS;         // Transfer response
    input  [31:0] HRUSER_VPUS;        // Read-data USER signals

    // Output port MI3 (inputs from slave 3)
    input  [31:0] HRDATA_DMAS;        // Read data bus
    input         HREADYOUT_DMAS;     // HREADY feedback
    input         HRESP_DMAS;         // Transfer response
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
    output [31:0] HWDATA_DMAS;        // Write data
    output        HMASTLOCK_DMAS;     // Locked Sequence
    output        HREADYMUX_DMAS;     // Transfer done
    output [31:0] HAUSER_DMAS;        // Address USER signals
    output [31:0] HWUSER_DMAS;        // Write-data USER signals

    // Input port SI0 (outputs to master 0)
    output [31:0] HRDATA_CPUS;        // Read data bus
    output        HREADY_CPUS;     // HREADY feedback
    output        HRESP_CPUS;         // Transfer response
    output [31:0] HRUSER_CPUS;        // Read-data USER signals

    // Scan test dummy signals; not connected until scan insertion
    output        SCANOUTHCLK;     // Scan Chain Output

// -----------------------------------------------------------------------------
// Wire declarations
// -----------------------------------------------------------------------------

    // Common AHB signals
    wire         HCLK;            // AHB System Clock
    wire         HRESETn;         // AHB System Reset

    // System Address Remap control
    wire   [3:0] REMAP;           // System REMAP signal

    // Input Port SI0
    wire  [31:0] HADDR_CPUS;         // Address bus
    wire   [1:0] HTRANS_CPUS;        // Transfer type
    wire         HWRITE_CPUS;        // Transfer direction
    wire   [2:0] HSIZE_CPUS;         // Transfer size
    wire   [2:0] HBURST_CPUS;        // Burst type
    wire   [3:0] HPROT_CPUS;         // Protection control
    wire  [31:0] HWDATA_CPUS;        // Write data
    wire         HMASTLOCK_CPUS;     // Locked Sequence

    wire  [31:0] HRDATA_CPUS;        // Read data bus
    wire         HREADY_CPUS;     // HREADY feedback
    wire         HRESP_CPUS;         // Transfer response
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
    wire  [31:0] HWDATA_RAM;        // Write data
    wire         HMASTLOCK_RAM;     // Locked Sequence
    wire         HREADYMUX_RAM;     // Transfer done

    wire  [31:0] HRDATA_RAM;        // Read data bus
    wire         HREADYOUT_RAM;     // HREADY feedback
    wire         HRESP_RAM;         // Transfer response
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
    wire  [31:0] HWDATA_MPUS;        // Write data
    wire         HMASTLOCK_MPUS;     // Locked Sequence
    wire         HREADYMUX_MPUS;     // Transfer done

    wire  [31:0] HRDATA_MPUS;        // Read data bus
    wire         HREADYOUT_MPUS;     // HREADY feedback
    wire         HRESP_MPUS;         // Transfer response
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
    wire  [31:0] HWDATA_VPUS;        // Write data
    wire         HMASTLOCK_VPUS;     // Locked Sequence
    wire         HREADYMUX_VPUS;     // Transfer done

    wire  [31:0] HRDATA_VPUS;        // Read data bus
    wire         HREADYOUT_VPUS;     // HREADY feedback
    wire         HRESP_VPUS;         // Transfer response
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
    wire  [31:0] HWDATA_DMAS;        // Write data
    wire         HMASTLOCK_DMAS;     // Locked Sequence
    wire         HREADYMUX_DMAS;     // Transfer done

    wire  [31:0] HRDATA_DMAS;        // Read data bus
    wire         HREADYOUT_DMAS;     // HREADY feedback
    wire         HRESP_DMAS;         // Transfer response
    wire  [31:0] HAUSER_DMAS;        // Address USER signals
    wire  [31:0] HWUSER_DMAS;        // Write-data USER signals
    wire  [31:0] HRUSER_DMAS;        // Read-data USER signals


// -----------------------------------------------------------------------------
// Signal declarations
// -----------------------------------------------------------------------------
    wire   [3:0] tie_hi_4;
    wire         tie_hi;
    wire         tie_low;
    wire   [1:0] i_hresp_CPUS;

    wire   [3:0]        i_hmaster_RAM;
    wire   [1:0] i_hresp_RAM;
    wire   [3:0]        i_hmaster_MPUS;
    wire   [1:0] i_hresp_MPUS;
    wire   [3:0]        i_hmaster_VPUS;
    wire   [1:0] i_hresp_VPUS;
    wire   [3:0]        i_hmaster_DMAS;
    wire   [1:0] i_hresp_DMAS;

// -----------------------------------------------------------------------------
// Beginning of main code
// -----------------------------------------------------------------------------

    assign tie_hi   = 1'b1;
    assign tie_hi_4 = 4'b1111;
    assign tie_low  = 1'b0;


    assign HRESP_CPUS  = i_hresp_CPUS[0];

    assign i_hresp_RAM = {tie_low, HRESP_RAM};
    assign i_hresp_MPUS = {tie_low, HRESP_MPUS};
    assign i_hresp_VPUS = {tie_low, HRESP_VPUS};
    assign i_hresp_DMAS = {tie_low, HRESP_DMAS};

// BusMatrix instance
  bus_matrix ubus_matrix (
    .HCLK       (HCLK),
    .HRESETn    (HRESETn),
    .REMAP      (REMAP),

    // Input port SI0 signals
    .HSEL_CPUS       (tie_hi),
    .HADDR_CPUS      (HADDR_CPUS),
    .HTRANS_CPUS     (HTRANS_CPUS),
    .HWRITE_CPUS     (HWRITE_CPUS),
    .HSIZE_CPUS      (HSIZE_CPUS),
    .HBURST_CPUS     (HBURST_CPUS),
    .HPROT_CPUS      (HPROT_CPUS),
    .HWDATA_CPUS     (HWDATA_CPUS),
    .HMASTLOCK_CPUS  (HMASTLOCK_CPUS),
    .HMASTER_CPUS    (tie_hi_4),
    .HREADY_CPUS     (HREADY_CPUS),
    .HAUSER_CPUS     (HAUSER_CPUS),
    .HWUSER_CPUS     (HWUSER_CPUS),
    .HRDATA_CPUS     (HRDATA_CPUS),
    .HREADYOUT_CPUS  (HREADY_CPUS),
    .HRESP_CPUS      (i_hresp_CPUS),
    .HRUSER_CPUS     (HRUSER_CPUS),


    // Output port MI0 signals
    .HSEL_RAM       (HSEL_RAM),
    .HADDR_RAM      (HADDR_RAM),
    .HTRANS_RAM     (HTRANS_RAM),
    .HWRITE_RAM     (HWRITE_RAM),
    .HSIZE_RAM      (HSIZE_RAM),
    .HBURST_RAM     (HBURST_RAM),
    .HPROT_RAM      (HPROT_RAM),
    .HWDATA_RAM     (HWDATA_RAM),
    .HMASTER_RAM    (i_hmaster_RAM),
    .HMASTLOCK_RAM  (HMASTLOCK_RAM),
    .HREADYMUX_RAM  (HREADYMUX_RAM),
    .HAUSER_RAM     (HAUSER_RAM),
    .HWUSER_RAM     (HWUSER_RAM),
    .HRDATA_RAM     (HRDATA_RAM),
    .HREADYOUT_RAM  (HREADYOUT_RAM),
    .HRESP_RAM      (i_hresp_RAM),
    .HRUSER_RAM     (HRUSER_RAM),

    // Output port MI1 signals
    .HSEL_MPUS       (HSEL_MPUS),
    .HADDR_MPUS      (HADDR_MPUS),
    .HTRANS_MPUS     (HTRANS_MPUS),
    .HWRITE_MPUS     (HWRITE_MPUS),
    .HSIZE_MPUS      (HSIZE_MPUS),
    .HBURST_MPUS     (HBURST_MPUS),
    .HPROT_MPUS      (HPROT_MPUS),
    .HWDATA_MPUS     (HWDATA_MPUS),
    .HMASTER_MPUS    (i_hmaster_MPUS),
    .HMASTLOCK_MPUS  (HMASTLOCK_MPUS),
    .HREADYMUX_MPUS  (HREADYMUX_MPUS),
    .HAUSER_MPUS     (HAUSER_MPUS),
    .HWUSER_MPUS     (HWUSER_MPUS),
    .HRDATA_MPUS     (HRDATA_MPUS),
    .HREADYOUT_MPUS  (HREADYOUT_MPUS),
    .HRESP_MPUS      (i_hresp_MPUS),
    .HRUSER_MPUS     (HRUSER_MPUS),

    // Output port MI2 signals
    .HSEL_VPUS       (HSEL_VPUS),
    .HADDR_VPUS      (HADDR_VPUS),
    .HTRANS_VPUS     (HTRANS_VPUS),
    .HWRITE_VPUS     (HWRITE_VPUS),
    .HSIZE_VPUS      (HSIZE_VPUS),
    .HBURST_VPUS     (HBURST_VPUS),
    .HPROT_VPUS      (HPROT_VPUS),
    .HWDATA_VPUS     (HWDATA_VPUS),
    .HMASTER_VPUS    (i_hmaster_VPUS),
    .HMASTLOCK_VPUS  (HMASTLOCK_VPUS),
    .HREADYMUX_VPUS  (HREADYMUX_VPUS),
    .HAUSER_VPUS     (HAUSER_VPUS),
    .HWUSER_VPUS     (HWUSER_VPUS),
    .HRDATA_VPUS     (HRDATA_VPUS),
    .HREADYOUT_VPUS  (HREADYOUT_VPUS),
    .HRESP_VPUS      (i_hresp_VPUS),
    .HRUSER_VPUS     (HRUSER_VPUS),

    // Output port MI3 signals
    .HSEL_DMAS       (HSEL_DMAS),
    .HADDR_DMAS      (HADDR_DMAS),
    .HTRANS_DMAS     (HTRANS_DMAS),
    .HWRITE_DMAS     (HWRITE_DMAS),
    .HSIZE_DMAS      (HSIZE_DMAS),
    .HBURST_DMAS     (HBURST_DMAS),
    .HPROT_DMAS      (HPROT_DMAS),
    .HWDATA_DMAS     (HWDATA_DMAS),
    .HMASTER_DMAS    (i_hmaster_DMAS),
    .HMASTLOCK_DMAS  (HMASTLOCK_DMAS),
    .HREADYMUX_DMAS  (HREADYMUX_DMAS),
    .HAUSER_DMAS     (HAUSER_DMAS),
    .HWUSER_DMAS     (HWUSER_DMAS),
    .HRDATA_DMAS     (HRDATA_DMAS),
    .HREADYOUT_DMAS  (HREADYOUT_DMAS),
    .HRESP_DMAS      (i_hresp_DMAS),
    .HRUSER_DMAS     (HRUSER_DMAS),


    // Scan test dummy signals; not connected until scan insertion
    .SCANENABLE            (SCANENABLE),
    .SCANINHCLK            (SCANINHCLK),
    .SCANOUTHCLK           (SCANOUTHCLK)
  );


endmodule
