///////////Design 5  ///
////Design of a Novel Radix-4 Booth Multiplier

module compres(sum,carry,cout,a,b,c,d,cin);
input a,b,c,d,cin;
output sum, carry, cout;

wire p,q,r,s,t,u,v;

xor g1 (p,a,cin);
xor g2 (q,b,c,d);
xor g3 (sum,p,q);

Mux2_1 m1 (.z(carry),.a(a),.b(q),.s(p));

nand g4 (r,b,c);
nand g5 (s,b,d);
nand g6 (t,c,d);

nand g7 (cout, r,s,t);


endmodule
module Mux2_1(z,a,b,s);
input a,b,s;
output z;
wire sb,x,y;
not g1(sb,s);
and g2(x,sb,a),g3(y,s,b);
or g4(z,x,y);
endmodule
