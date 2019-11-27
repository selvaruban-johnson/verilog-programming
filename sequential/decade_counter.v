module decade_counter (output reg [3:0]q,input clk,rst);
	always @ (posedge clk)
	begin
		if (rst)
			q<=4'b0000;
		else
		begin
			if(q>=4'b1001)
				q<=4'b0000;
			else
				q<=q+1;
		end
	end
endmodule 