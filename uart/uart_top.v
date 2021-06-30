// this example adds 1 to the serial input and transmits it on the serial output
// test using 'screen /dev/ttyUSB1' or similar


`include "osdvu/uart.v"

module uart_top(
    input CLK_i,
    input RSTn_i,
    input RS232_RX_i,
    output RS232_TX_o,
    output [7:0] LED_o
);

reg transmit ;
reg [7:0] tx_byte = 0;
wire [7:0] rx_byte;
wire received;
reg transmitting;
reg receiving;

uart #(.CLOCK_DIVIDE( 312 )) my_uart (
    CLK_i,          //  master clock for this component
    ,               // synchronous reset line (resets if high)
    RS232_RX_i,     // receive data on this line
    RS232_TX_o,     // transmit data on this line
    transmit,       // signal o indicate that the UART should start a transmission
    tx_byte,        // 8-bit bus with byte to be transmitted when transmit is raised high
    received,       // output flag raised high for one cycle of clk when a byte is received
    rx_byte,        // byte which has just been received when received is raise
    receiving,               // indicates that we are currently receiving data on the rx lin
    transmitting, 		// indicates that we are currently sending data on the tx line
    );

assign LED_o[7:0] = rx_byte[7:0];

always @(posedge CLK_i) begin
    tx_byte[7:0] = rx_byte[7:0] + 8'b1;
    transmit = received;
end


endmodule // uart_top
