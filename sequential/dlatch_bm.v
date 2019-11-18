module dlatch_bm (output reg q,input d,en,rst);
	always @ *
	begin
		if(rst)
			q<=1'b0;
		else
		begin 
			if(en)
				q<=d;
		end
	end
endmodule 