module top
(
    input              clk,
    input              rst_n,
    input        [2:0] key,
    output logic [7:0] led,
    output             vcc_for_keys
);

    assign vcc_for_keys = '1;

    wire rst = ~ rst_n;

    //------------------------------------------------------------------------

    logic [22:0] cnt;

    always_ff @ (posedge clk)
        if (rst)
            cnt <= '0;
        else
            cnt <= cnt + 1'd1;

    wire enable = (cnt == '0);

    //------------------------------------------------------------------------

    wire button_on = ~ key [2];

    logic [7:0] shift_reg;

    always_ff @ (posedge clk)
        if (rst)
            shift_reg <= 4'b0;
        else if (enable)
            shift_reg <= { button_on, shift_reg [7:1] };

    assign led = ~ shift_reg;

    // Exercise 1: Make the light move in the opposite direction.

    // Exercise 2: Make the light moving in a loop.
    // Use another key to reset the moving lights back to no lights.

    // Exercise 3: Google and implement Gray counter

endmodule
