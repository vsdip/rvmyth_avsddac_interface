`include "mythcore_test.v"
module rvmyth_avsddac_interface( clk, reset, Out);
input clk, reset;
output Out;
wire Out;

wire [9:0] rvtodac;
wire VDD, VSSA, VDDA, VREFL, VREFH, VSS;
wire EN;

assign VDD = 1.8;
assign VDDA = 3.3;
assign VREFH = 3.3;
assign VREFL = 0.0;
assign VSS = 0.0;
assign VSSA = 0.0;
assign EN=1;

core uut1 ( .clk(clk), .reset(reset), .out(rvtodac));
avsddac uut2 ( .OUT(Out), .D(rvtodac), .EN(EN), .VDD(VDD), .VDDA(VDDA), .VREFH(VREFH), .VREFL(VREFL), .VSS(VSS), .VSSA(VSSA) );
endmodule
