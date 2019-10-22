module binary_2_gray_structural(output [3:0]g,input [3:0]b);
	assign g[3]=b[3];
	xor x1 (g[2],b[2],b[3]);
	xor x2 (g[1],b[2],b[1]);
	xor x3 (g[0],b[1],b[0]);
endmodule 