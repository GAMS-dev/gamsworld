set j /0*3/; alias (j,k);

variable x(j), z;

x.lo['0'] = 0;
x.up['0'] = 1;
x.lo['1'] = 0;
x.up['1'] = 2;
x.lo['2'] = 0;
x.up['2'] = 3;
x.lo['3'] = 0;
x.up['3'] = 4;

parameter b(k) / 0 8.0, 1 18.0, 2 44.0, 3 114.0/;

$macro objdef sum(k, sqr(b(k)-sum(j, power(x(j),ord(k)))));

equation obj; obj..

z =e= objdef;

model m /all/;

solve m min z using nlp;

$onDotL
file fx / Neumaier2.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef;

loop(j, put x.l(j)); put z.l /);
