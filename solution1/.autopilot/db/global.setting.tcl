
set TopModule "canny_edge_detection"
set ClockPeriod 10
set ClockList {ap_clk s_axi_aclk}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xa7a12t:csg325:-1q
set SourceFiles {sc {} c ../../HLS-canny-edge-detection-master/src/canny_edge_detection.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile D:/Projects/Verilog/HLS/EdgeDetection/solution1/solution1.directive
set TBFiles {verilog ../../HLS-canny-edge-detection-master/testbench/canny_edge_detection_tb.cpp bc ../../HLS-canny-edge-detection-master/testbench/canny_edge_detection_tb.cpp vhdl ../../HLS-canny-edge-detection-master/testbench/canny_edge_detection_tb.cpp sc ../../HLS-canny-edge-detection-master/testbench/canny_edge_detection_tb.cpp cas ../../HLS-canny-edge-detection-master/testbench/canny_edge_detection_tb.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/aartix7/aartix7 xilinx/aartix7/aartix7_fpv6}}}
set HPFPO 0
