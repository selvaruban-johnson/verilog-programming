module oddeven(output y,input[4:0]i);
	assign y=i[4]^i[0];
endmodule 