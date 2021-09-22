*  NLP written by GAMS Convert at 10/06/06 11:33:41
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         12        7        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3;


e1..    x1 + x2 + x3 + 4*x4 =E= 7;

e2..    x3 + 5*x5 =E= 6;

e3..  - (sqr(x1 - x2) + sqr((-1) + x3) + POWER((-1) + x4,4) + POWER((-1) + x5,6
     )) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 10; 
x2.l = 7; 
x3.l = 2; 
x4.l = -3; 
x5.l = 0.8; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
