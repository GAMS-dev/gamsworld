*  NLP written by GAMS Convert at 10/06/06 11:16:03
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        2        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x5;

Equations  e1,e2;


e1.. sqr(x1) + sqr(x1 - 2*x2) + sqr(x2 - 3*x3) + sqr(x3 - 4*x4) - sqr(x5)
      =E= 0;

e2..  - x5 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 2; 
x3.l = 3; 
x4.l = 3; 
x5.l = 228; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
