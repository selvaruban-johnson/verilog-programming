module encoder4x2_tb;
	reg [3:0]d;
	wire [1:0]x;
	encoder4x2 e (.x(x),.d(d));
	initial
	begin
	d=4'b0001;
	#20 $display ("d = %b\t x = %b",d,x);
	d=4'b0010;
	#20 $display ("d = %b\t x = %b",d,x);
	d=4'b0100;
	#20 $display ("d = %b\t x = %b",d,x);
	d=4'b1000;
	#20 $display ("d = %b\t x = %b",d,x);
	end
endmodule
