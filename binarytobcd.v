module binarytobcd(output [4:0]bc,input [3:0]b);
	assign bc[4]=(b[3]&b[2])|(b[3]&b[2]);
	assign bc[3]=(b[3]&~b[2]&~b[1]);
	assign bc[2]=(~b[3]&b[2])|(b[3]&~b[2]&b[1]);
	assign bc[1]=(~b[3]&b[1])|(b[3]&b[2]&~b[1]);
	assign bc[0]=b[0];
endmodule 