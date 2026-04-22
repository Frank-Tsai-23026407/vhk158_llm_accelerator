transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+FPGA_FP16TO32  -L xil_defaultlib -L xilinx_vip -L xpm -L xbip_utils_v3_0_14 -L axi_utils_v2_0_10 -L xbip_pipe_v3_0_10 -L xbip_dsp48_wrapper_v3_0_6 -L mult_gen_v12_0_22 -L floating_point_v7_1_19 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FPGA_FP16TO32 xil_defaultlib.glbl

do {FPGA_FP16TO32.udo}

run 1000ns

endsim

quit -force
