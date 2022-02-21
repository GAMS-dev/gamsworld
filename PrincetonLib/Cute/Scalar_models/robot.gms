*  NLP written by GAMS Convert at 10/06/06 11:47:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10       10        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         36        8       28        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1.. cos(x1) + cos(x2) + cos(x3) + cos(x4) + cos(x5) + cos(x6) + 0.5*cos(x7)
      =E= 4;

e2.. sin(x1) + sin(x2) + sin(x3) + sin(x4) + sin(x5) + sin(x6) + 0.5*sin(x7)
      =E= 4;

e3..    x8 =E= 0;

e4..    x9 =E= 0;

e5..    x10 =E= 0;

e6..    x11 =E= 0;

e7..    x12 =E= 0;

e8..    x13 =E= 0;

e9..    x14 =E= 0;

e10..  - (sqr(x1 - x8) + sqr(x2 - x9) + sqr(x3 - x10) + sqr(x4 - x11) + sqr(x5
       - x12) + sqr(x6 - x13) + sqr(x7 - x14)) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
