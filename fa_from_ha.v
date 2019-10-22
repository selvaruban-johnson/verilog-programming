module fa_from_ha(output carry,sum,input a,b,c);
	wire s1,c1,c2;
	half_adder ha1 (s1,c1,a,b);
	half_adder ha2(sum,c2,c,s1);
	or o1 (carry,c1,c2);
endmodule 