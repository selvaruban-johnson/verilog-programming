module decoder3x6 (output [5:0]d,input [2:0]i);
	de2x4_en d1 (.d(d[3:0]),.en(~i[2]),.i(i[1:0]));
	decode1x2_en d2 (.d(d[5:4]),.en(i[2]),.i(i[0]));
endmodule 