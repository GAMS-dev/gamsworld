*  NLP written by GAMS Convert at 10/06/06 11:16:04
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
*         11        3        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4;


e1.. x1*x2 - sqr(x3) =E= 1;

e2.. sqr(x2) - sqr(x4) + x1 =E= 0;

e3.. sqr(x5) + x1 =E= 0.5;

e4..  - (100*sqr(x2 - sqr(x1)) + sqr((-1) + x1)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1; 
x2.l = 2; 
x3.l = 2; 
x4.l = 2; 
x5.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
