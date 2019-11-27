module odd_counter (output reg [3:0]q,input clk,rst);
	always @ (posedge clk)
	begin
		if(rst)
			q<=4'b0001;
		else
			q<=q+2'b10;
	end
endmodule 