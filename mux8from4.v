module mux8from4(output out,input [2:0]s,[7:0]d);
	wire w1,w2;
	mux4from2 m1 (.out(w1),.s(s[1:0]),.d(d[3:0]));
	mux4from2 m2 (.out(w2),.s(s[1:0]),.d(d[7:4]));
	mux2df m3 (.out(out),.s0(s[2]),.d0(w1),.d1(w2));
endmodule 