onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib FPGA_BF32_COMP_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {FPGA_BF32_COMP.udo}

run 1000ns

quit -force
