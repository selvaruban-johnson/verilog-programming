module priority_encoder(output reg v,[2:0]b,input [7:0]x);
	always @ (x)
	begin
	if((x[7:1]=={7'b0})&(x[0]==1'b1))
		b=3'b000;
	else if ((x[7:2]=={6'b0})&(x[1]==1'b1))
		b=3'b001;
	else if ((x[7:3]=={5'b0})&(x[2]==1'b1))
		b=3'b010;
	else if ((x[7:4]=={4'b0})&(x[3]==1'b1))
		b=3'b011;
	else if ((x[7:5]=={3'b0})&(x[4]==1'b1))
		b=3'b100;
	else if ((x[7:6]=={2'b0})&(x[5]==1'b1))
		b=3'b101;
	else if ((x[7]=={1'b0})&(x[6]==1'b1))
		b=3'b110;
	else if (x[7:0]=={8'b0})
		v=1'b1;
	else
		b=3'b111;
	end 
endmodule
	
	
	
	
	
	
	