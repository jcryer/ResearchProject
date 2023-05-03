// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDMA_MASTER_TEST_H
#define XDMA_MASTER_TEST_H

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
#include "xdma_master_test_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XDma_master_test_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDma_master_test;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDma_master_test_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDma_master_test_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDma_master_test_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDma_master_test_ReadReg(BaseAddress, RegOffset) \
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
int XDma_master_test_Initialize(XDma_master_test *InstancePtr, u16 DeviceId);
XDma_master_test_Config* XDma_master_test_LookupConfig(u16 DeviceId);
int XDma_master_test_CfgInitialize(XDma_master_test *InstancePtr, XDma_master_test_Config *ConfigPtr);
#else
int XDma_master_test_Initialize(XDma_master_test *InstancePtr, const char* InstanceName);
int XDma_master_test_Release(XDma_master_test *InstancePtr);
#endif

void XDma_master_test_Start(XDma_master_test *InstancePtr);
u32 XDma_master_test_IsDone(XDma_master_test *InstancePtr);
u32 XDma_master_test_IsIdle(XDma_master_test *InstancePtr);
u32 XDma_master_test_IsReady(XDma_master_test *InstancePtr);
void XDma_master_test_EnableAutoRestart(XDma_master_test *InstancePtr);
void XDma_master_test_DisableAutoRestart(XDma_master_test *InstancePtr);

void XDma_master_test_Set_arr(XDma_master_test *InstancePtr, u64 Data);
u64 XDma_master_test_Get_arr(XDma_master_test *InstancePtr);
void XDma_master_test_Set_num_quads(XDma_master_test *InstancePtr, u32 Data);
u32 XDma_master_test_Get_num_quads(XDma_master_test *InstancePtr);

void XDma_master_test_InterruptGlobalEnable(XDma_master_test *InstancePtr);
void XDma_master_test_InterruptGlobalDisable(XDma_master_test *InstancePtr);
void XDma_master_test_InterruptEnable(XDma_master_test *InstancePtr, u32 Mask);
void XDma_master_test_InterruptDisable(XDma_master_test *InstancePtr, u32 Mask);
void XDma_master_test_InterruptClear(XDma_master_test *InstancePtr, u32 Mask);
u32 XDma_master_test_InterruptGetEnabled(XDma_master_test *InstancePtr);
u32 XDma_master_test_InterruptGetStatus(XDma_master_test *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
