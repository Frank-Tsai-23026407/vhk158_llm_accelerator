transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo_2  -L xil_defaultlib -L xilinx_vip -L xpm -L emb_fifo_gen_v1_0_6 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_2 xil_defaultlib.glbl

do {fifo_2.udo}

run 1000ns

endsim

quit -force
