// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdma_master_test.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDma_master_test_CfgInitialize(XDma_master_test *InstancePtr, XDma_master_test_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDma_master_test_Start(XDma_master_test *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDma_master_test_IsDone(XDma_master_test *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDma_master_test_IsIdle(XDma_master_test *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDma_master_test_IsReady(XDma_master_test *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDma_master_test_EnableAutoRestart(XDma_master_test *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDma_master_test_DisableAutoRestart(XDma_master_test *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_AP_CTRL, 0);
}

void XDma_master_test_Set_arr(XDma_master_test *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_ARR_DATA, (u32)(Data));
    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_ARR_DATA + 4, (u32)(Data >> 32));
}

u64 XDma_master_test_Get_arr(XDma_master_test *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_ARR_DATA);
    Data += (u64)XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_ARR_DATA + 4) << 32;
    return Data;
}

void XDma_master_test_Set_num_quads(XDma_master_test *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_NUM_QUADS_DATA, Data);
}

u32 XDma_master_test_Get_num_quads(XDma_master_test *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_NUM_QUADS_DATA);
    return Data;
}

void XDma_master_test_InterruptGlobalEnable(XDma_master_test *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_GIE, 1);
}

void XDma_master_test_InterruptGlobalDisable(XDma_master_test *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_GIE, 0);
}

void XDma_master_test_InterruptEnable(XDma_master_test *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_IER);
    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_IER, Register | Mask);
}

void XDma_master_test_InterruptDisable(XDma_master_test *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_IER);
    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDma_master_test_InterruptClear(XDma_master_test *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_master_test_WriteReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_ISR, Mask);
}

u32 XDma_master_test_InterruptGetEnabled(XDma_master_test *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_IER);
}

u32 XDma_master_test_InterruptGetStatus(XDma_master_test *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDma_master_test_ReadReg(InstancePtr->Control_BaseAddress, XDMA_MASTER_TEST_CONTROL_ADDR_ISR);
}

