# vhk158_llm_accelerator

FPGA-based LLM inference accelerator targeting the **Xilinx Versal HBM VHK158** (`xcvh1582-vsva3697-2MP-e-S`). The design integrates PCIe host communication with on-chip HBM and custom floating-point arithmetic IP cores.

## Repository Structure

```
accelerator_hardware/   — Vivado project (RTL, block designs, constraints, IP)
accelerator_firmware/   — Firmware running on the Versal embedded processors (APU/RPU)
host_firmware/          — Low-level host-side firmware (e.g. PCIe driver, XDMA)
host_software/          — Host application (data preparation, inference, result handling)
.github/workflows/      — CI pipeline
```

## Target Device

| Field | Value |
|-------|-------|
| Part | `xcvh1582-vsva3697-2MP-e-S` |
| Board | VHK158 (Versal HBM) |
| Tool | Vivado 2024.2 |

## accelerator_hardware

### Project Structure

```
accelerator_hardware/
  vhk158_llm_accelerator.xpr            — Vivado project file (open this in Vivado)
  vhk158_llm_accelerator.hw/            — Hardware project file (.lpr)
  vhk158_llm_accelerator.srcs/          — Design sources
    constrs_1/                           — XDC constraints
    sim_1/                               — Simulation testbenches
    sources_1/
      bd/                                — Block designs (PCIe, BRAMs, FIFOs, SRAMs)
      imports/                           — Imported RTL sources
  vhk158_llm_accelerator.ip_user_files/ — IP simulation stubs and scripts
  scripts/                               — Vivado batch TCL scripts
  Makefile                               — Build targets
```

### Block Designs

| BD | Purpose |
|----|---------|
| `cpm_pcie` | CPM-based PCIe host interface with AXI NoC and HBM |
| `bram_group` | On-chip BRAM array |
| `sram_sp` / `sram_tp` | Single-port / true-dual-port SRAM wrappers |
| `fifo_1/2/3` | AXI-stream FIFOs |

### Custom IP Cores

| IP | Operation |
|----|-----------|
| `FPGA_FP32_ADDER` | FP32 addition |
| `FPGA_FP32_MULTIPLIER` | FP32 multiplication |
| `FPGA_BF16_ADDER` | BF16 addition |
| `FPGA_BF16_MULTIPLIER` | BF16 multiplication |
| `FPGA_BF16_SUBTRACTOR` | BF16 subtraction |
| `FPGA_FP32_DIVIDER` | FP32 division |
| `FPGA_FP32_RECIP` | FP32 reciprocal |
| `FPGA_FP32_INVSQRT` | FP32 inverse square root |
| `FPGA_FP32_EXPONENT` | FP32 exponent (e^x) |
| `FPGA_BF32_COMP` | BF32 comparator |
| `FPGA_FP16TO32` | FP16 → FP32 conversion |

### Build & Simulation

Run from the `accelerator_hardware/` directory. Requires `vivado` on `PATH`.

| Target | Description |
|--------|-------------|
| `make synth` | Elaborate and synthesise RTL |
| `make impl` | Place-and-route the synthesised netlist |
| `make pdi` | Generate the Versal device image |
| `make sim IP=<name>` | Run one IP simulation — e.g. `make sim IP=FPGA_FP32_ADDER` |
| `make sim IP=<name> SIM=questa` | Same with a different simulator (`xsim` \| `questa` \| `vcs` \| `xcelium` \| `modelsim` \| `riviera`) |
| `make sim-all` | Run all custom IP simulations sequentially |
| `make lint` | Vivado syntax check on the project source fileset |
| `make clean` | Remove logs, journals, and run outputs |

## CI (GitHub Actions)

Pipeline defined in [.github/workflows/ci.yml](.github/workflows/ci.yml). Jobs run in order, each gated on the previous:

```
push/PR → lint-verilator → sim-all → synth (main only) → impl-pdi (tags only)
```

| Job | Runner | Trigger | What it does |
|-----|--------|---------|--------------|
| **Lint (Verilator)** | `ubuntu-latest` | every push/PR | Checks RTL syntax with Verilator (no Vivado required) |
| **IP Simulation** | self-hosted `vivado` | after lint | Runs `make sim-all SIM=xsim` for all custom IP cores |
| **Synthesis** | self-hosted `vivado` | push to `main` | Runs `make synth`, uploads logs and reports |
| **Implementation + PDI** | self-hosted `vivado` | version tag (`v*`) | Runs `make pdi`, uploads `.pdi` bitstream as release artifact |

## Getting Started

1. Install **Vivado 2024.2**
2. `cd accelerator_hardware`
3. Open the project: `File → Open Project → vhk158_llm_accelerator.xpr`
4. The first open will re-generate IP outputs from `vhk158_llm_accelerator.srcs/`
