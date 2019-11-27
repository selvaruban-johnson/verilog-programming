module test_up_down_counter ();
	reg  clk,rst,up;
	wire [2:0]q;
	up_down_counter_3b b1 (.q(q),.clk(clk),.rst(rst),.up(up));
	initial 
	begin
		clk = 1'b0;
		up = 1'b0;
	end
	always 
		#50 clk = ~clk;
	initial
	begin
	repeat(2)
	begin
		rst = 1'b1;
		#50 rst = 1'b0;
	end
		#1000 up=up+1;
	end
	initial
	#3000 $finish;
endmodule 