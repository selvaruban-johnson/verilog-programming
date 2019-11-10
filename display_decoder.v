module display_decoder(output reg [6:0]d,input [3:0]b);
	always @ (b)
	begin
		if(b==4'b0000)
			d=7'b0111111;
		else if (b==4'b0001)
			d=7'b0000110;
		else if (b==4'b0010)
			d=7'b1011011;
		else if (b==4'b0011)
			d=7'b1001111;
		else if (b==4'b0100)
			d=7'b1100110;
		else if (b==4'b0101)
			d=7'b1100101;
		else if (b==4'b0110)
			d=7'b1111101;
		else if (b==4'b0111)
			d=7'b0000111;
		else if (b==4'b1000)
			d=7'b1111111;
		else if (b==4'b1001)
			d=7'b1101111;
		else
			d=7'b0000000;
	end
endmodule 