module mux8st1(output out,input [2:0]s,[7:0]d);
 assign out=~s[0]&~s[1]&~s[2]&d[0]|~s[0]&~s[1]&s[2]&d[1]|~s[0]&s[1]&~s[2]&d[2]|~s[0]&s[1]&s[2]&d[3]|s[0]&~s[1]&~s[2]&d[4]|s[0]&~s[1]&s[2]&d[5]|s[0]&s[1]&~s[2]&d[6]|s[0]&s[1]&s[2]&d[7];

 endmodule 