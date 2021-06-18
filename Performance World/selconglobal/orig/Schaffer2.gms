set j /0*1/;
scalar epsi /0.000001/;
variable x(j), z;

x.lo['0'] = -100 ;
x.up['0'] =  100 ;
x.lo['1'] = -100 ;
x.up['1'] =  100 ;


$macro prod1  ((sqr(x['0'])+sqr(x['1']))**0.25)
$macro prod2  (50*((sqr(x['0'])+sqr(x['1'])))**0.1)
$macro objdef prod1*(sin(sin(prod2))+1.0)


equation obj; obj..
z =e= objdef;

model m /all/;

solve m min z using nlp;
$onDotL
file fx / Schaffer2.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = objdef; loop(j, put x.l(j)); put z.l /);
