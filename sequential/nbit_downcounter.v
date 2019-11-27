module nbit_downcounter #(parameter n=4)(output [n-1:0]q,input clk,rst);
	genvar count;
	generate 
		for (count=0;count < n;count = count +1)
		begin
			if(count ==1'b0)
				tff_bm t1 (.q(q[count]),.clk(clk),.rst(rst),.t(1'b1));
			else
				tff_bm t2 (.q(q[count]),.clk(q[count-1]),.rst(rst),.t(1'b1));
		end
	endgenerate 
endmodule 