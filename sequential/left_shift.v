module left_shift(output reg [3:0]q,input clk,rst,load,[3:0]d);
	always @ (posedge clk,negedge rst)
	begin
		if(!rst)
		begin
			q<=4'b0;
		end
		else 
		begin
			if(!load)
			q<=d;
			else 
			begin

				q[3]<=q[2];
				q[2]<=q[1];
				q[1]<=q[0];
				q[0]<=1'b0;
			end
		end
	end
endmodule 