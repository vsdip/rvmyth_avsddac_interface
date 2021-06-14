
module rvmyth_avsddac_TB;
reg clk, reset;
wire real Out;


rvmyth_avsddac uut ( .clk(clk), .reset(reset), .Out(Out));


initial begin
        $dumpfile("rvmyth_avsddac.vcd");
        $dumpvars(0,rvmyth_avsddac_TB);
	clk = 1;
        reset = 0;
	#2 reset = 1;
	#10 reset = 0;
        #5000 $finish;
        end
	always #1 clk = ~clk;

endmodule
