module tff_bm (input clk,t,rst,output reg q );
	always @ (posedge clk,posedge rst)
	begin
		if(rst)
			q<=1'b0;
		else
		begin
			if(t)
			q<=~q;
		end                                                                                                                                                                   
	end	
endmodule 