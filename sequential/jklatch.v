module jklatch (output q1, q2, input j, en, k);
	wire w1, w2, x, y;
	nand n1(w1, x, j, en);
	nand n2 (w2, en, k, y);
	nand n3(w3, w1, w4);
	nand n4(w4, w2, w3);
	assign q1=w3;
	assign q2=w4;
	assign x=w4;
	assign y=w3;
endmodule 
