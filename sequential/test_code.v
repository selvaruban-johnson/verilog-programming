module test_code (output reg y,input a,b);
	always @ (a,b)
		y= a|b;
	always @ (a,b)
		y= a&b;
endmodule 