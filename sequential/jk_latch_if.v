module jk_latch_if(output reg q, input j, k, en, rst);
	always @ (en,j,k,rst)
	begin 
		if (rst) 
			q<=1'b0;
		else 
			begin 
				if (en)
				begin 
				if (k==1'b1&&j==1'b0)
					q<=1'b0;
				else if (j==1'b1&&k==1'b0)
					q<=1'b1;
				else if ({j,k}==2'b11)
					q<=~q;
				end 
			end 
	end 
endmodule 
	