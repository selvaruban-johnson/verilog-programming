module mux4x_dm_case (output reg out,input [3:0]d,[1:0]s);
	always @ (d,s)
	begin 
	case (s)
	2'b00 : out = d[0];
	2'b01 : out = d[1];
	2'b10 : out = d[2];
	2'b11 : out = d[3];
	endcase 
	end
endmodule 