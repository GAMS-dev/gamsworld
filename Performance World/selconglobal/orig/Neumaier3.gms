Set j /0*9/;

variable x(j), z;

x.lo[j] = -10*10 ; x.up[j] =  10*10 ;

$macro defobj Sum{j,power(x[j]-1.0,2)} - Sum{j$(ord(j) gt 1 ),x[j]*x[j-1]}


Equation Obj ;
Obj..
   z =e= defobj  ;

model m1 /Obj/;

solve m1 min z using nlp;

$onDotL
file fx / Neumaier3.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt;
 for (cnt=1 to 100, x.l(j) = uniform(x.lo(j) , x.up(j) );
 z.l = defobj ;
 loop(j, put x.l(j)); put z.l /);
