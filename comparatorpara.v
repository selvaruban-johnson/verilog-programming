module comparatorpara(lt,gt,eq,a,b);
parameter n=8;
input [n-1:0]a,b;
output lt,gt,eq;
	assign lt = a<b;
	assign gt = a>b;
	assign eq = a==b;
endmodule 