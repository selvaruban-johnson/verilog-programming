module test_siso();
	reg sout;
	wire clk,rst,sin;
	siso s1 (.sout(sout),.clk(clk),.rst(rst),.sin(sin));
	initial
		clk=1'b0;
	always 
		#50 clk = ~clk;
	initial
	begin
		rst = 1'b1;
		#120 rst = 1'b0;
		repeat (4)
		begin
		sin = $random;
		end
	end
endmodule 
		