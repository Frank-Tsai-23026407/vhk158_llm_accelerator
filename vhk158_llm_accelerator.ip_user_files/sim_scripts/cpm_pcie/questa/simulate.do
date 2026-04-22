onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib cpm_pcie_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cpm_pcie.udo}

run 1000ns

quit -force
