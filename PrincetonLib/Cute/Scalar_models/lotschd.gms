*  NLP written by GAMS Convert at 10/06/06 11:34:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        8        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         61       55        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    1.8*x1 - x7 =E= 11;

e2..    2.2*x2 - x3 - 2*x8 - x9 =E= 3;

e3..  - x1 - x2 + 5.1*x3 - x4 - x5 - x6 - x7 - x8 - 2*x9 - x10 - x11 - x12
      =E= 20;

e4..  - x1 + 2.2*x4 - x5 - x6 - x7 - 2*x10 - x11 - x12 =E= 17;

e5..  - x1 + 1.8*x5 - x7 - x11 =E= 9;

e6..  - x1 - x2 - x3 - x4 - x5 + 7.4*x6 - x7 - x8 - x9 - x10 - x11 - x12
      =E= 20;

e7..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 =E= 126.1;

e8..  - (sqr(1.502*x1) + sqr(1.126*x2) + sqr(0.815*x3) + sqr(1.268*x4) + sqr(
     1.502*x5) + sqr(0.74*x6)) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
