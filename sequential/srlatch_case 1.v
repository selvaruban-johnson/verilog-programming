module srlatch_case (output reg q,input s,r,en,rst);
	always @ (rst,en,s,r)
	begin
		if(rst)
			q<=1'b0;
		else 
		begin 
			if(en)
			begin	
			case ({s,r})
			2'b01:q<=1'b0;
			2'b10:q<=1'b1;
			2'b11:q<=1'bx;
			endcase
			end
		end
	end
endmodule 