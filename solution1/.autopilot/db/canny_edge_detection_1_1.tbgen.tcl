set moduleName canny_edge_detection_1_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {canny_edge_detection.1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ hist_hthr int 8 regular {pointer 0}  }
	{ hist_lthr int 8 regular {pointer 0}  }
	{ hist_hthr_out int 8 regular {fifo 1}  }
	{ hist_lthr_out int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hist_hthr", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hist_lthr", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hist_hthr_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hist_lthr_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hist_hthr sc_in sc_lv 8 signal 0 } 
	{ hist_lthr sc_in sc_lv 8 signal 1 } 
	{ hist_hthr_out_din sc_out sc_lv 8 signal 2 } 
	{ hist_hthr_out_full_n sc_in sc_logic 1 signal 2 } 
	{ hist_hthr_out_write sc_out sc_logic 1 signal 2 } 
	{ hist_lthr_out_din sc_out sc_lv 8 signal 3 } 
	{ hist_lthr_out_full_n sc_in sc_logic 1 signal 3 } 
	{ hist_lthr_out_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hist_hthr", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_hthr", "role": "default" }} , 
 	{ "name": "hist_lthr", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_lthr", "role": "default" }} , 
 	{ "name": "hist_hthr_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_hthr_out", "role": "din" }} , 
 	{ "name": "hist_hthr_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_hthr_out", "role": "full_n" }} , 
 	{ "name": "hist_hthr_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_hthr_out", "role": "write" }} , 
 	{ "name": "hist_lthr_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_lthr_out", "role": "din" }} , 
 	{ "name": "hist_lthr_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_lthr_out", "role": "full_n" }} , 
 	{ "name": "hist_lthr_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist_lthr_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "canny_edge_detection_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hist_hthr", "Type" : "None", "Direction" : "I"},
			{"Name" : "hist_lthr", "Type" : "None", "Direction" : "I"},
			{"Name" : "hist_hthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hist_hthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hist_lthr_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	canny_edge_detection_1_1 {
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		hist_hthr_out {Type O LastRead -1 FirstWrite 0}
		hist_lthr_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hist_hthr { ap_none {  { hist_hthr in_data 0 8 } } }
	hist_lthr { ap_none {  { hist_lthr in_data 0 8 } } }
	hist_hthr_out { ap_fifo {  { hist_hthr_out_din fifo_data 1 8 }  { hist_hthr_out_full_n fifo_status 0 1 }  { hist_hthr_out_write fifo_update 1 1 } } }
	hist_lthr_out { ap_fifo {  { hist_lthr_out_din fifo_data 1 8 }  { hist_lthr_out_full_n fifo_status 0 1 }  { hist_lthr_out_write fifo_update 1 1 } } }
}
