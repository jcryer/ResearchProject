// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdma_master_test.h"

extern XDma_master_test_Config XDma_master_test_ConfigTable[];

XDma_master_test_Config *XDma_master_test_LookupConfig(u16 DeviceId) {
	XDma_master_test_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDMA_MASTER_TEST_NUM_INSTANCES; Index++) {
		if (XDma_master_test_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDma_master_test_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDma_master_test_Initialize(XDma_master_test *InstancePtr, u16 DeviceId) {
	XDma_master_test_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDma_master_test_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDma_master_test_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

