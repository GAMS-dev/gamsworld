*  NLP written by GAMS Convert at 10/06/06 11:53:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3;


e1..  - x1*x2 =L= -1;

e2.. sqr(x1) + sqr(x2) =L= 9;

e3..  - (7*sqr(x1) + 3*sqr(x2) - 84*x1 - 24*x2) + objvar =E= 300;

* set non default bounds

x1.up = 10; 
x2.up = 10; 

* set non default levels

x1.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
