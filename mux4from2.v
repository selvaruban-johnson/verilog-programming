module mux4from2(output out,input [1:0]s,[3:0]d);
	wire w1,w2;
	mux2df m1 (.out(w1),.s0(s[0]),.d0(d[0]),.d1(d[1]));
	mux2df m2 (.out(w2),.s0(s[0]),.d0(d[2]),.d1(d[3]));
	mux2df m3 (.out(out),.s0(s[1]),.d0(w1),.d1(w2));
endmodule 