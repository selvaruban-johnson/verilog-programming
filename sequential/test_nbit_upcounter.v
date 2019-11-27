module test_nbit_upcounter ();
	parameter n = 16;
	reg clk,rst;
	wire [n-1:0]q;
	nbit_upcounter b1 (.clk(clk),.rst(rst),.q(q));
	defparam b1.n=16;
	initial
		clk = 1'b0;
	always 
		#50 clk = ~clk;
	initial
	begin
		rst = 1'b1;
		#150 rst = 1'b0;
	end
	initial
	#3000 $finish;
endmodule 	
	