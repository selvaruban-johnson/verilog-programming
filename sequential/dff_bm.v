module dff_bm (input clk,d,rst,output reg q );
	always @ (negedge clk)
	begin
		if(!rst)
			q<=1'b0;
		else
			q<=d;
	end	
endmodule 