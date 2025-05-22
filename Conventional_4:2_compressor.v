//////////////////////////4:2 compressor designs 

//conventional 4:2 cmprssor

module compres(sum,carry,cout,a,b,c,d,cin);
output sum,carry,cout;
input a,b,c,d,cin;
wire x;
FA_1 u1(.s(sum),.c(carry),.cin(cin),.a(a),.b(x));
FA_1 u2(.s(x),.c(cout),.cin(b),.a(c),.b(d));
endmodule

module FA_1(s,c,a,b,cin);
output s,c;
input a,b,cin;
wire x,y,z;
xor g1(x,a,b),g2(s,x,cin);
and g3(y,a,b),g4(z,x,cin);
or g5(c,z,y);
endmodule
