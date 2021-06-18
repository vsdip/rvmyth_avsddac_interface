`include "mythcore_test.v"
`include "avsddac.v"
module rvmyth_avsddac( clk, reset, Out);
input clk, reset;
output Out;

wire real Out;
wire [9:0] rvtodac;
wire real VSS, VDD, VREFL, VREFH;

assign VREFH = 3.3;
assign VREFL = 0.0;
assign VDD = 1.8;
assign VSSA = 0.0;

core uut1 ( .clk(clk), .reset(reset), .out(rvtodac));
avsddac uut2 ( .OUT(Out), .D(rvtodac), .VREFH(VREFH), .VREFL(VREFL) );

endmodule
