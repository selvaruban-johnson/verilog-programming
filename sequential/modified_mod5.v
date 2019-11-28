module modified_mod5(output qs,qnew,[2:0]q,input rst,clk);
	dff_bm a(.clk(clk),.rst(rst),.q(qs),.d(q[1]));
	mod6_counter c1 (.clk(clk),.rst(rst),.q(q));
	or o1 (qnew,qs,q[1]);
endmodule 