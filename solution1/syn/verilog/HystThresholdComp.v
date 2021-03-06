// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module HystThresholdComp (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        fifo6_dout,
        fifo6_empty_n,
        fifo6_read,
        fifo7_din,
        fifo7_full_n,
        fifo7_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] fifo6_dout;
input   fifo6_empty_n;
output   fifo6_read;
output  [7:0] fifo7_din;
input   fifo7_full_n;
output   fifo7_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg fifo6_read;
reg fifo7_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    fifo6_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_49_i_reg_454;
reg    fifo7_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] tmp_49_i_reg_454_pp0_iter1_reg;
reg   [9:0] xi_i_reg_152;
wire   [0:0] tmp_i_fu_163_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] yi_fu_169_p2;
reg   [9:0] yi_reg_449;
wire   [0:0] tmp_49_i_fu_175_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] xi_fu_181_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [8:0] line_buf_addr_reg_463;
wire   [0:0] not_tmp_53_i_fu_255_p2;
reg   [0:0] not_tmp_53_i_reg_469;
wire   [0:0] tmp_78_2_i_fu_321_p2;
reg   [0:0] tmp_78_2_i_reg_474;
wire   [0:0] tmp_78_2_1_i_fu_327_p2;
reg   [0:0] tmp_78_2_1_i_reg_479;
wire   [0:0] tmp_78_2_2_i_fu_333_p2;
reg   [0:0] tmp_78_2_2_i_reg_484;
wire   [0:0] tmp5_fu_345_p2;
reg   [0:0] tmp5_reg_489;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter1_state4;
wire   [8:0] line_buf_address0;
reg    line_buf_ce0;
wire   [23:0] line_buf_q0;
reg    line_buf_ce1;
reg    line_buf_we1;
wire   [23:0] line_buf_d1;
reg   [9:0] yi_i_reg_141;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_50_i_fu_187_p1;
reg    ap_block_pp0_stage0_01001;
reg   [7:0] window_buf_0_1_fu_84;
reg   [7:0] window_buf_0_1_3_fu_88;
wire   [7:0] window_buf_0_2_fu_210_p4;
reg   [7:0] window_buf_1_1_fu_92;
reg   [7:0] window_buf_1_1_3_fu_96;
wire   [7:0] window_buf_1_2_fu_220_p4;
reg   [7:0] window_buf_2_1_fu_100;
reg   [7:0] window_buf_2_1_3_fu_104;
wire   [15:0] tmp_26_i_fu_230_p4;
wire   [0:0] tmp_78_0_i_fu_249_p2;
wire   [0:0] tmp_78_0_1_i_fu_261_p2;
wire   [0:0] tmp_78_0_2_i_fu_267_p2;
wire   [0:0] tmp_78_1_i_fu_273_p2;
wire   [0:0] tmp4_fu_285_p2;
wire   [0:0] tmp_fu_279_p2;
wire   [0:0] pix_hyst_3_0_2_i3_fu_291_p2;
wire   [0:0] tmp_78_1_2_i_fu_309_p2;
wire   [0:0] tmp_78_1_1_i_fu_303_p2;
wire   [0:0] p_pix_hyst_1_1_2_i_fu_315_p2;
wire   [0:0] tmp6_fu_339_p2;
wire   [0:0] pix_hyst_3_1_i_fu_297_p2;
wire   [0:0] p_pix_hyst_1_2_1_i9_fu_381_p2;
wire   [0:0] tmp2_fu_385_p2;
wire   [0:0] tmp7_fu_390_p2;
wire   [0:0] pix_hyst_3_2_2_i_fu_395_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

Sobel_512u_512u_sfYi #(
    .DataWidth( 24 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
line_buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(line_buf_address0),
    .ce0(line_buf_ce0),
    .q0(line_buf_q0),
    .address1(line_buf_addr_reg_463),
    .ce1(line_buf_ce1),
    .we1(line_buf_we1),
    .d1(line_buf_d1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((tmp_i_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((tmp_49_i_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_i_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((((tmp_i_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_condition_pp0_exit_iter1_state4) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter1_state4) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((tmp_i_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_i_reg_152 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_49_i_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        xi_i_reg_152 <= xi_fu_181_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        yi_i_reg_141 <= yi_reg_449;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_i_reg_141 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_49_i_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buf_addr_reg_463 <= tmp_50_i_fu_187_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_49_i_reg_454 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        not_tmp_53_i_reg_469 <= not_tmp_53_i_fu_255_p2;
        tmp5_reg_489 <= tmp5_fu_345_p2;
        tmp_78_2_1_i_reg_479 <= tmp_78_2_1_i_fu_327_p2;
        tmp_78_2_2_i_reg_484 <= tmp_78_2_2_i_fu_333_p2;
        tmp_78_2_i_reg_474 <= tmp_78_2_i_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_49_i_reg_454 <= tmp_49_i_fu_175_p2;
        tmp_49_i_reg_454_pp0_iter1_reg <= tmp_49_i_reg_454;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_49_i_reg_454 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        window_buf_0_1_3_fu_88 <= {{line_buf_q0[15:8]}};
        window_buf_0_1_fu_84 <= window_buf_0_1_3_fu_88;
        window_buf_1_1_3_fu_96 <= {{line_buf_q0[23:16]}};
        window_buf_1_1_fu_92 <= window_buf_1_1_3_fu_96;
        window_buf_2_1_3_fu_104 <= fifo6_dout;
        window_buf_2_1_fu_100 <= window_buf_2_1_3_fu_104;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        yi_reg_449 <= yi_fu_169_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_condition_pp0_exit_iter1_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter1_state4 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((tmp_49_i_reg_454 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo6_blk_n = fifo6_empty_n;
    end else begin
        fifo6_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_49_i_reg_454 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo6_read = 1'b1;
    end else begin
        fifo6_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_49_i_reg_454_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        fifo7_blk_n = fifo7_full_n;
    end else begin
        fifo7_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_49_i_reg_454_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        fifo7_write = 1'b1;
    end else begin
        fifo7_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        line_buf_ce0 = 1'b1;
    end else begin
        line_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buf_ce1 = 1'b1;
    end else begin
        line_buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_49_i_reg_454 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buf_we1 = 1'b1;
    end else begin
        line_buf_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_i_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((tmp_49_i_reg_454_pp0_iter1_reg == 1'd0) & (fifo7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_49_i_reg_454 == 1'd0) & (fifo6_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_49_i_reg_454_pp0_iter1_reg == 1'd0) & (fifo7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_49_i_reg_454 == 1'd0) & (fifo6_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_49_i_reg_454_pp0_iter1_reg == 1'd0) & (fifo7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_49_i_reg_454 == 1'd0) & (fifo6_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((tmp_49_i_reg_454 == 1'd0) & (fifo6_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((tmp_49_i_reg_454_pp0_iter1_reg == 1'd0) & (fifo7_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign fifo7_din = ((pix_hyst_3_2_2_i_fu_395_p2[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign line_buf_address0 = tmp_50_i_fu_187_p1;

assign line_buf_d1 = {{fifo6_dout}, {tmp_26_i_fu_230_p4}};

assign not_tmp_53_i_fu_255_p2 = ((window_buf_1_1_3_fu_96 != 8'd0) ? 1'b1 : 1'b0);

assign p_pix_hyst_1_1_2_i_fu_315_p2 = (tmp_78_1_2_i_fu_309_p2 & not_tmp_53_i_fu_255_p2);

assign p_pix_hyst_1_2_1_i9_fu_381_p2 = (tmp_78_2_2_i_reg_484 | tmp_78_2_1_i_reg_479);

assign pix_hyst_3_0_2_i3_fu_291_p2 = (tmp_fu_279_p2 | tmp4_fu_285_p2);

assign pix_hyst_3_1_i_fu_297_p2 = (pix_hyst_3_0_2_i3_fu_291_p2 & not_tmp_53_i_fu_255_p2);

assign pix_hyst_3_2_2_i_fu_395_p2 = (tmp7_fu_390_p2 | tmp5_reg_489);

assign start_out = real_start;

assign tmp2_fu_385_p2 = (tmp_78_2_i_reg_474 | p_pix_hyst_1_2_1_i9_fu_381_p2);

assign tmp4_fu_285_p2 = (tmp_78_1_i_fu_273_p2 | tmp_78_0_2_i_fu_267_p2);

assign tmp5_fu_345_p2 = (tmp6_fu_339_p2 | pix_hyst_3_1_i_fu_297_p2);

assign tmp6_fu_339_p2 = (tmp_78_1_1_i_fu_303_p2 | p_pix_hyst_1_1_2_i_fu_315_p2);

assign tmp7_fu_390_p2 = (tmp2_fu_385_p2 & not_tmp_53_i_reg_469);

assign tmp_26_i_fu_230_p4 = {{line_buf_q0[23:8]}};

assign tmp_49_i_fu_175_p2 = ((xi_i_reg_152 == 10'd512) ? 1'b1 : 1'b0);

assign tmp_50_i_fu_187_p1 = xi_i_reg_152;

assign tmp_78_0_1_i_fu_261_p2 = ((window_buf_0_1_3_fu_88 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_78_0_2_i_fu_267_p2 = ((window_buf_0_2_fu_210_p4 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_78_0_i_fu_249_p2 = ((window_buf_0_1_fu_84 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_78_1_1_i_fu_303_p2 = ((window_buf_1_1_3_fu_96 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_78_1_2_i_fu_309_p2 = ((window_buf_1_2_fu_220_p4 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_78_1_i_fu_273_p2 = ((window_buf_1_1_fu_92 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_78_2_1_i_fu_327_p2 = ((window_buf_2_1_3_fu_104 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_78_2_2_i_fu_333_p2 = ((fifo6_dout == 8'd255) ? 1'b1 : 1'b0);

assign tmp_78_2_i_fu_321_p2 = ((window_buf_2_1_fu_100 == 8'd255) ? 1'b1 : 1'b0);

assign tmp_fu_279_p2 = (tmp_78_0_i_fu_249_p2 | tmp_78_0_1_i_fu_261_p2);

assign tmp_i_fu_163_p2 = ((yi_i_reg_141 == 10'd512) ? 1'b1 : 1'b0);

assign window_buf_0_2_fu_210_p4 = {{line_buf_q0[15:8]}};

assign window_buf_1_2_fu_220_p4 = {{line_buf_q0[23:16]}};

assign xi_fu_181_p2 = (xi_i_reg_152 + 10'd1);

assign yi_fu_169_p2 = (yi_i_reg_141 + 10'd1);

endmodule //HystThresholdComp
