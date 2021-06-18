*  NLP written by GAMS Convert at 07/27/06 09:26:11
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
*         20       18        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 + 2*x2 + 5*x5 =E= 6;

e2..    x1 + x2 + x3 =E= 3;

e3..    x4 + x5 + x6 =E= 2;

e4..    x1 + x4 =E= 1;

e5..    x2 + x5 =E= 2;

e6..    x3 + x6 =E= 2;

e7..  - (exp(x1*x4) + x1) - 2*x2 - 4*x5 + objvar =E= 0;

* set non default bounds

x1.up = 0.6; 
x2.up = 1000000; 
x3.up = 1000000; 
x4.up = 1; 
x5.up = 1000000; 
x6.up = 1000000; 

* set non default levels

x1.l = 0.6; 
x2.l = 2; 
x4.l = 1; 
x6.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
