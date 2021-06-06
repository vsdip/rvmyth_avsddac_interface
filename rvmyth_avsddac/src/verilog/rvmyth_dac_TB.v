`include "avsddac.v"
`include "mythcore_test.v"
`include "rvmyth_avsddac.synth_copy.v"
module rvmyth_avsddac_interface_TB;
reg clk, reset;
wire Out;
wire [9:0] rvtodac;
wire EN;

rvmyth_avsddac_interface_testing uut ( .clk(clk), .reset(reset), .Out(Out));

core uut1 ( .clk(clk), .reset(reset), .out(rvtodac));


initial begin
        $dumpfile("rvmyth_avsddac_interface_TB.vcd");
        $dumpvars(0,rvmyth_avsddac_interface_TB);
	clk = 1;
        reset = 0;
	#2 reset = 1;
	#10 reset = 0;
        #5000 $finish;
        end
	always #1 clk = ~clk;

endmodule
