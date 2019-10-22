module twobitcomparator(output l,e,g,input a1,a0,b1,b0);
	assign l=(~a1&b1)|(~a1&~a0&b0)|(~a0&b1&b0);
	assign e= (~a1 & ~a0 & ~b1 & ~b0) | (~a1 & a0 & ~b1 & b0) | (a1 & a0 & b1 & b0) | (a1 & ~a0 & b1 & ~b0);
	assign g =(a1&~b1)|(a0&~b1&~b0)|(a1&a0&~b0);
endmodule
