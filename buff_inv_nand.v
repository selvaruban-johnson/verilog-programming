module buff_inv_nand(output buff,inv,input a);
	wire w;
	assign w = ~(a&a);
	assign buff =~(w&w);
	assign inv = w;
endmodule 