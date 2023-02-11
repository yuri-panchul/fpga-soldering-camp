module top
(
    input  [3:0] in_n,
    output [7:0] out_n,
    output       vcc_for_keys
);

    assign vcc_for_keys = '1;

    wire  [3:0] in = ~ in_n;

    logic [1:0] out0, out1, out2, out3;
    assign out_n = ~ { out0, out1, out2, out3 };

    // Implementation 1. Priority encoder using a chain of "ifs"

    always_comb
             if (in [0]) out0 = 2'd0;
        else if (in [1]) out0 = 2'd1;
        else if (in [2]) out0 = 2'd2;
        else if (in [3]) out0 = 2'd3;
        else             out0 = 2'd0;

    // Implementation 2. Priority encoder using casez

    always_comb
        casez (in)
        4'b???1: out1 = 2'd0;
        4'b??10: out1 = 2'd1;
        4'b?100: out1 = 2'd2;
        4'b1000: out1 = 2'd3;
        default: out1 = 2'd0;
        endcase

    // Implementation 3: Combination of priority arbiter
    // and encoder without priority

    localparam w = 4;

    wire [w - 1:0] c = { ~ in [w - 2:0] & c [w - 2:0], 1'b1 };
    wire [w - 1:0] g = in & c;

    always_comb
        unique case (g)
        4'b0001: out2 = 2'd0;
        4'b0010: out2 = 2'd1;
        4'b0100: out2 = 2'd2;
        4'b1000: out2 = 2'd3;
        default: out2 = 2'd0;
        endcase

    /*
    // A variation of Implementation 3: Using unusual case of "case"

    always_comb
        unique case (1'b1)
        g [0]:   out2 = 2'd0;
        g [1]:   out2 = 2'd1;
        g [2]:   out2 = 2'd2;
        g [3]:   out2 = 2'd3;
        default: out2 = 2'd0;
        endcase
    */

    // A note on obsolete practice:
    //
    // Before the SystemVerilog construct "unique case"
    // got supported by the synthesis tools,
    // the designers were using pseudo-comment "synopsys parallel_case":
    //
    // SystemVerilog : unique case (1'b1)
    // Verilog 2001  : case (1'b1)  // synopsys parallel_case

    // Implementation 4: Using "for" loop

    always_comb
    begin
        out3 = '0;

        for (int i = 0; i < w; i ++)
        begin
            if (in [i])
            begin
                out3 = 2' (i);
                break;
            end
        end
    end

endmodule
