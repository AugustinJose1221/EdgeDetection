set moduleName canny_edge_detection
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {canny_edge_detection}
set C_modelType { void 0 }
set C_modelArgList {
	{ axis_in_V_data_V int 24 regular {axi_s 0 volatile  { axis_in Data } }  }
	{ axis_in_V_user_V int 1 regular {axi_s 0 volatile  { axis_in User } }  }
	{ axis_in_V_last_V int 1 regular {axi_s 0 volatile  { axis_in Last } }  }
	{ axis_out_V_data_V int 24 regular {axi_s 1 volatile  { axis_out Data } }  }
	{ axis_out_V_user_V int 1 regular {axi_s 1 volatile  { axis_out User } }  }
	{ axis_out_V_last_V int 1 regular {axi_s 1 volatile  { axis_out Last } }  }
	{ hist_hthr int 8 regular {axi_slave 0}  }
	{ hist_lthr int 8 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "axis_in_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "axis_in.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "axis_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "axis_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_out_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "axis_out.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "axis_out.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "axis_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hist_hthr", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "hist_hthr","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "hist_lthr", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "hist_lthr","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_aclk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n_s_axi_aclk sc_in sc_logic 1 reset -1 active_unknown } 
	{ axis_in_TDATA sc_in sc_lv 24 signal 0 } 
	{ axis_in_TUSER sc_in sc_lv 1 signal 1 } 
	{ axis_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ axis_out_TDATA sc_out sc_lv 24 signal 3 } 
	{ axis_out_TUSER sc_out sc_lv 1 signal 4 } 
	{ axis_out_TLAST sc_out sc_lv 1 signal 5 } 
	{ axis_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ axis_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ axis_out_TVALID sc_out sc_logic 1 outvld 5 } 
	{ axis_out_TREADY sc_in sc_logic 1 outacc 5 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"hist_hthr","role":"data","value":"16"},{"name":"hist_lthr","role":"data","value":"24"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "s_axi_aclk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "CONTROL_BUS", "role": "axilite_clk" } },
	{ "name": "ap_rst_n_s_axi_aclk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "CONTROL_BUS", "role": "axilite_rst" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "axis_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "axis_in_V_data_V", "role": "default" }} , 
 	{ "name": "axis_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_in_V_user_V", "role": "default" }} , 
 	{ "name": "axis_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "axis_out_V_data_V", "role": "default" }} , 
 	{ "name": "axis_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_out_V_user_V", "role": "default" }} , 
 	{ "name": "axis_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_out_V_last_V", "role": "default" }} , 
 	{ "name": "axis_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_in_V_last_V", "role": "default" }} , 
 	{ "name": "axis_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "axis_out_V_last_V", "role": "default" }} , 
 	{ "name": "axis_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "axis_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "7", "9", "16", "19", "20", "21", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
		"CDFG" : "canny_edge_detection",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "277003", "EstimateLatencyMax" : "277003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "canny_edge_detection_1_1_U0"},
			{"ID" : "3", "Name" : "AXIS2GrayArray76_U0"}],
		"OutputProcess" : [
			{"ID" : "23", "Name" : "GrayArray2AXIS_U0"}],
		"Port" : [
			{"Name" : "axis_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIS2GrayArray76_U0", "Port" : "axis_src_V_data_V"}]},
			{"Name" : "axis_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIS2GrayArray76_U0", "Port" : "axis_src_V_user_V"}]},
			{"Name" : "axis_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIS2GrayArray76_U0", "Port" : "axis_src_V_last_V"}]},
			{"Name" : "axis_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "axis_dst_V_data_V"}]},
			{"Name" : "axis_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "axis_dst_V_user_V"}]},
			{"Name" : "axis_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "axis_dst_V_last_V"}]},
			{"Name" : "hist_hthr", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "canny_edge_detection_1_1_U0", "Port" : "hist_hthr"}]},
			{"Name" : "hist_lthr", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "canny_edge_detection_1_1_U0", "Port" : "hist_lthr"}]},
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIS2GrayArray76_U0", "Port" : "fifo1"},
					{"ID" : "7", "SubInstance" : "GaussianBlur_U0", "Port" : "fifo1"}]},
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Sobel_512u_512u_U0", "Port" : "fifo2"},
					{"ID" : "7", "SubInstance" : "GaussianBlur_U0", "Port" : "fifo2"}]},
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Sobel_512u_512u_U0", "Port" : "fifo3_value"},
					{"ID" : "16", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo3_value"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Sobel_512u_512u_U0", "Port" : "fifo3_grad"},
					{"ID" : "16", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo3_grad"}]},
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "ZeroPadding_U0", "Port" : "fifo4"},
					{"ID" : "16", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo4"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "ZeroPadding_U0", "Port" : "fifo5"},
					{"ID" : "20", "SubInstance" : "HystThreshold_U0", "Port" : "fifo5"}]},
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "HystThresholdComp_U0", "Port" : "fifo6"},
					{"ID" : "20", "SubInstance" : "HystThreshold_U0", "Port" : "fifo6"}]},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "HystThresholdComp_U0", "Port" : "fifo7"},
					{"ID" : "23", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "fifo7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detection_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detection_1_1_U0", "Parent" : "0",
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
			{"Name" : "hist_hthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "hist_hthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "hist_lthr_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray76_U0", "Parent" : "0", "Child" : ["4", "5", "6"],
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
			{"Name" : "hist_hthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "hist_hthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "hist_lthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_hthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "hist_hthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "hist_lthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "fifo1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray76_U0.canny_edge_detectbkb_U5", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray76_U0.canny_edge_detectcud_U6", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray76_U0.canny_edge_detectdEe_U7", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "GaussianBlur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "265217", "EstimateLatencyMax" : "265217",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_Gaussiaocq_U",
		"Port" : [
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "fifo1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "fifo2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.line_buf_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15"],
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
		"StartSource" : "7",
		"StartFifo" : "start_for_Sobel_5qcK_U",
		"Port" : [
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "fifo2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "fifo3_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "fifo3_grad_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.line_buf_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detectg8j_U22", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detecthbi_U23", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detectibs_U24", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detectjbC_U25", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detectkbM_U26", "Parent" : "9"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0", "Parent" : "0", "Child" : ["17", "18"],
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
		"StartSource" : "9",
		"StartFifo" : "start_for_NonMaxSrcU_U",
		"Port" : [
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "fifo3_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "fifo3_grad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "fifo4_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0.line_buf_value_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0.line_buf_grad_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ZeroPadding_U0", "Parent" : "0",
		"CDFG" : "ZeroPadding",
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
		"StartSource" : "16",
		"StartFifo" : "start_for_ZeroPadsc4_U",
		"Port" : [
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "fifo4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "fifo5_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HystThreshold_U0", "Parent" : "0",
		"CDFG" : "HystThreshold",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_HystThrpcA_U",
		"Port" : [
			{"Name" : "hist_hthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "hist_hthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "hist_lthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "fifo5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "fifo6_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HystThresholdComp_U0", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "HystThresholdComp",
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
		"StartSource" : "20",
		"StartFifo" : "start_for_HystThrtde_U",
		"Port" : [
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "fifo6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "fifo7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HystThresholdComp_U0.line_buf_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GrayArray2AXIS_U0", "Parent" : "0",
		"CDFG" : "GrayArray2AXIS",
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
		"StartSource" : "21",
		"StartFifo" : "start_for_GrayArrudo_U",
		"Port" : [
			{"Name" : "axis_dst_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "axis_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_dst_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "axis_dst_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "fifo7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist_hthr_c1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist_lthr_c2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist_hthr_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist_lthr_c_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo1_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo2_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo3_value_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo3_grad_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo4_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo5_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo6_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo7_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Gaussiaocq_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_HystThrpcA_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Sobel_5qcK_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_NonMaxSrcU_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ZeroPadsc4_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_HystThrtde_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_GrayArrudo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	canny_edge_detection {
		axis_in_V_data_V {Type I LastRead 6 FirstWrite -1}
		axis_in_V_user_V {Type I LastRead 6 FirstWrite -1}
		axis_in_V_last_V {Type I LastRead 6 FirstWrite -1}
		axis_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		axis_out_V_user_V {Type O LastRead -1 FirstWrite 3}
		axis_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		fifo1 {Type IO LastRead -1 FirstWrite -1}
		fifo2 {Type IO LastRead -1 FirstWrite -1}
		fifo3_value {Type IO LastRead -1 FirstWrite -1}
		fifo3_grad {Type IO LastRead -1 FirstWrite -1}
		fifo4 {Type IO LastRead -1 FirstWrite -1}
		fifo5 {Type IO LastRead -1 FirstWrite -1}
		fifo6 {Type IO LastRead -1 FirstWrite -1}
		fifo7 {Type IO LastRead -1 FirstWrite -1}}
	canny_edge_detection_1_1 {
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		hist_hthr_out {Type O LastRead -1 FirstWrite 0}
		hist_lthr_out {Type O LastRead -1 FirstWrite 0}}
	AXIS2GrayArray76 {
		axis_src_V_data_V {Type I LastRead 6 FirstWrite -1}
		axis_src_V_user_V {Type I LastRead 6 FirstWrite -1}
		axis_src_V_last_V {Type I LastRead 6 FirstWrite -1}
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		hist_hthr_out {Type O LastRead -1 FirstWrite 0}
		hist_lthr_out {Type O LastRead -1 FirstWrite 0}
		fifo1 {Type O LastRead -1 FirstWrite 7}}
	GaussianBlur {
		fifo1 {Type I LastRead 3 FirstWrite -1}
		fifo2 {Type O LastRead -1 FirstWrite 6}}
	Sobel_512u_512u_s {
		fifo2 {Type I LastRead 3 FirstWrite -1}
		fifo3_value {Type O LastRead -1 FirstWrite 29}
		fifo3_grad {Type O LastRead -1 FirstWrite 29}}
	NonMaxSuppression {
		fifo3_value {Type I LastRead 3 FirstWrite -1}
		fifo3_grad {Type I LastRead 3 FirstWrite -1}
		fifo4 {Type O LastRead -1 FirstWrite 4}}
	ZeroPadding {
		fifo4 {Type I LastRead 3 FirstWrite -1}
		fifo5 {Type O LastRead -1 FirstWrite 4}}
	HystThreshold {
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		fifo5 {Type I LastRead 3 FirstWrite -1}
		fifo6 {Type O LastRead -1 FirstWrite 4}}
	HystThresholdComp {
		fifo6 {Type I LastRead 3 FirstWrite -1}
		fifo7 {Type O LastRead -1 FirstWrite 4}}
	GrayArray2AXIS {
		axis_dst_V_data_V {Type O LastRead -1 FirstWrite 3}
		axis_dst_V_user_V {Type O LastRead -1 FirstWrite 3}
		axis_dst_V_last_V {Type O LastRead -1 FirstWrite 3}
		fifo7 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "277003", "Max" : "277003"}
	, {"Name" : "Interval", "Min" : "276994", "Max" : "276994"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	axis_in_V_data_V { axis {  { axis_in_TDATA in_data 0 24 } } }
	axis_in_V_user_V { axis {  { axis_in_TUSER in_data 0 1 } } }
	axis_in_V_last_V { axis {  { axis_in_TLAST in_data 0 1 }  { axis_in_TVALID in_vld 0 1 }  { axis_in_TREADY in_acc 1 1 } } }
	axis_out_V_data_V { axis {  { axis_out_TDATA out_data 1 24 } } }
	axis_out_V_user_V { axis {  { axis_out_TUSER out_data 1 1 } } }
	axis_out_V_last_V { axis {  { axis_out_TLAST out_data 1 1 }  { axis_out_TVALID out_vld 1 1 }  { axis_out_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
