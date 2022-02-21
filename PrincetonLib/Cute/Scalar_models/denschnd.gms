*  NLP written by GAMS Convert at 10/06/06 11:31:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          4        1        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - (sqr(sqr(x1) + POWER(x2,3) - POWER(x3,4)) + sqr(2*x1*x2*x3) + sqr(2*x1*
     x2 - 3*x2*x3 + x1*x3)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 10; 
x2.l = 10; 
x3.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;