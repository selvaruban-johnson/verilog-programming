module dshift (output reg a, input clk, rst, e);
	reg b, c, d;
always @ (posedge clk, negedge rst)
	begin 
		if(!rst)
		begin 
			a<=1'b0;
			b<=1'b0;
			c<=1'b0;
			d<=1'b0;
		end
		else
		begin
			/*d<=e;
			c<=d;
			b<=c;
			a<=b;*/
			
			/*a<=b;
			b<=c;
			c<=d;
			d<=c;*/

			a=b;
			b=c;
			c=d;
			d=c;
		end
	end
endmodule 
			
