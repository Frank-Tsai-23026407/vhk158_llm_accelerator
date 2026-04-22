vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axis_dbg_stub_v1_0_1
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/axis_dbg_sync_v1_0_1
vlib modelsim_lib/msim/axis_ila_intf_v1_0_2
vlib modelsim_lib/msim/axis_cap_ctrl_v1_0_1
vlib modelsim_lib/msim/axis_mu_v1_0_1
vlib modelsim_lib/msim/axis_itct_v1_0_1
vlib modelsim_lib/msim/axis_ila_pp_v1_0_2
vlib modelsim_lib/msim/axis_mem_v1_0_2

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axis_dbg_stub_v1_0_1 modelsim_lib/msim/axis_dbg_stub_v1_0_1
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap axis_dbg_sync_v1_0_1 modelsim_lib/msim/axis_dbg_sync_v1_0_1
vmap axis_ila_intf_v1_0_2 modelsim_lib/msim/axis_ila_intf_v1_0_2
vmap axis_cap_ctrl_v1_0_1 modelsim_lib/msim/axis_cap_ctrl_v1_0_1
vmap axis_mu_v1_0_1 modelsim_lib/msim/axis_mu_v1_0_1
vmap axis_itct_v1_0_1 modelsim_lib/msim/axis_itct_v1_0_1
vmap axis_ila_pp_v1_0_2 modelsim_lib/msim/axis_ila_pp_v1_0_2
vmap axis_mem_v1_0_2 modelsim_lib/msim/axis_mem_v1_0_2

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

vlog -work xpm -64 -incr -mfcu  -sv -L emb_mem_gen_v1_0_10 -L pcie_qdma_mailbox_v1_0_8 -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L cpm5_v1_0_17 -L cpm4_v1_0_17 -L emb_fifo_gen_v1_0_6 -L noc_hbm_nmu_sim_v1_0_0 -L noc_nmu_sim_v1_0_0 -L noc_nsu_sim_v1_0_0 -L noc_hbm_v1_0_1 -L versal_cips_ps_vip_v1_0_11 -L xilinx_vip "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_dbg_stub_v1_0_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_dbg_stub_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_0/sim/bd_6269_axis_dbg_stub_0.v" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_1/sim/bd_6269_xlconstant_0.v" \

vlog -work axis_dbg_sync_v1_0_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_dbg_sync_v1_0_vl_rfs.v" \

vlog -work axis_ila_intf_v1_0_2 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_ila_intf_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_2/sim/bd_6269_axis_ila_intf_0.v" \

vlog -work axis_cap_ctrl_v1_0_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_cap_ctrl_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_3/sim/bd_6269_axis_cap_ctrl_0.v" \

vlog -work axis_mu_v1_0_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_mu_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_4/sim/bd_6269_axis_mu0_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_5/sim/bd_6269_axis_mu1_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_6/sim/bd_6269_axis_mu2_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_7/sim/bd_6269_axis_mu3_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_8/sim/bd_6269_axis_mu4_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_9/sim/bd_6269_axis_mu5_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_10/sim/bd_6269_axis_mu6_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_11/sim/bd_6269_axis_mu7_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_12/sim/bd_6269_axis_mu8_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_13/sim/bd_6269_axis_mu9_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_14/sim/bd_6269_axis_mu10_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_15/sim/bd_6269_axis_mu11_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_16/sim/bd_6269_axis_mu12_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_17/sim/bd_6269_axis_mu13_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_18/sim/bd_6269_axis_mu14_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_19/sim/bd_6269_axis_mu15_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_20/sim/bd_6269_axis_mu16_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_21/sim/bd_6269_axis_mu17_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_22/sim/bd_6269_axis_mu18_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_23/sim/bd_6269_axis_mu19_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_24/sim/bd_6269_axis_mu20_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_25/sim/bd_6269_axis_mu21_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_26/sim/bd_6269_axis_mu22_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_27/sim/bd_6269_axis_mu23_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_28/sim/bd_6269_axis_mu24_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_29/sim/bd_6269_axis_mu25_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_30/sim/bd_6269_axis_mu26_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_31/sim/bd_6269_axis_mu27_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_32/sim/bd_6269_axis_mu28_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_33/sim/bd_6269_axis_mu29_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_34/sim/bd_6269_axis_mu30_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_35/sim/bd_6269_axis_mu31_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_36/sim/bd_6269_axis_mu32_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_37/sim/bd_6269_axis_mu33_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_38/sim/bd_6269_axis_mu34_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_39/sim/bd_6269_axis_mu35_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_40/sim/bd_6269_axis_mu36_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_41/sim/bd_6269_axis_mu37_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_42/sim/bd_6269_axis_mu38_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_43/sim/bd_6269_axis_mu39_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_44/sim/bd_6269_axis_mu40_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_45/sim/bd_6269_axis_mu41_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_46/sim/bd_6269_axis_mu42_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_47/sim/bd_6269_axis_mu43_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_48/sim/bd_6269_axis_mu44_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_49/sim/bd_6269_axis_mu45_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_50/sim/bd_6269_axis_mu46_0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_51/sim/bd_6269_axis_dbg_sync_2_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_52/sim/bd_6269_axis_dbg_sync_3_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_53/sim/bd_6269_axis_dbg_sync_4_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_54/sim/bd_6269_axis_dbg_sync_5_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_55/sim/bd_6269_axis_dbg_sync_6_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_56/sim/bd_6269_tc_axis_mu0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_57/sim/bd_6269_cc_axis_mu0_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_58/sim/bd_6269_cc_axis_mu1_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_59/sim/bd_6269_cc_axis_mu2_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_60/sim/bd_6269_cc_axis_mu3_0.v" \

vlog -work axis_itct_v1_0_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_itct_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_61/sim/bd_6269_axis_itct_0.v" \

vlog -work axis_ila_pp_v1_0_2 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_ila_pp_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_62/sim/bd_6269_axis_ila_pp_0.v" \

vlog -work axis_mem_v1_0_2 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_mem_v1_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/ip/ip_63/sim/bd_6269_axis_mem_0.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/bd_0/sim/bd_6269.v" \
"../../../../vhk158_llm_accelerator.gen/sources_1/ip/ila_3/sim/ila_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

