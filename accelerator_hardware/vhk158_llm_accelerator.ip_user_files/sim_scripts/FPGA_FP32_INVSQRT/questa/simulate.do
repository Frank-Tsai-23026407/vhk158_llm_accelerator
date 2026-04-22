onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib FPGA_FP32_INVSQRT_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {FPGA_FP32_INVSQRT.udo}

run 1000ns

quit -force
