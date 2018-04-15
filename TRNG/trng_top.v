module trng_top(
    input CLK_i,
    output PMOD_1,
    output PMOD_2,
    output [4:0]LED_o
);

    assign PMOD_1 = CLK_i;
    assign LED_o[3] = CLK_i;
    assign LED_o[2:0] = 0;

    assign LED_o[4] = out;
    assign PMOD_2 = out;

    wire out;

    flip_flop ff(CLK_i, out);

endmodule
