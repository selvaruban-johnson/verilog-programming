module ha_named(output sum,carry,input a,b);
	xor x1 (sum,a,b);
	and a1 (carrry,a,b);
endmodule 