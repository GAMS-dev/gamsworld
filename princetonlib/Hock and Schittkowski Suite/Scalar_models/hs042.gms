*  NLP written by GAMS Convert at 07/27/06 09:26:09
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x2,x3,x4;

Equations  e1,e2;


e1.. sqr(x3) + sqr(x4) =E= 2;

e2..  - (sqr((-1) + x1) + sqr((-2) + x2) + sqr((-3) + x3) + sqr((-4) + x4))
      + objvar =E= 0;

* set non default bounds

x1.fx = 2; 

* set non default levels

x2.l = 1; 
x3.l = 1; 
x4.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
