module mux2x1 (output out,input sel,[1:0]d);
	assign out =d[sel];
endmodule 