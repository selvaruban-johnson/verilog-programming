module comparatornb #(parameter n=16) (output lt,gt,eq,input [n-1:0]a,b);
	assign lt = a<b;
	assign gt = a>b;
	assign eq = a==b;
endmodule 