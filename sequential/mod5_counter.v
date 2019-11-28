module mod5_counter(output reg [2:0]q, input rst, clk);
	always @ (posedge clk)
	begin
		if(rst)
			q<=3'b000;
		else
		begin
			if(q>3'b11)
				q<=3'b000;
			else
				q<=q+1;
		end
	end	
endmodule 