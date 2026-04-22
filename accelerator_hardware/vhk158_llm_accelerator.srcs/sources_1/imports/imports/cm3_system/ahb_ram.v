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
// Purpose: Simple 64kB RAM with AHB interface
// ----------------------------------------------
// 
//
module ahb_ram (
  input  wire        HCLK,    // Clock
  input  wire        HRESETn, // Reset
  input  wire        HSEL_RAM,    // Device select
  input  wire [3:0]  HMASTER_RAM, // Master identification
  input  wire [31:0] HADDR_RAM,   // Address
  input  wire [1:0]  HTRANS_RAM,  // Transfer control
  input  wire [2:0]  HSIZE_RAM,   // Transfer size
  input  wire        HWRITE_RAM,  // Write control
  input  wire [31:0] HWDATA_RAM,  // Write data
  input  wire        HEXCL_RAM,   // Exclusive transfer
  input  wire        HREADY_RAM,  // Transfer phase done
  output wire        HREADYOUT_RAM, // Device ready
  output wire [31:0] HRDATA_RAM,  // Read data output
  output wire        HRESP_RAM,   // Device response (always OKAY)
  output wire        HEXOKAY_RAM  // Exclusve okay
);

// Bridging signals
  wire        HSEL;
  wire [3:0]  HMASTER;
  wire [15:0] HADDR;
  wire [1:0]  HTRANS;
  wire [2:0]  HSIZE;
  wire        HWRITE;
  wire [31:0] HWDATA;
  wire        HEXCL;
  wire        HREADY;
  wire        HREADYOUT;
  wire [31:0] HRDATA;
  wire        HRESP;
  wire        HEXOKAY;

  // Internal signals
  // reg    [7:0]  RamData[0:65535]; // 64k byte of RAM data
  integer       i;            // Loop counter for zero initialization
  wire          ReadValid;    // Address phase read valid
  wire          WriteValid;   // Address phase write valid
  reg           ReadEnable;   // Data phase read enable
  reg           WriteEnable;  // Data phase write enable
  reg    [3:0]  RegByteLane;  // Data phase byte lane 
  reg    [3:0]  NextByteLane; // Next state of RegByteLane

  wire   [7:0]  RDataOut0;    // Read Data Output byte#0
  wire   [7:0]  RDataOut1;    // Read Data Output byte#1
  wire   [7:0]  RDataOut2;    // Read Data Output byte#2
  wire   [7:0]  RDataOut3;    // Read Data Output byte#3
  reg   [15:0]  WordAddr;     // Word aligned address
  
  reg   [15:4]  Excl_Tag_Addr;     // Exclusive access address
  reg   [ 3:0]  Excl_Tag_MID;      // Exclusive access master ID
  reg           Excl_State;        // Exclusive state
  reg           ExclOkay;          // Exclusive Okay status (data phase)
  reg           ExclStoreFail;     // Exclusive Failed state (data phase)

  wire   [7:0]  RAM_RData0;    // RAM Data Output byte#0
  wire   [7:0]  RAM_RData1;    // RAM Data Output byte#1
  wire   [7:0]  RAM_RData2;    // RAM Data Output byte#2
  wire   [7:0]  RAM_RData3;    // RAM Data Output byte#3

  // IO connnection
  assign HSEL = HSEL_RAM;
  assign HMASTER = HMASTER_RAM;
  assign HADDR = HADDR_RAM[15:0];
  assign HTRANS = HTRANS_RAM;
  assign HSIZE = HSIZE_RAM;
  assign HWRITE = HWRITE_RAM;
  assign HWDATA = HWDATA_RAM;
  assign HEXCL = HEXCL_RAM;
  assign HREADY = HREADY_RAM;
  assign HREADYOUT_RAM = HREADYOUT;
  assign HRDATA_RAM = HRDATA;
  assign HRESP_RAM = HRESP;
  assign HEXOKAY_RAM = HEXOKAY;
/*
sram_tp #(
    .WIDTH(8),
    .DEPTH(16384)
  ) u_ram_0 (
    .RW0_clk   (HCLK),
    .RW0_waddr (WordAddr[15:2]),
    .RW0_raddr (HADDR[15:2]),
    .RW0_en    (1'b1),
    .RW0_wmode (WriteEnable &  RegByteLane[0] & ~ExclStoreFail),
    .RW0_wdata (HWDATA[ 7: 0]),
    .RW0_rdata (RAM_RData0)
  );

  sram_tp #(
    .WIDTH(8),
    .DEPTH(16384)
  ) u_ram_1 (
    .RW0_clk   (HCLK),
    .RW0_waddr (WordAddr[15:2]),
    .RW0_raddr (HADDR[15:2]),
    .RW0_en    (1'b1),
    .RW0_wmode (WriteEnable &  RegByteLane[1] & ~ExclStoreFail),
    .RW0_wdata (HWDATA[15: 8]),
    .RW0_rdata (RAM_RData1)
  );

  sram_tp #(
    .WIDTH(8),
    .DEPTH(16384)
  ) u_ram_2 (
    .RW0_clk   (HCLK),
    .RW0_waddr (WordAddr[15:2]),
    .RW0_raddr (HADDR[15:2]),
    .RW0_en    (1'b1),
    .RW0_wmode (WriteEnable &  RegByteLane[2] & ~ExclStoreFail),
    .RW0_wdata (HWDATA[23:16]),
    .RW0_rdata (RAM_RData2)
  );

  sram_tp #(
    .WIDTH(8),
    .DEPTH(16384)
  ) u_ram_3 (
    .RW0_clk   (HCLK),
    .RW0_waddr (WordAddr[15:2]),
    .RW0_raddr (HADDR[15:2]),
    .RW0_en    (1'b1),
    .RW0_wmode (WriteEnable &  RegByteLane[3] & ~ExclStoreFail),
    .RW0_wdata (HWDATA[31:24]),
    .RW0_rdata (RAM_RData3)
  );
  */

  sram_tp_wrapper u_ram_0 (
    .addra(WordAddr[15:2]),
    .addrb(HADDR[15:2]),
    .clka(HCLK),
    .clkb(HCLK),
    .dina(HWDATA[ 7: 0]),
    .doutb(RAM_RData0),
    .ena(1'b1),
    .enb(1'b1),
    .regceb(1'b1),
    .rsta(~HRESETn),
    .rstb(~HRESETn),
    .wea(WriteEnable &  RegByteLane[0] & ~ExclStoreFail)
    
//    .clka   (HCLK),
//    .clkb   (HCLK),
//    .addra (WordAddr[15:2]),
//    .addrb (HADDR[15:2]),
//    .ena    (1'b1),
//    .enb    (1'b1),
//    .wea (WriteEnable &  RegByteLane[0] & ~ExclStoreFail),
//    .dina (HWDATA[ 7: 0]),
//    .doutb (RAM_RData0)
  );
  
  sram_tp_wrapper u_ram_1 (
    .addra(WordAddr[15:2]),
    .addrb(HADDR[15:2]),
    .clka(HCLK),
    .clkb(HCLK),
    .dina(HWDATA[ 15: 8]),
    .doutb(RAM_RData1),
    .ena(1'b1),
    .enb(1'b1),
    .regceb(1'b1),
    .rsta(~HRESETn),
    .rstb(~HRESETn),
    .wea(WriteEnable &  RegByteLane[1] & ~ExclStoreFail)
    
//    .clka   (HCLK),
//    .clkb   (HCLK),
//    .addra (WordAddr[15:2]),
//    .addrb (HADDR[15:2]),
//    .ena    (1'b1),
//    .enb    (1'b1),
//    .wea (WriteEnable &  RegByteLane[1] & ~ExclStoreFail),
//    .dina (HWDATA[ 15: 8]),
//    .doutb (RAM_RData1)
  );
  
  sram_tp_wrapper u_ram_2 (
    .addra(WordAddr[15:2]),
    .addrb(HADDR[15:2]),
    .clka(HCLK),
    .clkb(HCLK),
    .dina(HWDATA[ 23: 16]),
    .doutb(RAM_RData2),
    .ena(1'b1),
    .enb(1'b1),
    .regceb(1'b1),
    .rsta(~HRESETn),
    .rstb(~HRESETn),
    .wea(WriteEnable &  RegByteLane[2] & ~ExclStoreFail)
//    .clka   (HCLK),
//    .clkb   (HCLK),
//    .addra (WordAddr[15:2]),
//    .addrb (HADDR[15:2]),
//    .ena    (1'b1),
//    .enb    (1'b1),
//    .wea (WriteEnable &  RegByteLane[2] & ~ExclStoreFail),
//    .dina (HWDATA[ 23: 16]),
//    .doutb (RAM_RData2)
  );
  
  sram_tp_wrapper u_ram_3 (
    .addra(WordAddr[15:2]),
    .addrb(HADDR[15:2]),
    .clka(HCLK),
    .clkb(HCLK),
    .dina(HWDATA[ 31: 24]),
    .doutb(RAM_RData3),
    .ena(1'b1),
    .enb(1'b1),
    .regceb(1'b1),
    .rsta(~HRESETn),
    .rstb(~HRESETn),
    .wea(WriteEnable &  RegByteLane[3] & ~ExclStoreFail)
//    .clka   (HCLK),
//    .clkb   (HCLK),
//    .addra (WordAddr[15:2]),
//    .addrb (HADDR[15:2]),
//    .ena    (1'b1),
//    .enb    (1'b1),
//    .wea (WriteEnable &  RegByteLane[3] & ~ExclStoreFail),
//    .dina (HWDATA[ 31: 24]),
//    .doutb (RAM_RData3)
  );
 
  // cout
  reg        act_w, act_r;
  reg [31:0] addr_w, addr_r;
  reg [ 3:0] wen_w, wen_r;
  wire [15:0] addr_dec;
  
  assign addr_dec = addr_r[15:0];
  always@(*) begin
    act_w = (HSEL && HTRANS == 2'b10);
    addr_w = (HSEL && HTRANS == 2'b10) ? HADDR : addr_r;
    wen_w =  (HSEL && HTRANS == 2'b10) ? HWRITE : wen_r;
  end

`ifdef RTL
  initial begin
    while(1) begin
      @(negedge HCLK);
      if(act_r) begin
        if(wen_r) begin
          if(addr_dec == 32'h0 && HWDATA == 32'd48) begin
            $display("End Simulation");
            $finish;
`ifdef DEBUG
          end else if(addr_dec == 32'h5000) begin
            $display("[RAM] COUT: %h", HWDATA);
          end else if(addr_dec == 32'h0000) begin
            $display("[RAM] Write = %0d", HWDATA);
`endif
          end
        end
      end
    end
  end
`endif

  always@(posedge HCLK or negedge HRESETn) begin
    if(~HRESETn) begin
      act_r <= 0;
      addr_r <= 0;
      wen_r <= 0;
    end else begin
      act_r <= act_w;
      addr_r <= addr_w;
      wen_r <= wen_w;
    end
  end

  // Generate read control (address phase)
  assign ReadValid  = HSEL & HREADY & HTRANS[1] & ~HWRITE;
  // Generate write control (address phase)
  assign WriteValid = HSEL & HREADY & HTRANS[1] & HWRITE;

  // Read enable for each byte (address phase)
  always @(*)
  begin
  if (ReadValid | WriteValid)
    begin
    case (HSIZE)
      0 : // Byte
        begin
        case (HADDR[1:0])
          0: NextByteLane = 4'b0001; // Byte 0
          1: NextByteLane = 4'b0010; // Byte 1
          2: NextByteLane = 4'b0100; // Byte 2
          3: NextByteLane = 4'b1000; // Byte 3
	    default:NextByteLane = 4'b0000; // Address not valid
        endcase
        end
      1 : // Halfword
        begin
        if (HADDR[1])
          NextByteLane = 4'b1100; // Upper halfword
        else
          NextByteLane = 4'b0011; // Lower halfword
        end
      default : // Word
        NextByteLane = 4'b1111; // Whole word
    endcase
    end
  else
    NextByteLane = 4'b0000; // Not reading
  end

  // Registering control signals to data phase
  always @(posedge HCLK or negedge HRESETn)
  begin
    if (~HRESETn)
      begin
      RegByteLane <= 4'b0000;
      ReadEnable  <= 1'b0;
      WriteEnable <= 1'b0;
      WordAddr    <= {16{1'b0}};
      end
    else if (HREADY)
      begin
      RegByteLane <= NextByteLane;
      ReadEnable  <= ReadValid;
      WriteEnable <= WriteValid;
      WordAddr    <= {HADDR[15:2], 2'b00};
      end
  end

  // Read operation  
  assign RDataOut0 = (ReadEnable & RegByteLane[0]) ? RAM_RData0 : 8'h00;
  assign RDataOut1 = (ReadEnable & RegByteLane[1]) ? RAM_RData1 : 8'h00;
  assign RDataOut2 = (ReadEnable & RegByteLane[2]) ? RAM_RData2 : 8'h00;
  assign RDataOut3 = (ReadEnable & RegByteLane[3]) ? RAM_RData3 : 8'h00;

  // Exclusive accesses tags - single monitor example  
  always @(posedge HCLK or negedge HRESETn)
  begin
  if (~HRESETn)
    begin
    Excl_Tag_Addr <= {12{1'b0}}; // Address
    Excl_Tag_MID  <= {4{1'b0}};  // Master ID
    end
  else if (ReadValid & HEXCL) // Exclusive reads
    begin
    Excl_Tag_Addr <= HADDR[15:4];
    Excl_Tag_MID  <= HMASTER[3:0];
    end
  end	

  // Exclusive state
  always @(posedge HCLK or negedge HRESETn)
  begin
  if (~HRESETn)
    Excl_State <= 1'b0;
  else 
    if (ReadValid & HEXCL) // Exclusive read
      Excl_State <= 1'b1;
	else if (WriteValid & (HMASTER!=Excl_Tag_MID[3:0]) & (HADDR[15:4]==Excl_Tag_Addr[15:4]))
      Excl_State <= 1'b0; // Another bus master write to same location	
    else if (WriteValid & HEXCL) // Another bus master performed an exclusive write
      Excl_State <= 1'b0;
  end

  // Generate exclusive access response controls 
  always @(posedge HCLK or negedge HRESETn)
  begin
  if (~HRESETn)
    begin
    ExclOkay       <= 1'b0;
    ExclStoreFail  <= 1'b0;
    end
  else if (HREADY)
    if (ReadValid & HEXCL)
      begin
      ExclOkay       <= 1'b1;
      ExclStoreFail  <= 1'b0;
      end
    else if  (WriteValid & HEXCL) // Exclusive store
      if ((HMASTER==Excl_Tag_MID[3:0]) & (HADDR[15:4]==Excl_Tag_Addr[15:4]) & Excl_State) // exclusive Okay 
        begin  
        ExclOkay      <= 1'b1;
        ExclStoreFail <= 1'b0;
        end
      else // Exclusive failed - either exclusive state is not set, or bus master ID doesn't match 
        begin
        ExclOkay      <= 1'b0;
        ExclStoreFail <= 1'b1; // Block write
        end
      else
        begin
        ExclOkay      <= 1'b0;  // Not exclusive accesses 
        ExclStoreFail <= 1'b0;
        end
  end  

  // Connect to top level
  assign HREADYOUT = 1'b1; // Always ready (no waitstate)
  assign HRESP     = 1'b0; // Always response with OKAY
  assign HEXOKAY   = ExclOkay & HREADYOUT;
  // Read data output
  assign HRDATA    = {RDataOut3, RDataOut2, RDataOut1, RDataOut0};
    
endmodule






















//  // Bridging signals
//  wire        HSEL;
//  wire [3:0]  HMASTER;
//  wire [15:0] HADDR;
//  wire [1:0]  HTRANS;
//  wire [2:0]  HSIZE;
//  wire        HWRITE;
//  wire [31:0] HWDATA;
//  wire        HEXCL;
//  wire        HREADY;
//  wire        HREADYOUT;
//  wire [31:0] HRDATA;
//  wire        HRESP;
//  wire        HEXOKAY;

//  // Internal signals
//  // reg    [7:0]  RamData[0:65535]; // 64k byte of RAM data
//  integer       i;            // Loop counter for zero initialization
//  wire          ReadValid;    // Address phase read valid
//  wire          WriteValid;   // Address phase write valid
//  reg           ReadEnable;   // Data phase read enable
//  reg           WriteEnable;  // Data phase write enable
//  reg    [3:0]  RegByteLane;  // Data phase byte lane 
//  reg    [3:0]  NextByteLane; // Next state of RegByteLane

//  wire   [7:0]  RDataOut0;    // Read Data Output byte#0
//  wire   [7:0]  RDataOut1;    // Read Data Output byte#1
//  wire   [7:0]  RDataOut2;    // Read Data Output byte#2
//  wire   [7:0]  RDataOut3;    // Read Data Output byte#3
//  reg   [15:0]  WordAddr;     // Word aligned address
  
//  reg   [15:4]  Excl_Tag_Addr;     // Exclusive access address
//  reg   [ 3:0]  Excl_Tag_MID;      // Exclusive access master ID
//  reg           Excl_State;        // Exclusive state
//  reg           ExclOkay;          // Exclusive Okay status (data phase)
//  reg           ExclStoreFail;     // Exclusive Failed state (data phase)

//  wire   [7:0]  RAM_RData0;    // RAM Data Output byte#0
//  wire   [7:0]  RAM_RData1;    // RAM Data Output byte#1
//  wire   [7:0]  RAM_RData2;    // RAM Data Output byte#2
//  wire   [7:0]  RAM_RData3;    // RAM Data Output byte#3

//  // IO connnection
//  assign HSEL = HSEL_RAM;
//  assign HMASTER = HMASTER_RAM;
//  assign HADDR = HADDR_RAM[15:0];
//  assign HTRANS = HTRANS_RAM;
//  assign HSIZE = HSIZE_RAM;
//  assign HWRITE = HWRITE_RAM;
//  assign HWDATA = HWDATA_RAM;
//  assign HEXCL = HEXCL_RAM;
//  assign HREADY = HREADY_RAM;
//  assign HREADYOUT_RAM = HREADYOUT;
//  assign HRDATA_RAM = HRDATA;
//  assign HRESP_RAM = HRESP;
//  assign HEXOKAY_RAM = HEXOKAY;

//  sram_tp #(
//    .WIDTH(8),
//    .DEPTH(16384)
//  ) u_ram_0 (
//    .RW0_clk   (HCLK),
//    .RW0_waddr (WordAddr[15:2]),
//    .RW0_raddr (HADDR[15:2]),
//    .RW0_en    (1'b1),
//    .RW0_wmode (WriteEnable &  RegByteLane[0] & ~ExclStoreFail),
//    .RW0_wdata (HWDATA[ 7: 0]),
//    .RW0_rdata (RAM_RData0)
//  );

//  sram_tp #(
//    .WIDTH(8),
//    .DEPTH(16384)
//  ) u_ram_1 (
//    .RW0_clk   (HCLK),
//    .RW0_waddr (WordAddr[15:2]),
//    .RW0_raddr (HADDR[15:2]),
//    .RW0_en    (1'b1),
//    .RW0_wmode (WriteEnable &  RegByteLane[1] & ~ExclStoreFail),
//    .RW0_wdata (HWDATA[15: 8]),
//    .RW0_rdata (RAM_RData1)
//  );

//  sram_tp #(
//    .WIDTH(8),
//    .DEPTH(16384)
//  ) u_ram_2 (
//    .RW0_clk   (HCLK),
//    .RW0_waddr (WordAddr[15:2]),
//    .RW0_raddr (HADDR[15:2]),
//    .RW0_en    (1'b1),
//    .RW0_wmode (WriteEnable &  RegByteLane[2] & ~ExclStoreFail),
//    .RW0_wdata (HWDATA[23:16]),
//    .RW0_rdata (RAM_RData2)
//  );

//  sram_tp #(
//    .WIDTH(8),
//    .DEPTH(16384)
//  ) u_ram_3 (
//    .RW0_clk   (HCLK),
//    .RW0_waddr (WordAddr[15:2]),
//    .RW0_raddr (HADDR[15:2]),
//    .RW0_en    (1'b1),
//    .RW0_wmode (WriteEnable &  RegByteLane[3] & ~ExclStoreFail),
//    .RW0_wdata (HWDATA[31:24]),
//    .RW0_rdata (RAM_RData3)
//  );

//  // cout
//  reg        act_w, act_r;
//  reg [31:0] addr_w, addr_r;
//  reg [ 3:0] wen_w, wen_r;
//  wire [15:0] addr_dec;
  
//  assign addr_dec = addr_r[15:0];
//  always@(*) begin
//    act_w = (HSEL && HTRANS == 2'b10);
//    addr_w = (HSEL && HTRANS == 2'b10) ? HADDR : addr_r;
//    wen_w =  (HSEL && HTRANS == 2'b10) ? HWRITE : wen_r;
//  end

//`ifdef RTL
//  initial begin
//    while(1) begin
//      @(negedge HCLK);
//      if(act_r) begin
//        if(wen_r) begin
//          if(addr_dec == 32'h0 && HWDATA == 32'd48) begin
//            $display("End Simulation");
//            $finish;
//`ifdef DEBUG
//          end else if(addr_dec == 32'h5000) begin
//            $display("[RAM] COUT: %h", HWDATA);
//          end else if(addr_dec == 32'h0000) begin
//            $display("[RAM] Write = %0d", HWDATA);
//`endif
//          end
//        end
//      end
//    end
//  end
//`endif

//  always@(posedge HCLK or negedge HRESETn) begin
//    if(~HRESETn) begin
//      act_r <= 0;
//      addr_r <= 0;
//      wen_r <= 0;
//    end else begin
//      act_r <= act_w;
//      addr_r <= addr_w;
//      wen_r <= wen_w;
//    end
//  end

//  // Generate read control (address phase)
//  assign ReadValid  = HSEL & HREADY & HTRANS[1] & ~HWRITE;
//  // Generate write control (address phase)
//  assign WriteValid = HSEL & HREADY & HTRANS[1] & HWRITE;

//  // Read enable for each byte (address phase)
//  always @(*)
//  begin
//  if (ReadValid | WriteValid)
//    begin
//    case (HSIZE)
//      0 : // Byte
//        begin
//        case (HADDR[1:0])
//          0: NextByteLane = 4'b0001; // Byte 0
//          1: NextByteLane = 4'b0010; // Byte 1
//          2: NextByteLane = 4'b0100; // Byte 2
//          3: NextByteLane = 4'b1000; // Byte 3
//	    default:NextByteLane = 4'b0000; // Address not valid
//        endcase
//        end
//      1 : // Halfword
//        begin
//        if (HADDR[1])
//          NextByteLane = 4'b1100; // Upper halfword
//        else
//          NextByteLane = 4'b0011; // Lower halfword
//        end
//      default : // Word
//        NextByteLane = 4'b1111; // Whole word
//    endcase
//    end
//  else
//    NextByteLane = 4'b0000; // Not reading
//  end

//  // Registering control signals to data phase
//  always @(posedge HCLK or negedge HRESETn)
//  begin
//    if (~HRESETn)
//      begin
//      RegByteLane <= 4'b0000;
//      ReadEnable  <= 1'b0;
//      WriteEnable <= 1'b0;
//      WordAddr    <= {16{1'b0}};
//      end
//    else if (HREADY)
//      begin
//      RegByteLane <= NextByteLane;
//      ReadEnable  <= ReadValid;
//      WriteEnable <= WriteValid;
//      WordAddr    <= {HADDR[15:2], 2'b00};
//      end
//  end

//  // Read operation  
//  assign RDataOut0 = (ReadEnable & RegByteLane[0]) ? RAM_RData0 : 8'h00;
//  assign RDataOut1 = (ReadEnable & RegByteLane[1]) ? RAM_RData1 : 8'h00;
//  assign RDataOut2 = (ReadEnable & RegByteLane[2]) ? RAM_RData2 : 8'h00;
//  assign RDataOut3 = (ReadEnable & RegByteLane[3]) ? RAM_RData3 : 8'h00;

//  // Exclusive accesses tags - single monitor example  
//  always @(posedge HCLK or negedge HRESETn)
//  begin
//  if (~HRESETn)
//    begin
//    Excl_Tag_Addr <= {12{1'b0}}; // Address
//    Excl_Tag_MID  <= {4{1'b0}};  // Master ID
//    end
//  else if (ReadValid & HEXCL) // Exclusive reads
//    begin
//    Excl_Tag_Addr <= HADDR[15:4];
//    Excl_Tag_MID  <= HMASTER[3:0];
//    end
//  end	

//  // Exclusive state
//  always @(posedge HCLK or negedge HRESETn)
//  begin
//  if (~HRESETn)
//    Excl_State <= 1'b0;
//  else 
//    if (ReadValid & HEXCL) // Exclusive read
//      Excl_State <= 1'b1;
//	else if (WriteValid & (HMASTER!=Excl_Tag_MID[3:0]) & (HADDR[15:4]==Excl_Tag_Addr[15:4]))
//      Excl_State <= 1'b0; // Another bus master write to same location	
//    else if (WriteValid & HEXCL) // Another bus master performed an exclusive write
//      Excl_State <= 1'b0;
//  end

//  // Generate exclusive access response controls 
//  always @(posedge HCLK or negedge HRESETn)
//  begin
//  if (~HRESETn)
//    begin
//    ExclOkay       <= 1'b0;
//    ExclStoreFail  <= 1'b0;
//    end
//  else if (HREADY)
//    if (ReadValid & HEXCL)
//      begin
//      ExclOkay       <= 1'b1;
//      ExclStoreFail  <= 1'b0;
//      end
//    else if  (WriteValid & HEXCL) // Exclusive store
//      if ((HMASTER==Excl_Tag_MID[3:0]) & (HADDR[15:4]==Excl_Tag_Addr[15:4]) & Excl_State) // exclusive Okay 
//        begin  
//        ExclOkay      <= 1'b1;
//        ExclStoreFail <= 1'b0;
//        end
//      else // Exclusive failed - either exclusive state is not set, or bus master ID doesn't match 
//        begin
//        ExclOkay      <= 1'b0;
//        ExclStoreFail <= 1'b1; // Block write
//        end
//      else
//        begin
//        ExclOkay      <= 1'b0;  // Not exclusive accesses 
//        ExclStoreFail <= 1'b0;
//        end
//  end  

//  // Connect to top level
//  assign HREADYOUT = 1'b1; // Always ready (no waitstate)
//  assign HRESP     = 1'b0; // Always response with OKAY
//  assign HEXOKAY   = ExclOkay & HREADYOUT;
//  // Read data output
//  assign HRDATA    = {RDataOut3, RDataOut2, RDataOut1, RDataOut0};
    
//endmodule
