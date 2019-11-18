module sr_to_tff (output q,input clk,rst,t);
	wire s,r;
	and a1 (s,~q,t);
	and a2 (r,q,t);
	srff_bm s1 (.q(q),.clk(clk),.rst(rst),.s(s),.r(r));
endmodule 