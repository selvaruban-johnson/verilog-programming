module jk_latch_if_tb;
	reg  j, k, en, rst;
	wire q;
jk_latch_if m(.q(q), .j(j), .k(k), .en(en), .rst(rst));
	initial 
	begin 
$monitor ("q=%b\t j=%b\t k=%b\t en=%b\t rst=%b\t", q, j, k, en, rst);
	{rst, en, j, k }= 4'b0000;
	repeat (16)
		begin 
			{rst, en, j, k }={rst, en, j, k }+1;
			#20;
		end 
	end
endmodule 