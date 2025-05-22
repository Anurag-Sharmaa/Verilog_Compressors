//////design 2 Dual

module compres(sum,carry,cout,a,b,c,d,cin);
input a,b,c,d,cin;
output sum, carry, cout;


wire p,q,m,r,s;
wire w,x,y,z;


xnor g1 (p, a,b);
xnor g2 (q,c,d);
xor g3 (r,p,q);
xor g4 (sum, cin, r);

nand g5 (s,cin,r);
not g6 (w,r);
nand g7 (x,w,d);
nand g8 (carry,x,s);
nand g9 (y,a,p);
not g11 (m,p);
nand g10 (z,m,c);
nand g12 (cout,z,y);
 endmodule



