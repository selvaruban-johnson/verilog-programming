module decoder2x4(output [3:0]x,input [1:0]i);
	assign x[0] = (~i[1] & ~i[0]);
	assign x[1] = (~i[1] & i[0]);
	assign x[2] = (i[1] & ~i[0]);
	assign x[3] = (i[1] & i[0]);
endmodule 