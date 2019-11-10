module equalityoperstors ;
reg a=1'b1;
	initial 
	begin 
		$display ("a==1'b1=%b",a==1'b1);
		$display ("a==1'b0=%b",a==1'b0);
		$display ("a==1'bx=%b",a==1'bx);
		$display ("a==1'bz=%b",a==1'bz);
		$display ("a===1'b1=%b",a===1'b1);
		$display ("a===1'b0=%b",a===1'b0);
		$display ("a===1'bx=%b",a===1'bx);
		$display ("a===1'bz=%b",a===1'bz);
	end 
endmodule 