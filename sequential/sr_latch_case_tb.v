module sr_latch_case_tb;
	reg s,r,en,rst;
	wire q;
	srlatch_case s1 (.s(s),.r(r),.en(en),.rst(rst),.q(q));
	initial 
	begin
		$monitor ("rst = %b\t en = %b\t s = %b\t r = %b\t q = %b\t",rst,en,s,r,q);
		{rst,en,s,r}=4'b1111;
		repeat (16)
		begin
			{rst,en,s,r} = {rst,en,s,r}-1;
			#20;
		end
	end
endmodule