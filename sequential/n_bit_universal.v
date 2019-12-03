module n_bit_universal #(parameter n=5)(output reg sout, [n-1:0]q,input clk,rst,load,sin,[2:0]sel,[n-1:0]d);
	reg [n-1:0]r;
	parameter rshift=3'b000;
	parameter lshift=3'b001;
	parameter ror=3'b010;
	parameter rol=3'b011;
	parameter siso=3'b100;
	parameter sipo=3'b101;
	parameter pipo=3'b110;
	parameter piso=3'b111;
	
	always @ (posedge clk,negedge rst,sel)
	begin
		if(!rst)
		begin
			q<=0;
			r<=0;
			sout<=1'b0;
		end
		else
		begin
			case (sel)
			rshift :if(!load)
				q<=d;
				else
				q<={sin,q[n-1:1]};
			lshift : if(!load)
				q<=d;
				else
				q<={q[n-2:0],sin};
			ror :if(!load)
				q<=d;
				else
				q<={q[n-2:0],q[n-1]};
			rol : if(!load)
				q<=d;
				else
				q<={q[0],q[n-1:1]};
			siso :begin
				r<={sin,r[n-1:1]};
				sout<=r[0];
				end
			sipo :	q<={sin,q[n-1:1]} ;
			pipo : q<=d;
			piso : if(!load)
				q<=d;
				else
				begin
				r<={d[n-1],q[n-1:1]};
				sout<=r[0];
				end			
			endcase
		end
	end
endmodule
		