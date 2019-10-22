module ha_named(output sum,carry,input a,b);
	xor x1 (sum,a,b);
	and a1 (carry,a,b);
endmodule 

module fa_named(output sum,carry, input a,b,c);
	wire s1,c1,c2;
	ha_named h1 (.a(a),.b(b),.sum(s1),.carry(c1));
	ha_named h2 (.a(s1),.b(c),.sum(sum),.carry(c2));
	or o1 (carry,c1,c2);
endmodule 