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
// Purpose: Simple address decoder for code region
//          address decoding in a Cortex-M3 device
// ----------------------------------------------
module ahb_decoder_code (
  // Input and output signals
  input   wire [31:0] HADDR,
  output  wire        HSEL_ROM,
  output  wire        HSEL_DefSlave
  );

assign HSEL_ROM = (HADDR[31:16]==16'h0000);
// Select default slave if none of the above devices is selected
assign HSEL_DefSlave = ~(HSEL_ROM );

endmodule
