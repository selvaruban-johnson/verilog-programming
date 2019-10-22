module full_adder_stru (output sum,carry,input a,b,c);
	wire c1,c2,s1;
	half_adder ha1 (s1,c1,a,b);
	half_adder ha2 (sum,c2,s1,c);
	or o1 (carry,c1,c2);
endmodule ad