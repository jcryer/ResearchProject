set moduleName dma_master_test_Pipeline_VITIS_LOOP_43_1
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
set C_modelName {dma_master_test_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln1 int 31 regular  }
	{ buff_4 float 32 regular {array 103 { 1 1 } 1 1 }  }
	{ buff float 32 regular {array 103 { 1 1 } 1 1 }  }
	{ buff_1 float 32 regular {array 103 { 1 1 } 1 1 }  }
	{ buff_2 float 32 regular {array 103 { 1 1 } 1 1 }  }
	{ buff_3 float 32 regular {array 103 { 1 1 } 1 1 }  }
	{ tmp1 float 32 regular  }
	{ dy float 32 regular  }
	{ dx float 32 regular  }
	{ dz float 32 regular  }
	{ tmp4 float 32 regular  }
	{ tmp9 float 32 regular  }
	{ px float 32 regular  }
	{ add float 32 regular  }
	{ add1 float 32 regular  }
	{ py float 32 regular  }
	{ add2 float 32 regular  }
	{ pz float 32 regular  }
	{ tmp20 float 32 regular  }
	{ tmp22 float 32 regular  }
	{ tmp23 float 32 regular  }
	{ t_finals float 32 regular {array 50 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln1", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "buff_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "px", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "py", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_finals", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 132
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln1 sc_in sc_lv 31 signal 0 } 
	{ buff_4_address0 sc_out sc_lv 7 signal 1 } 
	{ buff_4_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_4_q0 sc_in sc_lv 32 signal 1 } 
	{ buff_4_address1 sc_out sc_lv 7 signal 1 } 
	{ buff_4_ce1 sc_out sc_logic 1 signal 1 } 
	{ buff_4_q1 sc_in sc_lv 32 signal 1 } 
	{ buff_address0 sc_out sc_lv 7 signal 2 } 
	{ buff_ce0 sc_out sc_logic 1 signal 2 } 
	{ buff_q0 sc_in sc_lv 32 signal 2 } 
	{ buff_address1 sc_out sc_lv 7 signal 2 } 
	{ buff_ce1 sc_out sc_logic 1 signal 2 } 
	{ buff_q1 sc_in sc_lv 32 signal 2 } 
	{ buff_1_address0 sc_out sc_lv 7 signal 3 } 
	{ buff_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ buff_1_q0 sc_in sc_lv 32 signal 3 } 
	{ buff_1_address1 sc_out sc_lv 7 signal 3 } 
	{ buff_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ buff_1_q1 sc_in sc_lv 32 signal 3 } 
	{ buff_2_address0 sc_out sc_lv 7 signal 4 } 
	{ buff_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ buff_2_q0 sc_in sc_lv 32 signal 4 } 
	{ buff_2_address1 sc_out sc_lv 7 signal 4 } 
	{ buff_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ buff_2_q1 sc_in sc_lv 32 signal 4 } 
	{ buff_3_address0 sc_out sc_lv 7 signal 5 } 
	{ buff_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ buff_3_q0 sc_in sc_lv 32 signal 5 } 
	{ buff_3_address1 sc_out sc_lv 7 signal 5 } 
	{ buff_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ buff_3_q1 sc_in sc_lv 32 signal 5 } 
	{ tmp1 sc_in sc_lv 32 signal 6 } 
	{ dy sc_in sc_lv 32 signal 7 } 
	{ dx sc_in sc_lv 32 signal 8 } 
	{ dz sc_in sc_lv 32 signal 9 } 
	{ tmp4 sc_in sc_lv 32 signal 10 } 
	{ tmp9 sc_in sc_lv 32 signal 11 } 
	{ px sc_in sc_lv 32 signal 12 } 
	{ add sc_in sc_lv 32 signal 13 } 
	{ add1 sc_in sc_lv 32 signal 14 } 
	{ py sc_in sc_lv 32 signal 15 } 
	{ add2 sc_in sc_lv 32 signal 16 } 
	{ pz sc_in sc_lv 32 signal 17 } 
	{ tmp20 sc_in sc_lv 32 signal 18 } 
	{ tmp22 sc_in sc_lv 32 signal 19 } 
	{ tmp23 sc_in sc_lv 32 signal 20 } 
	{ t_finals_address0 sc_out sc_lv 6 signal 21 } 
	{ t_finals_ce0 sc_out sc_logic 1 signal 21 } 
	{ t_finals_we0 sc_out sc_logic 1 signal 21 } 
	{ t_finals_d0 sc_out sc_lv 32 signal 21 } 
	{ grp_fu_480_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_480_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_480_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_480_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_480_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_484_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_484_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_484_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_484_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_484_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_488_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_488_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_488_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_488_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_488_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_492_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_492_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_492_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_492_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_492_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_496_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_496_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_496_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_496_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_496_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_500_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_500_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_500_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_500_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_500_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_505_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_505_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_505_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_505_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_509_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_509_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_509_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_509_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_513_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_513_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_513_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_513_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_517_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_517_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_517_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_517_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_521_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_521_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_521_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_521_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_525_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_525_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_525_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_525_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_535_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_535_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_535_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_535_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_539_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_539_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_539_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_539_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_543_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_543_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_543_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_543_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "buff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff_4", "role": "address0" }} , 
 	{ "name": "buff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_4", "role": "ce0" }} , 
 	{ "name": "buff_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_4", "role": "q0" }} , 
 	{ "name": "buff_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff_4", "role": "address1" }} , 
 	{ "name": "buff_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_4", "role": "ce1" }} , 
 	{ "name": "buff_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_4", "role": "q1" }} , 
 	{ "name": "buff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff", "role": "address0" }} , 
 	{ "name": "buff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff", "role": "ce0" }} , 
 	{ "name": "buff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff", "role": "q0" }} , 
 	{ "name": "buff_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff", "role": "address1" }} , 
 	{ "name": "buff_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff", "role": "ce1" }} , 
 	{ "name": "buff_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff", "role": "q1" }} , 
 	{ "name": "buff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff_1", "role": "address0" }} , 
 	{ "name": "buff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_1", "role": "ce0" }} , 
 	{ "name": "buff_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_1", "role": "q0" }} , 
 	{ "name": "buff_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff_1", "role": "address1" }} , 
 	{ "name": "buff_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_1", "role": "ce1" }} , 
 	{ "name": "buff_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_1", "role": "q1" }} , 
 	{ "name": "buff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff_2", "role": "address0" }} , 
 	{ "name": "buff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_2", "role": "ce0" }} , 
 	{ "name": "buff_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_2", "role": "q0" }} , 
 	{ "name": "buff_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff_2", "role": "address1" }} , 
 	{ "name": "buff_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_2", "role": "ce1" }} , 
 	{ "name": "buff_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_2", "role": "q1" }} , 
 	{ "name": "buff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff_3", "role": "address0" }} , 
 	{ "name": "buff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_3", "role": "ce0" }} , 
 	{ "name": "buff_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_3", "role": "q0" }} , 
 	{ "name": "buff_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "buff_3", "role": "address1" }} , 
 	{ "name": "buff_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_3", "role": "ce1" }} , 
 	{ "name": "buff_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_3", "role": "q1" }} , 
 	{ "name": "tmp1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "default" }} , 
 	{ "name": "dy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dy", "role": "default" }} , 
 	{ "name": "dx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dx", "role": "default" }} , 
 	{ "name": "dz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dz", "role": "default" }} , 
 	{ "name": "tmp4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp4", "role": "default" }} , 
 	{ "name": "tmp9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp9", "role": "default" }} , 
 	{ "name": "px", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "px", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "add1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add1", "role": "default" }} , 
 	{ "name": "py", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "py", "role": "default" }} , 
 	{ "name": "add2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add2", "role": "default" }} , 
 	{ "name": "pz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pz", "role": "default" }} , 
 	{ "name": "tmp20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp20", "role": "default" }} , 
 	{ "name": "tmp22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp22", "role": "default" }} , 
 	{ "name": "tmp23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp23", "role": "default" }} , 
 	{ "name": "t_finals_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_finals", "role": "address0" }} , 
 	{ "name": "t_finals_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_finals", "role": "ce0" }} , 
 	{ "name": "t_finals_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_finals", "role": "we0" }} , 
 	{ "name": "t_finals_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_finals", "role": "d0" }} , 
 	{ "name": "grp_fu_480_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_480_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_480_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_480_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_480_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_480_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_484_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_484_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_484_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_484_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_484_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_488_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_488_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_488_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_488_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_488_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_492_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_492_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_492_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_492_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_492_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_496_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_496_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_496_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_496_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_496_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_500_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_500_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_500_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_500_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_500_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_505_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_505_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_505_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_505_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_505_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_505_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_505_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_505_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_509_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_509_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_509_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_509_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_509_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_509_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_509_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_509_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_513_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_513_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_513_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_513_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_513_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_513_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_513_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_513_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_517_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_517_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_517_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_517_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_517_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_517_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_517_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_517_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_521_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_521_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_521_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_521_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_521_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_521_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_521_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_521_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_525_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_525_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_525_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_525_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_525_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_525_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_525_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_525_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_535_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_539_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_543_p_ce", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
		"CDFG" : "dma_master_test_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "94", "EstimateLatencyMax" : "143",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dy", "Type" : "None", "Direction" : "I"},
			{"Name" : "dx", "Type" : "None", "Direction" : "I"},
			{"Name" : "dz", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp4", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp9", "Type" : "None", "Direction" : "I"},
			{"Name" : "px", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "add1", "Type" : "None", "Direction" : "I"},
			{"Name" : "py", "Type" : "None", "Direction" : "I"},
			{"Name" : "add2", "Type" : "None", "Direction" : "I"},
			{"Name" : "pz", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp20", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp22", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp23", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_finals", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter92", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter92", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U15", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U16", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U17", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U18", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U19", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U20", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U21", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U22", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U23", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U24", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U25", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U26", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U27", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U28", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U29", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U30", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U31", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U32", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U33", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U43", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U44", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U46", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U47", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U48", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U49", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U50", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U51", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U52", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U53", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U54", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U55", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U56", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U57", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U58", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U59", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U60", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U61", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U62", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U63", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U64", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U65", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U66", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U67", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U68", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U69", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U70", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U71", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U72", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U73", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U74", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_16_no_dsp_1_U75", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_16_no_dsp_1_U76", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U77", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U78", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_16_no_dsp_1_U81", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U82", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U83", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dma_master_test_Pipeline_VITIS_LOOP_43_1 {
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		buff_4 {Type I LastRead 9 FirstWrite -1}
		buff {Type I LastRead 13 FirstWrite -1}
		buff_1 {Type I LastRead 4 FirstWrite -1}
		buff_2 {Type I LastRead 9 FirstWrite -1}
		buff_3 {Type I LastRead 17 FirstWrite -1}
		tmp1 {Type I LastRead 0 FirstWrite -1}
		dy {Type I LastRead 0 FirstWrite -1}
		dx {Type I LastRead 0 FirstWrite -1}
		dz {Type I LastRead 0 FirstWrite -1}
		tmp4 {Type I LastRead 0 FirstWrite -1}
		tmp9 {Type I LastRead 0 FirstWrite -1}
		px {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		add1 {Type I LastRead 0 FirstWrite -1}
		py {Type I LastRead 0 FirstWrite -1}
		add2 {Type I LastRead 0 FirstWrite -1}
		pz {Type I LastRead 0 FirstWrite -1}
		tmp20 {Type I LastRead 0 FirstWrite -1}
		tmp22 {Type I LastRead 0 FirstWrite -1}
		tmp23 {Type I LastRead 0 FirstWrite -1}
		t_finals {Type O LastRead -1 FirstWrite 92}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "94", "Max" : "143"}
	, {"Name" : "Interval", "Min" : "94", "Max" : "143"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln1 { ap_none {  { trunc_ln1 in_data 0 31 } } }
	buff_4 { ap_memory {  { buff_4_address0 mem_address 1 7 }  { buff_4_ce0 mem_ce 1 1 }  { buff_4_q0 mem_dout 0 32 }  { buff_4_address1 MemPortADDR2 1 7 }  { buff_4_ce1 MemPortCE2 1 1 }  { buff_4_q1 MemPortDOUT2 0 32 } } }
	buff { ap_memory {  { buff_address0 mem_address 1 7 }  { buff_ce0 mem_ce 1 1 }  { buff_q0 mem_dout 0 32 }  { buff_address1 MemPortADDR2 1 7 }  { buff_ce1 MemPortCE2 1 1 }  { buff_q1 MemPortDOUT2 0 32 } } }
	buff_1 { ap_memory {  { buff_1_address0 mem_address 1 7 }  { buff_1_ce0 mem_ce 1 1 }  { buff_1_q0 mem_dout 0 32 }  { buff_1_address1 MemPortADDR2 1 7 }  { buff_1_ce1 MemPortCE2 1 1 }  { buff_1_q1 MemPortDOUT2 0 32 } } }
	buff_2 { ap_memory {  { buff_2_address0 mem_address 1 7 }  { buff_2_ce0 mem_ce 1 1 }  { buff_2_q0 mem_dout 0 32 }  { buff_2_address1 MemPortADDR2 1 7 }  { buff_2_ce1 MemPortCE2 1 1 }  { buff_2_q1 MemPortDOUT2 0 32 } } }
	buff_3 { ap_memory {  { buff_3_address0 mem_address 1 7 }  { buff_3_ce0 mem_ce 1 1 }  { buff_3_q0 mem_dout 0 32 }  { buff_3_address1 MemPortADDR2 1 7 }  { buff_3_ce1 MemPortCE2 1 1 }  { buff_3_q1 MemPortDOUT2 0 32 } } }
	tmp1 { ap_none {  { tmp1 in_data 0 32 } } }
	dy { ap_none {  { dy in_data 0 32 } } }
	dx { ap_none {  { dx in_data 0 32 } } }
	dz { ap_none {  { dz in_data 0 32 } } }
	tmp4 { ap_none {  { tmp4 in_data 0 32 } } }
	tmp9 { ap_none {  { tmp9 in_data 0 32 } } }
	px { ap_none {  { px in_data 0 32 } } }
	add { ap_none {  { add in_data 0 32 } } }
	add1 { ap_none {  { add1 in_data 0 32 } } }
	py { ap_none {  { py in_data 0 32 } } }
	add2 { ap_none {  { add2 in_data 0 32 } } }
	pz { ap_none {  { pz in_data 0 32 } } }
	tmp20 { ap_none {  { tmp20 in_data 0 32 } } }
	tmp22 { ap_none {  { tmp22 in_data 0 32 } } }
	tmp23 { ap_none {  { tmp23 in_data 0 32 } } }
	t_finals { ap_memory {  { t_finals_address0 mem_address 1 6 }  { t_finals_ce0 mem_ce 1 1 }  { t_finals_we0 mem_we 1 1 }  { t_finals_d0 mem_din 1 32 } } }
}
