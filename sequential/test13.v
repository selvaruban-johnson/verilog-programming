module test13;
	reg [3:0]a,b,c,d,e,f;
	initial 
		$monitor ($time ,"a = %d b = %d c = %d d = %d e = %d f = %d",a,b,c,d,e,f);
	initial
	begin
		#2 a <= 4'd01;//1
		#3 b <= 4'd02;//4
		#1 c <= 4'd03;//6
	end
	initial
	begin
		#1 d<= 4'd04;//3
		#3 e <= 4'd05;//4
		#4 f <= 4'd06;//6
	end
endmodule 