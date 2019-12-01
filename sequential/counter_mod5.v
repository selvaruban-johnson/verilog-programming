module counter_mod5 (output [2:0]q,input clk,rst);
	wire w1,w2,w3;
	tff_bm b1 (.q(q[0]),.t(1'b1),.clk(clk),.rst(w3));
	tff_bm b2 (.q(q[1]),.t(1'b1),.clk(~q[0]),.rst(w3));
	tff_bm b3 (.q(q[2]),.t(1'b1),.clk(~q[1]),.rst(w3));
	or o1 (w1,q[1],q[0]);
	and a1 (w2,q[2],w1);
	or o2 (w3,rst,w2);
endmodule 