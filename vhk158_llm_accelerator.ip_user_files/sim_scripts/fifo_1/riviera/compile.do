transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/emb_fifo_gen_v1_0_6
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap emb_fifo_gen_v1_0_6 riviera/emb_fifo_gen_v1_0_6
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l emb_mem_gen_v1_0_10 -l pcie_qdma_mailbox_v1_0_8 -l axi_vip_v1_1_19 -l smartconnect_v1_0 -l cpm5_v1_0_17 -l cpm4_v1_0_17 -l noc_hbm_nmu_sim_v1_0_0 -l noc_nmu_sim_v1_0_0 -l noc_nsu_sim_v1_0_0 -l noc_hbm_v1_0_1 -l versal_cips_ps_vip_v1_0_11 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l emb_fifo_gen_v1_0_6 -l xil_defaultlib \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l emb_mem_gen_v1_0_10 -l pcie_qdma_mailbox_v1_0_8 -l axi_vip_v1_1_19 -l smartconnect_v1_0 -l cpm5_v1_0_17 -l cpm4_v1_0_17 -l noc_hbm_nmu_sim_v1_0_0 -l noc_nmu_sim_v1_0_0 -l noc_nsu_sim_v1_0_0 -l noc_hbm_v1_0_1 -l versal_cips_ps_vip_v1_0_11 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l emb_fifo_gen_v1_0_6 -l xil_defaultlib \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work emb_fifo_gen_v1_0_6  -incr -l emb_mem_gen_v1_0_10 -l pcie_qdma_mailbox_v1_0_8 -l axi_vip_v1_1_19 -l smartconnect_v1_0 -l cpm5_v1_0_17 -l cpm4_v1_0_17 -l noc_hbm_nmu_sim_v1_0_0 -l noc_nmu_sim_v1_0_0 -l noc_nsu_sim_v1_0_0 -l noc_hbm_v1_0_1 -l versal_cips_ps_vip_v1_0_11 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l emb_fifo_gen_v1_0_6 -l xil_defaultlib \
"../../../../vhk158_llm_accelerator.gen/sources_1/bd/fifo_1/ipshared/2632/hdl/emb_fifo_gen_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -incr -l emb_mem_gen_v1_0_10 -l pcie_qdma_mailbox_v1_0_8 -l axi_vip_v1_1_19 -l smartconnect_v1_0 -l cpm5_v1_0_17 -l cpm4_v1_0_17 -l noc_hbm_nmu_sim_v1_0_0 -l noc_nmu_sim_v1_0_0 -l noc_nsu_sim_v1_0_0 -l noc_hbm_v1_0_1 -l versal_cips_ps_vip_v1_0_11 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l emb_fifo_gen_v1_0_6 -l xil_defaultlib \
"../../../bd/fifo_1/ip/fifo_1_emb_fifo_gen_0_0/sim/fifo_1_emb_fifo_gen_0_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l emb_fifo_gen_v1_0_6 -l xil_defaultlib \
"../../../bd/fifo_1/sim/fifo_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

