*  NLP written by GAMS Convert at 10/06/06 11:34:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        5        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3,e4;


e1.. sqr(x2) + sqr(x3) - x1 =L= 0;

e2.. sqr(x2) + sqr(x3) - 40*x2 - 10*x3 - x1 =L= -40;

e3.. sqr(x2) + sqr(x3) - 10*x2 - 20*x3 - x1 =L= -60;

e4..  - x1 + objvar =E= 0;

* set non default bounds


* set non default levels

x2.l = -1; 
x3.l = 5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
