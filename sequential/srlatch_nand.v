module srlatch_nand(output q1,q2,input s,r,en);
	wire w1,w2,w3,w4;
	nand n1 (w1,s,en);
	nand n2 (w2,r,en);
	nand n3 (w3,w1,w4);
	nand n4 (w4,w2,w3);
	assign q1=w3;
	assign q2=w4;
endmodule 