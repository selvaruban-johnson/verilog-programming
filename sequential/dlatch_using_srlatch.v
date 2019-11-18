module dlatch_using_srlatch(output q1,q2,input en,d);
	srlatch_nand s1 (.q1(q1),.q2(q2),.en(en),.s(d),.r(~d));
endmodule 