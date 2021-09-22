*  NLP written by GAMS Convert at 10/06/06 11:33:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          3        1        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1;


e1..  - (30*sqr(sin(7*x1))*sqr(cos(7*x2)) + 100*sqrt(0.01 + sqr(x1 - x2)) + 100
     *sqrt(0.01 + sqr(x1))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -5; 
x2.l = -7; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
