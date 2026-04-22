
module  cpm_pcie_pcie_qdma_mailbox_0_0_core_top  #
  (
   parameter TCQ            =  1,
   parameter RTL_REVISION   = 'h1fd31000,
   parameter PATCH_REVISION = 'h00000000,
   parameter H10_DEVICE     = 0,
   parameter MAX_PF         = 4,
   parameter NUM_PFS        = 1,
   parameter VF_4KQ         = 0,
   parameter VERSAL         = "TRUE",
   parameter MAILBOX_OPT    = "FALSE",
   parameter TOTAL_FNC      = 256,
   parameter NUM_VFS_PF0    = 64,
   parameter NUM_VFS_PF1    = 64,
   parameter NUM_VFS_PF2    = 64,
   parameter NUM_VFS_PF3    = 60
   )
   (
    input 	  axi_aclk,
    input 	  axi_aresetn,
    input         ip_clk,
    input         ip_resetn,
    //M_AXI Lite input
    input  wire   [41:0]      S_AXI_0_araddr,
    input  wire   [2:0]       S_AXI_0_arprot,
    output wire  	      S_AXI_0_arready,
    input  wire 	      S_AXI_0_arvalid,
    input  wire   [41:0]      S_AXI_0_awaddr,
    input  wire   [2:0]       S_AXI_0_awprot,
    output wire  	      S_AXI_0_awready,
    input  wire 	      S_AXI_0_awvalid,
    input  wire 	      S_AXI_0_bready,
    output wire   [1:0]       S_AXI_0_bresp,
    output wire               S_AXI_0_bvalid,
    output wire   [31:0]      S_AXI_0_rdata,
    output wire   [1:0]       S_AXI_0_rresp,
    output wire   	      S_AXI_0_rvalid,
    input  wire 	      S_AXI_0_rready,
    input  wire   [31:0]      S_AXI_0_wdata,
    output wire  	      S_AXI_0_wready,
    input  wire   [3:0]       S_AXI_0_wstrb,
    input  wire 	      S_AXI_0_wvalid,
   
    //Pre FLR interface to IP

    output wire  	   mgmt_req_vld,
    input  wire 	   mgmt_req_rdy,
    output wire  [31:0]    mgmt_req_dat,
    output wire  [31:0]    mgmt_req_adr,
    output wire  [11:0]     mgmt_req_fnc,
    output wire  [5:0]     mgmt_req_msc,
    output wire  [1:0]     mgmt_req_cmd,
    input  wire 	   mgmt_cpl_vld,
    output wire  	   mgmt_cpl_rdy,
    input  wire [1:0]      mgmt_cpl_sts,
    input  wire [31:0]     mgmt_cpl_dat,

    //User FLR
    output wire  	  usr_flr_set,
    output wire  	  usr_flr_clr,
    output wire  [11:0]    usr_flr_fnc,
    input  wire  [11:0]    usr_flr_done_fnc,
    input  wire 	  usr_flr_done_vld,

    // FLR from/to DMA
    output wire         dma_flr_in_vld,
    output wire  [11:0]  dma_flr_in_fnc,
    input  wire  [11:0]  dma_flr_out_fnc,
    input  wire         dma_flr_out_set,
    input  wire         dma_flr_out_clr,

    //User IRQ
    input wire  	  usr_irq_vld,
    input wire    [4:0]   usr_irq_vec,
    input wire    [11:0]   usr_irq_fnc,
    output wire  	  usr_irq_ack,
    output wire  	  usr_irq_fail,

    // IRQ to IP
    output wire  	  dma_usr_irq_vld,
    output wire  [4:0]    dma_usr_irq_vec,
    output wire  [11:0]    dma_usr_irq_fnc,
    input  wire 	  dma_usr_irq_ack,
    input  wire 	  dma_usr_irq_fail
    
    );
 
 pcie_qdma_mailbox_v1_0_8_rtl_top #(
    .TCQ(TCQ),
    .RTL_REVISION  ( RTL_REVISION),
    .PATCH_REVISION( PATCH_REVISION),
    .H10_DEVICE    ( H10_DEVICE),
    .MAX_PF        ( MAX_PF ),
    .TOTAL_FNC     ( TOTAL_FNC ),
    .VF_4KQ        ( VF_4KQ    ),
    .MAILBOX_OPT   ( MAILBOX_OPT ),
    .NUM_VFS_PF0   ( NUM_VFS_PF0 ),
    .NUM_VFS_PF1   ( NUM_VFS_PF1 ),
    .NUM_VFS_PF2   ( NUM_VFS_PF2 ),
    .NUM_VFS_PF3   ( NUM_VFS_PF3 )
  ) rtl_top (
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .ip_clk( ip_clk ),
    .ip_resetn( ip_resetn ),
    .S_AXI_0_awaddr(S_AXI_0_awaddr),
    .S_AXI_0_awprot(S_AXI_0_awprot),
    .S_AXI_0_awvalid(S_AXI_0_awvalid),
    .S_AXI_0_awready(S_AXI_0_awready),
    .S_AXI_0_wdata(S_AXI_0_wdata),
    .S_AXI_0_wstrb(S_AXI_0_wstrb),
    .S_AXI_0_wvalid(S_AXI_0_wvalid),
    .S_AXI_0_wready(S_AXI_0_wready),
    .S_AXI_0_bvalid(S_AXI_0_bvalid),
    .S_AXI_0_bresp(S_AXI_0_bresp),
    .S_AXI_0_bready(S_AXI_0_bready),
    .S_AXI_0_araddr(S_AXI_0_araddr),
    .S_AXI_0_arprot(S_AXI_0_arprot),
    .S_AXI_0_arvalid(S_AXI_0_arvalid),
    .S_AXI_0_arready(S_AXI_0_arready),
    .S_AXI_0_rdata(S_AXI_0_rdata),
    .S_AXI_0_rresp(S_AXI_0_rresp),
    .S_AXI_0_rvalid(S_AXI_0_rvalid),
    .S_AXI_0_rready(S_AXI_0_rready),
    .mgmt_req_vld(mgmt_req_vld),
    .mgmt_req_rdy(mgmt_req_rdy),
    .mgmt_req_dat(mgmt_req_dat),
    .mgmt_req_adr(mgmt_req_adr),
    .mgmt_req_fnc(mgmt_req_fnc),
    .mgmt_req_msc(mgmt_req_msc),
    .mgmt_req_cmd(mgmt_req_cmd),
    .mgmt_cpl_vld(mgmt_cpl_vld),
    .mgmt_cpl_rdy(mgmt_cpl_rdy),
    .mgmt_cpl_sts(mgmt_cpl_sts),
    .mgmt_cpl_dat(mgmt_cpl_dat),

    .dma_flr_out_set(dma_flr_out_set),
    .dma_flr_out_clr(dma_flr_out_clr),
    .dma_flr_in_vld(dma_flr_in_vld),
    .usr_flr_set(usr_flr_set),
    .usr_flr_clr(usr_flr_clr),
    .usr_flr_done_vld(usr_flr_done_vld),
    .usr_irq_vld(usr_irq_vld),
    .usr_irq_vec(usr_irq_vec),

    .usr_irq_ack(usr_irq_ack),
    .usr_irq_fail(usr_irq_fail),
    .dma_usr_irq_vld(dma_usr_irq_vld),
    .dma_usr_irq_vec(dma_usr_irq_vec),
    .dma_flr_out_fnc(dma_flr_out_fnc),
    .usr_flr_done_fnc(usr_flr_done_fnc),
    .dma_flr_in_fnc(dma_flr_in_fnc),
    .usr_flr_fnc(usr_flr_fnc),
    .dma_usr_irq_fnc(dma_usr_irq_fnc),
    .usr_irq_fnc(usr_irq_fnc),
 
    .dma_usr_irq_ack(dma_usr_irq_ack),
    .dma_usr_irq_fail(dma_usr_irq_fail)
  );
endmodule

