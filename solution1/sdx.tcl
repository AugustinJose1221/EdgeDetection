# ==============================================================
# File generated on Wed Jan 06 15:36:57 +0530 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../HLS-canny-edge-detection-master/testbench/canny_edge_detection_tb.cpp -cflags { -Wno-unknown-pragmas}
add_files EdgeDetection/lenna.png
add_files HLS-canny-edge-detection-master/src/canny_edge_detection.h
add_files HLS-canny-edge-detection-master/src/canny_edge_detection.cpp
add_files HLS-canny-edge-detection-master/src/HlsImProc.hpp
set_part xa7a12tcsg325-1q
create_clock -name default -period 10
