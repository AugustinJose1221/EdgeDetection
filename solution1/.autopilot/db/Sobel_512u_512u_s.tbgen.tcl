set moduleName Sobel_512u_512u_s
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
set C_modelName {Sobel<512u, 512u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo2 int 8 regular {fifo 0 volatile } {global 0}  }
	{ fifo3_value int 8 regular {fifo 1 volatile } {global 1}  }
	{ fifo3_grad int 2 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 262143,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "fifo3_value", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo3.value","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 262143,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "fifo3_grad", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "fifo3.grad","cData": "enum GradDir","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 262143,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
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
	{ fifo2_dout sc_in sc_lv 8 signal 0 } 
	{ fifo2_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo2_read sc_out sc_logic 1 signal 0 } 
	{ fifo3_value_din sc_out sc_lv 8 signal 1 } 
	{ fifo3_value_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo3_value_write sc_out sc_logic 1 signal 1 } 
	{ fifo3_grad_din sc_out sc_lv 2 signal 2 } 
	{ fifo3_grad_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo3_grad_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "fifo2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo2", "role": "dout" }} , 
 	{ "name": "fifo2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo2", "role": "empty_n" }} , 
 	{ "name": "fifo2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo2", "role": "read" }} , 
 	{ "name": "fifo3_value_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo3_value", "role": "din" }} , 
 	{ "name": "fifo3_value_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo3_value", "role": "full_n" }} , 
 	{ "name": "fifo3_value_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo3_value", "role": "write" }} , 
 	{ "name": "fifo3_grad_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo3_grad", "role": "din" }} , 
 	{ "name": "fifo3_grad_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo3_grad", "role": "full_n" }} , 
 	{ "name": "fifo3_grad_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo3_grad", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "Sobel_512u_512u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276993", "EstimateLatencyMax" : "276993",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo3_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo3_grad_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detectg8j_U22", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detecthbi_U23", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detectibs_U24", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detectjbC_U25", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detectkbM_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Sobel_512u_512u_s {
		fifo2 {Type I LastRead 3 FirstWrite -1}
		fifo3_value {Type O LastRead -1 FirstWrite 29}
		fifo3_grad {Type O LastRead -1 FirstWrite 29}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "276993", "Max" : "276993"}
	, {"Name" : "Interval", "Min" : "276993", "Max" : "276993"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo2 { ap_fifo {  { fifo2_dout fifo_data 0 8 }  { fifo2_empty_n fifo_status 0 1 }  { fifo2_read fifo_update 1 1 } } }
	fifo3_value { ap_fifo {  { fifo3_value_din fifo_data 1 8 }  { fifo3_value_full_n fifo_status 0 1 }  { fifo3_value_write fifo_update 1 1 } } }
	fifo3_grad { ap_fifo {  { fifo3_grad_din fifo_data 1 2 }  { fifo3_grad_full_n fifo_status 0 1 }  { fifo3_grad_write fifo_update 1 1 } } }
}
