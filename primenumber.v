module primenumber(output p,input[3:0]b);
	assign p=(~b[3]&~b[2]&b[1])|(~b[3]&b[1]&b[0])|(b[2]&~b[1]&b[0])|(b[3]&~b[2]&b[1]&b[0]);
endmodule 