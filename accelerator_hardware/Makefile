PROJECT   := vhk158_llm_accelerator
XPR       := $(PROJECT).xpr
SIM_DIR   := $(PROJECT).ip_user_files/sim_scripts
VIVADO    := vivado
SIM       := xsim

# Custom IP cores with simulation testbenches
SIM_IPS := \
	FPGA_BF16_ADDER_1 \
	FPGA_BF16_MULTIPLIER \
	FPGA_BF16_SUBTRACTOR \
	FPGA_BF32_COMP \
	FPGA_FP16TO32 \
	FPGA_FP32_ADDER \
	FPGA_FP32_DIVIDER \
	FPGA_FP32_EXPONENT \
	FPGA_FP32_INVSQRT \
	FPGA_FP32_MULTIPLIER \
	FPGA_FP32_RECIP

.PHONY: all synth impl pdi sim sim-all lint clean help

all: help

## Synthesis: elaborate and map RTL to a netlist
synth:
	$(VIVADO) -mode batch -source scripts/synth.tcl -log synth.log -journal synth.jou

## Implementation: place-and-route the synthesised netlist
impl:
	$(VIVADO) -mode batch -source scripts/impl.tcl -log impl.log -journal impl.jou

## PDI: generate the Versal device image (runs impl first if needed)
pdi:
	$(VIVADO) -mode batch -source scripts/pdi.tcl -log pdi.log -journal pdi.jou

## sim IP=<name>: run a single IP simulation (default simulator: xsim)
##   e.g.  make sim IP=FPGA_FP32_ADDER
##   e.g.  make sim IP=FPGA_FP32_ADDER SIM=questa
sim:
ifndef IP
	$(error IP is not set. Usage: make sim IP=<IP_NAME> [SIM=xsim|questa|vcs|xcelium|modelsim|riviera])
endif
	@echo "==> Simulating $(IP) with $(SIM)"
	cd $(SIM_DIR)/$(IP)/$(SIM) && \
		bash compile.sh && bash elaborate.sh && bash simulate.sh

## sim-all: run all custom IP simulations sequentially (uses xsim by default)
sim-all:
	@for ip in $(SIM_IPS); do \
		echo "==> Simulating $$ip"; \
		(cd $(SIM_DIR)/$$ip/$(SIM) && bash compile.sh && bash elaborate.sh && bash simulate.sh) || exit 1; \
	done

## lint: Vivado syntax check on the project source fileset
lint:
	$(VIVADO) -mode batch -source scripts/lint.tcl -log lint.log -journal lint.jou

## clean: remove generated logs, journals, and Vivado run outputs
clean:
	rm -f *.log *.jou
	rm -rf $(PROJECT).runs $(PROJECT).cache $(PROJECT).gen $(PROJECT).hw/$(PROJECT).lpr.bak
	rm -f vivado*
	find $(SIM_DIR) -name "*.wdb" -o -name "*.pb" -o -name "xsim.dir" -type d | xargs rm -rf 2>/dev/null; true

help:
	@echo "Targets:"
	@grep -E '^## ' Makefile | sed 's/^## /  /'
	@echo ""
	@echo "Variables:"
	@echo "  SIM=<simulator>   Simulator for 'sim' and 'sim-all' (default: xsim)"
	@echo "                    Options: xsim questa vcs xcelium modelsim riviera"
	@echo "  IP=<name>         IP core name for 'sim' target"
