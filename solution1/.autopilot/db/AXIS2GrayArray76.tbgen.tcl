set moduleName AXIS2GrayArray76
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {AXIS2GrayArray76}
set C_modelType { void 0 }
set C_modelArgList {
	{ axis_src_V_data_V int 24 regular {axi_s 0 volatile  { axis_in Data } }  }
	{ axis_src_V_user_V int 1 regular {axi_s 0 volatile  { axis_in User } }  }
	{ axis_src_V_last_V int 1 regular {axi_s 0 volatile  { axis_in Last } }  }
	{ hist_hthr int 8 regular {fifo 0}  }
	{ hist_lthr int 8 regular {fifo 0}  }
	{ hist_hthr_out int 8 regular {fifo 1}  }
	{ hist_lthr_out int 8 regular {fifo 1}  }
	{ fifo1 int 8 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "axis_src_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "axis_src_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axis_src_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hist_hthr", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hist_lthr", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hist_hthr_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hist_lthr_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 262143,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ axis_in_TDATA sc_in sc_lv 24 signal 0 } 
	{ axis_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ axis_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ axis_in_TUSER sc_in sc_lv 1 signal 1 } 
	{ axis_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ hist_hthr_dout sc_in sc_lv 8 signal 3 } 
	{ hist_hthr_empty_n sc_in sc_logic 1 signal 3 } 
	{ hist_hthr_read sc_out sc_logic 1 signal 3 } 
	{ hist_lthr_dout sc_in sc_lv 8 signal 4 } 
	{ hist_lthr_empty_n sc_in sc_logic 1 signal 4 } 
	{ hist_lthr_read sc_out sc_logic 1 signal 4 } 
	{ hist_hthr_out_din sc_out sc_lv 8 signal 5 } 
	{ hist_hthr_out_full_n sc_in sc_logic 1 signal 5 } 
	{ hist_hthr_out_write sc_out sc_logic 1 signal 5 } 
	{ hist_lthr_out_din sc_out sc_lv 8 signal 6 } 
	{ hist_lthr_out_full_n sc_in sc_logic 1 signal 6 } 
	{ hist_lthr_out_write sc_out sc_logic 1 signal 6 } 
	{ fifo1_din sc_out sc_lv 8 signal 7 } 
	{ fifo1_full_n sc_in sc_logic 1 signal 7 } 
	{ fifo1_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "axis_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "axis_src_V_data_V", "role": "default" }} , 
 	{ "name": "axis_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_src_V_last_V", "role": "default" }} , 
 	{ "name": "axis_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_src_V_last_V", "role": "default" }} , 
 	{ "name": "axis_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_src_V_user_V", "role": "default" }} , 
 	{ "name": "axis_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_src_V_last_V", "role": "default" }} , 
 	{ "name": "hist_hthr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_hthr", "role": "dout" }} , 
 	{ "name": "hist_hthr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_hthr", "role": "empty_n" }} , 
 	{ "name": "hist_hthr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_hthr", "role": "read" }} , 
 	{ "name": "hist_lthr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_lthr", "role": "dout" }} , 
 	{ "name": "hist_lthr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_lthr", "role": "empty_n" }} , 
 	{ "name": "hist_lthr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_lthr", "role": "read" }} , 
 	{ "name": "hist_hthr_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_hthr_out", "role": "din" }} , 
 	{ "name": "hist_hthr_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_hthr_out", "role": "full_n" }} , 
 	{ "name": "hist_hthr_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_hthr_out", "role": "write" }} , 
 	{ "name": "hist_lthr_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_lthr_out", "role": "din" }} , 
 	{ "name": "hist_lthr_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_lthr_out", "role": "full_n" }} , 
 	{ "name": "hist_lthr_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_lthr_out", "role": "write" }} , 
 	{ "name": "fifo1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo1", "role": "din" }} , 
 	{ "name": "fifo1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo1", "role": "full_n" }} , 
 	{ "name": "fifo1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "AXIS2GrayArray76",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "265731", "EstimateLatencyMax" : "265731",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "axis_src_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "axis_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_src_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axis_src_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "hist_hthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hist_hthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hist_lthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_hthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hist_hthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hist_lthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detectbkb_U5", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detectcud_U6", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detectdEe_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AXIS2GrayArray76 {
		axis_src_V_data_V {Type I LastRead 6 FirstWrite -1}
		axis_src_V_user_V {Type I LastRead 6 FirstWrite -1}
		axis_src_V_last_V {Type I LastRead 6 FirstWrite -1}
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		hist_hthr_out {Type O LastRead -1 FirstWrite 0}
		hist_lthr_out {Type O LastRead -1 FirstWrite 0}
		fifo1 {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "265731", "Max" : "265731"}
	, {"Name" : "Interval", "Min" : "265731", "Max" : "265731"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	axis_src_V_data_V { axis {  { axis_in_TDATA in_data 0 24 } } }
	axis_src_V_user_V { axis {  { axis_in_TUSER in_data 0 1 } } }
	axis_src_V_last_V { axis {  { axis_in_TVALID in_vld 0 1 }  { axis_in_TREADY in_acc 1 1 }  { axis_in_TLAST in_data 0 1 } } }
	hist_hthr { ap_fifo {  { hist_hthr_dout fifo_data 0 8 }  { hist_hthr_empty_n fifo_status 0 1 }  { hist_hthr_read fifo_update 1 1 } } }
	hist_lthr { ap_fifo {  { hist_lthr_dout fifo_data 0 8 }  { hist_lthr_empty_n fifo_status 0 1 }  { hist_lthr_read fifo_update 1 1 } } }
	hist_hthr_out { ap_fifo {  { hist_hthr_out_din fifo_data 1 8 }  { hist_hthr_out_full_n fifo_status 0 1 }  { hist_hthr_out_write fifo_update 1 1 } } }
	hist_lthr_out { ap_fifo {  { hist_lthr_out_din fifo_data 1 8 }  { hist_lthr_out_full_n fifo_status 0 1 }  { hist_lthr_out_write fifo_update 1 1 } } }
	fifo1 { ap_fifo {  { fifo1_din fifo_data 1 8 }  { fifo1_full_n fifo_status 0 1 }  { fifo1_write fifo_update 1 1 } } }
}
