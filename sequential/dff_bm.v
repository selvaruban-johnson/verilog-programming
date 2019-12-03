module dff_bm (input clk,d,rst,output reg q );
	always @ (posedge clk,posedge rst)
	begin
		if(rst)
			q<=1'b0;
		else
			q<=d;
	end	
endmodule 