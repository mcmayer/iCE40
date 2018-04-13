module flip_flop(
    input el_in     /* synthesis syn_force_pads=1 syn_noprune=1*/,
    output el_out   /* synthesis syn_force_pads=1 syn_noprune=1*/
    );

    wire el_in      /* synthesis syn_keep = 1 */;
    wire el_out     /* synthesis syn_keep = 1 */;

    // See the SiliconBlue ICE Technology Library by Lattice Semiconductor

    SB_DFFS dffs (
        .Q(el_out),
        .C(el_in),
        .D(el_in),
        .S(1'b0)
    ) /* synthesis syn_keep = 1 */;

endmodule
