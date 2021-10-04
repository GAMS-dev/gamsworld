$Set N 8
$Set M 7
Set i/i1*i%N%/;
Set Right(i)/i1*i%M%/;
Set Left(i)/i2*i%N%/;

Parameter a[i] / i1   0 , i2  50 , i3  50 , i4  75,
                 i5  75 , i6  75 , i7 100 , i8 100 /;
Parameter t[i] / i1    0 , i2   25 , i3   50 , i4  100,
                 i5  150 , i6  200 , i7  290 , i8  380 /;
Parameter b;  b = 32 ;

Positive Variable x(i) ;
         Variable r(i) , q(i) , s(i) , obj  ;
Equation c1(i) , c2(i) , Def_obj ;

c1(i)$left(i).. s[i] =e= (t[i]-t[i-1])*(a[i]*sin(x[i-1]) - b) + s[i-1];
c2(i)$left(i).. q[i] =e= 0.5*sqr(t[i]-t[i-1])*(a[i]*sin(x[i-1]) - b) +
                             (t[i]-t[i- 1])*s[i-1] + q[i-1];

Def_obj..  obj =e= -sqr( sum {i$Right(i), (a[i+1]*(t[i+1]-t[i])*cos(x[i])) });

 q.fx['i8'] = 1.0e+5 ;
 s.fx['i8'] = 1.0e+3 ;
 q.fx['i1'] = 0      ;
 s.fx['i1'] = 0      ;
 x.up(i) = 1.58 ;

x.l['i1'] = 0.5 ;
x.l['i2'] = 0.5 ;
x.l['i3'] = 0.5 ;
x.l['i4'] = 0.5 ;
x.l['i5'] = 0.5 ;
x.l['i6'] = 0.5 ;
x.l['i7'] = 0.5 ;

* "optimal solution as starting point ";
*x.l['i1'] = 0.5424603;
*x.l['i2'] = 0.5290159;
*x.l['i3'] = 0.5084506;
*x.l['i4'] = 0.4802693;
*x.l['i5'] = 0.4512352;
*x.l['i6'] = 0.4091878;
*x.l['i7'] = 0.3527847;

Model hs099 /all/ ;
Solve hs099 using nlp minimazing obj ;

obj.l = obj.l + 0.831079892e+9;
display obj.l;
