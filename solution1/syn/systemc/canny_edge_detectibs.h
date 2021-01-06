// ==============================================================
// File generated on Wed Jan 06 15:36:53 +0530 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __canny_edge_detectibs__HH__
#define __canny_edge_detectibs__HH__
#include "ACMP_sdiv.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(canny_edge_detectibs) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_sdiv<ID, 24, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_sdiv_U;

    SC_CTOR(canny_edge_detectibs):  ACMP_sdiv_U ("ACMP_sdiv_U") {
        ACMP_sdiv_U.clk(clk);
        ACMP_sdiv_U.reset(reset);
        ACMP_sdiv_U.ce(ce);
        ACMP_sdiv_U.din0(din0);
        ACMP_sdiv_U.din1(din1);
        ACMP_sdiv_U.dout(dout);

    }

};

#endif //
