`include "dac.v"

module dac_top(
    input CLK_i,
    input RSTn_i,
    output [7:0] LED_o,
    output D16_o
);

wire [7:0] dac_in;
wire dac_out;

dac #(.MSBI( 7 )) my_dac (
    CLK_i,          // master clock for this component
    RSTn_i,         // reset
    dac_out,
    dac_in
    );

assign LED_o[7:0] = dac_in;
assign D16_o = dac_out;

endmodule // dac_top
