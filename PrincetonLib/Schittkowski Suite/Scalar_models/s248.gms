*  NLP written by GAMS Convert at 07/02/05 18:32:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        2        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        4        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3;


e1..    x1 - 2*x2 =G= -1;

e2.. sqr(x1) + sqr(x2) - sqr(x3) =E= 1;

e3..    x2 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.1; 
x2.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
