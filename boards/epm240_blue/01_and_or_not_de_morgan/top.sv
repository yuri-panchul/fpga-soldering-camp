module top
(
    input  in_a, in_b,

    output out_0, out_1,
           out_a, out_b,
           out_c, out_c1, out_c2, out_c3,
           vcc_for_keys
);

    assign vcc_for_keys = '1;

    // Output constants.

    // Notice that 0 in output turns LED on ("light")
    // and 1 turns it off ("darkness").

    assign out_0 = 1'b0;
    assign out_1 = 1'b1;

    // Output inputs.

    // Notice that 0 input means "button is pressed"
    // and 1 means "button is not pressed".

    assign out_a = in_a;
    assign out_b = in_b;

    // We have to negate both inputs and outputs.

    wire a = ~ in_a;
    wire b = ~ in_b;

    wire c = a & b;
    assign out_c = ~ c;

    assign out_c1 = ~ (~ in_a & ~ in_b);
    assign out_c2 = in_a | in_b;  // Here is where De Mongan's Laws come in
    assign out_c3 = (in_a == 1'b0 & in_b == 1'b0) == 1'b0;

    // Exercise: write the same assignments for "a | b"

endmodule
