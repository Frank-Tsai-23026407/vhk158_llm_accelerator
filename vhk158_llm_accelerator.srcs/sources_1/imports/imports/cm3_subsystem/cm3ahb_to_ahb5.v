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
// Purpose: AHB5 bus wrapper for Cortex-M3 (AHB Lite)
// ----------------------------------------------

module cm3ahb_to_ahb5 (
  input  wire         HCLK,    // Clock
  input  wire         HRESETn, // Reset

  input  wire         CM3HREADY,  // HREADY on Cortex-M3/M4
  input  wire         CM3HWRITE,
  input  wire  [3:0]  CM3HPROT,
  input  wire  [1:0]  CM3MEMATTR, // Memory attribute
  input  wire         CM3EXREQ,    // Exclusive request
  output wire         CM3EXRESP,   // Exclusive response
  output wire  [1:0]  CM3HRESP,
  
  output wire  [6:0]  AHB5HPROT,
  output wire         AHB5HEXCL,   // Exclusive request
  input  wire         AHB5EXOKAY,  // Exclusive okay
  input  wire         AHB5HRESP
  );

  reg    ExclTransfer; // Indicates data phase of exclusive accesses
  //   Cortex-M3                  AHB5
  // MEMATTR[1] - shareable      HPROT[6] - shareable
  // MEMATTR[0] - allocate       HPROT[5] - allocate
  //                             HPROT[4] - lookup
  // HPROT[3]   - cacheable      HPROT[3] - modifiable
  // HPROT[2]   - bufferable     HPROT[2] - bufferable
  // HPROT[1]   - privileged     HPROT[1] - privileged
  // HPROT[0]   - data           HPROT[0] - data
  
  assign AHB5HPROT[6]   = CM3MEMATTR[1] & CM3HPROT[3];
  assign AHB5HPROT[5]   = CM3HPROT[3] & (~CM3HWRITE | ~CM3MEMATTR[0]);
  assign AHB5HPROT[4]   = CM3HPROT[3];
  assign AHB5HPROT[3:0] = CM3HPROT[3:0];
  
  assign AHB5HEXCL      = CM3EXREQ;
  
  // Mark data phases of exclusive accesses
  always @(posedge HCLK or negedge HRESETn)
  begin
  if (~HRESETn)
    ExclTransfer <= 1'b0;
  else if  (CM3HREADY)
    ExclTransfer <= CM3EXREQ;
  end
  
  assign CM3EXRESP = (ExclTransfer & ~AHB5EXOKAY & CM3HREADY);
  
  // Wide matching for HRESP
  assign CM3HRESP = {1'b0, AHB5HRESP}; // Only OKAY & ERROR are allowed

endmodule
