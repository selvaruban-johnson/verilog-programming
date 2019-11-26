module updown_counter_8b (output reg [7:0]q,input clk,rst,mode);
	always @ (posedge clk)
	begin
		if(rst)
			q<=8'b00000000;
		else
		begin
			if(mode)
			q<=q-1;
			else
			q<=q+1;
		end
	end
endmodule 