module rst_load_mode (output reg [3:0]q,input clk,rst,load,mode,[3:0]d);
	always @ (posedge clk)
	begin
		if(rst)
			q<=4'b0000;
		else
		begin
			if(load)
				q<=d;
			else
			begin
				if(mode)
					q<=q-1;
				else
					q<=q+1;
			end
		end
	end
endmodule 