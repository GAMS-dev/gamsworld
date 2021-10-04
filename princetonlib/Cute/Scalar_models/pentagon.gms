*  NLP written by GAMS Convert at 10/06/06 11:47:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16        1        0       15        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         37       31        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..    0.309016994374947*x1 + 0.951056516295154*x4 =L= 1;

e2..  - 0.809016994374947*x1 + 0.587785252292473*x4 =L= 1;

e3..  - 0.809016994374948*x1 - 0.587785252292473*x4 =L= 1;

e4..    0.309016994374947*x1 - 0.951056516295154*x4 =L= 1;

e5..    x1 - 2.44921270764475E-16*x4 =L= 1;

e6..    0.309016994374947*x2 + 0.951056516295154*x5 =L= 1;

e7..  - 0.809016994374947*x2 + 0.587785252292473*x5 =L= 1;

e8..  - 0.809016994374948*x2 - 0.587785252292473*x5 =L= 1;

e9..    0.309016994374947*x2 - 0.951056516295154*x5 =L= 1;

e10..    x2 - 2.44921270764475E-16*x5 =L= 1;

e11..    0.309016994374947*x3 + 0.951056516295154*x6 =L= 1;

e12..  - 0.809016994374947*x3 + 0.587785252292473*x6 =L= 1;

e13..  - 0.809016994374948*x3 - 0.587785252292473*x6 =L= 1;

e14..    0.309016994374947*x3 - 0.951056516295154*x6 =L= 1;

e15..    x3 - 2.44921270764475E-16*x6 =L= 1;

e16..  - (1/POWER(sqr(x1 - x2) + sqr(x4 - x5),8) + 1/POWER(sqr(x1 - x3) + sqr(
      x4 - x6),8) + 1/POWER(sqr(x3 - x2) + sqr(x6 - x5),8)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1; 
x3.l = 1; 
x5.l = -1; 
x6.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
