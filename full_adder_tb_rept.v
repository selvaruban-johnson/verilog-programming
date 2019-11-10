module full_adder_tb_rept;
	reg [2:0]in;
	wire s,c;
	integer count;
	full_adder fa1 (.sum(s),.carry(c),.a(in[2]),.b(in[1]),.c(in[0]));
	initial 
	begin
	$monitor ("input = %b\t carry = %b\t sum = %b",in,c,s);
	count = 0;
	repeat(7)
	begin 
		in=count;
		#20;
		count = count + 1;
	end
	end
endmodule
	