module srff_bm_sync (input clk,s,r,rst,output reg q);
	always @ (posedge clk)
	begin
		if(rst)
			q<=1'b0;
		else
		begin
			
			if ({s,r} == 2'b01)
				q<=1'b0;	
			else if ({s,r} == 2'b10)
				q<=1'b1;
			else if ({s,r} == 2'b11)
				q<=1'bx;
		end
	end
endmodule 