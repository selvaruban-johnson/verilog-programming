module test_buff_inv_xor;
	reg a;
	wire b,c;
	buff_inv_xor x1 (.buff(b),.inv(c),.a(a));
	initial 
	begin
	$monitor ("in = %b\t buffer = %b\t invertor = %b",a,b,c);
	a=1'b0;
	repeat(2)
	begin
		#20;
		a=a+1;
	end
	end
endmodule 