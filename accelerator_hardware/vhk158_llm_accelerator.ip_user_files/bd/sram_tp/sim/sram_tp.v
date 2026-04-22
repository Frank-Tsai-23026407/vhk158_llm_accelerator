//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Apr 17 05:27:53 2026
//Host        : dcs-cpu01.dcs.lab running 64-bit Rocky Linux release 8.10 (Green Obsidian)
//Command     : generate_target sram_tp.bd
//Design      : sram_tp
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "sram_tp,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sram_tp,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "sram_tp.hwdef" *) 
module sram_tp
   (addra,
    addrb,
    clka,
    clkb,
    dina,
    doutb,
    ena,
    enb,
    regceb,
    rsta,
    rstb,
    wea);
  input [13:0]addra;
  input [13:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA, CLK_DOMAIN sram_tp_clka_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKB CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKB, CLK_DOMAIN sram_tp_clkb_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkb;
  input [7:0]dina;
  output [7:0]doutb;
  input ena;
  input enb;
  input regceb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTA RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTA, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rsta;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTB RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTB, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rstb;
  input [0:0]wea;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rsta;
  wire rstb;
  wire [0:0]wea;

  sram_tp_emb_mem_gen_0_0 emb_mem_gen_0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .regceb(regceb),
        .rsta(rsta),
        .rstb(rstb),
        .wea(wea));
endmodule
