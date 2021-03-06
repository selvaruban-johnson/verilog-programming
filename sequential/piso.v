module piso (output sout,input clk,rst,load,[3:0]d);
	reg [3:0]q;
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
				q[3]<=d[3];
				q[2]<=q[3];
				q[1]<=q[2];
				q[0]<=q[1];
			end
		end
	
	end
assign sout =q[0];
endmodule 