// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module HystThreshold (
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
        hist_hthr_dout,
        hist_hthr_empty_n,
        hist_hthr_read,
        hist_lthr_dout,
        hist_lthr_empty_n,
        hist_lthr_read,
        fifo5_dout,
        fifo5_empty_n,
        fifo5_read,
        fifo6_din,
        fifo6_full_n,
        fifo6_write
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
input  [7:0] hist_hthr_dout;
input   hist_hthr_empty_n;
output   hist_hthr_read;
input  [7:0] hist_lthr_dout;
input   hist_lthr_empty_n;
output   hist_lthr_read;
input  [7:0] fifo5_dout;
input   fifo5_empty_n;
output   fifo5_read;
output  [7:0] fifo6_din;
input   fifo6_full_n;
output   fifo6_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg hist_hthr_read;
reg hist_lthr_read;
reg fifo5_read;
reg fifo6_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    hist_hthr_blk_n;
reg    hist_lthr_blk_n;
reg    fifo5_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_54_i_i_i_reg_230;
reg    fifo6_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] tmp_54_i_i_i_reg_230_pp0_iter1_reg;
reg   [9:0] xi_i_i_i_reg_136;
reg   [7:0] hist_hthr_read_reg_211;
reg    ap_block_state1;
reg   [7:0] hist_lthr_read_reg_216;
wire   [0:0] tmp_i_i_i_fu_147_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] yi_fu_153_p2;
reg   [9:0] yi_reg_225;
wire   [0:0] tmp_54_i_i_i_fu_159_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] xi_fu_165_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_57_i_i_i_fu_171_p2;
reg   [0:0] tmp_57_i_i_i_reg_239;
wire   [0:0] tmp_58_i_i_i_fu_176_p2;
reg   [0:0] tmp_58_i_i_i_reg_245;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [9:0] yi_i_i_i_reg_125;
wire    ap_CS_fsm_state6;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] not_tmp_57_i_i_i_fu_181_p2;
wire   [0:0] tmp_fu_194_p2;
wire   [1:0] pix_hyst_i_i_i_cast_fu_186_p3;
wire   [1:0] pix_hyst_1_i_i_i_fu_198_p3;
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_i_i_fu_147_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_i_i_i_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((tmp_i_i_i_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((tmp_i_i_i_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_i_i_i_reg_136 <= 10'd0;
    end else if (((tmp_54_i_i_i_fu_159_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        xi_i_i_i_reg_136 <= xi_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        yi_i_i_i_reg_125 <= yi_reg_225;
    end else if ((~((hist_lthr_empty_n == 1'b0) | (hist_hthr_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_i_i_i_reg_125 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((hist_lthr_empty_n == 1'b0) | (hist_hthr_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        hist_hthr_read_reg_211 <= hist_hthr_dout;
        hist_lthr_read_reg_216 <= hist_lthr_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_54_i_i_i_reg_230 <= tmp_54_i_i_i_fu_159_p2;
        tmp_54_i_i_i_reg_230_pp0_iter1_reg <= tmp_54_i_i_i_reg_230;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_54_i_i_i_reg_230 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_57_i_i_i_reg_239 <= tmp_57_i_i_i_fu_171_p2;
        tmp_58_i_i_i_reg_245 <= tmp_58_i_i_i_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        yi_reg_225 <= yi_fu_153_p2;
    end
end

always @ (*) begin
    if ((tmp_54_i_i_i_fu_159_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_i_i_fu_147_p2 == 1'd1))) begin
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
    if (((tmp_54_i_i_i_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo5_blk_n = fifo5_empty_n;
    end else begin
        fifo5_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_54_i_i_i_reg_230 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo5_read = 1'b1;
    end else begin
        fifo5_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_54_i_i_i_reg_230_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        fifo6_blk_n = fifo6_full_n;
    end else begin
        fifo6_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_54_i_i_i_reg_230_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo6_write = 1'b1;
    end else begin
        fifo6_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        hist_hthr_blk_n = hist_hthr_empty_n;
    end else begin
        hist_hthr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((hist_lthr_empty_n == 1'b0) | (hist_hthr_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        hist_hthr_read = 1'b1;
    end else begin
        hist_hthr_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        hist_lthr_blk_n = hist_lthr_empty_n;
    end else begin
        hist_lthr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((hist_lthr_empty_n == 1'b0) | (hist_hthr_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        hist_lthr_read = 1'b1;
    end else begin
        hist_lthr_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_i_i_fu_147_p2 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
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
            if ((~((hist_lthr_empty_n == 1'b0) | (hist_hthr_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_i_i_fu_147_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_54_i_i_i_fu_159_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_54_i_i_i_fu_159_p2 == 1'd1)))) begin
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
    ap_block_pp0_stage0_01001 = (((tmp_54_i_i_i_reg_230_pp0_iter1_reg == 1'd0) & (fifo6_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_54_i_i_i_reg_230 == 1'd0) & (fifo5_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_54_i_i_i_reg_230_pp0_iter1_reg == 1'd0) & (fifo6_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_54_i_i_i_reg_230 == 1'd0) & (fifo5_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_54_i_i_i_reg_230_pp0_iter1_reg == 1'd0) & (fifo6_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_54_i_i_i_reg_230 == 1'd0) & (fifo5_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((hist_lthr_empty_n == 1'b0) | (hist_hthr_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((tmp_54_i_i_i_reg_230 == 1'd0) & (fifo5_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((tmp_54_i_i_i_reg_230_pp0_iter1_reg == 1'd0) & (fifo6_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign fifo6_din = $signed(pix_hyst_1_i_i_i_fu_198_p3);

assign not_tmp_57_i_i_i_fu_181_p2 = (tmp_57_i_i_i_reg_239 ^ 1'd1);

assign pix_hyst_1_i_i_i_fu_198_p3 = ((tmp_fu_194_p2[0:0] === 1'b1) ? pix_hyst_i_i_i_cast_fu_186_p3 : 2'd1);

assign pix_hyst_i_i_i_cast_fu_186_p3 = ((not_tmp_57_i_i_i_fu_181_p2[0:0] === 1'b1) ? 2'd3 : 2'd0);

assign start_out = real_start;

assign tmp_54_i_i_i_fu_159_p2 = ((xi_i_i_i_reg_136 == 10'd512) ? 1'b1 : 1'b0);

assign tmp_57_i_i_i_fu_171_p2 = ((fifo5_dout < hist_lthr_read_reg_216) ? 1'b1 : 1'b0);

assign tmp_58_i_i_i_fu_176_p2 = ((fifo5_dout > hist_hthr_read_reg_211) ? 1'b1 : 1'b0);

assign tmp_fu_194_p2 = (tmp_58_i_i_i_reg_245 | tmp_57_i_i_i_reg_239);

assign tmp_i_i_i_fu_147_p2 = ((yi_i_i_i_reg_125 == 10'd512) ? 1'b1 : 1'b0);

assign xi_fu_165_p2 = (xi_i_i_i_reg_136 + 10'd1);

assign yi_fu_153_p2 = (yi_i_i_i_reg_125 + 10'd1);

endmodule //HystThreshold