module test_down_counter_3b();
	reg clk,rst;
	wire [3:0]q;
	down_counter_3b b1 (.clk(clk),.rst(rst),.q(q));
	initial
		clk=1'b0;
	always
		#50clk=~clk;
	initial
	begin
		rst = 1'b1;
		#150 rst =1'b0;
	end
	initial
		#2000 $finish;
 endmodule 