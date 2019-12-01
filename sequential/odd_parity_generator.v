module odd_parity_generator (output parity,[3:0]q,input [3:0]o);
	assign parity = o[3]~^o[2]~^o[1]~^o[0];
	assign q = o;
endmodule 