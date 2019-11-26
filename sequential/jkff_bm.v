module jkff_bm (input clk,j,k,rst,output reg q);
	always @ (posedge clk,posedge rst)
	begin
		if(rst)
			q<=1'b0;
		else
		begin
			
			if ({j,k} == 2'b01)
				q<=1'b0;	
			else if ({j,k} == 2'b10)
				q<=1'b1;
			else if ({j,k} == 2'b11)
				q<=~q;
		end
	end
endmodule 