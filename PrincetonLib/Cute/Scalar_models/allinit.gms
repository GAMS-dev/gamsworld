*  NLP written by GAMS Convert at 10/06/06 11:14:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1;


e1..  - (sqr(x1) + sqr(x2) + sqr(x3 + x4) + x3 + sqr(sin(x3)) + sqr(x1)*sqr(x2)
      + x4 + sqr(sin(x3)) + sqr((-1) + x4) + sqr(sqr(x2)) + sqr(sqr(x3) + sqr(
     x1 + x4)) + sqr((-4) + sqr(sin(x4)) + sqr(x2)*sqr(x3) + x1) + POWER(sin(x4
     ),4)) + objvar =E= -4;

* set non default bounds

x2.lo = 1; 
x3.lo = -10000000000; x3.up = 1; 
x4.fx = 2; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
