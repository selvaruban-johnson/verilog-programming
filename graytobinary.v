module graytobinary(output [3:0]b,input [3:0]g);
	assign b[3]=g[3];
	assign b[2]=g[3]^g[2];
	assign b[1]=g[3]^g[2]^g[1];
	assign b[0]=g[3]^g[2]^g[1]^g[0];
endmodule 