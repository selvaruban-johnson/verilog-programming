module counter_down_3b (output reg [2:0]q,input clk,rst);
	always @ (posedge clk)
	begin
		if(rst)
			q<=3'b000;
		else
			q<=q-1'b1;
	end
endmodule 