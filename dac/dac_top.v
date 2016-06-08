//`include "dac.v"

module dac_top(
    input CLK_i,
    input RSTn_i,
    output [7:0] LED_o,
    output D16_o
);

wire [7:0] dac_in;
wire dac_out;

wire PLL_CLK;

reg [23:0] counter = 0;
reg [7:0] dac = 0;

dac_top_pll pll (CLK_i,  // REFERENCECLK
            PLL_CLK, //PLLOUTCORE
            , // PLLOUTGLOBAL
            RSTn_i //RESET
            );

dac #(.MSBI( 7 )) my_dac (
    CLK_i,          // master clock for this component
    RSTn_i,         // reset
    dac_out,
    dac_in
    );


always @ ( posedge CLK_i ) begin
    if(~RSTn_i) begin
        dac <= 8'b0;
        counter <= 24'b0;
    end
    else begin
        if(counter[23] == 1) begin
            counter <= 0;
            dac <= dac + 1;
        end
        else
            counter <= counter + 1;
    end
end

assign dac_in = dac;

assign LED_o[7:0] = dac[7:0];
assign D16_o = dac_out;

endmodule // dac_top
