module mux8from4_scalar (output out,input a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
	wire w1,w2,w3,w4,w5,w6;
	mux2df m1 (.out(w1),.s0(c),.d0(d0),.d1(d1));
	mux2df m2 (.out(w2),.s0(c),.d0(d2),.d1(d3));
	mux2df m3 (.out(w3),.s0(c),.d0(d4),.d1(d5));
	mux2df m4 (.out(w4),.s0(c),.d0(d6),.d1(d7));
	mux2df m5 (.out(w5),.s0(b),.d0(w1),.d1(w2));
	mux2df m6 (.out(w6),.s0(b),.d0(w3),.d1(w4));
	mux2df m7 (.out(out),.s0(a),.d0(w5),.d1(w6));
endmodule
