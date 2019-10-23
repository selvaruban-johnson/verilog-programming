module decoder3x8_active_high(output [7:0]d,input en,[2:0]i);
	assign d[0] = (en & ~i[2] & ~i[1] & ~i[0]);
	assign d[1] = (en & ~i[2] & ~i[1] & i[0]);
	assign d[2] = (en & ~i[2] & i[1] & ~i[0]);
	assign d[3] = (en & ~i[2] & i[1] & i[0]);
	assign d[4] = (en & i[2] & ~i[1] & ~i[0]);
	assign d[5] = (en & i[2] & ~i[1] & i[0]);
	assign d[6] = (en & i[2] & i[1] & ~i[0]);
	assign d[7] = (en & i[2] & i[1] & i[0]);
endmodule