// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module sram_tp (
  rstb,
  addra,
  wea,
  rsta,
  ena,
  enb,
  doutb,
  clkb,
  addrb,
  dina,
  clka,
  regceb
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTB RST" *)
  (* X_INTERFACE_MODE = "slave RST.RSTB" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTB, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input rstb;
  (* X_INTERFACE_IGNORE = "true" *)
  input [13:0]addra;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTA RST" *)
  (* X_INTERFACE_MODE = "slave RST.RSTA" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTA, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input rsta;
  (* X_INTERFACE_IGNORE = "true" *)
  input ena;
  (* X_INTERFACE_IGNORE = "true" *)
  input enb;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]doutb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKB CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLKB" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKB, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN sram_tp_clkb_0, INSERT_VIP 0" *)
  input clkb;
  (* X_INTERFACE_IGNORE = "true" *)
  input [13:0]addrb;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLKA" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN sram_tp_clka_0, INSERT_VIP 0" *)
  input clka;
  (* X_INTERFACE_IGNORE = "true" *)
  input regceb;

  // stub module has no contents

endmodule
