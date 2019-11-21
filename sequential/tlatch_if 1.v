module tlatch_if (output reg q ,input t,en,rst);
	always @ (rst,en,t)
	begin
		if (rst)
		q<=1'b0;
		else
		begin
			if (en)
				if(t)
				q<=~q;
		end
	end
endmodule 