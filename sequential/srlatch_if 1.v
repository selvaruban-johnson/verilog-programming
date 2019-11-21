module srlatch_if(output reg q,input s,r,en,rst);
	always @ *
	begin
		if(rst)
			q<=1'b0;
		else 
		begin
			if(en)
			begin 
				if(s)
				q<=1'b1;
				else
				q<=1'b0;
			end
			else if({s,r}==2'b11)
				q<=1'bx;
		end
	end
endmodule 