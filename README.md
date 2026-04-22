# vhk158_llm_accelerator

Vivado FPGA project targeting the **Xilinx Versal HBM VHK158** (`xcvh1582-vsva3697-2MP-e-S`) for LLM (Large Language Model) inference acceleration. The design integrates PCIe host communication with on-chip HBM and custom floating-point arithmetic IP cores.

## Target Device

| Field | Value |
|-------|-------|
| Part | `xcvh1582-vsva3697-2MP-e-S` |
| Board | VHK158 (Versal HBM) |
| Tool | Vivado 2024.2 |

## Project Structure

```
vhk158_llm_accelerator.xpr          — Vivado project file (open this in Vivado)
vhk158_llm_accelerator.hw/          — Hardware project file (.lpr)
vhk158_llm_accelerator.srcs/        — Design sources
  constrs_1/                      — XDC constraints
  sim_1/                          — Simulation testbenches
  sources_1/
    bd/                           — Block designs (PCIe, BRAMs, FIFOs, SRAMs)
    imports/                      — Imported RTL sources
vhk158_llm_accelerator.ip_user_files/ — IP simulation stubs and scripts
archive_project_summary.txt       — Vivado archive manifest
```

## Block Designs

| BD | Purpose |
|----|---------|
| `cpm_pcie` | CPM-based PCIe host interface with AXI NoC and HBM |
| `bram_group` | On-chip BRAM array |
| `sram_sp` / `sram_tp` | Single-port / true-dual-port SRAM wrappers |
| `fifo_1/2/3` | AXI-stream FIFOs |

## Custom IP Cores

Floating-point arithmetic units used in the LLM compute pipeline:

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

## Build & Simulation

A `Makefile` wraps the common Vivado batch-mode flows. Requires `vivado` on `PATH`.

| Target | Description |
|--------|-------------|
| `make synth` | Elaborate and synthesise RTL (`scripts/synth.tcl`) |
| `make impl` | Place-and-route the synthesised netlist (`scripts/impl.tcl`) |
| `make pdi` | Generate the Versal device image (`scripts/pdi.tcl`) |
| `make sim IP=<name>` | Run one IP simulation — e.g. `make sim IP=FPGA_FP32_ADDER` |
| `make sim IP=<name> SIM=questa` | Same, with a different simulator (`xsim` \| `questa` \| `vcs` \| `xcelium` \| `modelsim` \| `riviera`) |
| `make sim-all` | Run all custom IP simulations sequentially with xsim |
| `make lint` | Vivado syntax check on the project source fileset |
| `make clean` | Remove logs, journals, and run outputs |

## CI (GitHub Actions)

Pipeline defined in [.github/workflows/ci.yml](.github/workflows/ci.yml). Jobs run in order, each gated on the previous:

```
push/PR → lint-verilator → sim-all → synth (main only) → impl-pdi (tags only)
```

| Job | Runner | Trigger | What it does |
|-----|--------|---------|--------------|
| **Lint (Verilator)** | `ubuntu-latest` | every push/PR | Installs Verilator, checks RTL under `sources_1/imports/imports/` for syntax errors |
| **IP Simulation** | self-hosted `vivado` | after lint passes | Runs `make sim-all SIM=xsim` for all custom IP cores |
| **Synthesis** | self-hosted `vivado` | push to `main` only | Runs `make synth`, uploads logs and synthesis reports |
| **Implementation + PDI** | self-hosted `vivado` | version tag (`v*`) | Runs `make pdi`, uploads `.pdi` bitstream and impl reports as release artifacts |

The Lint job requires no Vivado license and runs on GitHub-hosted runners. The Simulation, Synthesis, and Implementation jobs require a self-hosted runner labelled `self-hosted, vivado` with Vivado 2024.2 installed.

## Getting Started

1. Install **Vivado 2024.2**
2. Open the project: `File → Open Project → vhk158_llm_accelerator.xpr`
3. The first open will re-generate IP outputs from sources in `vhk158_llm_accelerator.srcs/`

## Ignored Files

Generated outputs excluded from version control (see `.gitignore`):
- `vhk158_llm_accelerator.runs/` — implementation/synthesis run outputs
- `vhk158_llm_accelerator.cache/` — IP cache
- `vhk158_llm_accelerator.gen/` — generated IP HDL
- `vhk158_llm_accelerator.srcs/utils_1/` — utility run scripts
- `*.bit`, `*.pdi`, `*.xclbin` — bitstreams
- `*.dcp` — design checkpoints
- `*.gguf`, `*.bin` — model weight files
