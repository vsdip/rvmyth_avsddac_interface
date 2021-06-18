`include "mythcore_test.v"
`include "avsddac.v"
`include "rvmyth_avsddac.synth.v"
`timescale 1ns / 100ps
module gls();
reg clk, reset;
wire Out;

wire [9:0] rvtodac;
wire EN;

core uut1 ( .clk(clk), .reset(reset), .out(rvtodac));
rvmyth_avsddac uut ( .clk(clk), .reset(reset), .Out(Out)); 

initial begin
        $dumpfile("gls.vcd");
        $dumpvars(0,gls);
	clk = 1;
        reset = 0;
	#2 reset = 1;
	#10 reset = 0;
        #5000 $finish;
        end
	always #1 clk = ~clk;

endmodule

