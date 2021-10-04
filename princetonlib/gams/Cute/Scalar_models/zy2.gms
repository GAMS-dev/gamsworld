*  NLP written by GAMS Convert at 10/06/06 11:53:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         10        3        7        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1..  - (sqr(x1) + sqr(x2) + sqr(x3)) =L= -4;

e2.. sqr(x1) + sqr(x2) + sqr(x3) =L= 10;

e3..  - (POWER(x1,3) - 6*sqr(x1) + 11*x1) - x2 - x3 + objvar =E= 0;

* set non default bounds

x3.up = 5; 

* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 
x3.l = 3; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
