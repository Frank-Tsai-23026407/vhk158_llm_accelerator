// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module fifo_1 (
  wr_clk,
  fifo_full,
  wr_en,
  wr_data,
  fifo_almost_empty,
  rd_data,
  fifo_empty,
  rst,
  rd_en,
  rd_clk
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.WR_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.WR_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.WR_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fifo_1_wr_clk_0, INSERT_VIP 0" *)
  input wr_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output fifo_full;
  (* X_INTERFACE_IGNORE = "true" *)
  input wr_en;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]wr_data;
  (* X_INTERFACE_IGNORE = "true" *)
  output fifo_almost_empty;
  (* X_INTERFACE_IGNORE = "true" *)
  output [511:0]rd_data;
  (* X_INTERFACE_IGNORE = "true" *)
  output fifo_empty;
  (* X_INTERFACE_IGNORE = "true" *)
  input rst;
  (* X_INTERFACE_IGNORE = "true" *)
  input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RD_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.RD_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RD_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fifo_1_rd_clk_0, INSERT_VIP 0" *)
  input rd_clk;

  // stub module has no contents

endmodule
