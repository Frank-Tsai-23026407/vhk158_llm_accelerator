// ----------------------------------------------
// Example code for
//
// System-on-Chip Design with Arm(R) Cortex(R)-M 
// Processors
//
// Reference Book
//          by Joseph Yiu, 2019 (first edition)
// 
// ISBN: 978-1-911531-19-7
// Arm Education Media
// https://www.armedumedia.com
//
// Disclaimer
// This example design is created for educational
// purpose only and are not validated to the same 
// quality level as Arm IP products. 
// Arm Education Media and author do not make any 
// warranties of these designs.
// ----------------------------------------------
// Purpose: Example Cortex-M3 processor subsystem
// ----------------------------------------------
module cm3_processor_subsystem (
    input  wire        FCLK,
    input  wire        HCLK,
    input  wire        HRESETn,

    // Interrupts
    input  wire [239:0] IRQ,

    // ROM interface
    output wire        HSEL_CPUID,
    output wire [31:0] HADDR_CPUID,
    output wire  [1:0] HTRANS_CPUID,
    output wire  [2:0] HSIZE_CPUID,
    output wire        HREADY_CPUID,
    output wire        HWRITE_CPUID,
    output wire [31:0] HWDATA_CPUID,
    input  wire        HREADYOUT_CPUID,
    input  wire        HRESP_CPUID,
    input  wire [31:0] HRDATA_CPUID,
    output wire        HEXCL_CPUID,
    input  wire        HEXOKAY_CPUID,

    // SRAM interface
    output wire        HSEL_CPUS,
    output wire [31:0] HADDR_CPUS,
    output wire  [1:0] HTRANS_CPUS,
    output wire  [2:0] HSIZE_CPUS,
    // output wire        HREADY_CPUS,
    output wire        HWRITE_CPUS,
    output wire        HEXCL_CPUS,
    output wire [31:0] HWDATA_CPUS,
    // input  wire        HREADYOUT_CPUS,
    input  wire        HREADY_CPUS,
    input  wire        HRESP_CPUS,
    input  wire [31:0] HRDATA_CPUS,
    input  wire        HEXOKAY_CPUS
);

    // sync reset
    reg  [2:0]  reg_por_sync;

    // Code Bus - AHB5
    wire  [1:0] CODE_HMASTER;   // Code-bus master
    wire  [1:0] CODE_HTRANS;    // Code-bus transfer type
    wire        CODE_HWRITE;    // Code-bus write not read
    wire  [2:0] CODE_HSIZE;     // Code-bus transfer size
    wire        CODE_HMASTLOCK; // Code-bus lock
    wire        CODE_HNONSEC;   // Code-bus security attribute
    wire [31:0] CODE_HADDR;     // Code-bus address
    wire [31:0] CODE_HWDATA;    // Code-bus write data
    wire  [2:0] CODE_HBURST;    // Code-bus burst length
    wire  [6:0] CODE_HPROT;     // Code-bus protection
    wire        CODE_HEXCL;     // Code-bus exclusive request
    wire        CODE_HREADY;    // Code-bus ready
    wire [31:0] CODE_HRDATA;    // Code-bus read data
    wire        CODE_HRESP;     // Code-bus transfer response
    wire        CODE_HEXOKAY;   // Code-bus exclusive response

    // System Bus - AHB5
    wire  [1:0] SYS_HMASTER;   // System-bus master
    wire  [1:0] SYS_HTRANS;    // System-bus transfer type
    wire        SYS_HWRITE;    // System-bus write not read
    wire  [2:0] SYS_HSIZE;     // System-bus transfer size
    wire        SYS_HMASTLOCK; // System-bus lock
    wire        SYS_HNONSEC;   // System-bus security attribute
    wire [31:0] SYS_HADDR;     // System-bus address
    wire [31:0] SYS_HWDATA;    // System-bus write data
    wire  [2:0] SYS_HBURST;    // System-bus burst length
    wire  [6:0] SYS_HPROT;     // System-bus protection
    wire        SYS_HEXCL;     // System-bus exclusive request
    wire        SYS_HREADY;    // System-bus ready
    wire [31:0] SYS_HRDATA;    // System-bus read data
    wire        SYS_HRESP;     // System-bus transfer response
    wire        SYS_HEXOKAY;   // System-bus exclusive response

    // ICode
    wire     [1:0] HTRANSI;    // ICode-bus transfer type
    wire     [2:0] HSIZEI;     // ICode-bus transfer size
    wire    [31:0] HADDRI;     // ICode-bus address
    wire     [2:0] HBURSTI;    // ICode-bus burst length
    wire     [3:0] HPROTI;     // ICode-bus protection
    wire     [1:0] MEMATTRI;   // ICode-bus memory attributes
    wire           HREADYI;    // ICode-bus ready
    wire    [31:0] HRDATAI;    // ICode-bus read data
    wire     [1:0] HRESPI;     // ICode-bus transfer response

    // DCode
    wire     [1:0] HMASTERD;   // DCode-bus master
    wire     [1:0] HTRANSD;    // DCode-bus transfer type
    wire     [2:0] HSIZED;     // DCode-bus transfer size
    wire    [31:0] HADDRD;     // DCode-bus address
    wire     [2:0] HBURSTD;    // DCode-bus burst length
    wire     [3:0] HPROTD;     // DCode-bus protection
    wire     [1:0] MEMATTRD;   // DCode-bus memory attributes
    wire           EXREQD;     // DCode-bus exclusive request
    wire           HWRITED;    // DCode-bus write not read
    wire    [31:0] HWDATAD;    // DCode-bus write data
    wire           HREADYD;    // DCode-bus ready
    wire    [31:0] HRDATAD;    // DCode-bus read data
    wire     [1:0] HRESPD;     // DCode-bus transfer response
    wire           EXRESPD;    // DCode-bus exclusive response

    // System
    wire     [1:0] HMASTERS;   // System-bus master
    wire     [1:0] HTRANSS;    // System-bus transfer type
    wire     [2:0] HSIZES;     // System-bus transfer size
    wire    [31:0] HADDRS;     // System-bus address
    wire     [2:0] HBURSTS;    // System-bus burst length
    wire     [3:0] HPROTS;     // System-bus protection
    wire     [1:0] MEMATTRS;   // System-bus memory attributes
    wire           EXREQS;     // System-bus exclusive request
    wire           HWRITES;    // System-bus write not read
    wire    [31:0] HWDATAS;    // System-bus write data
    wire           HREADYS;    // System-bus ready
    wire    [31:0] HRDATAS;    // System-bus read data
    wire     [1:0] HRESPS;     // System-bus transfer response
    wire           EXRESPS;    // System-bus exclusive response

    // Cortex-M3 legacy AHB signals for AHB5 bus wrapper
    wire     [3:0] CM3_HPROTC;
    wire     [1:0] CM3_MEMATTRC;
    wire           CM3_EXREQC;
    wire           CM3_EXRESPC;
    wire     [1:0] CM3_HRESPC;

    wire     [3:0] CM3_HPROTS;
    wire     [1:0] CM3_MEMATTRS;
    wire           CM3_EXREQS;
    wire           CM3_EXRESPS;
    wire     [1:0] CM3_HRESPS;

    // Signals for bus slaves
    wire           HSEL_DefSlave_C;
    wire           HREADYOUT_DefSlave_C;
    wire           HRESP_DefSlave_C;

    wire   [239:0] cm3_interrupts;
    wire           cm3_nmi;

    wire           w_WICENREQ;
    wire           w_WICENACK;


    CORTEXM3INTEGRATIONDS  
        /* #(
        // Verilog parameter list - no change from default
        .MPU_PRESENT    (1),
        .NUM_IRQ        (64),
        .LVL_WIDTH      (3),
        .DEBUG_LVL      (3),
        .TRACE_LVL      (3),
        .JTAG_PRESENT   (1),
        .CLKGATE_PRESENT(0),
        .RESET_ALL_REGS (0),
        .OBSERVATION    (0),
        .WIC_PRESENT    (1),
        .WIC_LINES      (67),
        .BB_PRESENT     (1),
        .CONST_AHB_CTRL (1)) */
    u_cortex_m3_int (
        .FCLK           (FCLK),
        .HCLK           (HCLK),
        .TRACECLKIN     (1'b0), //(TRACECLKIN),
        .PORESETn       (reg_por_sync[2]), //(PORESETn),
        .SYSRESETn      (reg_por_sync[1]), // (HRESETn),

        // I-CODE bus
        .HTRANSI        (HTRANSI), 
        .HSIZEI         (HSIZEI),  
        .HADDRI         (HADDRI),  
        .HBURSTI        (HBURSTI), 
        .HPROTI         (HPROTI),  
        .MEMATTRI       (MEMATTRI),
        .HREADYI        (HREADYI), 
        .HRDATAI        (HRDATAI), 
        .HRESPI         (HRESPI), 
        .IFLUSH         (1'b0),

        // D-CODE bus
        .HMASTERD       (HMASTERD), 
        .HTRANSD        (HTRANSD), 
        .HSIZED         (HSIZED), 
        .HADDRD         (HADDRD), 
        .HBURSTD        (HBURSTD), 
        .HPROTD         (HPROTD), 
        .MEMATTRD       (MEMATTRD), 
        .EXREQD         (EXREQD), 
        .HWRITED        (HWRITED), 
        .HWDATAD        (HWDATAD), 
        .HREADYD        (HREADYD), 
        .HRDATAD        (HRDATAD), 
        .HRESPD         (HRESPD), 
        .EXRESPD        (EXRESPD),  

        // System bus
        .HMASTERS       (SYS_HMASTER), 
        .HTRANSS        (SYS_HTRANS), 
        .HSIZES         (SYS_HSIZE), 
        .HADDRS         (SYS_HADDR), 
        .HBURSTS        (SYS_HBURST), 
        .HPROTS         (CM3_HPROTS), 
        .HMASTLOCKS     (SYS_HMASTLOCK),
        .MEMATTRS       (CM3_MEMATTRS), 
        .EXREQS         (CM3_EXREQS), 
        .HWRITES        (SYS_HWRITE), 
        .HWDATAS        (SYS_HWDATA), 
        .HREADYS        (SYS_HREADY), 
        .HRDATAS        (SYS_HRDATA), 
        .HRESPS         (CM3_HRESPS), 
        .EXRESPS        (CM3_EXRESPS), 

        .WICENREQ       (w_WICENREQ),
        .WICENACK       (w_WICENACK),
        .MPUDISABLE     (1'b0), // MPU available to use
        .DBGEN          (1'b1), // enable debug
        .NIDEN          (1'b1), // enable trace
        .DNOTITRANS     (1'b1), // simple code mux is used
        .BIGEND         (1'b0),

        .EDBGRQ         (1'b0),
        .DBGRESTART     (1'b0),
        .DBGRESTARTED   (),
        .FIXMASTERTYPE  (1'b1),
        .AUXFAULT       ({32{1'b0}}),

        .STCLK          (1'b0), // No reference clock
        .STCALIB        ({2'b11,{24{1'b0}}}), // No ref
        .INTISR         (cm3_interrupts),
        .INTNMI         (cm3_nmi),

        .SLEEPING       (), //(SLEEPING),
        .SLEEPDEEP      (), //(SLEEPDEEP),
        .GATEHCLK       (), //(GATEHCLK),
        .SLEEPHOLDREQn  (1'b1),
        .SLEEPHOLDACKn  (),

        .RXEV           (1'b0),   
        .TXEV           (),
        .WAKEUP         (), //(WAKEUP),

        .nTRST          (reg_por_sync[0]), //(nTRST),
        .SWDITMS        (1'b1), //(SWDITMS),
        .SWCLKTCK       (1'b1), //(SWCLKTCK),
        .TDI            (1'b1), //(TDI),
        .TDO            (), //(TDO),
        .nTDOEN         (), //(nTDOEN),
        .SWDO           (), //(SWDO),
        .SWDOEN         (), //(SWDOEN),
        .JTAGNSW        (), //(JTAGNSW),
        .SWV            (), //(SWV),
        .TRACECLK       (), //(TRACECLK),
        .TRACEDATA      (), //(TRACEDATA[3:0]),
        .TRCENA         (), //(TRCENA),

        .TSVALUEB       (48'd0), //(w_TSVALUEB[47:0]),
        .SYSRESETREQ    (), //(SYSRESETREQ),

        .CDBGPWRUPREQ   (), //(CDBGPWRUPREQ),
        .CDBGPWRUPACK   (1'b0), //(CDBGPWRUPACK),

        .ETMINTNUM      (),
        .ETMINTSTAT     (),
        .CURRPRI        (),
        .LOCKUP         (), //(LOCKUP),
        .HALTED         (),
        .BRCHSTAT       (),
        .HTMDHADDR      (),  // HTM data HADDR
        .HTMDHTRANS     (),  // HTM data HTRANS
        .HTMDHSIZE      (),  // HTM data HSIZE
        .HTMDHBURST     (),  // HTM data HBURST
        .HTMDHPROT      (),  // HTM data HPROT
        .HTMDHWDATA     (),  // HTM data HWDATA
        .HTMDHWRITE     (),  // HTM data HWRITE
        .HTMDHRDATA     (),  // HTM data HRDATA
        .HTMDHREADY     (),  // HTM data HREADY
        .HTMDHRESP      (),  // HTM data HRESP


        .ISOLATEn       (1'b1),   
        .RETAINn        (1'b1),   
        .SE             (1'b0),
        .RSTBYPASS      (1'b0), //(RSTBYPASS),
        .CGBYPASS       (1'b0)  //(CGBYPASS)
    );

    //---------------------------------------
    // Merging of I-CODE and D-CODE bus
    cm3_code_mux u_cm3_code_mux (
        .HCLK            (HCLK),    // Clock
        .HRESETn         (HRESETn), // Reset

        //----- I-CODE -----------
        .HADDRI          (HADDRI),
        .HTRANSI         (HTRANSI[1:0]),
        .HSIZEI          (HSIZEI[2:0]),
        .HBURSTI         (HBURSTI[2:0]),
        .HPROTI          (HPROTI[3:0]),

        .HRDATAI         (HRDATAI[31:0]),
        .HREADYI         (HREADYI),
        .HRESPI          (HRESPI[1:0]),

        //----- D-CODE -----------
        .HADDRD          (HADDRD),
        .HTRANSD         (HTRANSD[1:0]),
        .HSIZED          (HSIZED[2:0]),
        .HBURSTD         (HBURSTD[2:0]),
        .HPROTD          (HPROTD[3:0]),
        .HWDATAD         (HWDATAD[31:0]),
        .HWRITED         (HWRITED),
        .EXREQD          (EXREQD),

        .HRDATAD         (HRDATAD[31:0]),
        .HREADYD         (HREADYD),
        .HRESPD          (HRESPD[1:0]),
        .EXRESPD         (EXRESPD),

        //----- CODE -----------
        .HADDRC          (CODE_HADDR),
        .HTRANSC         (CODE_HTRANS[1:0]),
        .HSIZEC          (CODE_HSIZE[2:0]),
        .HBURSTC         (CODE_HBURST[2:0]),
        .HPROTC          (CM3_HPROTC[3:0]),
        .HWDATAC         (CODE_HWDATA[31:0]),
        .HWRITEC         (CODE_HWRITE),
        .EXREQC          (CM3_EXREQC),

        .HRDATAC         (CODE_HRDATA[31:0]),
        .HREADYC         (CODE_HREADY),
        .HRESPC          (CM3_HRESPC[1:0]),
        .EXRESPC         (CM3_EXRESPC)
    );

    // cm3_code_mux missed out MEMATTR
    assign CM3_MEMATTRC[1:0] = HTRANSD[1]?MEMATTRD:2'b00;
    
    //---------------------------------------
    // CM3 AHB to AHB5 wrapper for code bus
    cm3ahb_to_ahb5 u_cm3ahb_to_ahb5_code (
        .HCLK            (HCLK),    // Clock
        .HRESETn         (HRESETn), // Reset

        .CM3HREADY       (CODE_HREADY),  // HREADY on Cortex-M3/M4
        .CM3HWRITE       (CODE_HWRITE),
        .CM3HPROT        (CM3_HPROTC[3:0]),
        .CM3MEMATTR      (CM3_MEMATTRC[1:0]), // Memory attribute
        .CM3EXREQ        (CM3_EXREQC),    // Exclusive request
        .CM3EXRESP       (CM3_EXRESPC),   // Exclusive response
        .CM3HRESP        (CM3_HRESPC[1:0]),

        .AHB5HPROT       (CODE_HPROT[6:0]),
        .AHB5HEXCL       (CODE_HEXCL),   // Exclusive request
        .AHB5EXOKAY      (CODE_HEXOKAY),  // Exclusive okay
        .AHB5HRESP       (CODE_HRESP)
    );
  
    assign CODE_HNONSEC = 1'b1; // Always Non-secure
    assign CODE_HMASTLOCK = 1'b0;
    assign CODE_HMASTER = (HTRANSD)?HMASTERD:2'b10;

    //---------------------------------------
    // CM3 AHB to AHB5 wrapper for system bus
    cm3ahb_to_ahb5 u_cm3ahb_to_ahb5_sys  (
        .HCLK            (HCLK),    // Clock
        .HRESETn         (HRESETn), // Reset

        .CM3HREADY       (SYS_HREADY),  // HREADY on Cortex-M3/M4
        .CM3HWRITE       (SYS_HWRITE),
        .CM3HPROT        (CM3_HPROTS[3:0]),
        .CM3MEMATTR      (CM3_MEMATTRS[1:0]), // Memory attribute
        .CM3EXREQ        (CM3_EXREQS),    // Exclusive request
        .CM3EXRESP       (CM3_EXRESPS),   // Exclusive response
        .CM3HRESP        (CM3_HRESPS[1:0]),

        .AHB5HPROT       (SYS_HPROT[6:0]),
        .AHB5HEXCL       (SYS_HEXCL),   // Exclusive request
        .AHB5EXOKAY      (SYS_HEXOKAY),  // Exclusive okay
        .AHB5HRESP       (SYS_HRESP)
    );

    assign SYS_HNONSEC = 1'b1; // Always Non-secure
    
    //---------------------------------------
    // Code bus AHB decoder     
    ahb_decoder_code u_ahb_decoder_code (
        .HADDR           (CODE_HADDR[31:0]),
        .HSEL_ROM        (HSEL_CPUID),
        .HSEL_DefSlave   (HSEL_DefSlave_C)
    );

    // Code bus slave multiplexer
    ahb_slavemux u_ahb_slavemux_code (
        .HCLK            (HCLK),    // Clock
        .HRESETn         (HRESETn), // Reset
        .HREADY          (CODE_HREADY),

        .HSEL0           (HSEL_CPUID),
        .HREADYOUT0      (HREADYOUT_CPUID),
        .HRESP0          (HRESP_CPUID),
        .HRDATA0         (HRDATA_CPUID),
        .HEXOKAY0        (HEXOKAY_CPUID), // No exclusive access for ROM

        .HSEL1           (1'b0), // Not used
        .HREADYOUT1      (1'b1),
        .HRESP1          (1'b0),
        .HRDATA1         ({32{1'b0}}),
        .HEXOKAY1        (1'b0),

        .HSEL2           (1'b0), // Not used
        .HREADYOUT2      (1'b1),
        .HRESP2          (1'b0),
        .HRDATA2         ({32{1'b0}}),
        .HEXOKAY2        (1'b0),

        .HSEL3           (HSEL_DefSlave_C),
        .HREADYOUT3      (HREADYOUT_DefSlave_C),
        .HRESP3          (HRESP_DefSlave_C),
        .HRDATA3         ({32{1'b0}}),
        .HEXOKAY3        (1'b0),

        .HREADYOUT       (CODE_HREADY),
        .HRESP           (CODE_HRESP),
        .HRDATA          (CODE_HRDATA[31:0]),
        .HEXOKAY         (CODE_HEXOKAY)
    );

    //---------------------------------------
    ahb_defslave u_ahb_defslave_code (
        .HCLK            (HCLK),    // Clock
        .HRESETn         (HRESETn), // Reset
        .HSEL            (HSEL_DefSlave_C),
        .HTRANS          (CODE_HTRANS[1:0]),
        .HREADY          (CODE_HREADY),
        .HREADYOUT       (HREADYOUT_DefSlave_C),
        .HRESP           (HRESP_DefSlave_C)
    );

    //---------------------------------------
    // Connect CODE-AHB to ROM interface
    assign HADDR_CPUID  = CODE_HADDR;
    assign HTRANS_CPUID = CODE_HTRANS;
    assign HSIZE_CPUID  = CODE_HSIZE;
    assign HREADY_CPUID = CODE_HREADY;
    assign HWRITE_CPUID = CODE_HWRITE;
    assign HWDATA_CPUID = CODE_HWDATA;
    assign HEXCL_CPUID  = CODE_HEXCL;
    // Other CODE AHB signals unused 

    //---------------------------------------
    // Connect SYS-AHB to SRAM interface
    assign HADDR_CPUS  = SYS_HADDR;
    assign HTRANS_CPUS = SYS_HTRANS;
    assign HSIZE_CPUS  = SYS_HSIZE;
    // assign HREADY_CPUS = SYS_HREADY;
    assign HWRITE_CPUS = SYS_HWRITE;
    assign HEXCL_CPUS  = SYS_HEXCL;
    assign HWDATA_CPUS = SYS_HWDATA;

    // assign HSEL_CPUS = (HADDR_CPUS[31:16]==16'h2000 || HADDR_CPUS[31:16]>=16'h5000);
    assign HSEL_CPUS = (HADDR_CPUS[31:16]>=16'h2000);

    // assign SYS_HREADY = HREADYOUT_CPUS;
    assign SYS_HREADY = HREADY_CPUS;
    assign SYS_HRESP = HRESP_CPUS;
    assign SYS_HRDATA[31:0] = HRDATA_CPUS;
    assign SYS_HEXOKAY = HEXOKAY_CPUS;
    // Other System AHB signals unused
  
    //---------------------------------------
    // Interrupt assignments
    assign cm3_interrupts    = IRQ; // system
    assign cm3_nmi           = 1'b0; // unused

    //---------------------------------------
    assign w_WICENREQ = 1'b0; // WIC support disabled for 1st version

    //---------------------------------------
    // Reset synchronizer
    always @(posedge FCLK or negedge HRESETn)
    begin
    if (~HRESETn)
      reg_por_sync <= 3'b000;
    else
      reg_por_sync <= {reg_por_sync[1:0], 1'b1};
    end

  
endmodule
