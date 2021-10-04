*  NLP written by GAMS Convert at 11/09/04 15:23:55
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         20        1        0       19        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         58        1       57        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20;


e1.. exp(sqr((-0.171747132) + x20) - x1) =L= 1;

e2.. exp(sqr((-0.843266708) + x20) - x2) =L= 1;

e3.. exp(sqr((-0.550375356) + x20) - x3) =L= 1;

e4.. exp(sqr((-0.301137904) + x20) - x4) =L= 1;

e5.. exp(sqr((-0.292212117) + x20) - x5) =L= 1;

e6.. exp(sqr((-0.224052867) + x20) - x6) =L= 1;

e7.. exp(sqr((-0.349830504) + x20) - x7) =L= 1;

e8.. exp(sqr((-0.856270347) + x20) - x8) =L= 1;

e9.. exp(sqr((-0.067113723) + x20) - x9) =L= 1;

e10.. exp(sqr((-0.500210669) + x20) - x10) =L= 1;

e11.. exp(sqr((-0.998117627) + x20) - x11) =L= 1;

e12.. exp(sqr((-0.578733378) + x20) - x12) =L= 1;

e13.. exp(sqr((-0.991133039) + x20) - x13) =L= 1;

e14.. exp(sqr((-0.762250467) + x20) - x14) =L= 1;

e15.. exp(sqr((-0.130692483) + x20) - x15) =L= 1;

e16.. exp(sqr((-0.639718759) + x20) - x16) =L= 1;

e17.. exp(sqr((-0.159517864) + x20) - x17) =L= 1;

e18.. exp(sqr((-0.250080533) + x20) - x18) =L= 1;

e19.. exp(sqr((-0.668928609) + x20) - x19) =L= 1;

e20..  - (sqrt(1e-10 + x1) + sqrt(1e-10 + x2) + sqrt(1e-10 + x3) + sqrt(1e-10
       + x4) + sqrt(1e-10 + x5) + sqrt(1e-10 + x6) + sqrt(1e-10 + x7) + sqrt(
      1e-10 + x8) + sqrt(1e-10 + x9) + sqrt(1e-10 + x10) + sqrt(1e-10 + x11) + 
      sqrt(1e-10 + x12) + sqrt(1e-10 + x13) + sqrt(1e-10 + x14) + sqrt(1e-10 + 
      x15) + sqrt(1e-10 + x16) + sqrt(1e-10 + x17) + sqrt(1e-10 + x18) + sqrt(
      1e-10 + x19)) + objvar =E= 0;

* set non default bounds


* set non default levels

x20.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
