module n_bit_universal #(parameter n=5)(output reg sout, [n-1:0]q,input clk,rst,load,sin,[2:0]sel,[n-1:0]d);
	reg [n-1:0]r;
	always @ (posedge clk,negedge rst)
	begin
		if(!rst)
		begin
			q<=0;
			r<=0;
		end
		else
		begin
			case (sel)
			3'b000 :if(!load)
				q<=d;
				else
				q<={sin,q[n-1:1]};
			3'b001 : if(!load)
				q<=d;
				else
				q<={q[n-2:0],sin};
			3'b010 :if(!load)
				q<=d;
				else
				q<={q[n-2:0],q[n-1]};
			3'b011 : if(!load)
				q<=d;
				else
				q<={q[0],q[n-1:1]};
			3'b100 :begin
				r<={sin,r[n-1:1]};
				sout<=r[0];
				end
			//3'b101 :
			//3'b110 :
			//3'b111 :
			
			endcase
		end
	end
endmodule
		