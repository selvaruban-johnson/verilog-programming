module modified_mod5(output qnew,qs,[2:0]q,input clk,rst);
	mod5_counter b1 (.q(q),.clk(clk),.rst(rst));
	dff_bm_neg d1 (.q(qs),.clk(clk),.rst(rst),.d(q[1]));
	or o1 (qnew,qs,q[1]);
endmodule 