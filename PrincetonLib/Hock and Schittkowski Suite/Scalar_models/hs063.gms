*  NLP written by GAMS Convert at 07/27/06 09:26:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         10        4        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1..    8*x1 + 14*x2 + 7*x3 =E= 56;

e2.. sqr(x1) + sqr(x2) + sqr(x3) =E= 25;

e3..  - (-sqr(x1) - 2*sqr(x2) - sqr(x3) - x1*x2 - x1*x3) + objvar =E= 1000;

* set non default bounds


* set non default levels

x1.l = 2; 
x2.l = 2; 
x3.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
