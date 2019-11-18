module t_latch(output q1,input j,k,en);
	wire w1,w2,w3,w4;
	nand n1 (w1,w4,en,t);
	nand n2 (w2,w3,t,en);
	nand n3 (w3,w1,w4);
	nand n4 (w4,w2,w3);
	assign q1 = w3;
endmodule