module de2x4_en (output [3:0]d,input en,[1:0]i);
	assign d[0]= (en & ~i[1] & ~i[0]);
	assign d[1]= (en & ~i[1] & i[0]);
	assign d[2]= (en & i[1] & ~i[0]);
	assign d[3]= (en & i[1] & i[0]);
endmodule 