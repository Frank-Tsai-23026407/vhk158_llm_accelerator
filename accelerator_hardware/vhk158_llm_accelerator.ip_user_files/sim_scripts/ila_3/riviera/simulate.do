transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ila_3  -L xil_defaultlib -L xilinx_vip -L xpm -L axis_dbg_stub_v1_0_1 -L xlconstant_v1_1_9 -L axis_dbg_sync_v1_0_1 -L axis_ila_intf_v1_0_2 -L axis_cap_ctrl_v1_0_1 -L axis_mu_v1_0_1 -L axis_itct_v1_0_1 -L axis_ila_pp_v1_0_2 -L axis_mem_v1_0_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_3 xil_defaultlib.glbl

do {ila_3.udo}

run 1000ns

endsim

quit -force
