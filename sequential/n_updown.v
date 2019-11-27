module n_updown #(parameter n=4)(output [n-1:0]q,input clk,rst,mode);
	wire [n-1:0]w;
	genvar count;
	generate 
	for(count=0;count<n;count=count+1)
	begin
		mux2x1_bm b1 (.out(w[count]),.d({q[count],~q[count]}),.sel(mode));
		if(count==0)
			tff_bm t1 (.q(q[count]),.clk(clk),.rst(rst),.t(1'b1));
		else
			tff_bm t2 (.q(q[count]),.clk(w[count-1]),.rst(rst),.t(1'b1));
	end
	endgenerate 
endmodule