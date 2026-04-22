/////////////// wires assignment ///////////////
// PIPE CDC
assign pipe1_tx_cdcfifo_din = { 
  pipe1_commands_out_cdcfifo,
  pipe1_tx_0_cdcfifo,
  pipe1_tx_1_cdcfifo,
  pipe1_tx_2_cdcfifo,
  pipe1_tx_3_cdcfifo,
  pipe1_tx_4_cdcfifo,
  pipe1_tx_5_cdcfifo,
  pipe1_tx_6_cdcfifo,
  pipe1_tx_7_cdcfifo,
  pipe1_tx_8_cdcfifo,
  pipe1_tx_9_cdcfifo,
  pipe1_tx_10_cdcfifo,
  pipe1_tx_11_cdcfifo,
  pipe1_tx_12_cdcfifo,
  pipe1_tx_13_cdcfifo,
  pipe1_tx_14_cdcfifo,
  pipe1_tx_15_cdcfifo
};

assign { 
  pcie1_pipe_tx_0,
  pcie1_pipe_tx_1,
  pcie1_pipe_tx_2,
  pcie1_pipe_tx_3,
  pcie1_pipe_tx_4,
  pcie1_pipe_tx_5,
  pcie1_pipe_tx_6,
  pcie1_pipe_tx_7,
  pcie1_pipe_tx_8,
  pcie1_pipe_tx_9,
  pcie1_pipe_tx_10,
  pcie1_pipe_tx_11,
  pcie1_pipe_tx_12,
  pcie1_pipe_tx_13,
  pcie1_pipe_tx_14,
  pcie1_pipe_tx_15
} = pipe1_tx_cdcfifo_dout[0+:(16*C_CPM_PIPE_SIGS_WIDTH)];

// Exclude pipe_commands_out since some of the pins are clock pins
// Only assign the ones that are not clock pins
assign pcie1_pipe_commands_out[2:1] = pipe1_commands_out_cdcfifo[2:1];
assign pcie1_pipe_commands_out[3]   = pipe1_commands_out_cdcfifo[3];
assign pcie1_pipe_commands_out[6:4] = pipe1_commands_out_cdcfifo[6:4];
assign pcie1_pipe_commands_out[7]   = pipe1_commands_out_cdcfifo[7];
assign pcie1_pipe_commands_out[8]   = pipe1_commands_out_cdcfifo[8];
assign pcie1_pipe_commands_out[9]   = pipe1_commands_out_cdcfifo[9];
assign pcie1_pipe_commands_out[10]  = pipe1_commands_out_cdcfifo[10];

assign pipe1_rx_cdcfifo_din = { 
  pcie1_pipe_commands_in,
  pcie1_pipe_rx_0,
  pcie1_pipe_rx_1,
  pcie1_pipe_rx_2,
  pcie1_pipe_rx_3,
  pcie1_pipe_rx_4,
  pcie1_pipe_rx_5,
  pcie1_pipe_rx_6,
  pcie1_pipe_rx_7,
  pcie1_pipe_rx_8,
  pcie1_pipe_rx_9,
  pcie1_pipe_rx_10,
  pcie1_pipe_rx_11,
  pcie1_pipe_rx_12,
  pcie1_pipe_rx_13,
  pcie1_pipe_rx_14,
  pcie1_pipe_rx_15
};

assign { 
  pipe1_commands_in_cdcfifo,
  pipe1_rx_0_cdcfifo,
  pipe1_rx_1_cdcfifo,
  pipe1_rx_2_cdcfifo,
  pipe1_rx_3_cdcfifo,
  pipe1_rx_4_cdcfifo,
  pipe1_rx_5_cdcfifo,
  pipe1_rx_6_cdcfifo,
  pipe1_rx_7_cdcfifo,
  pipe1_rx_8_cdcfifo,
  pipe1_rx_9_cdcfifo,
  pipe1_rx_10_cdcfifo,
  pipe1_rx_11_cdcfifo,
  pipe1_rx_12_cdcfifo,
  pipe1_rx_13_cdcfifo,
  pipe1_rx_14_cdcfifo,
  pipe1_rx_15_cdcfifo
} = pipe1_rx_cdcfifo_dout;

// Global I/O
assign gt0_refclk0_pdint = 1'b1;
assign gt1_refclk0_pdint = 1'b1;
assign gt2_refclk0_pdint = 1'b1;
assign gt3_refclk0_pdint = 1'b1;
assign gt0_refclk1_pdint = 1'b1;
assign gt1_refclk1_pdint = 1'b1;
assign gt2_refclk1_pdint = 1'b1;
assign gt3_refclk1_pdint = 1'b1;


assign pipe_clk1 = iffcq20txusrclk;
assign tx1_rate_curr = iffcq20txrate[2:0];
assign pipe_tx1_rcvr_det = iffcq20txdetectrxloopback;


assign pcie1_pipe_commands_out[0] = pipe_clk1; // If EP, use the clk from RP
assign pcie1_pipe_commands_out[11] = 1'b0; // Not used
assign pcie1_pipe_commands_out[12] = 1'b0; // Not used
assign pcie1_pipe_commands_out[13] = 1'b0; // Not used

assign pipe1_commands_out_cdcfifo[7] = iffcq20txswing;
assign pipe1_commands_out_cdcfifo[10] = tx1_rate_curr[2]; // This is new in Versal (for CPM5 Gen5 Support)
assign pipe1_commands_out_cdcfifo[8] = iffcq20gttxreset;
assign pipe1_commands_out_cdcfifo[3] = pipe_tx1_rcvr_det;
assign pipe1_commands_out_cdcfifo[9] = iffcq20txdeemph[0];
assign pipe1_commands_out_cdcfifo[2:1] = tx1_rate_curr[1:0]; // Upper bits split to maintain compatibility with US+
assign pipe1_commands_out_cdcfifo[6:4] = iffcq20txmargin[2:0];
assign q2_ch0_txoutclk = txout_clk1;
assign q2_ch1_txoutclk = txout_clk1;
assign q2_ch2_txoutclk = txout_clk1;
assign q2_ch3_txoutclk = txout_clk1;
assign q3_ch0_txoutclk = txout_clk1;
assign q3_ch1_txoutclk = txout_clk1;
assign q3_ch2_txoutclk = txout_clk1;
assign q3_ch3_txoutclk = txout_clk1;





// Channel 8 - Quad 2 Lane 0
//Quad controls
// RX side
assign iffcq20rxctrl1 = 'h0; // no use
assign iffcq20rxctrl2 = 'h0; // no use
assign iffcq20rxctrl3 = 'h0; // no use
assign iffcq20rxctrl0[4] = 'h0; // no use
assign iffcq20rxctrl0[15:7] = 'h0; // no use

assign iffcq20rxctrl0[2] = pipe1_rx_0_cdcfifo[35]; // rx_datavalid
assign iffcq20rxctrl0[3] = pipe1_rx_0_cdcfifo[36]; // rx_startblock
assign iffcq20rxctrl0[1:0] = pipe1_rx_0_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq20rxctrl0[6:5] = pipe1_rx_0_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe1_tx_0_cdcfifo[35] = iffcq20txctrl0[6]; // tx_datavalid
assign pipe1_tx_0_cdcfifo[36] = iffcq20txctrl0[7]; // tx_startblock
assign pipe1_tx_0_cdcfifo[33:32] = iffcq20txctrl2[1:0]; // tx_charisk[1:0]
assign pipe1_tx_0_cdcfifo[38:37] = iffcq20txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq20cdrlock = 'h0;
assign iffcq20dmonout = 'h0;
assign iffcq20rxpkdet = 'h0;
assign iffcq20cfokdone = 'h0;
assign iffcq20rxheader = 'h0;
assign iffcq20comsasdet = 'h0;
assign iffcq20refclkpma = 'h0;
assign iffcq20rxchbondo = 'h0;
assign iffcq20rxprbserr = 'h0;
assign iffcq20rxqpisenn = 'h0;
assign iffcq20rxqpisenp = 'h0;
assign iffcq20txdccdone = 'h0;
assign iffcq20txqpisenn = 'h0;
assign iffcq20txqpisenp = 'h0;
assign iffcq20cominitdet = 'h0;
assign iffcq20comwakedet = 'h0;
assign iffcq20pcsrsvdout = 'h0;
assign iffcq20pinrsrvdas = 'h0;
assign iffcq20rxckcorcnt = 'h0;
assign iffcq20rxcommadet = 'h0;
assign iffcq20rxsliderdy = 'h0;
assign iffcq20rxslipdone = 'h0;
assign iffcq20rxsyncdone = 'h0;
assign iffcq20txsyncdone = 'h0;
assign iffcq20rxbufstatus = 'h0;
assign iffcq20rxcdrphdone = 'h0;
assign iffcq20rxoutpcsclk = 'h0;
assign iffcq20rxresetdone = 'h0;
assign iffcq20txbufstatus = 'h0;
assign iffcq20txcomfinish = 'h0;
assign iffcq20txoutpcsclk = 'h0;
assign iffcq20txresetdone = 'h0;
assign iffcq20iloresetdone = 'h0;
assign iffcq20rxprbslocked = 'h0;
assign iffcq20rxstartofseq = 'h0;
assign iffcq20rxbyterealign = 'h0;
assign iffcq20rxchanbondseq = 'h0;
assign iffcq20rxchanrealign = 'h0;
assign iffcq20rxchisaligned = 'h0;
assign iffcq20rxheadervalid = 'h0;
assign iffcq20txswingoutlow = 'h0;
assign iffcq20resetexception = 'h0;
assign iffcq20rxpmaresetdone = 'h0;
assign iffcq20txchicooutrsvd = 'h0;
assign iffcq20txpmaresetdone = 'h0;
assign iffcq20txswingouthigh = 'h0;
assign iffcq20rxbyteisaligned = 'h0;
assign iffcq20rxdapiresetdone = 'h0;
assign iffcq20rxdelayalignerr = 'h0;
assign iffcq20rxfinealigndone = 'h0;
assign iffcq20rxphasealignerr = 'h0;
assign iffcq20txdapiresetdone = 'h0;
assign iffcq20txdelayalignerr = 'h0;
assign iffcq20txphasealignerr = 'h0;
assign iffcq20eyescandataerror = 'h0;
assign iffcq20rxphasealigndone = 'h0;
assign iffcq20txphasealigndone = 'h0;
assign iffcq20xpipe5pipelineen = 'h0;
assign iffcq20rxethernetstatout = 'h0;
assign iffcq20rxphasesetinitdone = 'h0;
assign iffcq20rxprogdivresetdone = 'h0;
assign iffcq20rxsimplexphystatus = 'h0;
assign iffcq20txphasesetinitdone = 'h0;
assign iffcq20txprogdivresetdone = 'h0;
assign iffcq20txsimplexphystatus = 'h0;
assign iffcq20rxphaseshift180done = 'h0;
assign iffcq20txphaseshift180done = 'h0;
assign iffcq20rxdelayalignprogress = 'h0;
assign iffcq20txdelayalignprogress = 'h0;
assign iffcq20rxphasedelayresetdone = 'h0;
assign iffcq20txphasedelayresetdone = 'h0;
assign iffcq20txethernetstattxlocalfault = 'h0;

assign iffcq20phyready  = phy_rdy1;
assign iffcq20rxstatus  = rx_status1;
assign iffcq20phystatus = phy_status1;

assign iffcq20bufgtce = bufggt_ce1;
assign iffcq20bufgtrst = bufggt_rst1;
assign iffcq20bufgtcemask = bufggt_ce_mask1;
assign iffcq20bufgtrstmask = bufggt_rst_mask1;

assign iffcq20bufgtdiv = {userclk2_div1,userclk_div1,coreclk_div1,pipeclk_div1};

assign iffcq20rxdata = pipe1_rx_0_cdcfifo[31:0];
assign iffcq20rxvalid = ~pipe1_rx_0_cdcfifo[34];
assign iffcq20rxelecidle = pipe1_rx_0_cdcfifo[34];
assign iffcq20rxdatavalid = pipe1_rx_0_cdcfifo[35];

// TX Side
assign pipe1_tx_0_cdcfifo[34] = iffcq20txelecidle;
assign pipe1_tx_0_cdcfifo[39] = iffcq20rxpolarity;
assign pipe1_tx_0_cdcfifo[31:0] = iffcq20txdata[31:0];
assign pipe1_tx_0_cdcfifo[41:40] = iffcq20txpowerdown[1:0];


// Channel 9 - Quad 2 Lane 1
//Quad controls
// RX side
assign iffcq21rxctrl1 = 'h0; // no use
assign iffcq21rxctrl2 = 'h0; // no use
assign iffcq21rxctrl3 = 'h0; // no use
assign iffcq21rxctrl0[4] = 'h0; // no use
assign iffcq21rxctrl0[15:7] = 'h0; // no use

assign iffcq21rxctrl0[2] = pipe1_rx_1_cdcfifo[35]; // rx_datavalid
assign iffcq21rxctrl0[3] = pipe1_rx_1_cdcfifo[36]; // rx_startblock
assign iffcq21rxctrl0[1:0] = pipe1_rx_1_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq21rxctrl0[6:5] = pipe1_rx_1_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe1_tx_1_cdcfifo[35] = iffcq21txctrl0[6]; // tx_datavalid
assign pipe1_tx_1_cdcfifo[36] = iffcq21txctrl0[7]; // tx_startblock
assign pipe1_tx_1_cdcfifo[33:32] = iffcq21txctrl2[1:0]; // tx_charisk[1:0]
assign pipe1_tx_1_cdcfifo[38:37] = iffcq21txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq21cdrlock = 'h0;
assign iffcq21dmonout = 'h0;
assign iffcq21rxpkdet = 'h0;
assign iffcq21cfokdone = 'h0;
assign iffcq21rxheader = 'h0;
assign iffcq21comsasdet = 'h0;
assign iffcq21refclkpma = 'h0;
assign iffcq21rxchbondo = 'h0;
assign iffcq21rxprbserr = 'h0;
assign iffcq21rxqpisenn = 'h0;
assign iffcq21rxqpisenp = 'h0;
assign iffcq21txdccdone = 'h0;
assign iffcq21txqpisenn = 'h0;
assign iffcq21txqpisenp = 'h0;
assign iffcq21cominitdet = 'h0;
assign iffcq21comwakedet = 'h0;
assign iffcq21pcsrsvdout = 'h0;
assign iffcq21pinrsrvdas = 'h0;
assign iffcq21rxckcorcnt = 'h0;
assign iffcq21rxcommadet = 'h0;
assign iffcq21rxsliderdy = 'h0;
assign iffcq21rxslipdone = 'h0;
assign iffcq21rxsyncdone = 'h0;
assign iffcq21txsyncdone = 'h0;
assign iffcq21rxbufstatus = 'h0;
assign iffcq21rxcdrphdone = 'h0;
assign iffcq21rxoutpcsclk = 'h0;
assign iffcq21rxresetdone = 'h0;
assign iffcq21txbufstatus = 'h0;
assign iffcq21txcomfinish = 'h0;
assign iffcq21txoutpcsclk = 'h0;
assign iffcq21txresetdone = 'h0;
assign iffcq21iloresetdone = 'h0;
assign iffcq21rxprbslocked = 'h0;
assign iffcq21rxstartofseq = 'h0;
assign iffcq21rxbyterealign = 'h0;
assign iffcq21rxchanbondseq = 'h0;
assign iffcq21rxchanrealign = 'h0;
assign iffcq21rxchisaligned = 'h0;
assign iffcq21rxheadervalid = 'h0;
assign iffcq21txswingoutlow = 'h0;
assign iffcq21resetexception = 'h0;
assign iffcq21rxpmaresetdone = 'h0;
assign iffcq21txchicooutrsvd = 'h0;
assign iffcq21txpmaresetdone = 'h0;
assign iffcq21txswingouthigh = 'h0;
assign iffcq21rxbyteisaligned = 'h0;
assign iffcq21rxdapiresetdone = 'h0;
assign iffcq21rxdelayalignerr = 'h0;
assign iffcq21rxfinealigndone = 'h0;
assign iffcq21rxphasealignerr = 'h0;
assign iffcq21txdapiresetdone = 'h0;
assign iffcq21txdelayalignerr = 'h0;
assign iffcq21txphasealignerr = 'h0;
assign iffcq21eyescandataerror = 'h0;
assign iffcq21rxphasealigndone = 'h0;
assign iffcq21txphasealigndone = 'h0;
assign iffcq21xpipe5pipelineen = 'h0;
assign iffcq21rxethernetstatout = 'h0;
assign iffcq21rxphasesetinitdone = 'h0;
assign iffcq21rxprogdivresetdone = 'h0;
assign iffcq21rxsimplexphystatus = 'h0;
assign iffcq21txphasesetinitdone = 'h0;
assign iffcq21txprogdivresetdone = 'h0;
assign iffcq21txsimplexphystatus = 'h0;
assign iffcq21rxphaseshift180done = 'h0;
assign iffcq21txphaseshift180done = 'h0;
assign iffcq21rxdelayalignprogress = 'h0;
assign iffcq21txdelayalignprogress = 'h0;
assign iffcq21rxphasedelayresetdone = 'h0;
assign iffcq21txphasedelayresetdone = 'h0;
assign iffcq21txethernetstattxlocalfault = 'h0;

assign iffcq21phyready  = phy_rdy1;
assign iffcq21rxstatus  = rx_status1;
assign iffcq21phystatus = phy_status1;

assign iffcq21bufgtce = bufggt_ce1;
assign iffcq21bufgtrst = bufggt_rst1;
assign iffcq21bufgtcemask = bufggt_ce_mask1;
assign iffcq21bufgtrstmask = bufggt_rst_mask1;

assign iffcq21bufgtdiv1 = {userclk2_div1,userclk_div1,coreclk_div1,pipeclk_div1};

assign iffcq21rxdata = pipe1_rx_1_cdcfifo[31:0];
assign iffcq21rxvalid = ~pipe1_rx_1_cdcfifo[34];
assign iffcq21rxelecidle = pipe1_rx_1_cdcfifo[34];
assign iffcq21rxdatavalid = pipe1_rx_1_cdcfifo[35];

// TX Side
assign pipe1_tx_1_cdcfifo[34] = iffcq21txelecidle;
assign pipe1_tx_1_cdcfifo[39] = iffcq21rxpolarity;
assign pipe1_tx_1_cdcfifo[31:0] = iffcq21txdata[31:0];
assign pipe1_tx_1_cdcfifo[41:40] = iffcq21txpowerdown[1:0];


// Channel 10 - Quad 2 Lane 2
//Quad controls
// RX side
assign iffcq22rxctrl1 = 'h0; // no use
assign iffcq22rxctrl2 = 'h0; // no use
assign iffcq22rxctrl3 = 'h0; // no use
assign iffcq22rxctrl0[4] = 'h0; // no use
assign iffcq22rxctrl0[15:7] = 'h0; // no use

assign iffcq22rxctrl0[2] = pipe1_rx_2_cdcfifo[35]; // rx_datavalid
assign iffcq22rxctrl0[3] = pipe1_rx_2_cdcfifo[36]; // rx_startblock
assign iffcq22rxctrl0[1:0] = pipe1_rx_2_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq22rxctrl0[6:5] = pipe1_rx_2_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe1_tx_2_cdcfifo[35] = iffcq22txctrl0[6]; // tx_datavalid
assign pipe1_tx_2_cdcfifo[36] = iffcq22txctrl0[7]; // tx_startblock
assign pipe1_tx_2_cdcfifo[33:32] = iffcq22txctrl2[1:0]; // tx_charisk[1:0]
assign pipe1_tx_2_cdcfifo[38:37] = iffcq22txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq22cdrlock = 'h0;
assign iffcq22dmonout = 'h0;
assign iffcq22rxpkdet = 'h0;
assign iffcq22cfokdone = 'h0;
assign iffcq22rxheader = 'h0;
assign iffcq22comsasdet = 'h0;
assign iffcq22refclkpma = 'h0;
assign iffcq22rxchbondo = 'h0;
assign iffcq22rxprbserr = 'h0;
assign iffcq22rxqpisenn = 'h0;
assign iffcq22rxqpisenp = 'h0;
assign iffcq22txdccdone = 'h0;
assign iffcq22txqpisenn = 'h0;
assign iffcq22txqpisenp = 'h0;
assign iffcq22cominitdet = 'h0;
assign iffcq22comwakedet = 'h0;
assign iffcq22pcsrsvdout = 'h0;
assign iffcq22pinrsrvdas = 'h0;
assign iffcq22rxckcorcnt = 'h0;
assign iffcq22rxcommadet = 'h0;
assign iffcq22rxsliderdy = 'h0;
assign iffcq22rxslipdone = 'h0;
assign iffcq22rxsyncdone = 'h0;
assign iffcq22txsyncdone = 'h0;
assign iffcq22rxbufstatus = 'h0;
assign iffcq22rxcdrphdone = 'h0;
assign iffcq22rxoutpcsclk = 'h0;
assign iffcq22rxresetdone = 'h0;
assign iffcq22txbufstatus = 'h0;
assign iffcq22txcomfinish = 'h0;
assign iffcq22txoutpcsclk = 'h0;
assign iffcq22txresetdone = 'h0;
assign iffcq22iloresetdone = 'h0;
assign iffcq22rxprbslocked = 'h0;
assign iffcq22rxstartofseq = 'h0;
assign iffcq22rxbyterealign = 'h0;
assign iffcq22rxchanbondseq = 'h0;
assign iffcq22rxchanrealign = 'h0;
assign iffcq22rxchisaligned = 'h0;
assign iffcq22rxheadervalid = 'h0;
assign iffcq22txswingoutlow = 'h0;
assign iffcq22resetexception = 'h0;
assign iffcq22rxpmaresetdone = 'h0;
assign iffcq22txchicooutrsvd = 'h0;
assign iffcq22txpmaresetdone = 'h0;
assign iffcq22txswingouthigh = 'h0;
assign iffcq22rxbyteisaligned = 'h0;
assign iffcq22rxdapiresetdone = 'h0;
assign iffcq22rxdelayalignerr = 'h0;
assign iffcq22rxfinealigndone = 'h0;
assign iffcq22rxphasealignerr = 'h0;
assign iffcq22txdapiresetdone = 'h0;
assign iffcq22txdelayalignerr = 'h0;
assign iffcq22txphasealignerr = 'h0;
assign iffcq22eyescandataerror = 'h0;
assign iffcq22rxphasealigndone = 'h0;
assign iffcq22txphasealigndone = 'h0;
assign iffcq22xpipe5pipelineen = 'h0;
assign iffcq22rxethernetstatout = 'h0;
assign iffcq22rxphasesetinitdone = 'h0;
assign iffcq22rxprogdivresetdone = 'h0;
assign iffcq22rxsimplexphystatus = 'h0;
assign iffcq22txphasesetinitdone = 'h0;
assign iffcq22txprogdivresetdone = 'h0;
assign iffcq22txsimplexphystatus = 'h0;
assign iffcq22rxphaseshift180done = 'h0;
assign iffcq22txphaseshift180done = 'h0;
assign iffcq22rxdelayalignprogress = 'h0;
assign iffcq22txdelayalignprogress = 'h0;
assign iffcq22rxphasedelayresetdone = 'h0;
assign iffcq22txphasedelayresetdone = 'h0;
assign iffcq22txethernetstattxlocalfault = 'h0;

assign iffcq22phyready  = phy_rdy1;
assign iffcq22rxstatus  = rx_status1;
assign iffcq22phystatus = phy_status1;

assign iffcq22bufgtce = bufggt_ce1;
assign iffcq22bufgtrst = bufggt_rst1;
assign iffcq22bufgtcemask = bufggt_ce_mask1;
assign iffcq22bufgtrstmask = bufggt_rst_mask1;

assign iffcq22bufgtdiv = {userclk2_div1,userclk_div1,coreclk_div1,pipeclk_div1};

assign iffcq22rxdata = pipe1_rx_2_cdcfifo[31:0];
assign iffcq22rxvalid = ~pipe1_rx_2_cdcfifo[34];
assign iffcq22rxelecidle = pipe1_rx_2_cdcfifo[34];
assign iffcq22rxdatavalid = pipe1_rx_2_cdcfifo[35];

// TX Side
assign pipe1_tx_2_cdcfifo[34] = iffcq22txelecidle;
assign pipe1_tx_2_cdcfifo[39] = iffcq22rxpolarity;
assign pipe1_tx_2_cdcfifo[31:0] = iffcq22txdata[31:0];
assign pipe1_tx_2_cdcfifo[41:40] = iffcq22txpowerdown[1:0];


// Channel 11 - Quad 2 Lane 3
//Quad controls
// RX side
assign iffcq23rxctrl1 = 'h0; // no use
assign iffcq23rxctrl2 = 'h0; // no use
assign iffcq23rxctrl3 = 'h0; // no use
assign iffcq23rxctrl0[4] = 'h0; // no use
assign iffcq23rxctrl0[15:7] = 'h0; // no use

assign iffcq23rxctrl0[2] = pipe1_rx_3_cdcfifo[35]; // rx_datavalid
assign iffcq23rxctrl0[3] = pipe1_rx_3_cdcfifo[36]; // rx_startblock
assign iffcq23rxctrl0[1:0] = pipe1_rx_3_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq23rxctrl0[6:5] = pipe1_rx_3_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe1_tx_3_cdcfifo[35] = iffcq23txctrl0[6]; // tx_datavalid
assign pipe1_tx_3_cdcfifo[36] = iffcq23txctrl0[7]; // tx_startblock
assign pipe1_tx_3_cdcfifo[33:32] = iffcq23txctrl2[1:0]; // tx_charisk[1:0]
assign pipe1_tx_3_cdcfifo[38:37] = iffcq23txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq23cdrlock = 'h0;
assign iffcq23dmonout = 'h0;
assign iffcq23rxpkdet = 'h0;
assign iffcq23cfokdone = 'h0;
assign iffcq23rxheader = 'h0;
assign iffcq23comsasdet = 'h0;
assign iffcq23refclkpma = 'h0;
assign iffcq23rxchbondo = 'h0;
assign iffcq23rxprbserr = 'h0;
assign iffcq23rxqpisenn = 'h0;
assign iffcq23rxqpisenp = 'h0;
assign iffcq23txdccdone = 'h0;
assign iffcq23txqpisenn = 'h0;
assign iffcq23txqpisenp = 'h0;
assign iffcq23cominitdet = 'h0;
assign iffcq23comwakedet = 'h0;
assign iffcq23pcsrsvdout = 'h0;
assign iffcq23pinrsrvdas = 'h0;
assign iffcq23rxckcorcnt = 'h0;
assign iffcq23rxcommadet = 'h0;
assign iffcq23rxsliderdy = 'h0;
assign iffcq23rxslipdone = 'h0;
assign iffcq23rxsyncdone = 'h0;
assign iffcq23txsyncdone = 'h0;
assign iffcq23rxbufstatus = 'h0;
assign iffcq23rxcdrphdone = 'h0;
assign iffcq23rxoutpcsclk = 'h0;
assign iffcq23rxresetdone = 'h0;
assign iffcq23txbufstatus = 'h0;
assign iffcq23txcomfinish = 'h0;
assign iffcq23txoutpcsclk = 'h0;
assign iffcq23txresetdone = 'h0;
assign iffcq23iloresetdone = 'h0;
assign iffcq23rxprbslocked = 'h0;
assign iffcq23rxstartofseq = 'h0;
assign iffcq23rxbyterealign = 'h0;
assign iffcq23rxchanbondseq = 'h0;
assign iffcq23rxchanrealign = 'h0;
assign iffcq23rxchisaligned = 'h0;
assign iffcq23rxheadervalid = 'h0;
assign iffcq23txswingoutlow = 'h0;
assign iffcq23resetexception = 'h0;
assign iffcq23rxpmaresetdone = 'h0;
assign iffcq23txchicooutrsvd = 'h0;
assign iffcq23txpmaresetdone = 'h0;
assign iffcq23txswingouthigh = 'h0;
assign iffcq23rxbyteisaligned = 'h0;
assign iffcq23rxdapiresetdone = 'h0;
assign iffcq23rxdelayalignerr = 'h0;
assign iffcq23rxfinealigndone = 'h0;
assign iffcq23rxphasealignerr = 'h0;
assign iffcq23txdapiresetdone = 'h0;
assign iffcq23txdelayalignerr = 'h0;
assign iffcq23txphasealignerr = 'h0;
assign iffcq23eyescandataerror = 'h0;
assign iffcq23rxphasealigndone = 'h0;
assign iffcq23txphasealigndone = 'h0;
assign iffcq23xpipe5pipelineen = 'h0;
assign iffcq23rxethernetstatout = 'h0;
assign iffcq23rxphasesetinitdone = 'h0;
assign iffcq23rxprogdivresetdone = 'h0;
assign iffcq23rxsimplexphystatus = 'h0;
assign iffcq23txphasesetinitdone = 'h0;
assign iffcq23txprogdivresetdone = 'h0;
assign iffcq23txsimplexphystatus = 'h0;
assign iffcq23rxphaseshift180done = 'h0;
assign iffcq23txphaseshift180done = 'h0;
assign iffcq23rxdelayalignprogress = 'h0;
assign iffcq23txdelayalignprogress = 'h0;
assign iffcq23rxphasedelayresetdone = 'h0;
assign iffcq23txphasedelayresetdone = 'h0;
assign iffcq23txethernetstattxlocalfault = 'h0;

assign iffcq23phyready  = phy_rdy1;
assign iffcq23rxstatus  = rx_status1;
assign iffcq23phystatus = phy_status1;

assign iffcq23bufgtce = bufggt_ce1;
assign iffcq23bufgtrst = bufggt_rst1;
assign iffcq23bufgtcemask = bufggt_ce_mask1;
assign iffcq23bufgtrstmask = bufggt_rst_mask1;

assign iffcq23bufgtdiv = {userclk2_div1,userclk_div1,coreclk_div1,pipeclk_div1};

assign iffcq23rxdata = pipe1_rx_3_cdcfifo[31:0];
assign iffcq23rxvalid = ~pipe1_rx_3_cdcfifo[34];
assign iffcq23rxelecidle = pipe1_rx_3_cdcfifo[34];
assign iffcq23rxdatavalid = pipe1_rx_3_cdcfifo[35];

// TX Side
assign pipe1_tx_3_cdcfifo[34] = iffcq23txelecidle;
assign pipe1_tx_3_cdcfifo[39] = iffcq23rxpolarity;
assign pipe1_tx_3_cdcfifo[31:0] = iffcq23txdata[31:0];
assign pipe1_tx_3_cdcfifo[41:40] = iffcq23txpowerdown[1:0];


// Channel 12 - Quad 3 Lane 0
//Quad controls
// RX side
assign iffcq30rxctrl1 = 'h0; // no use
assign iffcq30rxctrl2 = 'h0; // no use
assign iffcq30rxctrl3 = 'h0; // no use
assign iffcq30rxctrl0[4] = 'h0; // no use
assign iffcq30rxctrl0[15:7] = 'h0; // no use

assign iffcq30rxctrl0[2] = pipe1_rx_4_cdcfifo[35]; // rx_datavalid
assign iffcq30rxctrl0[3] = pipe1_rx_4_cdcfifo[36]; // rx_startblock
assign iffcq30rxctrl0[1:0] = pipe1_rx_4_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq30rxctrl0[6:5] = pipe1_rx_4_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe1_tx_4_cdcfifo[35] = iffcq30txctrl0[6]; // tx_datavalid
assign pipe1_tx_4_cdcfifo[36] = iffcq30txctrl0[7]; // tx_startblock
assign pipe1_tx_4_cdcfifo[33:32] = iffcq30txctrl2[1:0]; // tx_charisk[1:0]
assign pipe1_tx_4_cdcfifo[38:37] = iffcq30txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq30cdrlock = 'h0;
assign iffcq30dmonout = 'h0;
assign iffcq30rxpkdet = 'h0;
assign iffcq30cfokdone = 'h0;
assign iffcq30rxheader = 'h0;
assign iffcq30comsasdet = 'h0;
assign iffcq30refclkpma = 'h0;
assign iffcq30rxchbondo = 'h0;
assign iffcq30rxprbserr = 'h0;
assign iffcq30rxqpisenn = 'h0;
assign iffcq30rxqpisenp = 'h0;
assign iffcq30txdccdone = 'h0;
assign iffcq30txqpisenn = 'h0;
assign iffcq30txqpisenp = 'h0;
assign iffcq30cominitdet = 'h0;
assign iffcq30comwakedet = 'h0;
assign iffcq30pcsrsvdout = 'h0;
assign iffcq30pinrsrvdas = 'h0;
assign iffcq30rxckcorcnt = 'h0;
assign iffcq30rxcommadet = 'h0;
assign iffcq30rxsliderdy = 'h0;
assign iffcq30rxslipdone = 'h0;
assign iffcq30rxsyncdone = 'h0;
assign iffcq30txsyncdone = 'h0;
assign iffcq30rxbufstatus = 'h0;
assign iffcq30rxcdrphdone = 'h0;
assign iffcq30rxoutpcsclk = 'h0;
assign iffcq30rxresetdone = 'h0;
assign iffcq30txbufstatus = 'h0;
assign iffcq30txcomfinish = 'h0;
assign iffcq30txoutpcsclk = 'h0;
assign iffcq30txresetdone = 'h0;
assign iffcq30iloresetdone = 'h0;
assign iffcq30rxprbslocked = 'h0;
assign iffcq30rxstartofseq = 'h0;
assign iffcq30rxbyterealign = 'h0;
assign iffcq30rxchanbondseq = 'h0;
assign iffcq30rxchanrealign = 'h0;
assign iffcq30rxchisaligned = 'h0;
assign iffcq30rxheadervalid = 'h0;
assign iffcq30txswingoutlow = 'h0;
assign iffcq30resetexception = 'h0;
assign iffcq30rxpmaresetdone = 'h0;
assign iffcq30txchicooutrsvd = 'h0;
assign iffcq30txpmaresetdone = 'h0;
assign iffcq30txswingouthigh = 'h0;
assign iffcq30rxbyteisaligned = 'h0;
assign iffcq30rxdapiresetdone = 'h0;
assign iffcq30rxdelayalignerr = 'h0;
assign iffcq30rxfinealigndone = 'h0;
assign iffcq30rxphasealignerr = 'h0;
assign iffcq30txdapiresetdone = 'h0;
assign iffcq30txdelayalignerr = 'h0;
assign iffcq30txphasealignerr = 'h0;
assign iffcq30eyescandataerror = 'h0;
assign iffcq30rxphasealigndone = 'h0;
assign iffcq30txphasealigndone = 'h0;
assign iffcq30xpipe5pipelineen = 'h0;
assign iffcq30rxethernetstatout = 'h0;
assign iffcq30rxphasesetinitdone = 'h0;
assign iffcq30rxprogdivresetdone = 'h0;
assign iffcq30rxsimplexphystatus = 'h0;
assign iffcq30txphasesetinitdone = 'h0;
assign iffcq30txprogdivresetdone = 'h0;
assign iffcq30txsimplexphystatus = 'h0;
assign iffcq30rxphaseshift180done = 'h0;
assign iffcq30txphaseshift180done = 'h0;
assign iffcq30rxdelayalignprogress = 'h0;
assign iffcq30txdelayalignprogress = 'h0;
assign iffcq30rxphasedelayresetdone = 'h0;
assign iffcq30txphasedelayresetdone = 'h0;
assign iffcq30txethernetstattxlocalfault = 'h0;

assign iffcq30phyready  = phy_rdy1;
assign iffcq30rxstatus  = rx_status1;
assign iffcq30phystatus = phy_status1;

assign iffcq30bufgtce = bufggt_ce1;
assign iffcq30bufgtrst = bufggt_rst1;
assign iffcq30bufgtcemask = bufggt_ce_mask1;
assign iffcq30bufgtrstmask = bufggt_rst_mask1;

assign iffcq30bufgtdiv = {userclk2_div1,userclk_div1,coreclk_div1,pipeclk_div1};

assign iffcq30rxdata = pipe1_rx_4_cdcfifo[31:0];
assign iffcq30rxvalid = ~pipe1_rx_4_cdcfifo[34];
assign iffcq30rxelecidle = pipe1_rx_4_cdcfifo[34];
assign iffcq30rxdatavalid = pipe1_rx_4_cdcfifo[35];

// TX Side
assign pipe1_tx_4_cdcfifo[34] = iffcq30txelecidle;
assign pipe1_tx_4_cdcfifo[39] = iffcq30rxpolarity;
assign pipe1_tx_4_cdcfifo[31:0] = iffcq30txdata[31:0];
assign pipe1_tx_4_cdcfifo[41:40] = iffcq30txpowerdown[1:0];


// Channel 13 - Quad 3 Lane 1
//Quad controls
// RX side
assign iffcq31rxctrl1 = 'h0; // no use
assign iffcq31rxctrl2 = 'h0; // no use
assign iffcq31rxctrl3 = 'h0; // no use
assign iffcq31rxctrl0[4] = 'h0; // no use
assign iffcq31rxctrl0[15:7] = 'h0; // no use

assign iffcq31rxctrl0[2] = pipe1_rx_5_cdcfifo[35]; // rx_datavalid
assign iffcq31rxctrl0[3] = pipe1_rx_5_cdcfifo[36]; // rx_startblock
assign iffcq31rxctrl0[1:0] = pipe1_rx_5_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq31rxctrl0[6:5] = pipe1_rx_5_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe1_tx_5_cdcfifo[35] = iffcq31txctrl0[6]; // tx_datavalid
assign pipe1_tx_5_cdcfifo[36] = iffcq31txctrl0[7]; // tx_startblock
assign pipe1_tx_5_cdcfifo[33:32] = iffcq31txctrl2[1:0]; // tx_charisk[1:0]
assign pipe1_tx_5_cdcfifo[38:37] = iffcq31txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq31cdrlock = 'h0;
assign iffcq31dmonout = 'h0;
assign iffcq31rxpkdet = 'h0;
assign iffcq31cfokdone = 'h0;
assign iffcq31rxheader = 'h0;
assign iffcq31comsasdet = 'h0;
assign iffcq31refclkpma = 'h0;
assign iffcq31rxchbondo = 'h0;
assign iffcq31rxprbserr = 'h0;
assign iffcq31rxqpisenn = 'h0;
assign iffcq31rxqpisenp = 'h0;
assign iffcq31txdccdone = 'h0;
assign iffcq31txqpisenn = 'h0;
assign iffcq31txqpisenp = 'h0;
assign iffcq31cominitdet = 'h0;
assign iffcq31comwakedet = 'h0;
assign iffcq31pcsrsvdout = 'h0;
assign iffcq31pinrsrvdas = 'h0;
assign iffcq31rxckcorcnt = 'h0;
assign iffcq31rxcommadet = 'h0;
assign iffcq31rxsliderdy = 'h0;
assign iffcq31rxslipdone = 'h0;
assign iffcq31rxsyncdone = 'h0;
assign iffcq31txsyncdone = 'h0;
assign iffcq31rxbufstatus = 'h0;
assign iffcq31rxcdrphdone = 'h0;
assign iffcq31rxoutpcsclk = 'h0;
assign iffcq31rxresetdone = 'h0;
assign iffcq31txbufstatus = 'h0;
assign iffcq31txcomfinish = 'h0;
assign iffcq31txoutpcsclk = 'h0;
assign iffcq31txresetdone = 'h0;
assign iffcq31iloresetdone = 'h0;
assign iffcq31rxprbslocked = 'h0;
assign iffcq31rxstartofseq = 'h0;
assign iffcq31rxbyterealign = 'h0;
assign iffcq31rxchanbondseq = 'h0;
assign iffcq31rxchanrealign = 'h0;
assign iffcq31rxchisaligned = 'h0;
assign iffcq31rxheadervalid = 'h0;
assign iffcq31txswingoutlow = 'h0;
assign iffcq31resetexception = 'h0;
assign iffcq31rxpmaresetdone = 'h0;
assign iffcq31txchicooutrsvd = 'h0;
assign iffcq31txpmaresetdone = 'h0;
assign iffcq31txswingouthigh = 'h0;
assign iffcq31rxbyteisaligned = 'h0;
assign iffcq31rxdapiresetdone = 'h0;
assign iffcq31rxdelayalignerr = 'h0;
assign iffcq31rxfinealigndone = 'h0;
assign iffcq31rxphasealignerr = 'h0;
assign iffcq31txdapiresetdone = 'h0;
assign iffcq31txdelayalignerr = 'h0;
assign iffcq31txphasealignerr = 'h0;
assign iffcq31eyescandataerror = 'h0;
assign iffcq31rxphasealigndone = 'h0;
assign iffcq31txphasealigndone = 'h0;
assign iffcq31xpipe5pipelineen = 'h0;
assign iffcq31rxethernetstatout = 'h0;
assign iffcq31rxphasesetinitdone = 'h0;
assign iffcq31rxprogdivresetdone = 'h0;
assign iffcq31rxsimplexphystatus = 'h0;
assign iffcq31txphasesetinitdone = 'h0;
assign iffcq31txprogdivresetdone = 'h0;
assign iffcq31txsimplexphystatus = 'h0;
assign iffcq31rxphaseshift180done = 'h0;
assign iffcq31txphaseshift180done = 'h0;
assign iffcq31rxdelayalignprogress = 'h0;
assign iffcq31txdelayalignprogress = 'h0;
assign iffcq31rxphasedelayresetdone = 'h0;
assign iffcq31txphasedelayresetdone = 'h0;
assign iffcq31txethernetstattxlocalfault = 'h0;

assign iffcq31phyready  = phy_rdy1;
assign iffcq31rxstatus  = rx_status1;
assign iffcq31phystatus = phy_status1;

assign iffcq31bufgtce = bufggt_ce1;
assign iffcq31bufgtrst = bufggt_rst1;
assign iffcq31bufgtcemask = bufggt_ce_mask1;
assign iffcq31bufgtrstmask = bufggt_rst_mask1;

assign iffcq31bufgtdiv = {userclk2_div1,userclk_div1,coreclk_div1,pipeclk_div1};

assign iffcq31rxdata = pipe1_rx_5_cdcfifo[31:0];
assign iffcq31rxvalid = ~pipe1_rx_5_cdcfifo[34];
assign iffcq31rxelecidle = pipe1_rx_5_cdcfifo[34];
assign iffcq31rxdatavalid = pipe1_rx_5_cdcfifo[35];

// TX Side
assign pipe1_tx_5_cdcfifo[34] = iffcq31txelecidle;
assign pipe1_tx_5_cdcfifo[39] = iffcq31rxpolarity;
assign pipe1_tx_5_cdcfifo[31:0] = iffcq31txdata[31:0];
assign pipe1_tx_5_cdcfifo[41:40] = iffcq31txpowerdown[1:0];


// Channel 14 - Quad 3 Lane 2
//Quad controls
// RX side
assign iffcq32rxctrl1 = 'h0; // no use
assign iffcq32rxctrl2 = 'h0; // no use
assign iffcq32rxctrl3 = 'h0; // no use
assign iffcq32rxctrl0[4] = 'h0; // no use
assign iffcq32rxctrl0[15:7] = 'h0; // no use

assign iffcq32rxctrl0[2] = pipe1_rx_6_cdcfifo[35]; // rx_datavalid
assign iffcq32rxctrl0[3] = pipe1_rx_6_cdcfifo[36]; // rx_startblock
assign iffcq32rxctrl0[1:0] = pipe1_rx_6_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq32rxctrl0[6:5] = pipe1_rx_6_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe1_tx_6_cdcfifo[35] = iffcq32txctrl0[6]; // tx_datavalid
assign pipe1_tx_6_cdcfifo[36] = iffcq32txctrl0[7]; // tx_startblock
assign pipe1_tx_6_cdcfifo[33:32] = iffcq32txctrl2[1:0]; // tx_charisk[1:0]
assign pipe1_tx_6_cdcfifo[38:37] = iffcq32txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq32cdrlock = 'h0;
assign iffcq32dmonout = 'h0;
assign iffcq32rxpkdet = 'h0;
assign iffcq32cfokdone = 'h0;
assign iffcq32rxheader = 'h0;
assign iffcq32comsasdet = 'h0;
assign iffcq32refclkpma = 'h0;
assign iffcq32rxchbondo = 'h0;
assign iffcq32rxprbserr = 'h0;
assign iffcq32rxqpisenn = 'h0;
assign iffcq32rxqpisenp = 'h0;
assign iffcq32txdccdone = 'h0;
assign iffcq32txqpisenn = 'h0;
assign iffcq32txqpisenp = 'h0;
assign iffcq32cominitdet = 'h0;
assign iffcq32comwakedet = 'h0;
assign iffcq32pcsrsvdout = 'h0;
assign iffcq32pinrsrvdas = 'h0;
assign iffcq32rxckcorcnt = 'h0;
assign iffcq32rxcommadet = 'h0;
assign iffcq32rxsliderdy = 'h0;
assign iffcq32rxslipdone = 'h0;
assign iffcq32rxsyncdone = 'h0;
assign iffcq32txsyncdone = 'h0;
assign iffcq32rxbufstatus = 'h0;
assign iffcq32rxcdrphdone = 'h0;
assign iffcq32rxoutpcsclk = 'h0;
assign iffcq32rxresetdone = 'h0;
assign iffcq32txbufstatus = 'h0;
assign iffcq32txcomfinish = 'h0;
assign iffcq32txoutpcsclk = 'h0;
assign iffcq32txresetdone = 'h0;
assign iffcq32iloresetdone = 'h0;
assign iffcq32rxprbslocked = 'h0;
assign iffcq32rxstartofseq = 'h0;
assign iffcq32rxbyterealign = 'h0;
assign iffcq32rxchanbondseq = 'h0;
assign iffcq32rxchanrealign = 'h0;
assign iffcq32rxchisaligned = 'h0;
assign iffcq32rxheadervalid = 'h0;
assign iffcq32txswingoutlow = 'h0;
assign iffcq32resetexception = 'h0;
assign iffcq32rxpmaresetdone = 'h0;
assign iffcq32txchicooutrsvd = 'h0;
assign iffcq32txpmaresetdone = 'h0;
assign iffcq32txswingouthigh = 'h0;
assign iffcq32rxbyteisaligned = 'h0;
assign iffcq32rxdapiresetdone = 'h0;
assign iffcq32rxdelayalignerr = 'h0;
assign iffcq32rxfinealigndone = 'h0;
assign iffcq32rxphasealignerr = 'h0;
assign iffcq32txdapiresetdone = 'h0;
assign iffcq32txdelayalignerr = 'h0;
assign iffcq32txphasealignerr = 'h0;
assign iffcq32eyescandataerror = 'h0;
assign iffcq32rxphasealigndone = 'h0;
assign iffcq32txphasealigndone = 'h0;
assign iffcq32xpipe5pipelineen = 'h0;
assign iffcq32rxethernetstatout = 'h0;
assign iffcq32rxphasesetinitdone = 'h0;
assign iffcq32rxprogdivresetdone = 'h0;
assign iffcq32rxsimplexphystatus = 'h0;
assign iffcq32txphasesetinitdone = 'h0;
assign iffcq32txprogdivresetdone = 'h0;
assign iffcq32txsimplexphystatus = 'h0;
assign iffcq32rxphaseshift180done = 'h0;
assign iffcq32txphaseshift180done = 'h0;
assign iffcq32rxdelayalignprogress = 'h0;
assign iffcq32txdelayalignprogress = 'h0;
assign iffcq32rxphasedelayresetdone = 'h0;
assign iffcq32txphasedelayresetdone = 'h0;
assign iffcq32txethernetstattxlocalfault = 'h0;

assign iffcq32phyready  = phy_rdy1;
assign iffcq32rxstatus  = rx_status1;
assign iffcq32phystatus = phy_status1;

assign iffcq32bufgtce = bufggt_ce1;
assign iffcq32bufgtrst = bufggt_rst1;
assign iffcq32bufgtcemask = bufggt_ce_mask1;
assign iffcq32bufgtrstmask = bufggt_rst_mask1;

assign iffcq32bufgtdiv = {userclk2_div1,userclk_div1,coreclk_div1,pipeclk_div1};

assign iffcq32rxdata = pipe1_rx_6_cdcfifo[31:0];
assign iffcq32rxvalid = ~pipe1_rx_6_cdcfifo[34];
assign iffcq32rxelecidle = pipe1_rx_6_cdcfifo[34];
assign iffcq32rxdatavalid = pipe1_rx_6_cdcfifo[35];

// TX Side
assign pipe1_tx_6_cdcfifo[34] = iffcq32txelecidle;
assign pipe1_tx_6_cdcfifo[39] = iffcq32rxpolarity;
assign pipe1_tx_6_cdcfifo[31:0] = iffcq32txdata[31:0];
assign pipe1_tx_6_cdcfifo[41:40] = iffcq32txpowerdown[1:0];


// Channel 15 - Quad 3 Lane 3
//Quad controls
// RX side
assign iffcq33rxctrl1 = 'h0; // no use
assign iffcq33rxctrl2 = 'h0; // no use
assign iffcq33rxctrl3 = 'h0; // no use
assign iffcq33rxctrl0[4] = 'h0; // no use
assign iffcq33rxctrl0[15:7] = 'h0; // no use

assign iffcq33rxctrl0[2] = pipe1_rx_7_cdcfifo[35]; // rx_datavalid
assign iffcq33rxctrl0[3] = pipe1_rx_7_cdcfifo[36]; // rx_startblock
assign iffcq33rxctrl0[1:0] = pipe1_rx_7_cdcfifo[33:32]; // rx_charisk[1:0]
assign iffcq33rxctrl0[6:5] = pipe1_rx_7_cdcfifo[38:37]; // rx_syncheader[1:0]

// TX side
assign pipe1_tx_7_cdcfifo[35] = iffcq33txctrl0[6]; // tx_datavalid
assign pipe1_tx_7_cdcfifo[36] = iffcq33txctrl0[7]; // tx_startblock
assign pipe1_tx_7_cdcfifo[33:32] = iffcq33txctrl2[1:0]; // tx_charisk[1:0]
assign pipe1_tx_7_cdcfifo[38:37] = iffcq33txctrl0[5:4]; // tx_syncheader[1:0]

// Channel controls
// RX side
assign iffcq33cdrlock = 'h0;
assign iffcq33dmonout = 'h0;
assign iffcq33rxpkdet = 'h0;
assign iffcq33cfokdone = 'h0;
assign iffcq33rxheader = 'h0;
assign iffcq33comsasdet = 'h0;
assign iffcq33refclkpma = 'h0;
assign iffcq33rxchbondo = 'h0;
assign iffcq33rxprbserr = 'h0;
assign iffcq33rxqpisenn = 'h0;
assign iffcq33rxqpisenp = 'h0;
assign iffcq33txdccdone = 'h0;
assign iffcq33txqpisenn = 'h0;
assign iffcq33txqpisenp = 'h0;
assign iffcq33cominitdet = 'h0;
assign iffcq33comwakedet = 'h0;
assign iffcq33pcsrsvdout = 'h0;
assign iffcq33pinrsrvdas = 'h0;
assign iffcq33rxckcorcnt = 'h0;
assign iffcq33rxcommadet = 'h0;
assign iffcq33rxsliderdy = 'h0;
assign iffcq33rxslipdone = 'h0;
assign iffcq33rxsyncdone = 'h0;
assign iffcq33txsyncdone = 'h0;
assign iffcq33rxbufstatus = 'h0;
assign iffcq33rxcdrphdone = 'h0;
assign iffcq33rxoutpcsclk = 'h0;
assign iffcq33rxresetdone = 'h0;
assign iffcq33txbufstatus = 'h0;
assign iffcq33txcomfinish = 'h0;
assign iffcq33txoutpcsclk = 'h0;
assign iffcq33txresetdone = 'h0;
assign iffcq33iloresetdone = 'h0;
assign iffcq33rxprbslocked = 'h0;
assign iffcq33rxstartofseq = 'h0;
assign iffcq33rxbyterealign = 'h0;
assign iffcq33rxchanbondseq = 'h0;
assign iffcq33rxchanrealign = 'h0;
assign iffcq33rxchisaligned = 'h0;
assign iffcq33rxheadervalid = 'h0;
assign iffcq33txswingoutlow = 'h0;
assign iffcq33resetexception = 'h0;
assign iffcq33rxpmaresetdone = 'h0;
assign iffcq33txchicooutrsvd = 'h0;
assign iffcq33txpmaresetdone = 'h0;
assign iffcq33txswingouthigh = 'h0;
assign iffcq33rxbyteisaligned = 'h0;
assign iffcq33rxdapiresetdone = 'h0;
assign iffcq33rxdelayalignerr = 'h0;
assign iffcq33rxfinealigndone = 'h0;
assign iffcq33rxphasealignerr = 'h0;
assign iffcq33txdapiresetdone = 'h0;
assign iffcq33txdelayalignerr = 'h0;
assign iffcq33txphasealignerr = 'h0;
assign iffcq33eyescandataerror = 'h0;
assign iffcq33rxphasealigndone = 'h0;
assign iffcq33txphasealigndone = 'h0;
assign iffcq33xpipe5pipelineen = 'h0;
assign iffcq33rxethernetstatout = 'h0;
assign iffcq33rxphasesetinitdone = 'h0;
assign iffcq33rxprogdivresetdone = 'h0;
assign iffcq33rxsimplexphystatus = 'h0;
assign iffcq33txphasesetinitdone = 'h0;
assign iffcq33txprogdivresetdone = 'h0;
assign iffcq33txsimplexphystatus = 'h0;
assign iffcq33rxphaseshift180done = 'h0;
assign iffcq33txphaseshift180done = 'h0;
assign iffcq33rxdelayalignprogress = 'h0;
assign iffcq33txdelayalignprogress = 'h0;
assign iffcq33rxphasedelayresetdone = 'h0;
assign iffcq33txphasedelayresetdone = 'h0;
assign iffcq33txethernetstattxlocalfault = 'h0;

assign iffcq33phyready = phy_rdy1;
assign iffcq33rxstatus = rx_status1;
assign iffcq33phystatus = phy_status1;

assign iffcq33bufgtce = bufggt_ce1;
assign iffcq33bufgtrst = bufggt_rst1;
assign iffcq33bufgtcemask = bufggt_ce_mask1;
assign iffcq33bufgtrstmask = bufggt_rst_mask1;

assign iffcq33bufgtdiv = {userclk2_div1,userclk_div1,coreclk_div1,pipeclk_div1};

assign iffcq33rxdata = pipe1_rx_7_cdcfifo[31:0];
assign iffcq33rxvalid = ~pipe1_rx_7_cdcfifo[34];
assign iffcq33rxelecidle = pipe1_rx_7_cdcfifo[34];
assign iffcq33rxdatavalid = pipe1_rx_7_cdcfifo[35];

// TX Side
assign pipe1_tx_7_cdcfifo[34] = iffcq33txelecidle;
assign pipe1_tx_7_cdcfifo[39] = iffcq33rxpolarity;
assign pipe1_tx_7_cdcfifo[31:0] = iffcq33txdata[31:0];
assign pipe1_tx_7_cdcfifo[41:40] = iffcq33txpowerdown[1:0];
 
