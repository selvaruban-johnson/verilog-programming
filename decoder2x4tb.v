module decoder2x4tb;
	reg [1:0]in;
	wire [3:0]d;
	decoder2x4 d1 (.x(d), .b(in[1]),.c(in[0]));
	initial 
	begin 
	in=2'b00;
	#20 $display ("in=%b d=%b\t", in, d);
	in=2'b01;
	#20 $display ("in=%b d=%b\t", in, d);
	in=2'b10;
	#20 $display ("in=%b d=%b\t", in, d);
	in=2'b11;
	#20 $display ("in=%b d=%b\t", in, d);
	end 
endmodule 