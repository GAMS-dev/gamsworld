*  NLP written by GAMS Convert at 11/09/04 15:23:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          3        1        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1;


e1..  - (sqrt(sqr(x1) + sqr((-0.171747132) + x2)) + sqrt(sqr(x1) + sqr((-
     0.843266708) + x2)) + sqrt(sqr(x1) + sqr((-0.550375356) + x2)) + sqrt(sqr(
     x1) + sqr((-0.301137904) + x2)) + sqrt(sqr(x1) + sqr((-0.292212117) + x2))
      + sqrt(sqr(x1) + sqr((-0.224052867) + x2)) + sqrt(sqr(x1) + sqr((-
     0.349830504) + x2)) + sqrt(sqr(x1) + sqr((-0.856270347) + x2)) + sqrt(sqr(
     x1) + sqr((-0.067113723) + x2)) + sqrt(sqr(x1) + sqr((-0.500210669) + x2))
      + sqrt(sqr(x1) + sqr((-0.998117627) + x2)) + sqrt(sqr(x1) + sqr((-
     0.578733378) + x2)) + sqrt(sqr(x1) + sqr((-0.991133039) + x2)) + sqrt(sqr(
     x1) + sqr((-0.762250467) + x2)) + sqrt(sqr(x1) + sqr((-0.130692483) + x2))
      + sqrt(sqr(x1) + sqr((-0.639718759) + x2)) + sqrt(sqr(x1) + sqr((-
     0.159517864) + x2)) + sqrt(sqr(x1) + sqr((-0.250080533) + x2)) + sqrt(sqr(
     x1) + sqr((-0.668928609) + x2)) + x1) + objvar =E= 0;

* set non default bounds

x1.lo = 1E-8; 

* set non default levels

x1.l = 1; 
x2.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
