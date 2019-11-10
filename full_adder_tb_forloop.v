module full_adder_tb_forloop;
	reg [2:0]in;
	wire s,c;
	integer count;
	full_adder fa1 (.sum(s),.carry(c),.a(in[2]),.b(in[1]),.c(in[0]));
	initial 
	begin
	$monitor ("input = %b\t carry = %b\t sum = %b",in,c,s);
	for(count=0;count<8;count=count+1)
	begin
		in=count;
		#20;
	end
	end
endmodule
	