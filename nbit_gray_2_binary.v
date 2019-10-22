module nbit_gray_2_binary #(parameter n=4)(output [n-1:0]b,input [n-1:0]g);
	assign b = {g[n-1],g[n-1:1]^g[n-2:0]};
endmodule
