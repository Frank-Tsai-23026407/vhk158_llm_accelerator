vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/emb_fifo_gen_v1_0_6
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap emb_fifo_gen_v1_0_6 modelsim_lib/msim/emb_fifo_gen_v1_0_6
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L emb_mem_gen_v1_0_10 -L pcie_qdma_mailbox_v1_0_8 -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L cpm5_v1_0_17 -L cpm4_v1_0_17 -L emb_fifo_gen_v1_0_6 -L noc_hbm_nmu_sim_v1_0_0 -L noc_nmu_sim_v1_0_0 -L noc_nsu_sim_v1_0_0 -L noc_hbm_v1_0_1 -L versal_cips_ps_vip_v1_0_11 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L emb_mem_gen_v1_0_10 -L pcie_qdma_mailbox_v1_0_8 -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L cpm5_v1_0_17 -L cpm4_v1_0_17 -L emb_fifo_gen_v1_0_6 -L noc_hbm_nmu_sim_v1_0_0 -L noc_nmu_sim_v1_0_0 -L noc_nsu_sim_v1_0_0 -L noc_hbm_v1_0_1 -L versal_cips_ps_vip_v1_0_11 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work emb_fifo_gen_v1_0_6 -64 -incr -mfcu  -sv -L emb_mem_gen_v1_0_10 -L pcie_qdma_mailbox_v1_0_8 -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L cpm5_v1_0_17 -L cpm4_v1_0_17 -L emb_fifo_gen_v1_0_6 -L noc_hbm_nmu_sim_v1_0_0 -L noc_nmu_sim_v1_0_0 -L noc_nsu_sim_v1_0_0 -L noc_hbm_v1_0_1 -L versal_cips_ps_vip_v1_0_11 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/bd/fifo_2/ipshared/2632/hdl/emb_fifo_gen_v1_0_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L emb_mem_gen_v1_0_10 -L pcie_qdma_mailbox_v1_0_8 -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L cpm5_v1_0_17 -L cpm4_v1_0_17 -L emb_fifo_gen_v1_0_6 -L noc_hbm_nmu_sim_v1_0_0 -L noc_nmu_sim_v1_0_0 -L noc_nsu_sim_v1_0_0 -L noc_hbm_v1_0_1 -L versal_cips_ps_vip_v1_0_11 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/fifo_2/ip/fifo_2_emb_fifo_gen_0_0/sim/fifo_2_emb_fifo_gen_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/fifo_2/sim/fifo_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

