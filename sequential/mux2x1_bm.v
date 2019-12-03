module mux2x1_bm (output reg out,input sel,[1:0]d);
	always @ (sel)
	begin
		if(sel)
			out<=d[1];
		else
			out<=d[0];
	end
endmodule 