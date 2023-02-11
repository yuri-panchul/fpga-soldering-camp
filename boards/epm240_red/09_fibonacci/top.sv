module top
(
    input        clk,
    input        rst_n,
    output [7:0] led
);

    wire rst = ~ rst_n;

    //------------------------------------------------------------------------

    logic [24:0] cnt;

    always_ff @ (posedge clk)
        if (rst)
            cnt <= '0;
        else
            cnt <= cnt + 1'd1;

    wire enable = (cnt == '0);

    //------------------------------------------------------------------------

    logic [7:0] num, num2;
    assign led = ~ num;

    // Note you have to press reset button to initialize the design

    always_ff @ (posedge clk)
        if (rst)
            { num, num2 } <= { 8'd1, 8'd1 };
        else if (enable)
            { num, num2 } <= { num2, num + num2 };

endmodule

//----------------------------------------------------------------------------

/*
    Exercise: implement generating two fibonacci numbers per cycle

module top
(
    input        clk,
    input        rst_n,
    output [7:0] led
);

    logic [3:0] num, num2;
    assign led = ~ { num, num2 };

endmodule

*/
