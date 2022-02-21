*  NLP written by GAMS Convert at 10/06/06 11:16:03
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
*         11        4        7        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4;


e1..  - sqr(x3) + x1 + x2 =E= 25;

e2.. sqr(x1) + sqr(x2) - sqr(x4) =E= 25;

e3..  - sqr(x5) + x1 =E= 2;

e4..  - (0.01*sqr(x1) + sqr(x2)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 15.811; 
x2.l = 1.5811; 
x4.l = 15.083; 
x5.l = 3.7164; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
