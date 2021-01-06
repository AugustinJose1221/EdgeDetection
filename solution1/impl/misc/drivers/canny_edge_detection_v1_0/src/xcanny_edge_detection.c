// ==============================================================
// File generated on Wed Jan 06 15:36:54 +0530 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcanny_edge_detection.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCanny_edge_detection_CfgInitialize(XCanny_edge_detection *InstancePtr, XCanny_edge_detection_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCanny_edge_detection_Set_hist_hthr(XCanny_edge_detection *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_edge_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XCANNY_EDGE_DETECTION_CONTROL_BUS_ADDR_HIST_HTHR_DATA, Data);
}

u32 XCanny_edge_detection_Get_hist_hthr(XCanny_edge_detection *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XCANNY_EDGE_DETECTION_CONTROL_BUS_ADDR_HIST_HTHR_DATA);
    return Data;
}

void XCanny_edge_detection_Set_hist_lthr(XCanny_edge_detection *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_edge_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XCANNY_EDGE_DETECTION_CONTROL_BUS_ADDR_HIST_LTHR_DATA, Data);
}

u32 XCanny_edge_detection_Get_hist_lthr(XCanny_edge_detection *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XCANNY_EDGE_DETECTION_CONTROL_BUS_ADDR_HIST_LTHR_DATA);
    return Data;
}

