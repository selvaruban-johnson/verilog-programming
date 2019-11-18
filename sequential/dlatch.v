module dlatch(output q,input d,en);
	wire w1,w2,w3,w4;
	nand n1 (w1,d,en);
	nand n2 (w2,~d,en);
	nand n3 (w3,w1,w4);
	nand n4 (w4,w2,w3);
	assign q=w3;
endmodule 