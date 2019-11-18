module jklatch_case (output reg q,input j,k,en,rst);
	always @ (rst,en,j,k)
	begin
		if(rst)
			q<=1'b0;
		else 
		begin 
			if(en)
			begin	
			case ({j,k})
			2'b01:q<=1'b0;
			2'b10:q<=1'b1;
			2'b11:q<=~q;
			endcase
			end
		end
	end
endmodule 