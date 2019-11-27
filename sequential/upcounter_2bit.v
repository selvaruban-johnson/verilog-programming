module upcounter_2bit (output [1:0]q,input clk,rst);
	dff_bm b1 (.q(q[0]),.clk(clk),.rst(rst),.d(~q[0]));
	dff_bm b2 (.q(q[1]),.clk(clk),.rst(rst),.d(q[0]^q[1]));
endmodule 
