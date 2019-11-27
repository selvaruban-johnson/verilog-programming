module mux2df(output out,input s0,d0,d1);
	assign out = (~s0&d0)|(s0&d1);
endmodule
