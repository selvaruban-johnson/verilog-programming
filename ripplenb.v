module ripplenb #(parameter n=16)
(output cout,[n-1:0]sum,input cin,[n-1:0]a,b);
genvar count ;
wire [n-2:0]c;
generate 
	for(count=0;count <n;count=count+1)
	begin
		if(count==0)
		begin 
			full_adder_stru fa(sum[count],c[count],a[count],b[count],cin);
		end
		else if(count==(n-1))
		begin
			full_adder_stru fa(sum[count],cout,a[count],b[count],c[count-1]);
		end
		else
		begin
			full_adder_stru fa(sum[count],c[count],a[count],b[count],c[count-1]);
		end
	end 
endgenerate
endmodule
