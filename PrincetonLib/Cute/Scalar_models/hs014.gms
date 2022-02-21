*  NLP written by GAMS Convert at 10/06/06 11:33:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        2        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        3        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3;


e1.. 0.25*sqr(x1) + sqr(x2) =L= 1;

e2..    x1 - 2*x2 =E= -1;

e3..  - (sqr((-2) + x1) + sqr((-1) + x2)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 2; 
x2.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
