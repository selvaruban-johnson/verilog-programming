module one_bit_comparator_structural(output l,e,g,input a,b);
	wire w1,w2;
	not n1(w1,a);
	not n2(w2,b);
	and a1 (l,w1,b);
	and a2 (g,w2,a);
	xnor xn1 (e,a,b);
endmodule 