module four_b_cla (output cout,[3:0]s,input cin,[3:0]a,b);
	wire [3:0]c;
	wire [8:1]w;
	half_adder h1 (w[1],w[2],a[0],b[0]);
	half_adder h2 (w[3],w[4],a[1],b[1]);
	half_adder h3 (w[5],w[6],a[2],b[2]);
	half_adder h4 (w[7],w[8],a[3],b[3]);
	assign c[0] = (w[2]&cin)|w[1];
	assign c[1] = (w[2]&w[4]&cin)|(w[4]&w[1])|w[3];
	assign c[2] = (w[2]&w[4]&w[6]&cin)|(w[4]&w[6]&w[1])|(w[6]&w[3])|w[5];
	assign c[3] = (w[2]&w[4]&w[6]&w[8]&cin)|(w[4]&w[6]&w[8]&w[1])|(w[6]&w[8]&w[3])|(w[8]&w[5])|w[7];
	xor x1 (s[0],cin,w[2]);
	xor x2 (s[1],c[0],w[4]);
	xor x3 (s[2],c[1],w[6]);
	xor x4 (s[3],c[2],w[8]);
	assign cout = c[3];
endmodule 