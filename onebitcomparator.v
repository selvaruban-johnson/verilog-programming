module onebitcomparator(output l,e,g, input a,b);
	assign l=~a&b;
	assign e=~(a^b);
	assign g=a&~b;
endmodule 