*  NLP written by GAMS Convert at 07/27/06 09:26:10
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        8        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4;


e1..    x1 + 3*x2 =E= 4;

e2..    x3 + x4 - 2*x5 =E= 0;

e3..    x2 - x5 =E= 0;

e4..  - (sqr(x1 - x2) + sqr((-2) + x2 + x3) + sqr((-1) + x4) + sqr((-1) + x5))
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 2.5; 
x2.l = 0.5; 
x3.l = 2; 
x4.l = -1; 
x5.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
