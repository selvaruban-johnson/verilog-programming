module up_down_counter_3b (output [2:0]q,input clk,rst,up);
	wire w1,w2;
	mux2x1_bm b1 (.out(w1),.sel(up),.d({~q[0],q[0]}));
	mux2x1_bm b2 (.out(w2),.sel(up),.d({~q[1],q[1]}));
	tff_bm t1 (.clk(clk),.rst(rst),.q(q[0]),.t(1'b1));
	tff_bm t2 (.clk(w1),.rst(rst),.q(q[1]),.t(1'b1));
	tff_bm t3 (.clk(w2),.rst(rst),.q(q[2]),.t(1'b1));

endmodule 