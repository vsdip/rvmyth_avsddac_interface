`timescale 1ns / 1ps

module avsddac_tb_test;
reg EN;

reg real VDD, VDDA, VREFH, VREFL, VSS, VSSA;

reg [9:0] D;

wire real OUT;

adacc01_3v3 uut ( .OUT(OUT), .D(D), .EN(EN), .VDD(VDD), .VDDA(VDDA), .VREFH(VREFH), .VREFL(VREFL), .VSS(VSS), .VSSA(VSSA) );

//always #1 clk = ~clk;


initial begin

   EN = 1'b0;
#5 EN = 1'b1;

end

initial begin 

VDD = 1.8;
VDDA = 3.3;
VREFH = 3.3;
VREFL = 0.0;
VSS = 0.0;
VSSA = 0.0;

end

initial begin 

#10  D = 10'h3FA;
#10  D = 10'h3FB;
#10  D = 10'h3FC;
#10  D = 10'h3FD;
#10  D = 10'h3FE;
#10  D = 10'h3FF;

end

initial begin
        $dumpfile("avsddac_tb_test.vcd");
        $dumpvars(0,avsddac_tb_test);
        //clk = 1;
        //reset = 0;
        //#2 reset = 1;
	//#10 reset = 0;
        #300 $finish;
        end
        
endmodule




