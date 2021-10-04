*  NLP written by GAMS Convert at 01/14/09 03:34:45
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        9        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         56       12       44        0
*
*  Solve m using NLP maximizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Negative Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1.. x2*(x1 + x3) + x1 + x4*(x3 + x5) + x6*(x5 + x7) - x8*(0.125 - x7) =E= 0;

e2.. x3*(x1 + x5) + x4*(x2 + x6) + x2 + x5*x7 - x8*(0.25 - x6) =E= 0;

e3.. x3*(1 + x6) + x4*(x1 + x7) + x2*x5 - x8*(0.375 - x5) =E= 0;

e4.. x1*x5 + x2*x6 + x3*x7 - x8*(0.5 - x4) + x4 =E= 0;

e5.. x1*x6 + x2*x7 - x8*(0.625 - x3) + x5 =E= 0;

e6.. x1*x7 - x8*(0.75 - x2) + x6 =E= 0;

e7..  - x8*(0.875 - x1) + x7 =E= 0;

e8..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 =E= -1;

e9..    objvar =E= 1;

* set non default bounds

x1.lo = -100; 
x2.lo = -100; 
x3.lo = -100; 
x4.lo = -100; 
x5.lo = -100; 
x6.lo = -100; 
x7.lo = -100; 
x8.lo = -100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP maximizing objvar;
