//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Apr 17 10:37:22 2026
//Host        : dcs-cpu01.dcs.lab running 64-bit Rocky Linux release 8.10 (Green Obsidian)
//Command     : generate_target bram_group.bd
//Design      : bram_group
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bram_group,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bram_group,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "bram_group.hwdef" *) 
module bram_group
   (addra,
    clka,
    dina,
    douta,
    ena,
    regcea,
    rst,
    wea);
  input [5:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA, CLK_DOMAIN bram_group_clka_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clka;
  input [1023:0]dina;
  output [1023:0]douta;
  input ena;
  input regcea;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;
  input [0:0]wea;

  wire [5:0]addra;
  wire clka;
  wire [1023:0]dina;
  wire [1023:0]douta;
  wire ena;
  wire regcea;
  wire rst;
  wire [0:0]wea;

  bram_group_emb_mem_gen_0_0 emb_mem_gen_0
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .regcea(regcea),
        .rsta(rst),
        .wea(wea));
endmodule
