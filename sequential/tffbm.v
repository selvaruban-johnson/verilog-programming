module tffbm( output reg q, input clk, rst, t);
	always @ (posedge clk, posedge rst)
	begin 
		if (rst)
			q<=1'b0;
		else 
		begin
			if (t)
				q<=~q;
			else 
				q<=q;	
		end
	end
endmodule    
			