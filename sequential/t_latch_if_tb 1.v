module t_latch_if_tb;
	reg t,en,rst;
	wire q;
	tlatch_if t1 (.q(q),.t(t),.en(en),.rst(rst));
	initial
 	begin
	$monitor ("rst = %b\t en = %b\t t = %b\t q=%b\t",rst,en,t,q);
	{rst,en,t} = 3'b111;
	repeat (16)
	begin
		{rst,en,t}={rst,en,t}-1;
		#20;
	end
	end
endmodule