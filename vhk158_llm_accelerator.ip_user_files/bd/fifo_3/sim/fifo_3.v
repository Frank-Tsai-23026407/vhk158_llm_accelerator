//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Apr 17 05:17:31 2026
//Host        : dcs-cpu01.dcs.lab running 64-bit Rocky Linux release 8.10 (Green Obsidian)
//Command     : generate_target fifo_3.bd
//Design      : fifo_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fifo_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fifo_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "fifo_3.hwdef" *) 
module fifo_3
   (fifo_empty,
    fifo_full,
    rd_clk,
    rd_data,
    rd_en,
    rst,
    wr_clk,
    wr_data,
    wr_en);
  output fifo_empty;
  output fifo_full;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RD_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RD_CLK, CLK_DOMAIN fifo_3_rd_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input rd_clk;
  output [255:0]rd_data;
  input rd_en;
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.WR_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.WR_CLK, CLK_DOMAIN fifo_3_wr_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input wr_clk;
  input [511:0]wr_data;
  input wr_en;

  wire fifo_empty;
  wire fifo_full;
  wire rd_clk;
  wire [255:0]rd_data;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire [511:0]wr_data;
  wire wr_en;

  fifo_3_emb_fifo_gen_0_0 emb_fifo_gen_0
       (.din(wr_data),
        .dout(rd_data),
        .empty(fifo_empty),
        .full(fifo_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule
