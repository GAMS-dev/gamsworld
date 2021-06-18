*  NLP written by GAMS Convert at 10/06/06 11:33:43
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
*         14        4       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4;


e1.. sqr(x2) + POWER(x3,3) + x1 =E= 6.24264068711929;

e2..  - sqr(x3) + x2 + x4 =E= 0.82842712474619;

e3.. x1*x5 =E= 2;

e4..  - (sqr((-1) + x1) + sqr(x1 - x2) + sqr(x2 - x3) + POWER(x3 - x4,4) + 
     POWER(x4 - x5,4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 2; 
x2.l = 2; 
x3.l = 2; 
x4.l = 2; 
x5.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
