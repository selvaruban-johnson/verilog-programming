module dlatch_bm_tb;
	reg en, rst, d;
	wire q;
dlatch_bm bm(.q(q), .en(en), .rst(rst),.d(d));
	
	initial 
	begin 
$monitor ("rst=%b\t en=%b\t d=%b\t q=%b", rst, en, d,q);
	{rst,en, d}=2'b00;
	repeat (8)
		begin 
			{rst,en, d}={rst, en, d}+1;
			#20;
		end 
	end 
endmodule 


