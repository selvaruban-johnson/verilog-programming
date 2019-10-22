module comparator8b(output lt, gt, eq, input [7:0]a, b);
	assign lt =a<b;
	assign eq = a==b;
	assign gt = a>b;
endmodule
