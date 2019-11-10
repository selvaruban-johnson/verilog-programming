module demux1x2(output [1:0]d,input in,s0);
	assign d[0] = ~s0&in;
	assign d[1] = s0&in;
endmodule 