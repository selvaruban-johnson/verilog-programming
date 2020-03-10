module fulladder_using_task(input a,b,c,output reg sum,carry);
reg w1,w2,w3,w4;
task adder (input a,b,output s,ca);
begin
	s=a^b;
	ca = a&b;
end
endtask 
	
always @ (a,b,c)
begin
	adder (a,b,w1,w2);
	adder (w1,c,sum,w3);
	adder (w2,w3,carry,w4);
end
endmodule 
