module sr_to_d(output q,input d,clk,rst);
	srff_bm s1 (.clk(clk),.rst(rst),.s(d),.r(~d),.q(q));
endmodule 