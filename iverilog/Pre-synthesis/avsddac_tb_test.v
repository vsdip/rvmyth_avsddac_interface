`timescale 1ns / 1ps

module avsddac_tb_test;
reg EN;
reg real VREFH, VREFL;
reg [9:0] D;
wire real OUT;

avsddac uut ( .OUT(OUT), .D(D), .VREFH(VREFH), .VREFL(VREFL) );

initial begin

   EN = 1'b0;
#5 EN = 1'b1;

end
initial begin
   VREFH = 3.3;
   VREFL = 0.0;
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




