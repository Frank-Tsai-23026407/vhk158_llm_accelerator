transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+sram_sp  -L xil_defaultlib -L xilinx_vip -L xpm -L emb_mem_gen_v1_0_10 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sram_sp xil_defaultlib.glbl

do {sram_sp.udo}

run 1000ns

endsim

quit -force
