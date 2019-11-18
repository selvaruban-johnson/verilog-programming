module jk_to_dff (output q,input clk,rst,d);
	jkff_bm j1 (.q(q),.clk(clk),.rst(rst),.j(d),.k(~d));
endmodule 