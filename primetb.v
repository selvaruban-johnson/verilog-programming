module primetb;
   reg a,b,c;
   reg [7:0]d;
   wire out;
    integer count;
   mux8st1 m(.out(out),.s({a,b,c}),.d(d));
   initial 
   begin
  $monitor ("{a,b,c,d}=%b\t {out}=%b\t",{a,b,c,d},{out});
   a=1'b0;
   b=1'b0;
   c=1'b0;
   d=8'b00001111;
  for(count=0;count<8;count=count+1)
   begin
   {a,b,c,d}=count;
      #20;
            end
      end
   endmodule 