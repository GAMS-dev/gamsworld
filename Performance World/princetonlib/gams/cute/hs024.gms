*  NLP written by GAMS Convert at 10/06/06 11:33:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        7        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3,e4;


e1..    0.577350269189626*x1 - x2 =G= 0;

e2..    x1 + 1.73205080756888*x2 =G= 0;

e3..  - x1 - 1.73205080756888*x2 =G= -6;

e4..  - 0.0213833433033195*(-9 + sqr((-3) + x1))*POWER(x2,3) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
