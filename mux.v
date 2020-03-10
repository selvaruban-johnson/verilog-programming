module mux (input a,b,sel,output out);
	function mux (input s,a,b);
		case(s)
			1'b0:mux=a;
			1'b1 : mux=b;
		endcase
	endfunction
	assign out = mux(sel,a,b);
endmodule 