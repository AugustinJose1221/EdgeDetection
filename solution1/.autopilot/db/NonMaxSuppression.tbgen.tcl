set moduleName NonMaxSuppression
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
set C_modelName {NonMaxSuppression}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo3_value int 8 regular {fifo 0 volatile } {global 0}  }
	{ fifo3_grad int 2 regular {fifo 0 volatile } {global 0}  }
	{ fifo4 int 8 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo3_value", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo3.value","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 262143,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "fifo3_grad", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "fifo3.grad","cData": "enum GradDir","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 262143,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "fifo4", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo4","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 262143,"step" : 1}]}]}], "extern" : 0} ]}
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
	{ fifo3_value_dout sc_in sc_lv 8 signal 0 } 
	{ fifo3_value_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo3_value_read sc_out sc_logic 1 signal 0 } 
	{ fifo3_grad_dout sc_in sc_lv 2 signal 1 } 
	{ fifo3_grad_empty_n sc_in sc_logic 1 signal 1 } 
	{ fifo3_grad_read sc_out sc_logic 1 signal 1 } 
	{ fifo4_din sc_out sc_lv 8 signal 2 } 
	{ fifo4_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo4_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "fifo3_value_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo3_value", "role": "dout" }} , 
 	{ "name": "fifo3_value_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo3_value", "role": "empty_n" }} , 
 	{ "name": "fifo3_value_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo3_value", "role": "read" }} , 
 	{ "name": "fifo3_grad_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo3_grad", "role": "dout" }} , 
 	{ "name": "fifo3_grad_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo3_grad", "role": "empty_n" }} , 
 	{ "name": "fifo3_grad_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo3_grad", "role": "read" }} , 
 	{ "name": "fifo4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo4", "role": "din" }} , 
 	{ "name": "fifo4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo4", "role": "full_n" }} , 
 	{ "name": "fifo4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "NonMaxSuppression",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "264193", "EstimateLatencyMax" : "264193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo3_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo3_grad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo4_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_value_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_grad_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	NonMaxSuppression {
		fifo3_value {Type I LastRead 3 FirstWrite -1}
		fifo3_grad {Type I LastRead 3 FirstWrite -1}
		fifo4 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "264193", "Max" : "264193"}
	, {"Name" : "Interval", "Min" : "264193", "Max" : "264193"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo3_value { ap_fifo {  { fifo3_value_dout fifo_data 0 8 }  { fifo3_value_empty_n fifo_status 0 1 }  { fifo3_value_read fifo_update 1 1 } } }
	fifo3_grad { ap_fifo {  { fifo3_grad_dout fifo_data 0 2 }  { fifo3_grad_empty_n fifo_status 0 1 }  { fifo3_grad_read fifo_update 1 1 } } }
	fifo4 { ap_fifo {  { fifo4_din fifo_data 1 8 }  { fifo4_full_n fifo_status 0 1 }  { fifo4_write fifo_update 1 1 } } }
}
