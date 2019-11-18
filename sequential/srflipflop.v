module srflipflop(output q1, q2, input s, r, clk);
srlatch master (.q1(m1), .q2(m2), .s(s), .r(r), .en(clk));
srlatch slave (.q1(q1), .q2(q2), .s(m1),  .r(m2), .en(~clk));
endmodule 