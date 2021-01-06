############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project EdgeDetection
set_top canny_edge_detection
add_files HLS-canny-edge-detection-master/src/HlsImProc.hpp
add_files HLS-canny-edge-detection-master/src/canny_edge_detection.cpp
add_files HLS-canny-edge-detection-master/src/canny_edge_detection.h
add_files EdgeDetection/lenna.png
add_files -tb HLS-canny-edge-detection-master/testbench/canny_edge_detection_tb.cpp
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./EdgeDetection/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
