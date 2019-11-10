module tb ;
	reg cin;
	reg [3:0]a,b;
	wire cout;
	wire [3:0]s;
	four_b_rca rc (.cout(cout),.s(s),.cin(cin),.a(a),.b(b));
	initial
	begin
	$monitor ("a=%b\t b=%b\t cin=%b\t s=%b\t cout=%b",a,b,cin,s,cout);
	a= 4'b0000;
	b= 4'b0000;
	cin = 1'b0;
end
initial begin
repeat(2)
	repeat (15)
	begin 
		repeat(16)
		begin
			#20;
			b=b+1;
		end
		a=a+1;#20;
	end
	cin=cin+1;
end
endmodule 