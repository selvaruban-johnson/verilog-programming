module pipo (input rst,clk,[3:0]d,output reg [3:0]q);
	always @ (posedge clk,negedge rst)
	begin
		if(!rst)
			q<=4'b0;
		else
			q<=d;
	end
endmodule 