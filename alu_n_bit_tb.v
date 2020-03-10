module alu_n_bit_tb;
	reg [7:0]a,b;
	reg [2:0]sel;
	wire [8:0]out;
	integer count;
	alu_n_bit a1 (.out(out),.a(a),.b(b),.sel(sel));
	initial
	begin
		{a,b,sel}=0;
		$monitor ("a = %b\tb = %b\t sel = %b\t out =%b",a,b,sel,out);
		repeat(256)
		begin
			repeat(256)
			begin
				repeat(8)
				begin
					#10 sel = sel+1'b1;
				end
				#10 b= b+1'b1;
			end
			#10 a = a+1'b1;
			#5;
		end
	end
endmodule
			
		