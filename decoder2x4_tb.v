module decoder2x4_tb;
	reg [1:0]i;
	wire [3:0]x;
	decoder2x4 d1 (.x(x),.i(i));
	initial
	begin
	i=2'b00;
	#20 $display("i = %b\t,x = %b",i,x);
	i=2'b01;
	#20 $display("i = %b\t,x = %b",i,x);
	i=2'b10;
	#20 $display("i = %b\t,x = %b",i,x);
	i=2'b11;
	#20 $display("i = %b\t,x = %b",i,x);	
	end
endmodule 