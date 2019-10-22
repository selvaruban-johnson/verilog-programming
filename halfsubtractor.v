module halfsubtractor(output D,B,input a,b);
	assign D=a^b;
	assign B=~a&b;
endmodule quit 