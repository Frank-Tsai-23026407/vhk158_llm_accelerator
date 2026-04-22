transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+bram_group  -L xil_defaultlib -L xilinx_vip -L xpm -L emb_mem_gen_v1_0_10 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bram_group xil_defaultlib.glbl

do {bram_group.udo}

run 1000ns

endsim

quit -force
