module fullsubtractor(output D,B,input a,b,c);
	assign D=a^b^c;
	assign B=(~a&b)|c&(~(a^b));
endmodule 