module alunbit_tb #(parameter n=4)(output reg [n:0]out,input [n-1:0]a,b,[2:0]sel);
	parameter add = 2'b000,
		subtract = 2'b001,
		increment= 2'b010,
		decrement= 2'b011,
		andgate = 2'b100,
		orgate = 2'b101,
		xorgate =2'b110,
		compliment = 2'b111;
always @ *
begin
case (sel)
	add: out = a+b;
	subtract :out =a-b;
	increment :out =a+1;
	decrement : out =a-1;
	andgate : out = a&b;
	orgate : out = a|b;
	xorgate : out = a^b;
	compliment : out =~a;
endcase
end
endmodule
