*  NLP written by GAMS Convert at 06/27/07 15:16:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         25       25        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4;


e1..    12*x1 + 9*x2 + 25*x3 + 20*x4 + 17*x5 + 13*x6 =G= 60;

e2..    35*x1 + 42*x2 + 18*x3 + 31*x4 + 56*x5 + 49*x6 =G= 150;

e3..    37*x1 + 53*x2 + 28*x3 + 24*x4 + 29*x5 + 20*x6 =G= 125;

e4..  - 8*x1 - 10*x2 - 7*x3 - 6*x4 - 11*x5 - 9*x6 + objvar =E= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;