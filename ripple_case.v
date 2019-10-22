module ripple_case #(parameter n=8)(output cout,[n-1:0]sum,input cin,[n-1:0]a,b);
	genvar count;
	wire [n-2:0]c;
	generate 
		for(count=0;count<n;count=count+1)
		begin 
			case (count)
			1'b0 : full_adder_stru fa(sum[count],c[count],a[count],b[count],cin);
			n-1 : full_adder_stru fa(sum[count],cout,a[count],b[count],c[count-1]);
			default : full_adder_stru fa(sum[count],c[count],a[count],b[count],c[count-1]);
			endcase
		end
	endgenerate
endmodule
