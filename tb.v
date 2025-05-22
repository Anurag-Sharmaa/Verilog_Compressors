
module tb();
reg a,b,c,d,cin;
wire S,C,Co;

compres uut (.sum(S),.carry(C),.cout(Co),.a(a),.b(b),.c(c),.d(d),.cin(cin));

initial begin
a = 0;
b = 0;
c = 0;
d = 0;
cin = 0;

#5
a = 1;
b = 0;
c = 0;
d = 0;
cin = 0;

#5
a = 1;
b = 1;
c = 0;
d = 0;
cin =0;

#5
a = 1;
b = 1;
c = 1;
d = 0;
cin = 0;

#5
a = 1;
b = 1;
c = 1;
d = 1;
cin = 0;

#5
a = 1;
b = 1;
c = 1;
d = 1;
cin = 1;

end
endmodule
