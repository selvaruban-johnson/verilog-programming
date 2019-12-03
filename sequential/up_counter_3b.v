module up_counter_3b (output [2:0]q,input clk,rst);
	tff_bm t1 (.q(q[0]),.rst(rst),.clk(clk),.t(1'b1));
	tff_bm t2 (.q(q[1]),.rst(rst),.clk(~q[0]),.t(1'b1));
	tff_bm t3 (.q(q[2]),.rst(rst),.clk(~q[1]),.t(1'b1));
endmodule 