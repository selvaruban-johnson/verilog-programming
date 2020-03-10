module largest_amg_5 (input [2:0]a,b,c,d,e,output [2:0]largest_no);
wire [2:0]w1,w2,w3;
function [2:0]largest (input [2:0]a,b);
	largest = (a>b)?a:b;
endfunction
	assign w1 = largest(a,b);
	assign w2 = largest (w1,c);
	assign w3 = largest (w2,d);
	assign largest_no = largest (w3,e);
endmodule 

