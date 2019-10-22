module mux4stv (output out,input [1:0]s,[3:0]d);
	wire [6:1]w;
	not n1 (w[1],s[1]);
	not n2 (w[2],s[0]);
	and a1 (w[3],w[1],w[2]);
	and a2 (w[4],w[1],s[0]);
	and a3 (w[5],s[1],w[2]);
	and a4 (w[6],s[1],s[0]);
	or o1 (out,w[3],w[4],w[5],w[6]);
endmodule 