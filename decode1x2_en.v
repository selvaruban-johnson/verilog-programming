module decode1x2_en(output [1:0]d,input en,i);
	assign d[0] = en&~i;
	assign d[1] = en & i;
endmodule 