module reductionoperstors ;
reg signed [3:0]a=4'b1010;
	initial 
	begin 
		$display ("&a=%b",&a);
		$display ("~&a=%b",~&a);
		$display ("|a=%b",|a);
		$display ("~|a=%b",~|a);
		$display ("^a=%b",^a);
		$display ("~^a=%b",~^a);
	end 
endmodule 