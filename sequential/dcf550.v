module dcf550(output Qnew, [2:0]q, input clk, rst);
	wire w1, w2;
mod5_counter m1(.q(q), .rst(rst), .clk(clk));
 	assign w1=q[1];
dff_bm d1 (.q(w2), .rst(rst), .clk(~clk), .d(w1));
 	or o1 (Qnew, w1, w2);
endmodule  