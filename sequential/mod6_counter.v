module mod6_counter (output reg [3:0]q,input clk,rst);
	always @ (posedge clk)
	begin
		if (rst)
			q<=3'b000;
		else
		begin
			if(q>3'b101)
				q<=3'b000;
			else
				q<=q+1;
		end
	end
endmodule