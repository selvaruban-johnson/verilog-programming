module decoder16x4_from_3x8(output [15:0]d,input [3:0]i);
	decoder3x8_active_high d1 (.d(d[7:0]),.en(~i[3]),.i(i[2:0]));
	decoder3x8_active_high d2 (.d(d[15:8]),.en(i[3]),.i(i[2:0]));
endmodule 