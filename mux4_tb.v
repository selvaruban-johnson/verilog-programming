module mux4_tb;
	reg [1:0]s;
	reg [3:0]d;
	wire out;
	integer count,itt;
	mux4stv m1 (.out(out),.s(s),.d(d));
	initial 
	begin
	$monitor ("s=%b\t d =%b\t out = %b",s,d,out);
	for(itt=0;itt<16;itt=itt+1)
	begin
	d=itt;
	#20;
	for (count=0;count<4;count=count+1)
	begin
		s=count;
		#20;
	end
	end
	end
endmodule