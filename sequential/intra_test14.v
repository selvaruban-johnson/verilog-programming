module intra_test14;
	reg [3:0]a,b,c,d,e,f;
	initial 
		$monitor ($time ,"a = %d b = %d c = %d d = %d e = %d f = %d",a,b,c,d,e,f);
	initial
	begin
		a = #2 4'd01;//1
		b = #3 4'd02;//4
		c = #1 4'd03;//6
	end
	initial
	begin
		 d = #1 4'd04;//3
		 e = #3 4'd05;//4
		 f = #4 4'd06;//6
	end
endmodule 