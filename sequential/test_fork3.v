module test_fork3;
	reg [3:0]a,b,c,d,e,f;
	initial 
		$monitor ($time ,"a = %d b = %d c = %d d = %d e = %d f = %d",a,b,c,d,e,f);
	initial
	fork
		 a <= #2 4'd01;
		 b <= #3 4'd02;
		 c <= #1 4'd03;
	join
	initial
	fork
		 d<= #1 4'd04;
		 e <= #3 4'd05;
		 f <= #4 4'd06;
	join
endmodule 