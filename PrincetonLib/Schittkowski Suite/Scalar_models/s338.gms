*  NLP written by GAMS Convert at 07/02/05 18:32:31
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

Equations  e1,e2,e3;


e1..    0.5*x1 + x2 + x3 =E= 1;

e2.. sqr(x1) + 0.666666666666667*sqr(x2) + 0.25*sqr(x3) =E= 4;

e3.. sqr(x1) + sqr(x2) + sqr(x3) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
