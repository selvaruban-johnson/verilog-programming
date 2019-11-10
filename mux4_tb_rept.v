module mux4_tb_rept;
	reg [1:0]s;
	reg [3:0]d;
	wire out;
	mux4stv m1 (.out(out),.s(s),.d(d));
	initial 
	begin
	d=4'b0000;
	s=2'b00;
	$monitor ("s=%b\t d =%b\t out = %b",s,d,out);
	repeat(15)
	begin
		#20;
		repeat(3)
		begin
			s=s+1;
			#20;
		end
		d=d+1;
	end
	end
endmodule 