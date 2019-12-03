module srflip_flop_bm (input clk,s,r,output reg q);
	always @ (posedge clk)
	begin
			
			if ({s,r} == 2'b01)
				q<=1'b0;	
			else if ({s,r} == 2'b10)
				q<=1'b1;
			else if ({s,r} == 2'b11)
				q<=1'bx;
	end
endmodule 