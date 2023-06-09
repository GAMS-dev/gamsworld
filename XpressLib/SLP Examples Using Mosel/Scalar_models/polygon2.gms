*  NLP written by GAMS Convert at 04/01/08 01:25:58
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        3        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27        7       20        0
*
*  Solve m using NLP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Negative Variables  x8;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - x5 + x6 =G= 0.01;

e2..  - x6 + x7 =G= 0.01;

e3..  - x7 + x8 =G= 0.01;

e4.. x1*x1 + x3*x3 - 2*x1*x3*cos(x7 - x5) =L= 1;

e5.. x1*x1 + x4*x4 - 2*x1*x4*cos(x8 - x5) =L= 1;

e6.. x2*x2 + x4*x4 - 2*x2*x4*cos(x8 - x6) =L= 1;

e7..  - (0.5*x1*x2*sin(x6 - x5) + 0.5*x2*x3*sin(x7 - x6) + 0.5*x3*x4*sin(x8 - 
     x7)) + objvar =E= 0;

* set non default bounds

x1.lo = 0.1; x1.up = 1; 
x2.lo = 0.1; x2.up = 1; 
x3.lo = 0.1; x3.up = 1; 
x4.lo = 0.1; x4.up = 1; 
x8.up = 3.14; 

* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 
x3.l = 0.1; 
x4.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP maximizing objvar;
