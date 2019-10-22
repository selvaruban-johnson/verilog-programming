module mux8from2_vector (output out,input [2:0]s,[7:0]d);
	wire [6:1]w;
	mux2df m1 (.out(w[1]),.s0(s[0]),.d0(d[0]),.d1(d[1]));
	mux2df m2 (.out(w[2]),.s0(s[0]),.d0(d[2]),.d1(d[3]));
	mux2df m3 (.out(w[3]),.s0(s[0]),.d0(d[4]),.d1(d[5]));
	mux2df m4 (.out(w[4]),.s0(s[0]),.d0(d[6]),.d1(d[7]));
	mux2df m5 (.out(w[5]),.s0(s[1]),.d0(w[1]),.d1(w[2]));
	mux2df m6 (.out(w[6]),.s0(s[1]),.d0(w[3]),.d1(w[4]));
	mux2df m7 (.out(out),.s0(s[2]),.d0(w[5]),.d1(w[6]));
endmodule