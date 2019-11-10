module alu_n_bit_tb;
	reg [7:0]a,b;
	reg [2:0]sel;
	wire [8:0]out;
	integer count;
	alu_n_bit a1 (.out(out),.a(a),.b(b),.sel(sel));
	initial
	begin
		a=8'b00000101;
		b=8'b00001111;
		$monitor ("a = %b\tb = %b\t sel = %b\t out =%b",a,b,sel,out);
		for (count=0;count<8;count=count+1)
		begin 
			sel= count;
			#20;
		end
	end
endmodule
			
		