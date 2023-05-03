############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dma-master-test
set_top dma_master_test
add_files dma-master-test.cpp
open_solution "dma-master-test" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_compile -unsafe_math_optimizations
config_export -format ip_catalog -rtl verilog
source "./dma-master-test/dma-master-test/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
