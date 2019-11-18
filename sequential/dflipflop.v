module dflipflop (output q,input d,clk);
	wire m;
	dlatch master (.q(m),.en(~clk),.d(d));
	dlatch slave (.q(q),.en(clk),.d(m));
endmodule 