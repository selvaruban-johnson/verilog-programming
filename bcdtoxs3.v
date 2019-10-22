module bcdtoxs3(output [3:0]x,input [3:0]b);
	assign x[3]=b[3]|(b[2]&b[1])|(b[2]&b[0]);
	assign x[2]=(b[2]&b[0])|(b[2]&b[1])|(b[2]&~b[1]&~b[0]);
	assign x[1]=(~b[1]&~b[0])|(b[1]&b[0]);
	assign x[0]=~b[0];
endmodule 