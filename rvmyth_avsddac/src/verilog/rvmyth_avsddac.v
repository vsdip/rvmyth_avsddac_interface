`include "mythcore_test.v"
//`include "avsddac.v"
module rvmyth_avsddac ( clk, reset, Out);
input clk, reset;
output Out;
wire Out;

wire [9:0] rvtodac;
wire VDDA, VREFL, VREFH, VSSA;
//wire EN;

 

//assign VDD = 1.8;
assign VDDA = 3.3;
assign VREFH = 3.3;
assign VREFL = 0.0;
//assign VSS = 0.0;
assign VSSA = 0.0;
//assign EN=1;



core uut1 ( .clk(clk), .reset(reset), .out(rvtodac));

avsddac uut2 ( .OUT(Out), .D(rvtodac), .VDDA(VDDA), .VREFH(VREFH), .VREFL(VREFL), .VSSA(VSSA));


endmodule
