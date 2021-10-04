*  NLP written by GAMS Convert at 07/27/06 09:26:10
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         19       13        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 + 0.5*x2 =E= 0.45;

e2..    x1 + 0.5*x2 =E= 0.45;

e3..    x1 + 0.5*x2 =E= 0.45;

e4..    x1 + 0.5*x2 =E= 0.45;

e5..    x1 + 0.5*x2 =E= 0.45;

e6..    x1 + 0.5*x2 =E= 0.45;

e7..  - (1.04166666666667*(sqr(x1) + 0.4*x1*x2 + sqr(x2)) + sqr(x3) + sqr(x4)
      + sqr(x5) + sqr(x6)) + objvar =E= 0;

* set non default bounds

x1.lo = -1.25; x1.up = 1.25; 
x2.lo = -11; x2.up = 9; 
x3.lo = -0.285714285714286; x3.up = 1.14285714285714; 
x4.lo = -0.2; x4.up = 0.2; 
x5.lo = -20.02; x5.up = 19.98; 
x6.lo = -0.2; x6.up = 0.2; 

* set non default levels

x1.l = -0.5; 
x2.l = 0.5; 
x3.l = 0.285714285714286; 
x4.l = -0.16; 
x5.l = 0.04; 
x6.l = -0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
