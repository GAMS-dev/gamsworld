*  NLP written by GAMS Convert at 10/06/06 11:16:10
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3;


e1.. (x1 - x2*x2)*(x1 - sin(x2)) =E= 0;

e2.. (cos(x2) - x1)*(x2 - cos(x1)) =E= 0;

e3..    objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
