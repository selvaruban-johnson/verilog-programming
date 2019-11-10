module mux8st(output out,input [2:0]s,[7:0]d);
 wire w1,w2,w3;
 not n1(w1,s[0]);
 not n2(w2,s[1]);
 not n3(w3,s[2]);
 and a1(d[0],w1,w2,w3);
 and a2(d[1],w1,w2,s[2]);
 and a3(d[2],w1,s[1],w3);
 and a4(d[3],w1,s[1],s[2]);
 and a5(d[4],s[0],w2,w3);
 and a6(d[5],s[0],w2,s[2]);
 and a7(d[6],s[0],s[1],w3);
 and a8(d[7],s[0],s[1],s[2]);
 endmodule 