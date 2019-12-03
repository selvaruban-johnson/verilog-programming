module upcounter3bit (output [2:0]q, input rst,  clk);
	tffbm t1(.q(q[0]), .clk(clk), .rst(rst), .t(1'b1));
	tffbm t2(.q(q[1]), .clk(~q[0]), .rst(rst), .t(1'b1));
	tffbm t3(.q(q[2]), .clk(~q[1]), .rst(rst), .t(1'b1));
endmodule	
	