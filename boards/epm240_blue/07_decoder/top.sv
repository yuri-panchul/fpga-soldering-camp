module top
(
    input  [2:0] in_n,
    output [7:0] out_n,
    output       vcc_for_keys
);

    assign vcc_for_keys = '1;

    wire  [2:0] in = ~ in_n;

    logic [7:0] out;
    assign out_n = ~ out;

    // Implementation 1: tedious

    /*
    assign out [0] = ~ in [2] & ~ in [1] & ~ in [0];
    assign out [1] = ~ in [2] & ~ in [1] &   in [0];
    assign out [2] = ~ in [2] &   in [1] & ~ in [0];
    assign out [3] = ~ in [2] &   in [1] &   in [0];
    assign out [4] =   in [2] & ~ in [1] & ~ in [0];
    assign out [5] =   in [2] & ~ in [1] &   in [0];
    assign out [6] =   in [2] &   in [1] & ~ in [0];
    assign out [7] =   in [2] &   in [1] &   in [0];
    */

    // Implementation 2: case

    /*
    always_comb
        case (in)
        3'b000: out = 8'b00000001;
        3'b001: out = 8'b00000010;
        3'b010: out = 8'b00000100;
        3'b011: out = 8'b00001000;
        3'b100: out = 8'b00010000;
        3'b101: out = 8'b00100000;
        3'b110: out = 8'b01000000;
        3'b111: out = 8'b10000000;
        endcase
    */

    // Implementation 3: shift

    assign out = 8'b00000001 << in;

    // Implementation 4: index

    /*
    always_comb
    begin
        out = '0;
        out [in] = 1'b1;
    end
    */

endmodule
