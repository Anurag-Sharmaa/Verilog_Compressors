////Design 3
//ULTRA LOW VOLTAGE, LOW POWER 4-2 COMPRESSOR FOR HIGH SPEED MULTIPLICATIONS

module compres(sum,carry,cout,a,b,c,d,cin);
input a,b,c,d,cin;
output sum, carry, cout;

wire p,q,r,s;
wire w,x,y,z;

xor g1 (p,a,b);
xor g2 (q,c,d);
xor g3 (r,p,q);
Mux2_1 m1 (.z(cout),.a(a),.b(c),.s(p));
xor g4 (sum,r,cin);
Mux2_1 m2 (.z(carry),.a(d),.b(cin),.s(r));


endmodule

module Mux2_1(z,a,b,s);
input a,b,s;
output z;
wire sb,x,y;
not g1(sb,s);
and g2(x,sb,a),g3(y,s,b);
or g4(z,x,y);
endmodule
