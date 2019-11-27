module mode10counter(output [3:0]q, input rst, clk);
	wire w1, w2, w3;
	tff_bm t1(.q(q[0]), .clk(clk), .rst(w3), .t(1'b1));
	tff_bm t2(.q(q[1]), .clk(~q[0]), .rst(w3), .t(1'b1));
	tff_bm t3(.q(q[2]), .clk(~q[1]), .rst(w3), .t(1'b1));
	tff_bm t4(.q(q[3]), .clk(~q[2]), .rst(w3), .t(1'b1));
	or o1(w1, q[1], q[2]);
	and a1(w2, w1, q[3]);
	or o2(w3, rst, w2);

	//assign w3 = (q[3] & (q[2] | q[1]));
endmodule 