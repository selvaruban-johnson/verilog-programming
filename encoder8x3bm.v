module encoder8x3bm(output reg a[2:0]b, input [7:0]d);
	always @(d)
	begin 
	if (d=={7'b0, 1'b1})
		b=3'b000;
	else if (d=={6'b0, 1'b1, 1'b0})
		b=3'b001;
	else if (d=={5'b0, 1'b1, 2'b0})
		b=3'b010;	
	else if (d=={4'b0, 1'b1, 3'b0})
		b=3'b011;	
	else if (d=={3'b0, 1'b1, 4'b0})
		b=3'b100;	
	else if (d=={2'b0, 1'b1, 5'b0})
		b=3'b101;	
	else if (d=={1'b0, 1'b1, 6'b0})
		b=3'b110;	
	else
		b=3'b111;	
	end
endmodule 