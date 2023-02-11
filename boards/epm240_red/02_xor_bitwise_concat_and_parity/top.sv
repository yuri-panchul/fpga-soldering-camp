module top
(
    input  [1:0] in_a, in_b,  // Multi-bit ports
    output       out_xor_a0_b0,
    output       out_xor_a1_b1,
    output       out_xor_a0_b0_alt,
    output       out_xor_a1_b1_alt,
    output [1:0] out_xor_a_b,
    output       out_parity, out_parity_a0_b0_b1
);

    // Multi-bit wires

    wire [1:0] a = ~ in_a;
    wire [1:0] b = ~ in_b;

    // Extracting a bit using index

    wire xor_a0_b0 = a [0] ^ b [0];
    wire xor_a1_b1 = a [1] ^ b [1];

    assign out_xor_a0_b0 = ~ xor_a0_b0;
    assign out_xor_a1_b1 = ~ xor_a1_b1;

    // Alternative implementations

    wire xor_a0_b0_alt = (a [0] & ~ b [0]) | (~ a [0] & b [0]);

    // The implementation with "!=" is correct for 1 bit but not for multibit
    wire xor_a1_b1_alt = (a [1] != b [1]);

    assign out_xor_a0_b0_alt = ~ xor_a0_b0_alt;
    assign out_xor_a1_b1_alt = ~ xor_a1_b1_alt;

    // Bit vector operations

    wire [1:0] xor_a_b = a ^ b;
    assign out_xor_a_b = ~ xor_a_b;

    // Parity using concatenation and unary "^"

    wire [3:0] concat = { a, b };
    wire parity = ^ concat;
    assign out_parity = ~ parity;

    // Exercise: compute parity for a bit vector
    // that consists of bits a [0], b [0] and b [1]

    assign out_parity_a0_b0_b1 = 1'b1;

endmodule
