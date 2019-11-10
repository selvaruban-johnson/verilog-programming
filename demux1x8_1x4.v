module demux1x8_1x4 (output [7:0]d,input in,[2:0]s);
	wire [1:0]w;
	demux1x2 d1 (.in(in),.s0(s[2]),.d(w[1:0]));
	demux1x4_1x2 d2 (.in(w[0]),.s(s[1:0]),.d(d[3:0]));
	demux1x4_1x2 d3 (.in(w[1]),.s(s[1:0]),.d(d[7:4]));
endmodule 