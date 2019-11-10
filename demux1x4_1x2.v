module demux1x4_1x2(output [3:0]d,input in,[1:0]s);
	wire [1:0]w;
	demux1x2 d1 (.d(w),.in(in),.s0(s[1]));
	demux1x2 d2 (.d(d[1:0]),.in(w[0]),.s0(s[0]));
	demux1x2 d3 (.d(d[3:2]),.in(w[1]),.s0(s[0]));
endmodule 