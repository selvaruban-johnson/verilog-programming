module sr_to_jk (output q,input clk,rst,j,k);
	wire s,r;
	assign s=(~q&j);
	assign r = (q&k);
	srff_bm s1 (.q(q),.clk(clk),.rst(rst),.s(s),.r(r));
endmodule 
	