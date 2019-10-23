module decoder2x4_low(output [3:0]x,input en1,en2,[1:0]i);
	assign x[0] = (~en1 & ~en2 & ~i[1] & ~i[0]);
	assign x[1] = (~en1 & ~en2 & ~i[1] & i[0]);
	assign x[2] = (~en1 & ~en2 & i[1] & ~i[0]);
	assign x[3] = (~en1 & ~en2 & i[1] & i[0]);
endmodule 