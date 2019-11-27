module mux2x1_bm (output reg out,input sel,[1:0]d);
	always @ (sel,d)
	begin
		if(sel)
			out<=d[0];
		else
			out<=d[1];
	end
endmodule 