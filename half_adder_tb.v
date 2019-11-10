module half_adder_tb;
	reg a,b;
	wire s,c;
	half_adder ha (.a(a),.b(b),.sum(s),.carry(c));
	initial 
	begin 
		a=1'b0;
		b=1'b0;
		#20 $display("a=%b\tb=%b\tsum=%b\tcarry=%b",a,b,s,c);
		b=1'b1;
		#20 $display("a=%b\tb=%b\tsum=%b\tcarry=%b",a,b,s,c);
		a=1'b1;
		b=1'b0;
		#20 $display("a=%b\tb=%b\tsum=%b\tcarry=%b",a,b,s,c);
		a=1'b1;
		b=1'b1;
		#20 $display("a=%b\tb=%b\tsum=%b\tcarry=%b",a,b,s,c);
	end
endmodule 