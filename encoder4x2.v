module encoder4x2(output [1:0]x,input[3:0]d);
	or o1 (x[0],d[2],d[3]);
	or o2 (x[1],d[1],d[3]);
endmodule 