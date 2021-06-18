*  NLP written by GAMS Convert at 02/21/13 20:37:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          4        1        0        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        9        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3,e4;


e1..    5*x1 + x2 - x3 =L= 0;

e2..  - 5*x1 + x2 - x3 =L= 0;

e3.. sqr(x1) + sqr(x2) + 4*x2 - x3 =L= 0;

e4..  - x3 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
