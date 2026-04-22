// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module fifo_2 (
  fifo_full,
  wr_en,
  wr_data,
  fifo_empty,
  rd_en,
  rd_data,
  wr_clk,
  rst,
  rd_clk
);

  (* X_INTERFACE_IGNORE = "true" *)
  output fifo_full;
  (* X_INTERFACE_IGNORE = "true" *)
  input wr_en;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]wr_data;
  (* X_INTERFACE_IGNORE = "true" *)
  output fifo_empty;
  (* X_INTERFACE_IGNORE = "true" *)
  input rd_en;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.WR_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.WR_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.WR_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fifo_2_wr_clk_0, INSERT_VIP 0" *)
  input wr_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RD_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.RD_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RD_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fifo_2_rd_clk_0, INSERT_VIP 0" *)
  input rd_clk;

  // stub module has no contents

endmodule
