module updown_3b (output [2:0]q,input clk,rst,m);
	
	mux2x1 b1(.out(w1),.sel(m),.d({~q[0],q[0]}));
	mux2x1 b2(.out(w2),.sel(m),.d({~q[1],q[1]}));
	dff_bm d1(.d(~q[0]),.q(q[0]),.clk(clk),.rst(rst));
	dff_bm d2(.d(~q[1]),.q(q[1]),.clk(w1),.rst(rst));
	dff_bm d3(.d(~q[2]),.q(q[2]),.clk(w2),.rst(rst));
endmodule
