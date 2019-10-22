module four_b_rca(output cout,[3:0]s,input cin ,[3:0]a,b);
	wire w1,w2,w3;
	full_adder_stru fa1 (w1,s[0],cin,a[0],b[0]);
	full_adder_stru fa2 (w2,s[1],w1,a[1],b[1]);
	full_adder_stru fa3 (w3,s[2],w2,a[2],b[2]);
	full_adder_stru fa4 (cout,s[3],w3,a[2],b[3]);
endmodule 