module test2 (output reg y,input a,b);
	always @ (a,b)
		y<= a&b;
	always @ (a,b)
		y= a|b;
endmodule 