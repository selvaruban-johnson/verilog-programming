module full_adder_dm(output reg sum,carry,input [2:0]i);
	always @ (i)
	begin 
	if(i==3'b000)
	begin 
	sum = 1'b0;
	carry = 1'b0;
	end 
	else if(i==3'b001)
	begin 
	sum = 1'b1;
	carry = 1'b0;
	end 
	if(i==3'b010)
	begin 
	sum = 1'b1;
	carry = 1'b0;
	end 
	if(i==3'b011)
	begin 
	sum = 1'b0;
	carry = 1'b1;
	end 
	if(i==3'b100)
	begin 
	sum = 1'b1;
	carry = 1'b0;
	end 
	if(i==3'b101)
	begin 
	sum = 1'b0;
	carry = 1'b1;
	end 
	if(i==3'b110)
	begin 
	sum = 1'b0;
	carry = 1'b1;
	end 
	if(i==3'b111)
	begin 
	sum = 1'b1;
	carry = 1'b1;
	end 
	end 
endmodule 
