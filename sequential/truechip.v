module truechip;
	reg [3:0]a;
		initial
			$monitor ($time ,"a = %d",a);
		initial
		begin
			a = 4'd1;
			#2 a =4'd3;
			#3 a <= 4'd2;
			a = #5 4'd4;
			a <= #2 4'd5;
			#1 a = #1 4'd6;
			#2 a <= #5 4'd7;
			#4 a = 4'd8;
		end
endmodule 