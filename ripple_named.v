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

module ripple_named(output cout,[3:0]s,input cin,[3:0]a,b);
	wire[2:0]c;
	fa_named fa1(.sum(s[0]), .carry(c[0]), .a(a[0]), .b(b[0]), .c(cin));
	fa_named fa2(.sum(s[1]), .carry(c[1]), .a(a[1]), .b(b[1]), .c(c[0]));
	fa_named fa3(.sum(s[2]), .carry(c[2]), .a(a[2]), .b(b[2]), .c(c[1]));
	fa_named fa4(.sum(s[3]), .carry(cout), .a(a[3]), .b(b[3]), .c(c[2]));
endmodule
