module fa_mux8(output sum,carry, input a,b,c);
	mux8from4 m1 (.out(sum),.s({a,b,c}),.d({1,0,0,1,0,1,1,0}));
	mux8from4 m2 (.out(carry),.s({a,b,c}),.d({1,1,1,0,1,0,0,0}));
endmodule
