module shiftoperstors ;
reg signed [3:0]a=4'b1010;
	initial 
	begin 
		$display ("a<<1=%b",a<<1);
		$display ("a>>1=%b",a>>1);
		$display ("a<<<1=%b",a<<<1);
		$display ("a>>>1=%b",a>>>1);
	end 
endmodule 
