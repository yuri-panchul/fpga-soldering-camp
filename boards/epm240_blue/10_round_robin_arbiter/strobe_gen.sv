module strobe_gen
# (
    parameter width = 23
)
(
    input  clk,
    input  rst,
    output strobe
);

    logic [width - 1:0] cnt;

    always_ff @ (posedge clk)
        if (rst)
            cnt <= '0;
        else
            cnt <= cnt + 1'd1;

    assign strobe = (cnt == '0);

endmodule
