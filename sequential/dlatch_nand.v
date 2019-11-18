module dlatch_nand(output q1,q2,input d,en);
	wire w1,w2,w3,w4,w5;
	not nn (w5,d);
	nand n1 (w1,d,en);
	nand n2 (w2,w5,en);
	nand n3 (w3,w1,w4);
	nand n4 (w4,w2,w3);
	assign q1=w3;
	assign q2=w4;
endmodule 