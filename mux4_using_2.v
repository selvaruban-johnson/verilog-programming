module mux4_using_2 (input [1:0]sel,input [3:0]in,output out);
wire q1,q2;
function mux2 (input sel,a,b);
	case(sel)
		1'b0 : mux2=a;
		1'b1 : mux2=b;
	endcase
endfunction
	assign q1 = mux2 (sel[0],in[0],in[1]);
	assign q2 = mux2 (sel[0],in[2],in[3]);
	assign out = mux2 (sel[1],q1,q2);
endmodule