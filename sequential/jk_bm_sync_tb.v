module jk_bm_sync_tb;
	reg clk,rst,j,k;
	wire q;
	jkff_bm j1 (.clk(clk),.rst(rst),.j(j),.k(k),.q(q));
	initial
		clk = 1'b0;
	always
		#50 clk = ~clk;
	initial 
	begin
		j=1'b0;
		k=1'b0;
		rst = 1'b1;
		#70 j=1'b1;
		rst = 1'b0;
		#90 j =1'b0;
		k= 1'b1;
		#120 j = 1'b1;
		#40 rst = 1'b1;
	end
	initial
	#600 $finish;
endmodule 