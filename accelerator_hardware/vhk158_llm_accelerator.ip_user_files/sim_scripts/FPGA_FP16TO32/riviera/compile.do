transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_14
vlib riviera/axi_utils_v2_0_10
vlib riviera/xbip_pipe_v3_0_10
vlib riviera/xbip_dsp48_wrapper_v3_0_6
vlib riviera/mult_gen_v12_0_22
vlib riviera/floating_point_v7_1_19
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xbip_utils_v3_0_14 riviera/xbip_utils_v3_0_14
vmap axi_utils_v2_0_10 riviera/axi_utils_v2_0_10
vmap xbip_pipe_v3_0_10 riviera/xbip_pipe_v3_0_10
vmap xbip_dsp48_wrapper_v3_0_6 riviera/xbip_dsp48_wrapper_v3_0_6
vmap mult_gen_v12_0_22 riviera/mult_gen_v12_0_22
vmap floating_point_v7_1_19 riviera/floating_point_v7_1_19
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l emb_mem_gen_v1_0_10 -l pcie_qdma_mailbox_v1_0_8 -l axi_vip_v1_1_19 -l smartconnect_v1_0 -l cpm5_v1_0_17 -l cpm4_v1_0_17 -l noc_hbm_nmu_sim_v1_0_0 -l noc_nmu_sim_v1_0_0 -l noc_nsu_sim_v1_0_0 -l noc_hbm_v1_0_1 -l versal_cips_ps_vip_v1_0_11 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l xbip_pipe_v3_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l xil_defaultlib \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l emb_mem_gen_v1_0_10 -l pcie_qdma_mailbox_v1_0_8 -l axi_vip_v1_1_19 -l smartconnect_v1_0 -l cpm5_v1_0_17 -l cpm4_v1_0_17 -l noc_hbm_nmu_sim_v1_0_0 -l noc_nmu_sim_v1_0_0 -l noc_nsu_sim_v1_0_0 -l noc_hbm_v1_0_1 -l versal_cips_ps_vip_v1_0_11 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l xbip_pipe_v3_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l xil_defaultlib \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_14 -93  -incr \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_10 -93  -incr \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_10 -93  -incr \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  -incr \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_22 -93  -incr \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_19 -93  -incr \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_19  -incr -v2k5 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l xbip_pipe_v3_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l xil_defaultlib \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l xbip_pipe_v3_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l xil_defaultlib \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/FPGA_FP16TO32/sim/FPGA_FP16TO32.v" \

vlog -work xil_defaultlib \
"glbl.v"

