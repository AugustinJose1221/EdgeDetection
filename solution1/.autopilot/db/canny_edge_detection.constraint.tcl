set clock_constraint { \
    name clk \
    module canny_edge_detection \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
    axilite_clocks {s_axi_aclk } \
}

set all_path {}

set false_path {}

