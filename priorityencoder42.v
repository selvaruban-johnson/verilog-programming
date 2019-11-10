module priorityencoder42(output reg v, [1:0]out , input [3:0]d);
	always @(d)
	begin 
		casez (d)
		4'b0000:{v, out}={1'b0, 2'b00};
		4'b0001:{v, out}={1'b1, 2'b00};		
		4'b001x:{v, out}={1'b1, 2'b01};
		4'b01xx:{v, out}={1'b1, 2'b10};
		4'b1xxxrun:{v, out}={1'b1, 2'b11};
		endcase 
	end
endmodule 