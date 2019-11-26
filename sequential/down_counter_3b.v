module down_counter_3b (output [3:0]q,input rst,clk);
	jkff_bm j1 (.clk(clk),.rst(rst),.j(1'b1),.k(1'b1),.q(q[0]));
	jkff_bm j2 (.clk(q[0]),.rst(rst),.j(1'b1),.k(1'b1),.q(q[1]));
	jkff_bm j3 (.clk(q[1]),.rst(rst),.j(1'b1),.k(1'b1),.q(q[2]));
	jkff_bm j4 (.clk(q[2]),.rst(rst),.j(1'b1),.k(1'b1),.q(q[3]));
endmodule 
