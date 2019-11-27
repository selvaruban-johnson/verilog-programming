module ringcounter(output reg [3:0]q, input clk, rst, load, [3:0]d);
	always @ (posedge clk)
	begin 
	if (rst)
		q<=4'b0000;
	else if (load)
		q<=d;
	else 
		q<=({q[0], q[3:1]});
	end 
endmodule 
