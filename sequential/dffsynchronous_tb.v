module dffsynchronous_tb;
	reg clk,rst,d;
	wire q;
	dff_bm d1 (.q(q),.clk(clk),.rst(rst),.d(d));
	initial
		clk = 1'b0;
	always
		#50 clk = ~clk;
	initial
	begin
		d=1'b1;
		rst = 1'b0;
		#100 rst =1'b1;
		#70 d = 1'b0;
		#30 d= 1'b1;
		#10 d = 1'b0;
		rst = 1'b0;
		#10 d = 1'b1;
		#90 rst =1'b1;
	end
	initial
		#500 $finish;
endmodule