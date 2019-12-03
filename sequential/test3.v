module test3 (output reg y,input a,b);
	always @ (a,b)
			#0 y= a&b;
	always @ (a,b)
		y= a|b;
endmodule 