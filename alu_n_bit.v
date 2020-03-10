module alu_n_bit #(parameter n=8)
(output reg [n:0]out,input [n-1:0]a,b,[2:0]sel);
always @ *
begin 
case (sel)

	3'b001: out = a-b;
	3'b010: out = a+1;
	3'b011: out = a-1;
	3'b100: out = a&b;
	3'b101: out = a|b;
	3'b110: out = a^b;
	3'b111: out = ~a;
	default: out = a+b;
endcase 
end
endmodule 