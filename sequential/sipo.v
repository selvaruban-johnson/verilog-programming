module sipo (input sin,clk,rst,output reg q3,q2,q1,q0);
	always @ (posedge clk,negedge rst)
	begin
		if(!rst)
		begin
			q0<=1'b0;
			q1<=1'b0;
			q2<=1'b0;
			q3<=1'b0;
		end
		else
		begin	
			q3<=sin;
			q2<=q3;
			q1<=q2;
			q0<=q1;
		end
	end
endmodule 