*  NLP written by GAMS Convert at 09/19/06 14:42:48
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        6        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         15       11        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Equations  e1,e2,e3,e4,e5,e6;


e1..    2*x2 =E= 2;

e2..  - x1 + x5 =E= 0;

e3..  - x3 + x6 =E= 0;

e4.. x6*x8 - x4 + x7 =E= 0;

e5.. x5*x8 - x2 =E= 0;

e6..  - x1 - x4 + objvar =E= 0;

* set non default bounds

x5.lo = 1E-8; 
x6.lo = 1E-8; 
x7.lo = 1E-8; 
x8.lo = 1E-7; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x4.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
