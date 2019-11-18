module dff_to_jk (output q,input j,k,clk,rst);
	wire d;
	assign d = (~q&j)|(q&~k);
	dff_bm d1 (.clk(clk),.q(q),.rst(rst),.d(d));
endmodule 