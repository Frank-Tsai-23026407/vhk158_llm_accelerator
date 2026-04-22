/////////////// wires assignment ///////////////
// PIPE CDC
assign pipe_tx_cdcfifo_din = { 
  pipe_commands_out_cdcfifo,
  pipe_tx_0_cdcfifo,
  pipe_tx_1_cdcfifo,
  pipe_tx_2_cdcfifo,
  pipe_tx_3_cdcfifo,
  pipe_tx_4_cdcfifo,
  pipe_tx_5_cdcfifo,
  pipe_tx_6_cdcfifo,
  pipe_tx_7_cdcfifo,
  pipe_tx_8_cdcfifo,
  pipe_tx_9_cdcfifo,
  pipe_tx_10_cdcfifo,
  pipe_tx_11_cdcfifo,
  pipe_tx_12_cdcfifo,
  pipe_tx_13_cdcfifo,
  pipe_tx_14_cdcfifo,
  pipe_tx_15_cdcfifo
};

assign { 
  pcie0_pipe_tx_0,
  pcie0_pipe_tx_1,
  pcie0_pipe_tx_2,
  pcie0_pipe_tx_3,
  pcie0_pipe_tx_4,
  pcie0_pipe_tx_5,
  pcie0_pipe_tx_6,
  pcie0_pipe_tx_7,
  pcie0_pipe_tx_8,
  pcie0_pipe_tx_9,
  pcie0_pipe_tx_10,
  pcie0_pipe_tx_11,
  pcie0_pipe_tx_12,
  pcie0_pipe_tx_13,
  pcie0_pipe_tx_14,
  pcie0_pipe_tx_15
} = pipe_tx_cdcfifo_dout[0+:(16*C_CPM_PIPE_SIGS_WIDTH)];

// Exclude pipe_commands_out since some of the pins are clock pins
// Only assign the ones that are not clock pins
assign pcie0_pipe_commands_out[2:1] = pipe_commands_out_cdcfifo[2:1];
assign pcie0_pipe_commands_out[3]   = pipe_commands_out_cdcfifo[3];
assign pcie0_pipe_commands_out[6:4] = pipe_commands_out_cdcfifo[6:4];
assign pcie0_pipe_commands_out[7]   = pipe_commands_out_cdcfifo[7];
assign pcie0_pipe_commands_out[8]   = pipe_commands_out_cdcfifo[8];
assign pcie0_pipe_commands_out[9]   = pipe_commands_out_cdcfifo[9];
assign pcie0_pipe_commands_out[10]  = pipe_commands_out_cdcfifo[10];

assign pipe_rx_cdcfifo_din = { 
  pcie0_pipe_commands_in,
  pcie0_pipe_rx_0,
  pcie0_pipe_rx_1,
  pcie0_pipe_rx_2,
  pcie0_pipe_rx_3,
  pcie0_pipe_rx_4,
  pcie0_pipe_rx_5,
  pcie0_pipe_rx_6,
  pcie0_pipe_rx_7,
  pcie0_pipe_rx_8,
  pcie0_pipe_rx_9,
  pcie0_pipe_rx_10,
  pcie0_pipe_rx_11,
  pcie0_pipe_rx_12,
  pcie0_pipe_rx_13,
  pcie0_pipe_rx_14,
  pcie0_pipe_rx_15
};

assign { 
  pipe_commands_in_cdcfifo,
  pipe_rx_0_cdcfifo,
  pipe_rx_1_cdcfifo,
  pipe_rx_2_cdcfifo,
  pipe_rx_3_cdcfifo,
  pipe_rx_4_cdcfifo,
  pipe_rx_5_cdcfifo,
  pipe_rx_6_cdcfifo,
  pipe_rx_7_cdcfifo,
  pipe_rx_8_cdcfifo,
  pipe_rx_9_cdcfifo,
  pipe_rx_10_cdcfifo,
  pipe_rx_11_cdcfifo,
  pipe_rx_12_cdcfifo,
  pipe_rx_13_cdcfifo,
  pipe_rx_14_cdcfifo,
  pipe_rx_15_cdcfifo
} = pipe_rx_cdcfifo_dout;

// Global I/O
assign gt0_refclk0_pdint = 1'b1;
assign gt1_refclk0_pdint = 1'b1;
assign gt2_refclk0_pdint = 1'b1;
assign gt3_refclk0_pdint = 1'b1;
assign gt0_refclk1_pdint = 1'b1;
assign gt1_refclk1_pdint = 1'b1;
assign gt2_refclk1_pdint = 1'b1;
assign gt3_refclk1_pdint = 1'b1;

assign pipe_clk = iffcq00txusrclk;
assign tx_rate_curr = iffcq00txrate[2:0];
assign pipe_tx0_rcvr_det = iffcq00txdetectrxloopback;

assign pcie0_pipe_commands_out[0] = pipe_clk; // If EP, use the clk from RP
assign pcie0_pipe_commands_out[11] = 1'b0; // Not used
assign pcie0_pipe_commands_out[12] = 1'b0; // Not used
assign pcie0_pipe_commands_out[13] = 1'b0; // Not used

assign pipe_commands_out_cdcfifo[7] = iffcq00txswing;
assign pipe_commands_out_cdcfifo[10] = tx_rate_curr[2]; // This is new in Versal (for CPM5 Gen5 Support)
assign pipe_commands_out_cdcfifo[8] = iffcq00gttxreset;
assign pipe_commands_out_cdcfifo[3] = pipe_tx0_rcvr_det;
assign pipe_commands_out_cdcfifo[9] = iffcq00txdeemph[0];
assign pipe_commands_out_cdcfifo[2:1] = tx_rate_curr[1:0]; // Upper bits split to maintain compatibility with US+
assign pipe_commands_out_cdcfifo[6:4] = iffcq00txmargin[2:0];

assign q0_ch0_txoutclk = txout_clk;
assign q0_ch1_txoutclk = txout_clk;
assign q0_ch2_txoutclk = txout_clk;
assign q0_ch3_txoutclk = txout_clk;
assign q1_ch0_txoutclk = txout_clk;
assign q1_ch1_txoutclk = txout_clk;
assign q1_ch2_txoutclk = txout_clk;
assign q1_ch3_txoutclk = txout_clk;

// Channel 0 - Quad 0 Lane 0
//Quad controls
// RX side
assign iffcq00rxctrl1 = 'h0; // no use
assign iffcq00rxctrl2 = 'h0; // no use
assign iffcq00rxctrl3 = 'h0; // no use
assign iffcq00rxctrl0[4] = 'h0; // no use
assign iffcq00rxctrl0[15:7] = 'h0; // no use

assign iffcq00rxctrl0[2] = pipe_rx_0_cdcfifo[35]; // rx_datavalid
assign iffcq00rxctrl0[3] = pipe_rx_0_cdcfifo[36]; // rx_startblock
assign iffcq00rxctrl0[1:0] = pipe_rx_0_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq00rxctrl0[6:5] = pipe_rx_0_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe_tx_0_cdcfifo[35] = iffcq00txctrl0[6]; // tx_datavalid
assign pipe_tx_0_cdcfifo[36] = iffcq00txctrl0[7]; // tx_startblock
assign pipe_tx_0_cdcfifo[33:32] = iffcq00txctrl2[1:0]; // tx_charisk[1:0]
assign pipe_tx_0_cdcfifo[38:37] = iffcq00txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq00cdrlock = 'h0;
assign iffcq00dmonout = 'h0;
assign iffcq00rxpkdet = 'h0;
assign iffcq00cfokdone = 'h0;
assign iffcq00rxheader = 'h0;
assign iffcq00comsasdet = 'h0;
assign iffcq00refclkpma = 'h0;
assign iffcq00rxchbondo = 'h0;
assign iffcq00rxprbserr = 'h0;
assign iffcq00rxqpisenn = 'h0;
assign iffcq00rxqpisenp = 'h0;
assign iffcq00txdccdone = 'h0;
assign iffcq00txqpisenn = 'h0;
assign iffcq00txqpisenp = 'h0;
assign iffcq00cominitdet = 'h0;
assign iffcq00comwakedet = 'h0;
assign iffcq00pcsrsvdout = 'h0;
assign iffcq00pinrsrvdas = 'h0;
assign iffcq00rxckcorcnt = 'h0;
assign iffcq00rxcommadet = 'h0;
assign iffcq00rxsliderdy = 'h0;
assign iffcq00rxslipdone = 'h0;
assign iffcq00rxsyncdone = 'h0;
assign iffcq00txsyncdone = 'h0;
assign iffcq00rxbufstatus = 'h0;
assign iffcq00rxcdrphdone = 'h0;
assign iffcq00rxoutpcsclk = 'h0;
assign iffcq00rxresetdone = 'h0;
assign iffcq00txbufstatus = 'h0;
assign iffcq00txcomfinish = 'h0;
assign iffcq00txoutpcsclk = 'h0;
assign iffcq00txresetdone = 'h0;
assign iffcq00iloresetdone = 'h0;
assign iffcq00rxprbslocked = 'h0;
assign iffcq00rxstartofseq = 'h0;
assign iffcq00rxbyterealign = 'h0;
assign iffcq00rxchanbondseq = 'h0;
assign iffcq00rxchanrealign = 'h0;
assign iffcq00rxchisaligned = 'h0;
assign iffcq00rxheadervalid = 'h0;
assign iffcq00txswingoutlow = 'h0;
assign iffcq00resetexception = 'h0;
assign iffcq00rxpmaresetdone = 'h0;
assign iffcq00txchicooutrsvd = 'h0;
assign iffcq00txpmaresetdone = 'h0;
assign iffcq00txswingouthigh = 'h0;
assign iffcq00rxbyteisaligned = 'h0;
assign iffcq00rxdapiresetdone = 'h0;
assign iffcq00rxdelayalignerr = 'h0;
assign iffcq00rxfinealigndone = 'h0;
assign iffcq00rxphasealignerr = 'h0;
assign iffcq00txdapiresetdone = 'h0;
assign iffcq00txdelayalignerr = 'h0;
assign iffcq00txphasealignerr = 'h0;
assign iffcq00eyescandataerror = 'h0;
assign iffcq00rxphasealigndone = 'h0;
assign iffcq00txphasealigndone = 'h0;
assign iffcq00xpipe5pipelineen = 'h0;
assign iffcq00rxethernetstatout = 'h0;
assign iffcq00rxphasesetinitdone = 'h0;
assign iffcq00rxprogdivresetdone = 'h0;
assign iffcq00rxsimplexphystatus = 'h0;
assign iffcq00txphasesetinitdone = 'h0;
assign iffcq00txprogdivresetdone = 'h0;
assign iffcq00txsimplexphystatus = 'h0;
assign iffcq00rxphaseshift180done = 'h0;
assign iffcq00txphaseshift180done = 'h0;
assign iffcq00rxdelayalignprogress = 'h0;
assign iffcq00txdelayalignprogress = 'h0;
assign iffcq00rxphasedelayresetdone = 'h0;
assign iffcq00txphasedelayresetdone = 'h0;
assign iffcq00txethernetstattxlocalfault = 'h0;

assign iffcq00phyready = phy_rdy;
assign iffcq00rxstatus = rx_status;
assign iffcq00phystatus = phy_status;

assign iffcq00bufgtce = bufggt_ce;
assign iffcq00bufgtrst = bufggt_rst;
assign iffcq00bufgtcemask = bufggt_ce_mask;
assign iffcq00bufgtrstmask = bufggt_rst_mask;

assign iffcq00bufgtdiv = {userclk2_div,userclk_div,coreclk_div,pipeclk_div};

assign iffcq00rxdata = pipe_rx_0_cdcfifo[31:0];
assign iffcq00rxvalid = ~pipe_rx_0_cdcfifo[34];
assign iffcq00rxelecidle = pipe_rx_0_cdcfifo[34];
assign iffcq00rxdatavalid = pipe_rx_0_cdcfifo[35];

// TX Side
assign pipe_tx_0_cdcfifo[34] = iffcq00txelecidle;
assign pipe_tx_0_cdcfifo[39] = iffcq00rxpolarity;
assign pipe_tx_0_cdcfifo[31:0] = iffcq00txdata[31:0];
assign pipe_tx_0_cdcfifo[41:40] = iffcq00txpowerdown[1:0];


// Channel 1 - Quad 0 Lane 1
//Quad controls
// RX side
assign iffcq01rxctrl1 = 'h0; // no use
assign iffcq01rxctrl2 = 'h0; // no use
assign iffcq01rxctrl3 = 'h0; // no use
assign iffcq01rxctrl0[4] = 'h0; // no use
assign iffcq01rxctrl0[15:7] = 'h0; // no use

assign iffcq01rxctrl0[2] = pipe_rx_1_cdcfifo[35]; // rx_datavalid
assign iffcq01rxctrl0[3] = pipe_rx_1_cdcfifo[36]; // rx_startblock
assign iffcq01rxctrl0[1:0] = pipe_rx_1_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq01rxctrl0[6:5] = pipe_rx_1_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe_tx_1_cdcfifo[35] = iffcq01txctrl0[6]; // tx_datavalid
assign pipe_tx_1_cdcfifo[36] = iffcq01txctrl0[7]; // tx_startblock
assign pipe_tx_1_cdcfifo[33:32] = iffcq01txctrl2[1:0]; // tx_charisk[1:0]
assign pipe_tx_1_cdcfifo[38:37] = iffcq01txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq01cdrlock = 'h0;
assign iffcq01dmonout = 'h0;
assign iffcq01rxpkdet = 'h0;
assign iffcq01cfokdone = 'h0;
assign iffcq01rxheader = 'h0;
assign iffcq01comsasdet = 'h0;
assign iffcq01refclkpma = 'h0;
assign iffcq01rxchbondo = 'h0;
assign iffcq01rxprbserr = 'h0;
assign iffcq01rxqpisenn = 'h0;
assign iffcq01rxqpisenp = 'h0;
assign iffcq01txdccdone = 'h0;
assign iffcq01txqpisenn = 'h0;
assign iffcq01txqpisenp = 'h0;
assign iffcq01cominitdet = 'h0;
assign iffcq01comwakedet = 'h0;
assign iffcq01pcsrsvdout = 'h0;
assign iffcq01pinrsrvdas = 'h0;
assign iffcq01rxckcorcnt = 'h0;
assign iffcq01rxcommadet = 'h0;
assign iffcq01rxsliderdy = 'h0;
assign iffcq01rxslipdone = 'h0;
assign iffcq01rxsyncdone = 'h0;
assign iffcq01txsyncdone = 'h0;
assign iffcq01rxbufstatus = 'h0;
assign iffcq01rxcdrphdone = 'h0;
assign iffcq01rxoutpcsclk = 'h0;
assign iffcq01rxresetdone = 'h0;
assign iffcq01txbufstatus = 'h0;
assign iffcq01txcomfinish = 'h0;
assign iffcq01txoutpcsclk = 'h0;
assign iffcq01txresetdone = 'h0;
assign iffcq01iloresetdone = 'h0;
assign iffcq01rxprbslocked = 'h0;
assign iffcq01rxstartofseq = 'h0;
assign iffcq01rxbyterealign = 'h0;
assign iffcq01rxchanbondseq = 'h0;
assign iffcq01rxchanrealign = 'h0;
assign iffcq01rxchisaligned = 'h0;
assign iffcq01rxheadervalid = 'h0;
assign iffcq01txswingoutlow = 'h0;
assign iffcq01resetexception = 'h0;
assign iffcq01rxpmaresetdone = 'h0;
assign iffcq01txchicooutrsvd = 'h0;
assign iffcq01txpmaresetdone = 'h0;
assign iffcq01txswingouthigh = 'h0;
assign iffcq01rxbyteisaligned = 'h0;
assign iffcq01rxdapiresetdone = 'h0;
assign iffcq01rxdelayalignerr = 'h0;
assign iffcq01rxfinealigndone = 'h0;
assign iffcq01rxphasealignerr = 'h0;
assign iffcq01txdapiresetdone = 'h0;
assign iffcq01txdelayalignerr = 'h0;
assign iffcq01txphasealignerr = 'h0;
assign iffcq01eyescandataerror = 'h0;
assign iffcq01rxphasealigndone = 'h0;
assign iffcq01txphasealigndone = 'h0;
assign iffcq01xpipe5pipelineen = 'h0;
assign iffcq01rxethernetstatout = 'h0;
assign iffcq01rxphasesetinitdone = 'h0;
assign iffcq01rxprogdivresetdone = 'h0;
assign iffcq01rxsimplexphystatus = 'h0;
assign iffcq01txphasesetinitdone = 'h0;
assign iffcq01txprogdivresetdone = 'h0;
assign iffcq01txsimplexphystatus = 'h0;
assign iffcq01rxphaseshift180done = 'h0;
assign iffcq01txphaseshift180done = 'h0;
assign iffcq01rxdelayalignprogress = 'h0;
assign iffcq01txdelayalignprogress = 'h0;
assign iffcq01rxphasedelayresetdone = 'h0;
assign iffcq01txphasedelayresetdone = 'h0;
assign iffcq01txethernetstattxlocalfault = 'h0;

assign iffcq01phyready  = phy_rdy;
assign iffcq01rxstatus  = rx_status;
assign iffcq01phystatus = phy_status;

assign iffcq01bufgtce = bufggt_ce;
assign iffcq01bufgtrst = bufggt_rst;
assign iffcq01bufgtcemask = bufggt_ce_mask;
assign iffcq01bufgtrstmask = bufggt_rst_mask;

assign iffcq01bufgtdiv = {userclk2_div,userclk_div,coreclk_div,pipeclk_div};

assign iffcq01rxdata = pipe_rx_1_cdcfifo[31:0];
assign iffcq01rxvalid = ~pipe_rx_1_cdcfifo[34];
assign iffcq01rxelecidle = pipe_rx_1_cdcfifo[34];
assign iffcq01rxdatavalid = pipe_rx_1_cdcfifo[35];

// TX Side
assign pipe_tx_1_cdcfifo[34] = iffcq01txelecidle;
assign pipe_tx_1_cdcfifo[39] = iffcq01rxpolarity;
assign pipe_tx_1_cdcfifo[31:0] = iffcq01txdata[31:0];
assign pipe_tx_1_cdcfifo[41:40] = iffcq01txpowerdown[1:0];


// Channel 2 - Quad 0 Lane 2
//Quad controls
// RX side
assign iffcq02rxctrl1 = 'h0; // no use
assign iffcq02rxctrl2 = 'h0; // no use
assign iffcq02rxctrl3 = 'h0; // no use
assign iffcq02rxctrl0[4] = 'h0; // no use
assign iffcq02rxctrl0[15:7] = 'h0; // no use

assign iffcq02rxctrl0[2] = pipe_rx_2_cdcfifo[35]; // rx_datavalid
assign iffcq02rxctrl0[3] = pipe_rx_2_cdcfifo[36]; // rx_startblock
assign iffcq02rxctrl0[1:0] = pipe_rx_2_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq02rxctrl0[6:5] = pipe_rx_2_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe_tx_2_cdcfifo[35] = iffcq02txctrl0[6]; // tx_datavalid
assign pipe_tx_2_cdcfifo[36] = iffcq02txctrl0[7]; // tx_startblock
assign pipe_tx_2_cdcfifo[33:32] = iffcq02txctrl2[1:0]; // tx_charisk[1:0]
assign pipe_tx_2_cdcfifo[38:37] = iffcq02txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq02cdrlock = 'h0;
assign iffcq02dmonout = 'h0;
assign iffcq02rxpkdet = 'h0;
assign iffcq02cfokdone = 'h0;
assign iffcq02rxheader = 'h0;
assign iffcq02comsasdet = 'h0;
assign iffcq02refclkpma = 'h0;
assign iffcq02rxchbondo = 'h0;
assign iffcq02rxprbserr = 'h0;
assign iffcq02rxqpisenn = 'h0;
assign iffcq02rxqpisenp = 'h0;
assign iffcq02txdccdone = 'h0;
assign iffcq02txqpisenn = 'h0;
assign iffcq02txqpisenp = 'h0;
assign iffcq02cominitdet = 'h0;
assign iffcq02comwakedet = 'h0;
assign iffcq02pcsrsvdout = 'h0;
assign iffcq02pinrsrvdas = 'h0;
assign iffcq02rxckcorcnt = 'h0;
assign iffcq02rxcommadet = 'h0;
assign iffcq02rxsliderdy = 'h0;
assign iffcq02rxslipdone = 'h0;
assign iffcq02rxsyncdone = 'h0;
assign iffcq02txsyncdone = 'h0;
assign iffcq02rxbufstatus = 'h0;
assign iffcq02rxcdrphdone = 'h0;
assign iffcq02rxoutpcsclk = 'h0;
assign iffcq02rxresetdone = 'h0;
assign iffcq02txbufstatus = 'h0;
assign iffcq02txcomfinish = 'h0;
assign iffcq02txoutpcsclk = 'h0;
assign iffcq02txresetdone = 'h0;
assign iffcq02iloresetdone = 'h0;
assign iffcq02rxprbslocked = 'h0;
assign iffcq02rxstartofseq = 'h0;
assign iffcq02rxbyterealign = 'h0;
assign iffcq02rxchanbondseq = 'h0;
assign iffcq02rxchanrealign = 'h0;
assign iffcq02rxchisaligned = 'h0;
assign iffcq02rxheadervalid = 'h0;
assign iffcq02txswingoutlow = 'h0;
assign iffcq02resetexception = 'h0;
assign iffcq02rxpmaresetdone = 'h0;
assign iffcq02txchicooutrsvd = 'h0;
assign iffcq02txpmaresetdone = 'h0;
assign iffcq02txswingouthigh = 'h0;
assign iffcq02rxbyteisaligned = 'h0;
assign iffcq02rxdapiresetdone = 'h0;
assign iffcq02rxdelayalignerr = 'h0;
assign iffcq02rxfinealigndone = 'h0;
assign iffcq02rxphasealignerr = 'h0;
assign iffcq02txdapiresetdone = 'h0;
assign iffcq02txdelayalignerr = 'h0;
assign iffcq02txphasealignerr = 'h0;
assign iffcq02eyescandataerror = 'h0;
assign iffcq02rxphasealigndone = 'h0;
assign iffcq02txphasealigndone = 'h0;
assign iffcq02xpipe5pipelineen = 'h0;
assign iffcq02rxethernetstatout = 'h0;
assign iffcq02rxphasesetinitdone = 'h0;
assign iffcq02rxprogdivresetdone = 'h0;
assign iffcq02rxsimplexphystatus = 'h0;
assign iffcq02txphasesetinitdone = 'h0;
assign iffcq02txprogdivresetdone = 'h0;
assign iffcq02txsimplexphystatus = 'h0;
assign iffcq02rxphaseshift180done = 'h0;
assign iffcq02txphaseshift180done = 'h0;
assign iffcq02rxdelayalignprogress = 'h0;
assign iffcq02txdelayalignprogress = 'h0;
assign iffcq02rxphasedelayresetdone = 'h0;
assign iffcq02txphasedelayresetdone = 'h0;
assign iffcq02txethernetstattxlocalfault = 'h0;

assign iffcq02phyready  = phy_rdy;
assign iffcq02rxstatus  = rx_status;
assign iffcq02phystatus = phy_status;

assign iffcq02bufgtce = bufggt_ce;
assign iffcq02bufgtrst = bufggt_rst;
assign iffcq02bufgtcemask = bufggt_ce_mask;
assign iffcq02bufgtrstmask = bufggt_rst_mask;

assign iffcq02bufgtdiv = {userclk2_div,userclk_div,coreclk_div,pipeclk_div};

assign iffcq02rxdata = pipe_rx_2_cdcfifo[31:0];
assign iffcq02rxvalid = ~pipe_rx_2_cdcfifo[34];
assign iffcq02rxelecidle = pipe_rx_2_cdcfifo[34];
assign iffcq02rxdatavalid = pipe_rx_2_cdcfifo[35];

// TX Side
assign pipe_tx_2_cdcfifo[34] = iffcq02txelecidle;
assign pipe_tx_2_cdcfifo[39] = iffcq02rxpolarity;
assign pipe_tx_2_cdcfifo[31:0] = iffcq02txdata[31:0];
assign pipe_tx_2_cdcfifo[41:40] = iffcq02txpowerdown[1:0];


// Channel 3 - Quad 0 Lane 3
//Quad controls
// RX side
assign iffcq03rxctrl1 = 'h0; // no use
assign iffcq03rxctrl2 = 'h0; // no use
assign iffcq03rxctrl3 = 'h0; // no use
assign iffcq03rxctrl0[4] = 'h0; // no use
assign iffcq03rxctrl0[15:7] = 'h0; // no use

assign iffcq03rxctrl0[2] = pipe_rx_3_cdcfifo[35]; // rx_datavalid
assign iffcq03rxctrl0[3] = pipe_rx_3_cdcfifo[36]; // rx_startblock
assign iffcq03rxctrl0[1:0] = pipe_rx_3_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq03rxctrl0[6:5] = pipe_rx_3_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe_tx_3_cdcfifo[35] = iffcq03txctrl0[6]; // tx_datavalid
assign pipe_tx_3_cdcfifo[36] = iffcq03txctrl0[7]; // tx_startblock
assign pipe_tx_3_cdcfifo[33:32] = iffcq03txctrl2[1:0]; // tx_charisk[1:0]
assign pipe_tx_3_cdcfifo[38:37] = iffcq03txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq03cdrlock = 'h0;
assign iffcq03dmonout = 'h0;
assign iffcq03rxpkdet = 'h0;
assign iffcq03cfokdone = 'h0;
assign iffcq03rxheader = 'h0;
assign iffcq03comsasdet = 'h0;
assign iffcq03refclkpma = 'h0;
assign iffcq03rxchbondo = 'h0;
assign iffcq03rxprbserr = 'h0;
assign iffcq03rxqpisenn = 'h0;
assign iffcq03rxqpisenp = 'h0;
assign iffcq03txdccdone = 'h0;
assign iffcq03txqpisenn = 'h0;
assign iffcq03txqpisenp = 'h0;
assign iffcq03cominitdet = 'h0;
assign iffcq03comwakedet = 'h0;
assign iffcq03pcsrsvdout = 'h0;
assign iffcq03pinrsrvdas = 'h0;
assign iffcq03rxckcorcnt = 'h0;
assign iffcq03rxcommadet = 'h0;
assign iffcq03rxsliderdy = 'h0;
assign iffcq03rxslipdone = 'h0;
assign iffcq03rxsyncdone = 'h0;
assign iffcq03txsyncdone = 'h0;
assign iffcq03rxbufstatus = 'h0;
assign iffcq03rxcdrphdone = 'h0;
assign iffcq03rxoutpcsclk = 'h0;
assign iffcq03rxresetdone = 'h0;
assign iffcq03txbufstatus = 'h0;
assign iffcq03txcomfinish = 'h0;
assign iffcq03txoutpcsclk = 'h0;
assign iffcq03txresetdone = 'h0;
assign iffcq03iloresetdone = 'h0;
assign iffcq03rxprbslocked = 'h0;
assign iffcq03rxstartofseq = 'h0;
assign iffcq03rxbyterealign = 'h0;
assign iffcq03rxchanbondseq = 'h0;
assign iffcq03rxchanrealign = 'h0;
assign iffcq03rxchisaligned = 'h0;
assign iffcq03rxheadervalid = 'h0;
assign iffcq03txswingoutlow = 'h0;
assign iffcq03resetexception = 'h0;
assign iffcq03rxpmaresetdone = 'h0;
assign iffcq03txchicooutrsvd = 'h0;
assign iffcq03txpmaresetdone = 'h0;
assign iffcq03txswingouthigh = 'h0;
assign iffcq03rxbyteisaligned = 'h0;
assign iffcq03rxdapiresetdone = 'h0;
assign iffcq03rxdelayalignerr = 'h0;
assign iffcq03rxfinealigndone = 'h0;
assign iffcq03rxphasealignerr = 'h0;
assign iffcq03txdapiresetdone = 'h0;
assign iffcq03txdelayalignerr = 'h0;
assign iffcq03txphasealignerr = 'h0;
assign iffcq03eyescandataerror = 'h0;
assign iffcq03rxphasealigndone = 'h0;
assign iffcq03txphasealigndone = 'h0;
assign iffcq03xpipe5pipelineen = 'h0;
assign iffcq03rxethernetstatout = 'h0;
assign iffcq03rxphasesetinitdone = 'h0;
assign iffcq03rxprogdivresetdone = 'h0;
assign iffcq03rxsimplexphystatus = 'h0;
assign iffcq03txphasesetinitdone = 'h0;
assign iffcq03txprogdivresetdone = 'h0;
assign iffcq03txsimplexphystatus = 'h0;
assign iffcq03rxphaseshift180done = 'h0;
assign iffcq03txphaseshift180done = 'h0;
assign iffcq03rxdelayalignprogress = 'h0;
assign iffcq03txdelayalignprogress = 'h0;
assign iffcq03rxphasedelayresetdone = 'h0;
assign iffcq03txphasedelayresetdone = 'h0;
assign iffcq03txethernetstattxlocalfault = 'h0;

assign iffcq03phyready  = phy_rdy;
assign iffcq03rxstatus  = rx_status;
assign iffcq03phystatus = phy_status;

assign iffcq03bufgtce = bufggt_ce;
assign iffcq03bufgtrst = bufggt_rst;
assign iffcq03bufgtcemask = bufggt_ce_mask;
assign iffcq03bufgtrstmask = bufggt_rst_mask;

assign iffcq03bufgtdiv = {userclk2_div,userclk_div,coreclk_div,pipeclk_div};

assign iffcq03rxdata = pipe_rx_3_cdcfifo[31:0];
assign iffcq03rxvalid = ~pipe_rx_3_cdcfifo[34];
assign iffcq03rxelecidle = pipe_rx_3_cdcfifo[34];
assign iffcq03rxdatavalid = pipe_rx_3_cdcfifo[35];

// TX Side
assign pipe_tx_3_cdcfifo[34] = iffcq03txelecidle;
assign pipe_tx_3_cdcfifo[39] = iffcq03rxpolarity;
assign pipe_tx_3_cdcfifo[31:0] = iffcq03txdata[31:0];
assign pipe_tx_3_cdcfifo[41:40] = iffcq03txpowerdown[1:0];


// Channel 4 - Quad 1 Lane 0
//Quad controls
// RX side
assign iffcq10rxctrl1 = 'h0; // no use
assign iffcq10rxctrl2 = 'h0; // no use
assign iffcq10rxctrl3 = 'h0; // no use
assign iffcq10rxctrl0[4] = 'h0; // no use
assign iffcq10rxctrl0[15:7] = 'h0; // no use

assign iffcq10rxctrl0[2] = pipe_rx_4_cdcfifo[35]; // rx_datavalid
assign iffcq10rxctrl0[3] = pipe_rx_4_cdcfifo[36]; // rx_startblock
assign iffcq10rxctrl0[1:0] = pipe_rx_4_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq10rxctrl0[6:5] = pipe_rx_4_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe_tx_4_cdcfifo[35] = iffcq10txctrl0[6]; // tx_datavalid
assign pipe_tx_4_cdcfifo[36] = iffcq10txctrl0[7]; // tx_startblock
assign pipe_tx_4_cdcfifo[33:32] = iffcq10txctrl2[1:0]; // tx_charisk[1:0]
assign pipe_tx_4_cdcfifo[38:37] = iffcq10txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq10cdrlock = 'h0;
assign iffcq10dmonout = 'h0;
assign iffcq10rxpkdet = 'h0;
assign iffcq10cfokdone = 'h0;
assign iffcq10rxheader = 'h0;
assign iffcq10comsasdet = 'h0;
assign iffcq10refclkpma = 'h0;
assign iffcq10rxchbondo = 'h0;
assign iffcq10rxprbserr = 'h0;
assign iffcq10rxqpisenn = 'h0;
assign iffcq10rxqpisenp = 'h0;
assign iffcq10txdccdone = 'h0;
assign iffcq10txqpisenn = 'h0;
assign iffcq10txqpisenp = 'h0;
assign iffcq10cominitdet = 'h0;
assign iffcq10comwakedet = 'h0;
assign iffcq10pcsrsvdout = 'h0;
assign iffcq10pinrsrvdas = 'h0;
assign iffcq10rxckcorcnt = 'h0;
assign iffcq10rxcommadet = 'h0;
assign iffcq10rxsliderdy = 'h0;
assign iffcq10rxslipdone = 'h0;
assign iffcq10rxsyncdone = 'h0;
assign iffcq10txsyncdone = 'h0;
assign iffcq10rxbufstatus = 'h0;
assign iffcq10rxcdrphdone = 'h0;
assign iffcq10rxoutpcsclk = 'h0;
assign iffcq10rxresetdone = 'h0;
assign iffcq10txbufstatus = 'h0;
assign iffcq10txcomfinish = 'h0;
assign iffcq10txoutpcsclk = 'h0;
assign iffcq10txresetdone = 'h0;
assign iffcq10iloresetdone = 'h0;
assign iffcq10rxprbslocked = 'h0;
assign iffcq10rxstartofseq = 'h0;
assign iffcq10rxbyterealign = 'h0;
assign iffcq10rxchanbondseq = 'h0;
assign iffcq10rxchanrealign = 'h0;
assign iffcq10rxchisaligned = 'h0;
assign iffcq10rxheadervalid = 'h0;
assign iffcq10txswingoutlow = 'h0;
assign iffcq10resetexception = 'h0;
assign iffcq10rxpmaresetdone = 'h0;
assign iffcq10txchicooutrsvd = 'h0;
assign iffcq10txpmaresetdone = 'h0;
assign iffcq10txswingouthigh = 'h0;
assign iffcq10rxbyteisaligned = 'h0;
assign iffcq10rxdapiresetdone = 'h0;
assign iffcq10rxdelayalignerr = 'h0;
assign iffcq10rxfinealigndone = 'h0;
assign iffcq10rxphasealignerr = 'h0;
assign iffcq10txdapiresetdone = 'h0;
assign iffcq10txdelayalignerr = 'h0;
assign iffcq10txphasealignerr = 'h0;
assign iffcq10eyescandataerror = 'h0;
assign iffcq10rxphasealigndone = 'h0;
assign iffcq10txphasealigndone = 'h0;
assign iffcq10xpipe5pipelineen = 'h0;
assign iffcq10rxethernetstatout = 'h0;
assign iffcq10rxphasesetinitdone = 'h0;
assign iffcq10rxprogdivresetdone = 'h0;
assign iffcq10rxsimplexphystatus = 'h0;
assign iffcq10txphasesetinitdone = 'h0;
assign iffcq10txprogdivresetdone = 'h0;
assign iffcq10txsimplexphystatus = 'h0;
assign iffcq10rxphaseshift180done = 'h0;
assign iffcq10txphaseshift180done = 'h0;
assign iffcq10rxdelayalignprogress = 'h0;
assign iffcq10txdelayalignprogress = 'h0;
assign iffcq10rxphasedelayresetdone = 'h0;
assign iffcq10txphasedelayresetdone = 'h0;
assign iffcq10txethernetstattxlocalfault = 'h0;

assign iffcq10phyready  = phy_rdy;
assign iffcq10rxstatus  = rx_status;
assign iffcq10phystatus = phy_status;

assign iffcq10bufgtce = bufggt_ce;
assign iffcq10bufgtrst = bufggt_rst;
assign iffcq10bufgtcemask = bufggt_ce_mask;
assign iffcq10bufgtrstmask = bufggt_rst_mask;

assign iffcq10bufgtdiv = {userclk2_div,userclk_div,coreclk_div,pipeclk_div};

assign iffcq10rxdata = pipe_rx_4_cdcfifo[31:0];
assign iffcq10rxvalid = ~pipe_rx_4_cdcfifo[34];
assign iffcq10rxelecidle = pipe_rx_4_cdcfifo[34];
assign iffcq10rxdatavalid = pipe_rx_4_cdcfifo[35];

// TX Side
assign pipe_tx_4_cdcfifo[34] = iffcq10txelecidle;
assign pipe_tx_4_cdcfifo[39] = iffcq10rxpolarity;
assign pipe_tx_4_cdcfifo[31:0] = iffcq10txdata[31:0];
assign pipe_tx_4_cdcfifo[41:40] = iffcq10txpowerdown[1:0];


// Channel 5 - Quad 1 Lane 1
//Quad controls
// RX side
assign iffcq11rxctrl1 = 'h0; // no use
assign iffcq11rxctrl2 = 'h0; // no use
assign iffcq11rxctrl3 = 'h0; // no use
assign iffcq11rxctrl0[4] = 'h0; // no use
assign iffcq11rxctrl0[15:7] = 'h0; // no use

assign iffcq11rxctrl0[2] = pipe_rx_5_cdcfifo[35]; // rx_datavalid
assign iffcq11rxctrl0[3] = pipe_rx_5_cdcfifo[36]; // rx_startblock
assign iffcq11rxctrl0[1:0] = pipe_rx_5_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq11rxctrl0[6:5] = pipe_rx_5_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe_tx_5_cdcfifo[35] = iffcq11txctrl0[6]; // tx_datavalid
assign pipe_tx_5_cdcfifo[36] = iffcq11txctrl0[7]; // tx_startblock
assign pipe_tx_5_cdcfifo[33:32] = iffcq11txctrl2[1:0]; // tx_charisk[1:0]
assign pipe_tx_5_cdcfifo[38:37] = iffcq11txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq11cdrlock = 'h0;
assign iffcq11dmonout = 'h0;
assign iffcq11rxpkdet = 'h0;
assign iffcq11cfokdone = 'h0;
assign iffcq11rxheader = 'h0;
assign iffcq11comsasdet = 'h0;
assign iffcq11refclkpma = 'h0;
assign iffcq11rxchbondo = 'h0;
assign iffcq11rxprbserr = 'h0;
assign iffcq11rxqpisenn = 'h0;
assign iffcq11rxqpisenp = 'h0;
assign iffcq11txdccdone = 'h0;
assign iffcq11txqpisenn = 'h0;
assign iffcq11txqpisenp = 'h0;
assign iffcq11cominitdet = 'h0;
assign iffcq11comwakedet = 'h0;
assign iffcq11pcsrsvdout = 'h0;
assign iffcq11pinrsrvdas = 'h0;
assign iffcq11rxckcorcnt = 'h0;
assign iffcq11rxcommadet = 'h0;
assign iffcq11rxsliderdy = 'h0;
assign iffcq11rxslipdone = 'h0;
assign iffcq11rxsyncdone = 'h0;
assign iffcq11txsyncdone = 'h0;
assign iffcq11rxbufstatus = 'h0;
assign iffcq11rxcdrphdone = 'h0;
assign iffcq11rxoutpcsclk = 'h0;
assign iffcq11rxresetdone = 'h0;
assign iffcq11txbufstatus = 'h0;
assign iffcq11txcomfinish = 'h0;
assign iffcq11txoutpcsclk = 'h0;
assign iffcq11txresetdone = 'h0;
assign iffcq11iloresetdone = 'h0;
assign iffcq11rxprbslocked = 'h0;
assign iffcq11rxstartofseq = 'h0;
assign iffcq11rxbyterealign = 'h0;
assign iffcq11rxchanbondseq = 'h0;
assign iffcq11rxchanrealign = 'h0;
assign iffcq11rxchisaligned = 'h0;
assign iffcq11rxheadervalid = 'h0;
assign iffcq11txswingoutlow = 'h0;
assign iffcq11resetexception = 'h0;
assign iffcq11rxpmaresetdone = 'h0;
assign iffcq11txchicooutrsvd = 'h0;
assign iffcq11txpmaresetdone = 'h0;
assign iffcq11txswingouthigh = 'h0;
assign iffcq11rxbyteisaligned = 'h0;
assign iffcq11rxdapiresetdone = 'h0;
assign iffcq11rxdelayalignerr = 'h0;
assign iffcq11rxfinealigndone = 'h0;
assign iffcq11rxphasealignerr = 'h0;
assign iffcq11txdapiresetdone = 'h0;
assign iffcq11txdelayalignerr = 'h0;
assign iffcq11txphasealignerr = 'h0;
assign iffcq11eyescandataerror = 'h0;
assign iffcq11rxphasealigndone = 'h0;
assign iffcq11txphasealigndone = 'h0;
assign iffcq11xpipe5pipelineen = 'h0;
assign iffcq11rxethernetstatout = 'h0;
assign iffcq11rxphasesetinitdone = 'h0;
assign iffcq11rxprogdivresetdone = 'h0;
assign iffcq11rxsimplexphystatus = 'h0;
assign iffcq11txphasesetinitdone = 'h0;
assign iffcq11txprogdivresetdone = 'h0;
assign iffcq11txsimplexphystatus = 'h0;
assign iffcq11rxphaseshift180done = 'h0;
assign iffcq11txphaseshift180done = 'h0;
assign iffcq11rxdelayalignprogress = 'h0;
assign iffcq11txdelayalignprogress = 'h0;
assign iffcq11rxphasedelayresetdone = 'h0;
assign iffcq11txphasedelayresetdone = 'h0;
assign iffcq11txethernetstattxlocalfault = 'h0;

assign iffcq11phyready  = phy_rdy;
assign iffcq11rxstatus  = rx_status;
assign iffcq11phystatus = phy_status;

assign iffcq11bufgtce = bufggt_ce;
assign iffcq11bufgtrst = bufggt_rst;
assign iffcq11bufgtcemask = bufggt_ce_mask;
assign iffcq11bufgtrstmask = bufggt_rst_mask;

assign iffcq11bufgtdiv = {userclk2_div,userclk_div,coreclk_div,pipeclk_div};

assign iffcq11rxdata = pipe_rx_5_cdcfifo[31:0];
assign iffcq11rxvalid = ~pipe_rx_5_cdcfifo[34];
assign iffcq11rxelecidle = pipe_rx_5_cdcfifo[34];
assign iffcq11rxdatavalid = pipe_rx_5_cdcfifo[35];

// TX Side
assign pipe_tx_5_cdcfifo[34] = iffcq11txelecidle;
assign pipe_tx_5_cdcfifo[39] = iffcq11rxpolarity;
assign pipe_tx_5_cdcfifo[31:0] = iffcq11txdata[31:0];
assign pipe_tx_5_cdcfifo[41:40] = iffcq11txpowerdown[1:0];


// Channel 6 - Quad 1 Lane 2
//Quad controls
// RX side
assign iffcq12rxctrl1 = 'h0; // no use
assign iffcq12rxctrl2 = 'h0; // no use
assign iffcq12rxctrl3 = 'h0; // no use
assign iffcq12rxctrl0[4] = 'h0; // no use
assign iffcq12rxctrl0[15:7] = 'h0; // no use

assign iffcq12rxctrl0[2] = pipe_rx_6_cdcfifo[35]; // rx_datavalid
assign iffcq12rxctrl0[3] = pipe_rx_6_cdcfifo[36]; // rx_startblock
assign iffcq12rxctrl0[1:0] = pipe_rx_6_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq12rxctrl0[6:5] = pipe_rx_6_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe_tx_6_cdcfifo[35] = iffcq12txctrl0[6]; // tx_datavalid
assign pipe_tx_6_cdcfifo[36] = iffcq12txctrl0[7]; // tx_startblock
assign pipe_tx_6_cdcfifo[33:32] = iffcq12txctrl2[1:0]; // tx_charisk[1:0]
assign pipe_tx_6_cdcfifo[38:37] = iffcq12txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq12cdrlock = 'h0;
assign iffcq12dmonout = 'h0;
assign iffcq12rxpkdet = 'h0;
assign iffcq12cfokdone = 'h0;
assign iffcq12rxheader = 'h0;
assign iffcq12comsasdet = 'h0;
assign iffcq12refclkpma = 'h0;
assign iffcq12rxchbondo = 'h0;
assign iffcq12rxprbserr = 'h0;
assign iffcq12rxqpisenn = 'h0;
assign iffcq12rxqpisenp = 'h0;
assign iffcq12txdccdone = 'h0;
assign iffcq12txqpisenn = 'h0;
assign iffcq12txqpisenp = 'h0;
assign iffcq12cominitdet = 'h0;
assign iffcq12comwakedet = 'h0;
assign iffcq12pcsrsvdout = 'h0;
assign iffcq12pinrsrvdas = 'h0;
assign iffcq12rxckcorcnt = 'h0;
assign iffcq12rxcommadet = 'h0;
assign iffcq12rxsliderdy = 'h0;
assign iffcq12rxslipdone = 'h0;
assign iffcq12rxsyncdone = 'h0;
assign iffcq12txsyncdone = 'h0;
assign iffcq12rxbufstatus = 'h0;
assign iffcq12rxcdrphdone = 'h0;
assign iffcq12rxoutpcsclk = 'h0;
assign iffcq12rxresetdone = 'h0;
assign iffcq12txbufstatus = 'h0;
assign iffcq12txcomfinish = 'h0;
assign iffcq12txoutpcsclk = 'h0;
assign iffcq12txresetdone = 'h0;
assign iffcq12iloresetdone = 'h0;
assign iffcq12rxprbslocked = 'h0;
assign iffcq12rxstartofseq = 'h0;
assign iffcq12rxbyterealign = 'h0;
assign iffcq12rxchanbondseq = 'h0;
assign iffcq12rxchanrealign = 'h0;
assign iffcq12rxchisaligned = 'h0;
assign iffcq12rxheadervalid = 'h0;
assign iffcq12txswingoutlow = 'h0;
assign iffcq12resetexception = 'h0;
assign iffcq12rxpmaresetdone = 'h0;
assign iffcq12txchicooutrsvd = 'h0;
assign iffcq12txpmaresetdone = 'h0;
assign iffcq12txswingouthigh = 'h0;
assign iffcq12rxbyteisaligned = 'h0;
assign iffcq12rxdapiresetdone = 'h0;
assign iffcq12rxdelayalignerr = 'h0;
assign iffcq12rxfinealigndone = 'h0;
assign iffcq12rxphasealignerr = 'h0;
assign iffcq12txdapiresetdone = 'h0;
assign iffcq12txdelayalignerr = 'h0;
assign iffcq12txphasealignerr = 'h0;
assign iffcq12eyescandataerror = 'h0;
assign iffcq12rxphasealigndone = 'h0;
assign iffcq12txphasealigndone = 'h0;
assign iffcq12xpipe5pipelineen = 'h0;
assign iffcq12rxethernetstatout = 'h0;
assign iffcq12rxphasesetinitdone = 'h0;
assign iffcq12rxprogdivresetdone = 'h0;
assign iffcq12rxsimplexphystatus = 'h0;
assign iffcq12txphasesetinitdone = 'h0;
assign iffcq12txprogdivresetdone = 'h0;
assign iffcq12txsimplexphystatus = 'h0;
assign iffcq12rxphaseshift180done = 'h0;
assign iffcq12txphaseshift180done = 'h0;
assign iffcq12rxdelayalignprogress = 'h0;
assign iffcq12txdelayalignprogress = 'h0;
assign iffcq12rxphasedelayresetdone = 'h0;
assign iffcq12txphasedelayresetdone = 'h0;
assign iffcq12txethernetstattxlocalfault = 'h0;

assign iffcq12phyready  = phy_rdy;
assign iffcq12rxstatus  = rx_status;
assign iffcq12phystatus = phy_status;

assign iffcq12bufgtce = bufggt_ce;
assign iffcq12bufgtrst = bufggt_rst;
assign iffcq12bufgtcemask = bufggt_ce_mask;
assign iffcq12bufgtrstmask = bufggt_rst_mask;

assign iffcq12bufgtdiv = {userclk2_div,userclk_div,coreclk_div,pipeclk_div};

assign iffcq12rxdata = pipe_rx_6_cdcfifo[31:0];
assign iffcq12rxvalid = ~pipe_rx_6_cdcfifo[34];
assign iffcq12rxelecidle = pipe_rx_6_cdcfifo[34];
assign iffcq12rxdatavalid = pipe_rx_6_cdcfifo[35];

// TX Side
assign pipe_tx_6_cdcfifo[34] = iffcq12txelecidle;
assign pipe_tx_6_cdcfifo[39] = iffcq12rxpolarity;
assign pipe_tx_6_cdcfifo[31:0] = iffcq12txdata[31:0];
assign pipe_tx_6_cdcfifo[41:40] = iffcq12txpowerdown[1:0];


// Channel 7 - Quad 1 Lane 3
//Quad controls
// RX side
assign iffcq13rxctrl1 = 'h0; // no use
assign iffcq13rxctrl2 = 'h0; // no use
assign iffcq13rxctrl3 = 'h0; // no use
assign iffcq13rxctrl0[4] = 'h0; // no use
assign iffcq13rxctrl0[15:7] = 'h0; // no use

assign iffcq13rxctrl0[2] = pipe_rx_7_cdcfifo[35]; // rx_datavalid
assign iffcq13rxctrl0[3] = pipe_rx_7_cdcfifo[36]; // rx_startblock
assign iffcq13rxctrl0[1:0] = pipe_rx_7_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq13rxctrl0[6:5] = pipe_rx_7_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe_tx_7_cdcfifo[35] = iffcq13txctrl0[6]; // tx_datavalid
assign pipe_tx_7_cdcfifo[36] = iffcq13txctrl0[7]; // tx_startblock
assign pipe_tx_7_cdcfifo[33:32] = iffcq13txctrl2[1:0]; // tx_charisk[1:0]
assign pipe_tx_7_cdcfifo[38:37] = iffcq13txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq13cdrlock = 'h0;
assign iffcq13dmonout = 'h0;
assign iffcq13rxpkdet = 'h0;
assign iffcq13cfokdone = 'h0;
assign iffcq13rxheader = 'h0;
assign iffcq13comsasdet = 'h0;
assign iffcq13refclkpma = 'h0;
assign iffcq13rxchbondo = 'h0;
assign iffcq13rxprbserr = 'h0;
assign iffcq13rxqpisenn = 'h0;
assign iffcq13rxqpisenp = 'h0;
assign iffcq13txdccdone = 'h0;
assign iffcq13txqpisenn = 'h0;
assign iffcq13txqpisenp = 'h0;
assign iffcq13cominitdet = 'h0;
assign iffcq13comwakedet = 'h0;
assign iffcq13pcsrsvdout = 'h0;
assign iffcq13pinrsrvdas = 'h0;
assign iffcq13rxckcorcnt = 'h0;
assign iffcq13rxcommadet = 'h0;
assign iffcq13rxsliderdy = 'h0;
assign iffcq13rxslipdone = 'h0;
assign iffcq13rxsyncdone = 'h0;
assign iffcq13txsyncdone = 'h0;
assign iffcq13rxbufstatus = 'h0;
assign iffcq13rxcdrphdone = 'h0;
assign iffcq13rxoutpcsclk = 'h0;
assign iffcq13rxresetdone = 'h0;
assign iffcq13txbufstatus = 'h0;
assign iffcq13txcomfinish = 'h0;
assign iffcq13txoutpcsclk = 'h0;
assign iffcq13txresetdone = 'h0;
assign iffcq13iloresetdone = 'h0;
assign iffcq13rxprbslocked = 'h0;
assign iffcq13rxstartofseq = 'h0;
assign iffcq13rxbyterealign = 'h0;
assign iffcq13rxchanbondseq = 'h0;
assign iffcq13rxchanrealign = 'h0;
assign iffcq13rxchisaligned = 'h0;
assign iffcq13rxheadervalid = 'h0;
assign iffcq13txswingoutlow = 'h0;
assign iffcq13resetexception = 'h0;
assign iffcq13rxpmaresetdone = 'h0;
assign iffcq13txchicooutrsvd = 'h0;
assign iffcq13txpmaresetdone = 'h0;
assign iffcq13txswingouthigh = 'h0;
assign iffcq13rxbyteisaligned = 'h0;
assign iffcq13rxdapiresetdone = 'h0;
assign iffcq13rxdelayalignerr = 'h0;
assign iffcq13rxfinealigndone = 'h0;
assign iffcq13rxphasealignerr = 'h0;
assign iffcq13txdapiresetdone = 'h0;
assign iffcq13txdelayalignerr = 'h0;
assign iffcq13txphasealignerr = 'h0;
assign iffcq13eyescandataerror = 'h0;
assign iffcq13rxphasealigndone = 'h0;
assign iffcq13txphasealigndone = 'h0;
assign iffcq13xpipe5pipelineen = 'h0;
assign iffcq13rxethernetstatout = 'h0;
assign iffcq13rxphasesetinitdone = 'h0;
assign iffcq13rxprogdivresetdone = 'h0;
assign iffcq13rxsimplexphystatus = 'h0;
assign iffcq13txphasesetinitdone = 'h0;
assign iffcq13txprogdivresetdone = 'h0;
assign iffcq13txsimplexphystatus = 'h0;
assign iffcq13rxphaseshift180done = 'h0;
assign iffcq13txphaseshift180done = 'h0;
assign iffcq13rxdelayalignprogress = 'h0;
assign iffcq13txdelayalignprogress = 'h0;
assign iffcq13rxphasedelayresetdone = 'h0;
assign iffcq13txphasedelayresetdone = 'h0;
assign iffcq13txethernetstattxlocalfault = 'h0;

assign iffcq13phyready  = phy_rdy;
assign iffcq13rxstatus  = rx_status;
assign iffcq13phystatus = phy_status;

assign iffcq13bufgtce = bufggt_ce;
assign iffcq13bufgtrst = bufggt_rst;
assign iffcq13bufgtcemask = bufggt_ce_mask;
assign iffcq13bufgtrstmask = bufggt_rst_mask;

assign iffcq13bufgtdiv = {userclk2_div,userclk_div,coreclk_div,pipeclk_div};

assign iffcq13rxdata = pipe_rx_7_cdcfifo[31:0];
assign iffcq13rxvalid = ~pipe_rx_7_cdcfifo[34];
assign iffcq13rxelecidle = pipe_rx_7_cdcfifo[34];
assign iffcq13rxdatavalid = pipe_rx_7_cdcfifo[35];

// TX Side
assign pipe_tx_7_cdcfifo[34] = iffcq13txelecidle;
assign pipe_tx_7_cdcfifo[39] = iffcq13rxpolarity;
assign pipe_tx_7_cdcfifo[31:0] = iffcq13txdata[31:0];
assign pipe_tx_7_cdcfifo[41:40] = iffcq13txpowerdown[1:0];





