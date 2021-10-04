*  NLP written by GAMS Convert at 10/06/06 11:34:14
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
*          7        5        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3;


e1.. sqr(x1) - x1 + sqr(x2) - x3 =L= 1;

e2..  - x1 - x3 =L= 0;

e3..  - x3 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.8; 
x2.l = 0.6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
