// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module sram_sp (
  addra,
  wea,
  rsta,
  ena,
  douta,
  dina,
  clka,
  regcea
);

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
  output [31:0]douta;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLKA" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN sram_sp_clka_0, INSERT_VIP 0" *)
  input clka;
  (* X_INTERFACE_IGNORE = "true" *)
  input regcea;

  // stub module has no contents

endmodule
