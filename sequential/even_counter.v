module even_counter (output reg [3:0]q,input clk,rst);
	always @ (posedge clk)
	begin
		if(rst)
			q<=4'b0000;
		else
			q<=q+2'b10;
	end
endmodule 