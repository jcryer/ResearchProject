set SynModuleInfo {
  {SRCNAME dma_master_test_Pipeline_1 MODELNAME dma_master_test_Pipeline_1 RTLNAME dma_master_test_dma_master_test_Pipeline_1
    SUBMODULES {
      {MODELNAME dma_master_test_flow_control_loop_pipe_sequential_init RTLNAME dma_master_test_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dma_master_test_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dma_master_test_Pipeline_2 MODELNAME dma_master_test_Pipeline_2 RTLNAME dma_master_test_dma_master_test_Pipeline_2}
  {SRCNAME dma_master_test_Pipeline_VITIS_LOOP_43_1 MODELNAME dma_master_test_Pipeline_VITIS_LOOP_43_1 RTLNAME dma_master_test_dma_master_test_Pipeline_VITIS_LOOP_43_1
    SUBMODULES {
      {MODELNAME dma_master_test_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME dma_master_test_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME dma_master_test_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME dma_master_test_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME dma_master_test_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_fpext_32ns_64_2_no_dsp_1 RTLNAME dma_master_test_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_fsqrt_32ns_32ns_32_16_no_dsp_1 RTLNAME dma_master_test_fsqrt_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME dma_master_test_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dma_master_test_Pipeline_VITIS_LOOP_120_2 MODELNAME dma_master_test_Pipeline_VITIS_LOOP_120_2 RTLNAME dma_master_test_dma_master_test_Pipeline_VITIS_LOOP_120_2}
  {SRCNAME dma_master_test_Pipeline_5 MODELNAME dma_master_test_Pipeline_5 RTLNAME dma_master_test_dma_master_test_Pipeline_5
    SUBMODULES {
      {MODELNAME dma_master_test_mux_53_32_1_1 RTLNAME dma_master_test_mux_53_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dma_master_test MODELNAME dma_master_test RTLNAME dma_master_test IS_TOP 1
    SUBMODULES {
      {MODELNAME dma_master_test_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME dma_master_test_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_sitofp_32ns_32_6_no_dsp_1 RTLNAME dma_master_test_sitofp_32ns_32_6_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_mul_32ns_34ns_65_2_1 RTLNAME dma_master_test_mul_32ns_34ns_65_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME dma_master_test_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_buff_RAM_AUTO_1R1W RTLNAME dma_master_test_buff_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_t_finals_RAM_AUTO_1R1W RTLNAME dma_master_test_t_finals_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dma_master_test_gmem_m_axi RTLNAME dma_master_test_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dma_master_test_control_s_axi RTLNAME dma_master_test_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
