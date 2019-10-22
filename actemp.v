module actemp(output toff, t0,t1,t2, input a, b , c, d);
	assign toff = ~(a|b|c|d);
	assign t0= (~a&~b&d)|(~a&~b&c)|(~a&b&~c&~d);
	assign t1 =(a&~b&~c)|(~a&b&c)|(~a&b&d);
	assign t2 = (a&c)|(a&b);
endmodule
