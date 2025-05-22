///////////////////// Fast binary counters and compressors generted by sorting network_ TVLSI_2021/////////////

module compres(
input a,b,c,d,cin,
output sum, carry, cout
);

wire p,q,r,s, s0;
wire a1,b1,c1,d1;
wire u,v,w,x,y,z,m;
wire h1,h2;

or s1 (p,a,b);
and s2 (q,a,b);
or s3 (r,c,d);
and s4 (s,c,d);


or s5 (a1,p,r);
and s6 (c1, p,r);
or s7 (cout,q,s);
and s8(d1,q,s);

or s9 (h1,c1,cin);
and s10 (h2, c1,cin);


not n1 (v,cout);

and and1 (u,a1,v);

or or1 (s0,u,d1);
and and2 (w,s0,h1);
or or2 (carry,w,h2);

not n2 (x,h2);
not n3 (y,h1);

and and3 (z,h1,x);
or or3 (m,y,h2);

Mux2_1 g1 (.z(sum),.a(z),.b(m),.s(s0));


endmodule


module Mux2_1(z,a,b,s);
input a,b,s;
output z;
wire sb,x,y;
not g1(sb,s);
and g2(x,sb,a),g3(y,s,b);
or g4(z,x,y);
endmodule


