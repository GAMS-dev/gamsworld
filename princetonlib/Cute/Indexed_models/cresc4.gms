* Cute AMPL model  (translation to GAMS)
*
* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   classification OOR2-MY-6-200

$Set N 4
Set i /i1*i%N%/;

parameter np; np = 100;
parameter pi_2; pi_2 = 2*arctan(1);

parameter x[i] /i1   1.000,  i2   0.000,  i3   0.000,  i4   0.500 /;

parameter y[i] /i1   0.000,  i2   1.000,  i3  -1.000,  i4   0.000 /;

Variable  v1,w1,d,a,t,r,f,s1,s2;

Equation Eq_1[i], Eq_2[i], Def_obj,add_1,add_2 ;
Eq_1[i].. sqr(v1+a*d*cos(t)-x[i])+sqr(w1+a*d*sin(t)-y[i])-sqr(d+r)  =l= 0.0;
Eq_2[i].. sqr(v1-x[i])           +sqr(w1-y[i])           -sqr(a*d+r)=g= 0.0;
add_1.. s1=e= -(sqr(a*d)-sqr(a*d+r)+sqr(d+r))/(2*(d+r  )*a*d);
add_2.. s2=e=  (sqr(a*d)+sqr(a*d+r)-sqr(d+r))/(2*(a*d+r)*a*d);

Def_obj..
     f=e= sqr(  d+r)* {pi_2-arctan(s1/(sqrt(1-s1*s1)) )}
         -sqr(a*d+r)* {pi_2-arctan(s2/(sqrt(1-s2*s2)) )}
       +(d+r)*a*d*sin({pi_2-arctan(s1/(sqrt(1-s1*s1)) )} );


s1.up =   0.99;
s2.up =   0.99;
s1.lo =  -0.99;
s2.lo =  -0.99;

d.lo  =   1e-8;
a.lo  =   1.0 ;
t.lo  =   0.0 ;    t.up  =   6.2831852;
r.lo  =   0.39;

v1.l  =   -40.0    ;
w1.l  =     5.0    ;
d.l   =     1.0    ;
a.l   =     2.0    ;
t.l   =     1.5    ;
r.l   =     0.75   ;

*a.fx = 5.08035;
*d.fx = 0.466182;
*r.fx = 0.39;
*t.fx = 0.367052;


Model cresc100 /all/;

Solve cresc100 using nlp minimize f;
Solve cresc100 using nlp minimize f;
Solve cresc100 using nlp minimize f;

display v1.l,w1.l ;
display d.l,a.l,t.l,r.l;
display f.l;
