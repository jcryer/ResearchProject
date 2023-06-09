set moduleName dma_master_test_Pipeline_VITIS_LOOP_120_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dma_master_test_Pipeline_VITIS_LOOP_120_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln1 int 31 regular  }
	{ t_finals float 32 regular {array 50 { 1 3 } 1 1 }  }
	{ t_final_out float 32 regular {pointer 1}  }
	{ success_index_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln1", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "t_finals", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_final_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "success_index_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln1 sc_in sc_lv 31 signal 0 } 
	{ t_finals_address0 sc_out sc_lv 6 signal 1 } 
	{ t_finals_ce0 sc_out sc_logic 1 signal 1 } 
	{ t_finals_q0 sc_in sc_lv 32 signal 1 } 
	{ t_final_out sc_out sc_lv 32 signal 2 } 
	{ t_final_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ success_index_out sc_out sc_lv 32 signal 3 } 
	{ success_index_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ grp_fu_1411_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1411_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1411_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1411_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1411_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1415_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1415_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1415_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1415_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1415_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trunc_ln1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "trunc_ln1", "role": "default" }} , 
 	{ "name": "t_finals_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_finals", "role": "address0" }} , 
 	{ "name": "t_finals_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_finals", "role": "ce0" }} , 
 	{ "name": "t_finals_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_finals", "role": "q0" }} , 
 	{ "name": "t_final_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_final_out", "role": "default" }} , 
 	{ "name": "t_final_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_final_out", "role": "ap_vld" }} , 
 	{ "name": "success_index_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "success_index_out", "role": "default" }} , 
 	{ "name": "success_index_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "success_index_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1411_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1411_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1411_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1411_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1411_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1411_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1411_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1411_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1411_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1411_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1415_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1415_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1415_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1415_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1415_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1415_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1415_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1415_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1415_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1415_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dma_master_test_Pipeline_VITIS_LOOP_120_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_finals", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_final_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "success_index_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_120_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dma_master_test_Pipeline_VITIS_LOOP_120_2 {
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		t_finals {Type I LastRead 0 FirstWrite -1}
		t_final_out {Type O LastRead -1 FirstWrite 2}
		success_index_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "104"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "104"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln1 { ap_none {  { trunc_ln1 in_data 0 31 } } }
	t_finals { ap_memory {  { t_finals_address0 mem_address 1 6 }  { t_finals_ce0 mem_ce 1 1 }  { t_finals_q0 mem_dout 0 32 } } }
	t_final_out { ap_vld {  { t_final_out out_data 1 32 }  { t_final_out_ap_vld out_vld 1 1 } } }
	success_index_out { ap_vld {  { success_index_out out_data 1 32 }  { success_index_out_ap_vld out_vld 1 1 } } }
}
