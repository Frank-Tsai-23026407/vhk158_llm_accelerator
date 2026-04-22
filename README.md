# vhk158_llm_accelerator

FPGA-based LLM inference accelerator on the **Xilinx Versal HBM VHK158** (`xcvh1582-vsva3697-2MP-e-S`). The system connects a host CPU to the FPGA over PCIe, runs the LLM compute pipeline in the programmable logic using HBM for weight storage, and exposes a software API for inference on the host.

## System Overview

```
┌─────────────────────────────────────────────────────────┐
│  Host Machine                                           │
│  ┌──────────────┐    ┌──────────────────────────────┐   │
│  │ host_software│───>│ host_firmware (PCIe / XDMA)  │   │
│  └──────────────┘    └──────────────┬───────────────┘   │
└─────────────────────────────────────│───────────────────┘
                                      │ PCIe
┌─────────────────────────────────────▼───────────────────┐
│  VHK158 (Versal HBM)                                    │
│  ┌──────────────────────┐   ┌─────────────────────────┐ │
│  │ accelerator_hardware │   │ accelerator_firmware    │ │
│  │ (PL: RTL + HBM + IP) │   │ (APU/RPU embedded code) │ │
│  └──────────────────────┘   └─────────────────────────┘ │
└─────────────────────────────────────────────────────────┘
```

## Repository Structure

| Directory | Contents |
|-----------|----------|
| [`accelerator_hardware/`](accelerator_hardware/) | Vivado project — RTL, block designs, constraints, custom IP cores |
| [`accelerator_firmware/`](accelerator_firmware/) | Firmware for Versal embedded processors (APU/RPU) |
| [`host_firmware/`](host_firmware/) | Host-side PCIe driver / XDMA layer |
| [`host_software/`](host_software/) | Host application — model loading, inference, result handling |

## Target Device

| Field | Value |
|-------|-------|
| Part | `xcvh1582-vsva3697-2MP-e-S` |
| Board | VHK158 (Versal HBM) |
| Tool | Vivado 2024.2 |

---

## accelerator_hardware

Vivado project containing the full programmable logic design.

### Design Hierarchy

Legend: `[BD]` Block Design · `[IP]` Xilinx IP · `[CIP]` Custom packaged IP · `[SV]` Custom SystemVerilog · `[V]` Custom Verilog

```
imports/imports/cm3_system/cm3_system.sv                          [SV] Top-level system
│
├── cm3_subsystem/cm3_processor_subsystem.v                        [V]  CM3 processor subsystem
│   └── cm3_subsystem/CORTEXM3INTEGRATIONDS.v                      [IP] ARM Cortex-M3 (DesignStart)
├── cm3_system/ahb_ram.v / ahb_rom.v                               [V]  AHB RAM / ROM
├── cm3_system/progio.sv                                            [SV] Programmable I/O
├── cm3_system/cm3_system_cdc_top.v / cm3_system_cdc_unit_0.v      [V]  Clock-domain crossing
├── bus_matrix/bus_matrix_lite.v                                    [V]  AHB bus matrix
│   ├── bus_matrix/bus_arb.v                                        [V]  Bus arbiter
│   ├── bus_matrix/bus_in.v / bus_out.v                             [V]  Bus input / output
│   ├── bus_matrix/bus_decoder_CPUS.v                               [V]  Address decoder
│   └── bus_matrix/bus_matrix_default_slave.v                       [V]  Default slave
│
├── sources_1/new/cpm_pcie_qdma_ep_wrapper.sv                      [SV] QDMA endpoint wrapper
│   ├── sources_1/bd/cpm_pcie/cpm_pcie.bd                          [BD] PCIe / NoC / HBM block design
│   │   ├── versal_cips_0                                           [IP] Versal CIPS — CPM5 PCIe + PS
│   │   ├── axi_noc_0_1                                             [IP] AXI NoC + HBM controller
│   │   ├── clk_wizard_0                                            [IP] Clock Wizard
│   │   ├── smartconnect_0/1/2                                      [IP] AXI SmartConnect (x3)
│   │   ├── axi_bram_ctrl_0_0 / axi_bram_ctrl_0_1                  [IP] AXI BRAM Controller (x2)
│   │   ├── axi_gpio_0                                              [IP] AXI GPIO
│   │   ├── axis_ila_0                                              [IP] ILA debug probe
│   │   ├── pcie_qdma_mailbox_0                                     [IP] QDMA Mailbox
│   │   ├── emb_mem_gen_0_0 / emb_mem_gen_0_1                      [IP] Embedded Memory Generator (x2)
│   │   └── xlconstant_0..4                                         [IP] Constant drivers (x5)
│   └── imports/exdes/qdma_app.sv                                   [SV] QDMA application layer
│       ├── exdes/axi_st_module.sv                                  [SV] AXI-Stream module
│       ├── exdes/dsc_byp_c2h.sv / dsc_byp_h2c.sv                  [SV] Descriptor bypass (C2H / H2C)
│       ├── exdes/qdma_lpbk.sv / qdma_stm_lpbk.sv                  [SV] QDMA loopback
│       ├── exdes/st_c2h.sv / st_h2c.sv                             [SV] Streaming C2H / H2C
│       └── exdes/user_control.sv                                   [SV] User control registers
│
├── imports/imports/hw/DMA/DMA_wrapper.sv                          [SV] DMA subsystem wrapper
│   └── hw/DMA/dma_top.v                                           [V]  DMA top
│       ├── hw/DMA/main_ctrl.v                                      [V]  Main controller
│       ├── hw/DMA/kv_cache_top.v                                   [V]  KV-cache DMA controller
│       ├── hw/DMA/fifo_mux.v                                       [V]  FIFO multiplexer
│       ├── hw/DMA/axi_ar/aw/r/w_handshake_unit_*.v                 [V]  AXI handshake units
│       └── hw/DMA/dma_cdc_top.v / dma_cdc_unit_0/1.v              [V]  Clock-domain crossing
│
├── imports/imports/MPU/MPU_wrapper.sv                             [SV] Matrix Processing Unit wrapper
│   └── MPU/MPU.sv                                                 [SV] MPU top
│       ├── MPU/MFU.sv                                             [SV] Matrix Function Unit
│       ├── MPU/SFU_M.sv                                           [SV] Scalar Function Unit (matrix path)
│       ├── MPU/bf16_int4_mul.sv                                   [SV] BF16 × INT4 multiplier
│       └── MPU/mpu_cdc_top.v / mpu_cdc_unit_0/1/2.v              [V]  Clock-domain crossing
│
├── imports/imports/VPU/VPU_wrapper.sv                             [SV] Vector Processing Unit wrapper
│   └── VPU/VPU.sv                                                 [SV] VPU top
│       ├── VPU/VFU.sv                                             [SV] Vector Function Unit
│       ├── VPU/SFU_V.sv                                           [SV] Scalar Function Unit (vector path)
│       └── VPU/vpu_cdc_top.sv / vpu_cdc_unit_0/1.sv              [SV] Clock-domain crossing
│
├── sources_1/ip/FPGA_FP32_ADDER/FPGA_FP32_ADDER.xci              [CIP] FP32 adder
├── sources_1/ip/FPGA_FP32_MULTIPLIER/FPGA_FP32_MULTIPLIER.xci    [CIP] FP32 multiplier
├── sources_1/ip/FPGA_FP32_DIVIDER/FPGA_FP32_DIVIDER.xci          [CIP] FP32 divider
├── sources_1/ip/FPGA_FP32_RECIP/FPGA_FP32_RECIP.xci              [CIP] FP32 reciprocal
├── sources_1/ip/FPGA_FP32_INVSQRT/FPGA_FP32_INVSQRT.xci          [CIP] FP32 inverse square root
├── sources_1/ip/FPGA_FP32_EXPONENT/FPGA_FP32_EXPONENT.xci        [CIP] FP32 exponent (e^x)
├── sources_1/ip/FPGA_BF16_ADDER_1/FPGA_BF16_ADDER.xci            [CIP] BF16 adder
├── sources_1/ip/FPGA_BF16_MULTIPLIER/FPGA_BF16_MULTIPLIER.xci    [CIP] BF16 multiplier
├── sources_1/ip/FPGA_BF16_SUBTRACTOR/FPGA_BF16_SUBTRACTOR.xci    [CIP] BF16 subtractor
├── sources_1/ip/FPGA_BF32_COMP/FPGA_BF32_COMP.xci                [CIP] BF32 comparator
├── sources_1/ip/FPGA_FP16TO32/FPGA_FP16TO32.xci                  [CIP] FP16 → FP32 converter
├── imports/imports/design_ware/BF32_COMP.sv                       [SV] BF32 comparator RTL
├── imports/design_ware/BF32_ADDER_TREE.sv                         [SV] BF32 adder tree RTL
│
├── sources_1/bd/bram_group/bram_group.bd                          [BD] BRAM array
│   └── bram_group_emb_mem_gen_0_0                                 [IP] Embedded Memory Generator
├── sources_1/bd/sram_sp/sram_sp.bd                                [BD] Single-port SRAM wrapper
│   └── sram_sp_emb_mem_gen_0_0                                    [IP] Embedded Memory Generator
├── sources_1/bd/sram_tp/sram_tp.bd                                [BD] True-dual-port SRAM wrapper
│   └── sram_tp_emb_mem_gen_0_0                                    [IP] Embedded Memory Generator
├── sources_1/bd/fifo_1/fifo_1.bd                                  [BD] AXI-stream FIFO 1
├── sources_1/bd/fifo_2/fifo_2.bd                                  [BD] AXI-stream FIFO 2
├── sources_1/bd/fifo_3/fifo_3.bd                                  [BD] AXI-stream FIFO 3
│
└── sources_1/ip/ila_1 .. ila_10                                   [IP] ILA debug probes (x10)
```

### Build

Run all targets from inside `accelerator_hardware/`. Requires `vivado` on `PATH`.

```bash
cd accelerator_hardware
make synth        # synthesise RTL
make impl         # place and route
make pdi          # generate Versal device image
make sim-all      # run all IP simulations (xsim)
make sim IP=FPGA_FP32_ADDER SIM=questa   # single IP, specific simulator
make lint         # Vivado syntax check
make clean        # remove logs and run outputs
```

---

## CI (GitHub Actions)

Defined in [.github/workflows/ci.yml](.github/workflows/ci.yml). Each job gates the next:

```
push / PR  →  Lint (Verilator)  →  IP Simulation  →  Synthesis  →  Impl + PDI
                  (ubuntu)          (self-hosted)    (main only)    (tags only)
```

| Job | Runner | Description |
|-----|--------|-------------|
| **Lint** | `ubuntu-latest` | Verilator syntax check — no Vivado licence needed |
| **IP Simulation** | self-hosted `vivado` | `make sim-all SIM=xsim` for all custom IP cores |
| **Synthesis** | self-hosted `vivado` | `make synth` on every push to `main` |
| **Impl + PDI** | self-hosted `vivado` | `make pdi` on version tags (`v*`); uploads `.pdi` as release artifact |

The self-hosted runner must have Vivado 2024.2 installed and be labelled `self-hosted, vivado`.

---

## Getting Started

```bash
# 1. Clone
git clone https://github.com/Frank-Tsai-23026407/vhk158_llm_accelerator.git
cd vhk158_llm_accelerator

# 2. Open hardware project in Vivado
cd accelerator_hardware
vivado vhk158_llm_accelerator.xpr
# Vivado will re-generate IP outputs on first open

# 3. Build
make synth
make impl
make pdi
```
