module test_mode10counter();
	reg clk,rst;
	wire [3:0]q;
	mode10counter c1 (.clk(clk),.rst(rst),.q(q));
	initial
		clk = 1'b1;
	always
		#50 clk = ~clk;
	initial
	begin
		rst = 1'b1;
		#120 rst = 1'b0;
	end
	initial
	#2000 $finish;
endmodule 