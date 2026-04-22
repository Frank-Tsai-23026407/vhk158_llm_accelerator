// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:emb_fifo_gen:1.0
// IP Revision: 6

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module fifo_3_emb_fifo_gen_0_0 (
  rst,
  wr_clk,
  rd_clk,
  wr_en,
  rd_en,
  din,
  dout,
  wr_rst_busy,
  rd_rst_busy,
  full,
  empty,
  data_count
);

input wire rst;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fifo_3_wr_clk_0, INSERT_VIP 0" *)
input wire wr_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fifo_3_rd_clk_0, INSERT_VIP 0" *)
input wire rd_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *)
(* X_INTERFACE_MODE = "slave" *)
input wire wr_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *)
(* X_INTERFACE_MODE = "slave" *)
input wire rd_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *)
input wire [511 : 0] din;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *)
output wire [255 : 0] dout;
output wire wr_rst_busy;
output wire rd_rst_busy;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *)
output wire full;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *)
output wire empty;
output wire [0 : 0] data_count;

  emb_fifo_gen_v1_0_6 #(
    .C_INTERFACE_TYPE(0),
    .C_CLOCK_DOMAIN("INDEPENDENT"),
    .C_RELATED_CLOCKS(0),
    .C_FIFO_MEMORY_TYPE("BRAM"),
    .C_ECC_MODE("NO_ECC"),
    .C_ECC_MODE_WDCH("NO_ECC"),
    .C_ECC_MODE_RDCH("NO_ECC"),
    .C_FIFO_WRITE_DEPTH(32),
    .C_WRITE_DATA_WIDTH(512),
    .C_WR_DATA_COUNT_WIDTH(1),
    .C_WR_DATA_COUNT_WIDTH_WDCH(12),
    .C_WR_DATA_COUNT_WIDTH_RDCH(12),
    .C_PROG_FULL_THRESH(29),
    .C_PROG_FULL_THRESH_WDCH(2043),
    .C_PROG_FULL_THRESH_RDCH(2043),
    .C_READ_MODE("STD"),
    .C_FIFO_READ_LATENCY(2),
    .C_READ_DATA_WIDTH(256),
    .C_RD_DATA_COUNT_WIDTH(1),
    .C_RD_DATA_COUNT_WIDTH_WDCH(12),
    .C_RD_DATA_COUNT_WIDTH_RDCH(12),
    .C_FULL_RESET_VALUE(0),
    .C_PROG_EMPTY_THRESH(3),
    .C_PROG_EMPTY_THRESH_WDCH(5),
    .C_PROG_EMPTY_THRESH_RDCH(5),
    .C_DOUT_RESET_VALUE("0"),
    .C_REMOVE_WR_RD_PROT_LOGIC(0),
    .C_RDCLK_FASTER(0),
    .C_CDC_SYNC_STAGES(2),
    .C_EN_RESET_SYNCHRONIZER(1),
    .C_EN_ECC_PIPE(0),
    .C_WAKEUP_TIME(0),
    .C_AUTO_SLEEP_TIME(0),
    .C_USE_ADV_FEATURES("4"),
    .C_USE_ADV_FEATURES_WDCH("E0E"),
    .C_USE_ADV_FEATURES_RDCH("E0E"),
    .C_PACKET_FIFO("false"),
    .C_TDATA_WIDTH(32),
    .C_FIFO_DEPTH_AXIS(2048),
    .C_TID_WIDTH(8),
    .C_TDEST_WIDTH(4),
    .C_TUSER_WIDTH(4),
    .C_VERSION(0),
    .C_AXI_ID_WIDTH(1),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_DATA_WIDTH(32),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_RUSER_WIDTH(1),
    .C_FIFO_DEPTH_WACH(2048),
    .C_FIFO_DEPTH_WDCH(2048),
    .C_FIFO_DEPTH_WRCH(2048),
    .C_FIFO_DEPTH_RACH(2048),
    .C_FIFO_DEPTH_RDCH(2048),
    .C_FIFO_MEMORY_TYPE_WACH("AUTO"),
    .C_FIFO_MEMORY_TYPE_WDCH("AUTO"),
    .C_FIFO_MEMORY_TYPE_WRCH("AUTO"),
    .C_FIFO_MEMORY_TYPE_RACH("AUTO"),
    .C_FIFO_MEMORY_TYPE_RDCH("AUTO"),
    .C_CASCADE_HEIGHT(0),
    .C_SIM_ASSERT_CHK(0)
  ) inst (
    .rst(rst),
    .sleep(1'B0),
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .din(din),
    .dout(dout),
    .injectsbiterr(1'B0),
    .injectdbiterr(1'B0),
    .sbiterr(),
    .dbiterr(),
    .wr_rst_busy(wr_rst_busy),
    .rd_rst_busy(rd_rst_busy),
    .full(full),
    .empty(empty),
    .prog_full(),
    .data_count(data_count),
    .wr_data_count(),
    .rd_data_count(),
    .prog_empty(),
    .underflow(),
    .overflow(),
    .almost_full(),
    .almost_empty(),
    .wr_ack(),
    .data_valid(),
    .s_aclk(1'B0),
    .s_aresetn(1'B0),
    .m_aclk(1'B0),
    .s_axis_tvalid(1'B0),
    .s_axis_tready(),
    .s_axis_tdata(32'B0),
    .s_axis_tstrb(4'B0),
    .s_axis_tkeep(4'B0),
    .s_axis_tlast(1'B0),
    .s_axis_tid(8'B0),
    .s_axis_tdest(4'B0),
    .s_axis_tuser(4'B0),
    .m_axis_tvalid(),
    .m_axis_tready(1'B0),
    .m_axis_tdata(),
    .m_axis_tstrb(),
    .m_axis_tkeep(),
    .m_axis_tlast(),
    .m_axis_tid(),
    .m_axis_tdest(),
    .m_axis_tuser(),
    .prog_full_axis(),
    .wr_data_count_axis(),
    .data_count_axis(),
    .almost_full_axis(),
    .prog_empty_axis(),
    .rd_data_count_axis(),
    .almost_empty_axis(),
    .injectsbiterr_axis(1'B0),
    .injectdbiterr_axis(1'B0),
    .sbiterr_axis(),
    .dbiterr_axis(),
    .s_axi_araddr(32'B0),
    .s_axi_arburst(2'B0),
    .s_axi_arcache(4'B0),
    .s_axi_arid(1'B0),
    .s_axi_arlen(8'B0),
    .s_axi_arlock(2'B0),
    .s_axi_arprot(3'B0),
    .s_axi_arqos(4'B0),
    .s_axi_arready(),
    .s_axi_arregion(4'B0),
    .s_axi_arsize(3'B0),
    .s_axi_aruser(1'B0),
    .s_axi_arvalid(1'B0),
    .s_axi_awaddr(32'B0),
    .s_axi_awburst(2'B0),
    .s_axi_awcache(4'B0),
    .s_axi_awid(1'B0),
    .s_axi_awlen(8'B0),
    .s_axi_awlock(2'B0),
    .s_axi_awprot(3'B0),
    .s_axi_awqos(4'B0),
    .s_axi_awready(),
    .s_axi_awregion(4'B0),
    .s_axi_awsize(3'B0),
    .s_axi_awuser(1'B0),
    .s_axi_awvalid(1'B0),
    .s_axi_bid(),
    .s_axi_bready(1'B0),
    .s_axi_bresp(),
    .s_axi_buser(),
    .s_axi_bvalid(),
    .s_axi_rdata(),
    .s_axi_rid(),
    .s_axi_rlast(),
    .s_axi_rready(1'B0),
    .s_axi_rresp(),
    .s_axi_ruser(),
    .s_axi_rvalid(),
    .s_axi_wdata(32'B0),
    .s_axi_wid(1'B0),
    .s_axi_wlast(1'B0),
    .s_axi_wready(),
    .s_axi_wstrb(4'B0),
    .s_axi_wuser(1'B0),
    .s_axi_wvalid(1'B0),
    .m_axi_araddr(),
    .m_axi_arburst(),
    .m_axi_arcache(),
    .m_axi_arid(),
    .m_axi_arlen(),
    .m_axi_arlock(),
    .m_axi_arprot(),
    .m_axi_arqos(),
    .m_axi_arready(1'B0),
    .m_axi_arregion(),
    .m_axi_arsize(),
    .m_axi_aruser(),
    .m_axi_arvalid(),
    .m_axi_awaddr(),
    .m_axi_awburst(),
    .m_axi_awcache(),
    .m_axi_awid(),
    .m_axi_awlen(),
    .m_axi_awlock(),
    .m_axi_awprot(),
    .m_axi_awqos(),
    .m_axi_awready(1'B0),
    .m_axi_awregion(),
    .m_axi_awsize(),
    .m_axi_awuser(),
    .m_axi_awvalid(),
    .m_axi_bid(1'B0),
    .m_axi_bready(),
    .m_axi_bresp(2'B0),
    .m_axi_buser(1'B0),
    .m_axi_bvalid(1'B0),
    .m_axi_rdata(32'B0),
    .m_axi_rid(1'B0),
    .m_axi_rlast(1'B0),
    .m_axi_rready(),
    .m_axi_rresp(2'B0),
    .m_axi_ruser(1'B0),
    .m_axi_rvalid(1'B0),
    .m_axi_wdata(),
    .m_axi_wid(),
    .m_axi_wlast(),
    .m_axi_wready(1'B0),
    .m_axi_wstrb(),
    .m_axi_wuser(),
    .m_axi_wvalid(),
    .prog_full_wdch(),
    .prog_full_rdch(),
    .wr_data_count_wdch(),
    .wr_data_count_rdch(),
    .prog_empty_wdch(),
    .prog_empty_rdch(),
    .rd_data_count_wdch(),
    .rd_data_count_rdch(),
    .injectsbiterr_wdch(1'B0),
    .injectsbiterr_rdch(1'B0),
    .injectdbiterr_wdch(1'B0),
    .injectdbiterr_rdch(1'B0),
    .sbiterr_wdch(),
    .sbiterr_rdch(),
    .dbiterr_wdch(),
    .dbiterr_rdch()
  );
endmodule
