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
// Purpose: Simple 64kB ROM with AHB interface
// ----------------------------------------------
// 
//
module ahb_rom (
  input  wire        HCLK,    // Clock
  input  wire        HRESETn, // Reset
  input  wire        HSEL_CPUID,    // Device select
  input  wire [31:0] HADDR_CPUID,   // Address
  input  wire [1:0]  HTRANS_CPUID,  // Transfer control
  input  wire [2:0]  HSIZE_CPUID,   // Transfer size
  input  wire        HREADY_CPUID,  // Transfer phase done
  output wire        HREADYOUT_CPUID, // Device ready
  output wire [31:0] HRDATA_CPUID,    // Read data output
  output wire        HRESP_CPUID,      // Device response (always OKAY)
  output wire        HEXOKAY_CPUID, // Exclusive okay (not used)

  input  wire        prog_load,
  input  wire        prog_ivalid,
  output wire        prog_iready,
  input  wire [31:0] prog_idata
);

// Bridging signal
  wire        HSEL;
  wire [15:0] HADDR;
  wire [1:0]  HTRANS;
  wire [2:0]  HSIZE;
  wire        HREADY;
  wire        HREADYOUT;
  wire [31:0] HRDATA;
  wire        HRESP;
  wire        HEXOKAY;

  // Internal signals
  integer       i;            // Loop counter for ROM initialization
  wire          ReadValid;    // Address phase read valid
  reg    [3:0]  ReadEnable, ReadEnable_r;   // Read enable for each byte(addr phase)
  reg    [7:0]  RDataOut0;    // Read Data Output byte#0(data phase)
  reg    [7:0]  RDataOut1;    // Read Data Output byte#1
  reg    [7:0]  RDataOut2;    // Read Data Output byte#2
  reg    [7:0]  RDataOut3;    // Read Data Output byte#3
  wire  [31:0]  ROM_RData;
  wire  [31:0]  ROM_RData_s;
  
  // Programming interface
  wire  [15:0]  WordAddr;
  wire  [15:0]  WriteAddr_w;
  reg   [15:0]  WriteAddr_r;

  // IO connection
  assign HSEL = HSEL_CPUID;
  assign HADDR = HADDR_CPUID[15:0];
  assign HTRANS = HTRANS_CPUID;
  assign HSIZE = HSIZE_CPUID;
  assign HREADY = HREADY_CPUID;
  assign HREADYOUT_CPUID = HREADYOUT;
  assign HRDATA_CPUID = HRDATA;
  assign HRESP_CPUID = HRESP;
  assign HEXOKAY_CPUID = HEXOKAY;

  assign WordAddr = (prog_load) ? WriteAddr_r : HADDR;
  
  sram_sp_wrapper u_rom (
    .addra(WordAddr[15:2]),
    .clka(HCLK),
    .dina(prog_idata),
    .douta(ROM_RData_s),
    .ena(1'b1),
    .regcea(1'b1),
    .rsta(~HRESETn),
    .wea(1'b0)
//    .clka   (HCLK),
//    .addra  (WordAddr[15:2]),
//    .ena    (1'b1),
//    //.wea (prog_ivalid & prog_load),
//    .wea (1'b0),
//    .dina (prog_idata),
//    .douta (ROM_RData_s)
  );
  
//  ila_10 ROM_ILA (
//    .clk(HCLK),
//    .probe0(HADDR_CPUID), //32
//    .probe1(ROM_RData), //32
//    .probe2(prog_load) //1
//  );
  
  assign ROM_RData = (!prog_load)? ROM_RData_s : 32'b0;
  
  // Programming logic
  assign prog_iready = 1'b1;
  //assign WriteAddr_w = (prog_load) ? (prog_ivalid ? WriteAddr_r + 4 : WriteAddr_r) : 16'd0;
  assign WriteAddr_w = 16'd0;

  always@(posedge HCLK or negedge HRESETn) begin
    if(~HRESETn) begin
      WriteAddr_r <= 16'd0;
    end else begin
      WriteAddr_r <= WriteAddr_w;
    end
  end

  // Start of main code
  // Initialize ROM
  // reg    [7:0]  RomData[0:65535]; // 64k byte of ROM data
  // initial
  // begin
  // for (i=0;i<16384;i=i+1)
  //   u_rom.ram[i] = 32'd0;
  // // for (i=0;i<65536;i=i+1)
  // //   RomData[i] = 8'h00; //Initialize all data to 0
  // // $readmemh("./testcase/image.dat", RomData); // Then read in program code
  // // for (i=0;i<16384;i=i+1)
  // //   u_rom.ram[i] = {RomData[i*4+3], RomData[i*4+2], RomData[i*4+1], RomData[i*4]};
  // // $readmemh("./testcase/image32.dat", u_rom.ram); // Then read in program code
  // end

  // Generate read control (address phase)
  assign ReadValid = HSEL & HREADY & HTRANS[1];
  // Read enable for each byte (address phase)
  always @(ReadValid or HADDR or HSIZE)
  begin
  if (ReadValid)
    begin
    case (HSIZE)
    0 : // Byte
      begin
      case (HADDR[1:0])
        0: ReadEnable = 4'b0001; // Byte 0
        1: ReadEnable = 4'b0010; // Byte 1
        2: ReadEnable = 4'b0100; // Byte 2
        3: ReadEnable = 4'b1000; // Byte 3
	default:ReadEnable = 4'b0000; // Address not valid
      endcase
      end
    1 : // Halfword
      begin
      if (HADDR[1])
        ReadEnable = 4'b1100; // Upper halfword
      else
        ReadEnable = 4'b0011; // Lower halfword
      end
    default : // Word
      ReadEnable = 4'b1111; // Whole word
    endcase
    end
  else
    ReadEnable = 4'b0000; // Not reading
  end

  always@(posedge HCLK or negedge HRESETn) begin
    if(~HRESETn) begin
      ReadEnable_r <= 4'b0;
    end else begin
      ReadEnable_r <= ReadEnable;
    end
  end

  always@(*) begin
    RDataOut0 = (ReadEnable_r[0]) ? ROM_RData[ 7: 0] : 8'h00;
    RDataOut1 = (ReadEnable_r[1]) ? ROM_RData[15: 8] : 8'h00;
    RDataOut2 = (ReadEnable_r[2]) ? ROM_RData[23:16] : 8'h00;
    RDataOut3 = (ReadEnable_r[3]) ? ROM_RData[31:24] : 8'h00;
  end

  // Connect to top level
  assign HREADYOUT = 1'b1; // Always ready (no waitstate)
  assign HRESP     = 1'b0;// Always response with OKAY
  assign HEXOKAY   = 1'b0;// Exclusive accesses not supported in ROM
   // Read data output
  assign HRDATA    = {RDataOut3, RDataOut2, RDataOut1, RDataOut0};

endmodule





























//  // Bridging signal
//  wire        HSEL;
//  wire [15:0] HADDR;
//  wire [1:0]  HTRANS;
//  wire [2:0]  HSIZE;
//  wire        HREADY;
//  wire        HREADYOUT;
//  wire [31:0] HRDATA;
//  wire        HRESP;
//  wire        HEXOKAY;

//  // Internal signals
//  integer       i;            // Loop counter for ROM initialization
//  wire          ReadValid;    // Address phase read valid
//  reg    [3:0]  ReadEnable, ReadEnable_r;   // Read enable for each byte(addr phase)
//  reg    [7:0]  RDataOut0;    // Read Data Output byte#0(data phase)
//  reg    [7:0]  RDataOut1;    // Read Data Output byte#1
//  reg    [7:0]  RDataOut2;    // Read Data Output byte#2
//  reg    [7:0]  RDataOut3;    // Read Data Output byte#3
//  wire  [31:0]  ROM_RData;

//  // Programming interface
//  wire  [15:0]  WordAddr;
//  wire  [15:0]  WriteAddr_w;
//  reg   [15:0]  WriteAddr_r;

//  // IO connection
//  assign HSEL = HSEL_CPUID;
//  assign HADDR = HADDR_CPUID[15:0];
//  assign HTRANS = HTRANS_CPUID;
//  assign HSIZE = HSIZE_CPUID;
//  assign HREADY = HREADY_CPUID;
//  assign HREADYOUT_CPUID = HREADYOUT;
//  assign HRDATA_CPUID = HRDATA;
//  assign HRESP_CPUID = HRESP;
//  assign HEXOKAY_CPUID = HEXOKAY;

//  assign WordAddr = (prog_load) ? WriteAddr_r : HADDR;

//  // 64KB SRAM
//  sram_sp #(
//    .WIDTH(32),
//    .DEPTH(16384)
//  ) u_rom (
//    .RW0_clk   (HCLK),
//    .RW0_addr  (WordAddr[15:2]),
//    .RW0_en    (1'b1),
//    .RW0_wmode (prog_ivalid & prog_load),
//    .RW0_wdata (prog_idata),
//    .RW0_rdata (ROM_RData)
//  );

//  // Programming logic
//  assign prog_iready = 1'b1;
//  assign WriteAddr_w = (prog_load) ? (prog_ivalid ? WriteAddr_r + 4 : WriteAddr_r) : 16'd0;

//  always@(posedge HCLK or negedge HRESETn) begin
//    if(~HRESETn) begin
//      WriteAddr_r <= 16'd0;
//    end else begin
//      WriteAddr_r <= WriteAddr_w;
//    end
//  end

//  // Start of main code
//  // Initialize ROM
//  // reg    [7:0]  RomData[0:65535]; // 64k byte of ROM data
//  // initial
//  // begin
//  // for (i=0;i<16384;i=i+1)
//  //   u_rom.ram[i] = 32'd0;
//  // // for (i=0;i<65536;i=i+1)
//  // //   RomData[i] = 8'h00; //Initialize all data to 0
//  // // $readmemh("./testcase/image.dat", RomData); // Then read in program code
//  // // for (i=0;i<16384;i=i+1)
//  // //   u_rom.ram[i] = {RomData[i*4+3], RomData[i*4+2], RomData[i*4+1], RomData[i*4]};
//  // // $readmemh("./testcase/image32.dat", u_rom.ram); // Then read in program code
//  // end

//  // Generate read control (address phase)
//  assign ReadValid = HSEL & HREADY & HTRANS[1];
//  // Read enable for each byte (address phase)
//  always @(ReadValid or HADDR or HSIZE)
//  begin
//  if (ReadValid)
//    begin
//    case (HSIZE)
//    0 : // Byte
//      begin
//      case (HADDR[1:0])
//        0: ReadEnable = 4'b0001; // Byte 0
//        1: ReadEnable = 4'b0010; // Byte 1
//        2: ReadEnable = 4'b0100; // Byte 2
//        3: ReadEnable = 4'b1000; // Byte 3
//	default:ReadEnable = 4'b0000; // Address not valid
//      endcase
//      end
//    1 : // Halfword
//      begin
//      if (HADDR[1])
//        ReadEnable = 4'b1100; // Upper halfword
//      else
//        ReadEnable = 4'b0011; // Lower halfword
//      end
//    default : // Word
//      ReadEnable = 4'b1111; // Whole word
//    endcase
//    end
//  else
//    ReadEnable = 4'b0000; // Not reading
//  end

//  always@(posedge HCLK or negedge HRESETn) begin
//    if(~HRESETn) begin
//      ReadEnable_r <= 4'b0;
//    end else begin
//      ReadEnable_r <= ReadEnable;
//    end
//  end

//  always@(*) begin
//    RDataOut0 = (ReadEnable_r[0]) ? ROM_RData[ 7: 0] : 8'h00;
//    RDataOut1 = (ReadEnable_r[1]) ? ROM_RData[15: 8] : 8'h00;
//    RDataOut2 = (ReadEnable_r[2]) ? ROM_RData[23:16] : 8'h00;
//    RDataOut3 = (ReadEnable_r[3]) ? ROM_RData[31:24] : 8'h00;
//  end

//  // Connect to top level
//  assign HREADYOUT = 1'b1; // Always ready (no waitstate)
//  assign HRESP     = 1'b0;// Always response with OKAY
//  assign HEXOKAY   = 1'b0;// Exclusive accesses not supported in ROM
//   // Read data output
//  assign HRDATA    = {RDataOut3, RDataOut2, RDataOut1, RDataOut0};

//endmodule

