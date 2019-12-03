module test8;
	reg [3:0]a;
	initial
	begin
		a= 4'd01;
		$display ($time ,"d1 : a=%d",a);
		$write ($time ,"w1 : a=%d",a);
		$strobe ($time , "s1 : a=%d",a);
		$monitor ($stime ,"m1 : a=%d",a);
		#2 a <= 4'd05;
		$write ($time ,"w2 : a=%d",a);
		$monitor ($stime ,"m2 : a=%d",a);
		//$strobe ($time , "s2 : a=%d",a);
		$display ($time ,"d2 : a=%d",a);
	end
endmodule 