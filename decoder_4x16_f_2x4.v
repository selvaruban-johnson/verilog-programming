module decoder_4x16_f_2x4(output [15:0]d,input[3:0]i);
	decoder2x4_high d1 (.x(d[3:0]),.en1(~i[3]),.en2(~i[2]),.i(i[1:0]));
	decoder2x4_high d2 (.x(d[7:4]),.en1(~i[3]),.en2(i[2]),.i(i[1:0]));
	decoder2x4_high d3 (.x(d[11:8]),.en1(i[3]),.en2(~i[2]),.i(i[1:0]));
	decoder2x4_high d4 (.x(d[15:12]),.en1(i[3]),.en2(i[2]),.i(i[1:0]));
endmodule 