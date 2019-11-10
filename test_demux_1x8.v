module test_demux_1x8;
	reg in;
	reg [2:0]s;
	wire [7:0]d;
	demux1x8_1x4 d1 (.d(d),.in(in),.s(s));
	initial 
	begin
		$monitor ("in = %b\t s = %b\t d = %b",in,s,d);
		s=3'b000;
		in = 1'b1;
		repeat (8)
		begin
			#20;
			s=s+1;
		end
	end
endmodule 
	