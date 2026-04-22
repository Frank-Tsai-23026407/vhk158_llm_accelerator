onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xilinx_vip -L xpm -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_33 -L axi_vip_v1_1_19 -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_16 -L xlconstant_v1_1_9 -L lib_pkg_v1_0_4 -L axi_apb_bridge_v3_0_20 -L versal_cips_ps_vip_v1_0_11 -L cpm5_v1_0_17 -L cpm4_v1_0_17 -L pcie_qdma_mailbox_v1_0_8 -L axi_bram_ctrl_v4_1_11 -L emb_mem_gen_v1_0_10 -L xlconcat_v2_1_6 -L axis_dbg_stub_v1_0_1 -L axis_dbg_sync_v1_0_1 -L axis_ila_intf_v1_0_2 -L axis_cap_ctrl_v1_0_1 -L axis_mu_v1_0_1 -L axis_itct_v1_0_1 -L axis_ila_pp_v1_0_2 -L axis_mem_v1_0_2 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_35 -L xpm_cdc_gen_v1_0_4 -L noc_nmu_sim_v1_0_0 -L noc_hbm_nmu_sim_v1_0_0 -L noc_nsu_sim_v1_0_0 -L noc_hbm_v1_0_1 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.cpm_pcie xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cpm_pcie.udo}

run 1000ns

quit -force
