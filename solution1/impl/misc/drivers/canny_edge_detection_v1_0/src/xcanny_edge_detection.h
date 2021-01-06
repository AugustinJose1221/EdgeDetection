// ==============================================================
// File generated on Wed Jan 06 15:36:54 +0530 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCANNY_EDGE_DETECTION_H
#define XCANNY_EDGE_DETECTION_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcanny_edge_detection_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XCanny_edge_detection_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XCanny_edge_detection;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCanny_edge_detection_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCanny_edge_detection_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCanny_edge_detection_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCanny_edge_detection_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCanny_edge_detection_Initialize(XCanny_edge_detection *InstancePtr, u16 DeviceId);
XCanny_edge_detection_Config* XCanny_edge_detection_LookupConfig(u16 DeviceId);
int XCanny_edge_detection_CfgInitialize(XCanny_edge_detection *InstancePtr, XCanny_edge_detection_Config *ConfigPtr);
#else
int XCanny_edge_detection_Initialize(XCanny_edge_detection *InstancePtr, const char* InstanceName);
int XCanny_edge_detection_Release(XCanny_edge_detection *InstancePtr);
#endif


void XCanny_edge_detection_Set_hist_hthr(XCanny_edge_detection *InstancePtr, u32 Data);
u32 XCanny_edge_detection_Get_hist_hthr(XCanny_edge_detection *InstancePtr);
void XCanny_edge_detection_Set_hist_lthr(XCanny_edge_detection *InstancePtr, u32 Data);
u32 XCanny_edge_detection_Get_hist_lthr(XCanny_edge_detection *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
