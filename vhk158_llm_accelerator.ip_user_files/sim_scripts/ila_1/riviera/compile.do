transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axis_dbg_stub_v1_0_1
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_9
vlib riviera/axis_dbg_sync_v1_0_1
vlib riviera/axis_ila_intf_v1_0_2
vlib riviera/axis_cap_ctrl_v1_0_1
vlib riviera/axis_mu_v1_0_1
vlib riviera/axis_itct_v1_0_1
vlib riviera/axis_ila_pp_v1_0_2
vlib riviera/axis_mem_v1_0_2

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axis_dbg_stub_v1_0_1 riviera/axis_dbg_stub_v1_0_1
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap axis_dbg_sync_v1_0_1 riviera/axis_dbg_sync_v1_0_1
vmap axis_ila_intf_v1_0_2 riviera/axis_ila_intf_v1_0_2
vmap axis_cap_ctrl_v1_0_1 riviera/axis_cap_ctrl_v1_0_1
vmap axis_mu_v1_0_1 riviera/axis_mu_v1_0_1
vmap axis_itct_v1_0_1 riviera/axis_itct_v1_0_1
vmap axis_ila_pp_v1_0_2 riviera/axis_ila_pp_v1_0_2
vmap axis_mem_v1_0_2 riviera/axis_mem_v1_0_2

vlog -work xilinx_vip  -incr -l emb_mem_gen_v1_0_10 -l pcie_qdma_mailbox_v1_0_8 -l axi_vip_v1_1_19 -l smartconnect_v1_0 -l cpm5_v1_0_17 -l cpm4_v1_0_17 -l emb_fifo_gen_v1_0_6 -l noc_hbm_nmu_sim_v1_0_0 -l noc_nmu_sim_v1_0_0 -l noc_nsu_sim_v1_0_0 -l noc_hbm_v1_0_1 -l versal_cips_ps_vip_v1_0_11 "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l emb_mem_gen_v1_0_10 -l pcie_qdma_mailbox_v1_0_8 -l axi_vip_v1_1_19 -l smartconnect_v1_0 -l cpm5_v1_0_17 -l cpm4_v1_0_17 -l emb_fifo_gen_v1_0_6 -l noc_hbm_nmu_sim_v1_0_0 -l noc_nmu_sim_v1_0_0 -l noc_nsu_sim_v1_0_0 -l noc_hbm_v1_0_1 -l versal_cips_ps_vip_v1_0_11 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_dbg_stub_v1_0_1  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/axis_dbg_stub_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_0/sim/bd_a3e8_axis_dbg_stub_0.v" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_1/sim/bd_a3e8_xlconstant_0.v" \

vlog -work axis_dbg_sync_v1_0_1  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/axis_dbg_sync_v1_0_vl_rfs.v" \

vlog -work axis_ila_intf_v1_0_2  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/axis_ila_intf_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_2/sim/bd_a3e8_axis_ila_intf_0.v" \

vlog -work axis_cap_ctrl_v1_0_1  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/axis_cap_ctrl_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_3/sim/bd_a3e8_axis_cap_ctrl_0.v" \

vlog -work axis_mu_v1_0_1  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/axis_mu_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_4/sim/bd_a3e8_axis_mu0_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_5/sim/bd_a3e8_axis_mu1_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_6/sim/bd_a3e8_axis_mu2_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_7/sim/bd_a3e8_axis_mu3_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_8/sim/bd_a3e8_axis_mu4_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_9/sim/bd_a3e8_axis_dbg_sync_2_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_10/sim/bd_a3e8_axis_dbg_sync_3_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_11/sim/bd_a3e8_axis_dbg_sync_4_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_12/sim/bd_a3e8_axis_dbg_sync_5_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_13/sim/bd_a3e8_axis_dbg_sync_6_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_14/sim/bd_a3e8_tc_axis_mu0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_15/sim/bd_a3e8_cc_axis_mu0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_16/sim/bd_a3e8_cc_axis_mu1_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_17/sim/bd_a3e8_cc_axis_mu2_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_18/sim/bd_a3e8_cc_axis_mu3_0.v" \

vlog -work axis_itct_v1_0_1  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/axis_itct_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_19/sim/bd_a3e8_axis_itct_0.v" \

vlog -work axis_ila_pp_v1_0_2  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/axis_ila_pp_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_20/sim/bd_a3e8_axis_ila_pp_0.v" \

vlog -work axis_mem_v1_0_2  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../ipstatic/hdl/axis_mem_v1_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axis_dbg_stub_v1_0_1 -l xil_defaultlib -l xlconstant_v1_1_9 -l axis_dbg_sync_v1_0_1 -l axis_ila_intf_v1_0_2 -l axis_cap_ctrl_v1_0_1 -l axis_mu_v1_0_1 -l axis_itct_v1_0_1 -l axis_ila_pp_v1_0_2 -l axis_mem_v1_0_2 \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/ip/ip_21/sim/bd_a3e8_axis_mem_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/bd_0/sim/bd_a3e8.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_1/sim/ila_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

