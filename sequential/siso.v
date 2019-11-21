module siso(output  sout, input clk, rst, sin);
	reg q1, q2, q3, q0;
always @(posedge clk, negedge rst)
	begin
		if (!rst) 
		begin 
			q0<=1'b0;
			q1<=1'b0;
			q2<=1'b0;			
			q3<=1'b0;			
			end 
		else 
		begin 
			q0<=q1;
			q1<=q2;
			q2<=q3;
			q3<=sin;
		end
	end
assign sout = q0;
endmodule 
