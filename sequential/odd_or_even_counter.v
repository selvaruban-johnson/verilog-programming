module odd_or_even_counter (output reg [3:0]q,input clk,rst,even);
	always @ (even,posedge clk)
	begin
	case(even)
	1'b1:if(rst)
		q<=4'b0000;
	     else
		q<=q+2'b10;
	1'b0 : if(rst)
		q<=4'b0001;
	       else
		q<=q+2'b10;
	endcase
	end
endmodule 	