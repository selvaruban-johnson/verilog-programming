module birdir_sr (output reg [3:0]q,input clk,rst,right,sin);
	always @ (posedge clk,negedge rst)
	begin
		if(!rst)
			q<=4'b0;
		else
		begin
		if(right)
		begin
			q[3]<=sin;
			q[2]<=q[3];
			q[1]<=q[2];
			q[0]<=q[1];
		end
		else
		begin
			q[0]<=sin;
			q[1]<=q[0];
			q[2]<=q[1];
			q[3]<=q[2];
		end
		end
	end
endmodule
		