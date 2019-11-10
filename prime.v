module prime(output out,input a,b,c,d);
 mux8st1 m(.out(out),.s({a,b,c}),.d({1'b0,d,d,1'b0,d,d,1'b1,d}));
 endmodule 