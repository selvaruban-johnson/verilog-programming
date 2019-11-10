module buff_inv_xor(output buff,inv,input a);
	wire w;
	assign w = a^~a;
	assign buff = w ^~a;
	assign inv = w^a;
endmodule 