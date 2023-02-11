module top
(
    input         [1:0] in_a, in_b,
    output signed [3:0] out_sum_signed,
    output        [3:0] out_sum_unsigned,
    output              vcc_for_keys
);

    assign vcc_for_keys = '1;

    wire [1:0] a = ~ in_a;
    wire [1:0] b = ~ in_b;

   `ifdef __ICARUS__
        wire signed [3:0] a_signed = a;
        wire signed [3:0] b_signed = b;

        wire signed [3:0] sum_signed = a_signed + b_signed;
    `else
        wire signed [3:0] sum_signed = signed' (a) + signed' (b);
    `endif

    wire [3:0] sum_unsigned = a + b;

    assign out_sum_signed   = ~ sum_signed;
    assign out_sum_unsigned = ~ sum_unsigned;

    // Exercise: try other experiments with carry and overflow
    // in signed and unsigned cases

endmodule
