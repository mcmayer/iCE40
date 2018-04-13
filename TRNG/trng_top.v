module trng_top(
    input CLK_i,
    output PMOD_1,
    output [4:0]LED_o
);

    assign PMOD_1 = CLK_i;
    assign LED_o[3:0] = 0;

    // See the SiliconBlue ICE Technology Library by Lattice Semiconductor

    SB_DFFS dffs (
        .Q(PMOD_2),
        .C(CLK_i),
        .D(CLK_i),
        .S(1'b0)
        );

endmodule
