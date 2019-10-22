module ripple_n_for #(parameter n=8)(output cout,[n-1:0]sum,input cin,[n-1:0]a,b);
	genvar count;
	wire [n:0]c;
	assign c[0]=cin;
	generate 
		for(count=0;count<n;count=count+1)
		begin 
			full_adder_stru fa (sum[count],c[count+1],a[count],b[count],c[count]);
		end
	endgenerate
	assign cout=c[n];
endmodule
