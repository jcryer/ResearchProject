// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dma_master_test_dma_master_test_Pipeline_VITIS_LOOP_120_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        trunc_ln1,
        t_finals_address0,
        t_finals_ce0,
        t_finals_q0,
        t_final_out,
        t_final_out_ap_vld,
        success_index_out,
        success_index_out_ap_vld,
        grp_fu_1411_p_din0,
        grp_fu_1411_p_din1,
        grp_fu_1411_p_opcode,
        grp_fu_1411_p_dout0,
        grp_fu_1411_p_ce,
        grp_fu_1415_p_din0,
        grp_fu_1415_p_din1,
        grp_fu_1415_p_opcode,
        grp_fu_1415_p_dout0,
        grp_fu_1415_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [30:0] trunc_ln1;
output  [5:0] t_finals_address0;
output   t_finals_ce0;
input  [31:0] t_finals_q0;
output  [31:0] t_final_out;
output   t_final_out_ap_vld;
output  [31:0] success_index_out;
output   success_index_out_ap_vld;
output  [31:0] grp_fu_1411_p_din0;
output  [31:0] grp_fu_1411_p_din1;
output  [4:0] grp_fu_1411_p_opcode;
input  [0:0] grp_fu_1411_p_dout0;
output   grp_fu_1411_p_ce;
output  [31:0] grp_fu_1415_p_din0;
output  [31:0] grp_fu_1415_p_din1;
output  [4:0] grp_fu_1415_p_opcode;
input  [0:0] grp_fu_1415_p_dout0;
output   grp_fu_1415_p_ce;

reg ap_idle;
reg t_finals_ce0;
reg t_final_out_ap_vld;
reg success_index_out_ap_vld;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln120_reg_222;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [30:0] x_reg_216;
reg   [30:0] x_reg_216_pp0_iter1_reg;
wire   [0:0] icmp_ln120_fu_120_p2;
reg   [31:0] t_final_1_reg_231;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] t_final_load_1_reg_238;
wire   [0:0] and_ln122_fu_151_p2;
reg   [0:0] and_ln122_reg_244;
wire   [31:0] t_final_2_fu_157_p3;
reg   [31:0] t_final_2_reg_249;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] trunc_ln122_cast_fu_126_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] success_index_fu_48;
wire   [31:0] success_index_4_fu_169_p3;
wire    ap_loop_init;
reg   [31:0] t_final_fu_52;
reg   [31:0] ap_sig_allocacmp_t_final_load_1;
reg   [30:0] success_index_1_fu_56;
wire   [30:0] add_ln120_fu_131_p2;
reg   [30:0] ap_sig_allocacmp_x;
wire    ap_block_pp0_stage0_01001;
wire    ap_block_pp0_stage1;
wire   [0:0] xor_ln122_fu_145_p2;
wire   [31:0] zext_ln122_fu_166_p1;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

dma_master_test_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        success_index_1_fu_56 <= 31'd0;
    end else if (((icmp_ln120_reg_222 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        success_index_1_fu_56 <= add_ln120_fu_131_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            success_index_fu_48 <= 32'd4294967295;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            success_index_fu_48 <= success_index_4_fu_169_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            t_final_fu_52 <= 32'd1232348162;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            t_final_fu_52 <= t_final_2_reg_249;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln122_reg_244 <= and_ln122_fu_151_p2;
        t_final_2_reg_249 <= t_final_2_fu_157_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln120_reg_222 <= icmp_ln120_fu_120_p2;
        t_final_load_1_reg_238 <= ap_sig_allocacmp_t_final_load_1;
        x_reg_216 <= ap_sig_allocacmp_x;
        x_reg_216_pp0_iter1_reg <= x_reg_216;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln120_reg_222 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        t_final_1_reg_231 <= t_finals_q0;
    end
end

always @ (*) begin
    if (((icmp_ln120_reg_222 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln120_reg_222 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_t_final_load_1 = t_final_2_reg_249;
    end else begin
        ap_sig_allocacmp_t_final_load_1 = t_final_fu_52;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_x = 31'd0;
    end else begin
        ap_sig_allocacmp_x = success_index_1_fu_56;
    end
end

always @ (*) begin
    if (((icmp_ln120_reg_222 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        success_index_out_ap_vld = 1'b1;
    end else begin
        success_index_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln120_reg_222 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_final_out_ap_vld = 1'b1;
    end else begin
        t_final_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_finals_ce0 = 1'b1;
    end else begin
        t_finals_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln120_fu_131_p2 = (x_reg_216 + 31'd1);

assign and_ln122_fu_151_p2 = (xor_ln122_fu_145_p2 & grp_fu_1411_p_dout0);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign grp_fu_1411_p_ce = 1'b1;

assign grp_fu_1411_p_din0 = t_final_1_reg_231;

assign grp_fu_1411_p_din1 = ap_sig_allocacmp_t_final_load_1;

assign grp_fu_1411_p_opcode = 5'd4;

assign grp_fu_1415_p_ce = 1'b1;

assign grp_fu_1415_p_din0 = t_final_1_reg_231;

assign grp_fu_1415_p_din1 = 32'd0;

assign grp_fu_1415_p_opcode = 5'd1;

assign icmp_ln120_fu_120_p2 = ((ap_sig_allocacmp_x == trunc_ln1) ? 1'b1 : 1'b0);

assign success_index_4_fu_169_p3 = ((and_ln122_reg_244[0:0] == 1'b1) ? zext_ln122_fu_166_p1 : success_index_fu_48);

assign success_index_out = success_index_fu_48;

assign t_final_2_fu_157_p3 = ((and_ln122_fu_151_p2[0:0] == 1'b1) ? t_final_1_reg_231 : t_final_load_1_reg_238);

assign t_final_out = t_final_fu_52;

assign t_finals_address0 = trunc_ln122_cast_fu_126_p1;

assign trunc_ln122_cast_fu_126_p1 = ap_sig_allocacmp_x;

assign xor_ln122_fu_145_p2 = (grp_fu_1415_p_dout0 ^ 1'd1);

assign zext_ln122_fu_166_p1 = x_reg_216_pp0_iter1_reg;

endmodule //dma_master_test_dma_master_test_Pipeline_VITIS_LOOP_120_2