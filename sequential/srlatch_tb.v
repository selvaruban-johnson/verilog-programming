module srlatch_tb;
	reg s,r,en,rst;
	wire q;
	srlatch s1 (.q(q),.s(s),.r(r),.en(en),.rst(rst));
	initial
	begin
	$monitor ("q=%b\t s=%b\t r=%b\t en = %b\t rst = %b",q,s,r,en,rst);
	{rst,en,s,r} = 4'b0000;
	repeat (15)
	begin
		{rst,en,s,r}={rst,en,s,r}+1;
		#20;
	end
	end
endmodule 