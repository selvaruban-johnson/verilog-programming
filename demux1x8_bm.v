module demux1x8_bm(output reg [7:0]d,input in,[2:0]s);
	always @ (s,in);
	begin
	case (s)
	0: d = {7'b0000000,in};
	1: d = {6'b000000,in,1'b0};
	2: d = {5'b00000,in,2'b00};
	3: d = {4'b0000,in,3'b000};
	4: d = {3'b000,in,4'b0000};
	5: d = {2'b00,in,5'000000};
	6: d = {1'b0,in,6'0000000};
	7: d = {in,7'b00000000};
	endcase
	end
endmodule
