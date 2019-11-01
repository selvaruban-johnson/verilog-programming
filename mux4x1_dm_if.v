module mux4x1_dm_if(output reg out,input [3:0]d,[1:0]s);
	always @ (s)
	begin 
	if(s==2'b00)
		out = d[0];
	else if (s==2'b01)
		out = d[1];
	else if(s==2'b10)
		out = d[2];
	else
		out = d[3];
	end
endmodule 