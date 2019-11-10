module decoder3x8_bm(output reg[7:0]x,input [2:0]b);
	always @ (b)
	begin
	case (b)
	3'b000 : x[7:0]={7'b0,1'b1};
	3'b001 : x[7:0]={6'b0,1'b1,1'b0};
	3'b010 : x[7:0]={5'b0,1'b1,2'b0};
	3'b011 : x[7:0]={4'b0,1'b1,3'b0};
	3'b100 : x[7:0]={3'b0,1'b1,4'b0};
	3'b101 : x[7:0]={2'b0,1'b1,5'b0};
	3'b110 : x[7:0]={1'b0,1'b1,6'b0};
	3'b111 : x[7:0]={1'b1,7'b0};
	endcase
	end
endmodule
