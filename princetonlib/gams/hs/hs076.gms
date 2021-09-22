*  NLP written by GAMS Convert at 07/27/06 09:26:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        1        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         15       11        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4;


e1..    x1 + 2*x2 + x3 + x4 =L= 5;

e2..    3*x1 + x2 + 2*x3 - x4 =L= 4;

e3..    x2 + 4*x3 =G= 1.5;

e4..  - (sqr(x1) + 0.5*sqr(x2) + sqr(x3) + 0.5*sqr(x4) - x1*x3 + x3*x4 - x1 - 3
     *x2 + x3 - x4) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.5; 
x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
