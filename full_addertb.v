module full_addertb;
	reg a,b, cin;
	wire s, c;
	full_adder fa(.sum(s), .carry(c), .c(cin), .a(a), .b(b));
	initial 
	begin 
		{a, b, cin} = 3'b000;
		#20;
		$display("a=%b b=%b cin=%b\t sum=%b carry =%b", a, b, cin, s, c);	
		{a, b, cin} = 3'b001;
		#20;
		$display("a=%b b=%b cin=%b\t sum=%b carry =%b", a, b, cin, s, c);
		{a, b, cin} = 3'b010;
		#20;
		$display("a=%b b=%b cin=%b\t sum=%b carry =%b", a, b, cin, s, c);
		{a, b, cin} = 3'b011;
		#20;
		$display("a=%b b=%b cin=%b\t sum=%b carry =%b", a, b, cin, s, c);
		{a, b, cin} = 3'b100;
		#20;
		$display("a=%b b=%b cin=%b\t sum=%b carry =%b", a, b, cin, s, c);
		{a, b, cin} = 3'b101;
		#20;
		$display("a=%b b=%b cin=%b\t sum=%b carry =%b", a, b, cin, s, c);
		{a, b, cin} = 3'b110;
		#20;
		$display("a=%b b=%b cin=%b\t sum=%b carry =%b", a, b, cin, s, c);
		{a, b, cin} = 3'b111;
		#20;
		$display("a=%b b=%b cin=%b\t sum=%b carry =%b", a, b, cin, s, c);
	end
endmodule 