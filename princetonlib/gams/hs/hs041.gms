*  NLP written by GAMS Convert at 07/27/06 09:26:09
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        5        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x2,x3,x4;

Equations  e1,e2;


e1..    x1 + 2*x2 + 2*x3 - x4 =E= 0;

e2.. x1*x2*x3 + objvar =E= 2;

* set non default bounds

x1.lo = 1E-6; x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 2; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
