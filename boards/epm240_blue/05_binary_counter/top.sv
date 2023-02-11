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

    // Exercise 1: Free running counter.
    // How do you change the speed of LED blinking?
    // Try different bit slices to display.

    logic [31:0] cnt;

    always_ff @ (posedge clk)
        if (rst)
            cnt <= 32'b0;
        else
            cnt <= cnt + 32'b1;

    assign led = ~ cnt [27:20];

    // Exercise 2: Key-controlled counter.
    // Comment out the code above.
    // Uncomment and synthesize the code below.
    // Press the key to see the counter incrementing.
    //
    // Change the design, for example:
    //
    // 1. One key is used to increment, another to decrement.
    //
    // 2. Two counters controlled by different keys
    // displayed in different groups of LEDs.

    /*

    wire left_key = ~ key [2];

    logic left_key_r;

    always_ff @ (posedge clk)
        if (rst)
            left_key_r <= 1'b0;
        else
            left_key_r <= left_key;

    wire left_key_pressed = ~ left_key & left_key_r;

    logic [7:0] cnt;

    always_ff @ (posedge clk)
        if (rst)
            cnt <= '0;
        else if (left_key_pressed)
            cnt <= cnt + 1'd1;

    assign led = ~ cnt;

    */

endmodule
