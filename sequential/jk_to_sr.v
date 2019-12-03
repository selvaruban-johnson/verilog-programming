module jk_to_sr(output q,input clk,rst,s,r);
	wire j,k;
	and a1 (j,s,~r);
	and a2 (k,~s,r);
	jkff_bm j1 (.clk(clk),.rst(rst),.j(j),.k(k),.q(q));
endmodule 