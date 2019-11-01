module half_adder_if(output reg sum,carry,input a,b);
	always @ (a,b)
	begin 
		if(a==1'b0&b==1'b0)
		begin 
		sum = 1'b0;
		carry = 1'b0;
		end 
		else if(a==1'b0&b==1'b1)
		begin 
		sum = 1'b1;
		carry = 1'b0;
		end 
		else if(a==1'b1&b==1'b0)
		begin 
		sum = 1'b1;
		carry = 1'b0;
		end ai
		else if(a==1'b1&b==1'b1)
		begin 
		sum = 1'b0;
		carry = 1'b1;
		end 
	end 
endmodule 