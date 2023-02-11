module top
(
    input  in_a, in_b, in_sel,
    output out_mux, out_mux2, out_mux3,
           out_mux4, out_mux5,
           vcc_for_keys
);

    assign vcc_for_keys = '1;

    wire a   = ~ in_a;
    wire b   = ~ in_b;
    wire sel = ~ in_sel;  // selector

    logic mux, mux2, mux3, mux4, mux5;

    assign  { out_mux, out_mux2, out_mux3, out_mux4, out_mux5 }
        = ~ {     mux,     mux2,     mux3,     mux4,     mux5 };

    // Five different implementations

    assign mux   = sel ? a : b;
    assign mux2 = (sel & a) | (~ sel & b);

    wire [1:0] ab = { a, b };
    assign mux3 = ab [sel];

    always_comb
        if (sel)
            mux4 = a;
        else
            mux4 = b;

    always_comb
        case (sel)
        1'b1: mux5 = a;
        1'b0: mux5 = b;
        endcase

endmodule
