*  NLP written by GAMS Convert at 07/27/06 09:26:09
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         12        3        9        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3,e4;


e1.. POWER(x1,3) + sqr(x2) =E= 1;

e2.. sqr(x1)*x4 - x3 =E= 0;

e3.. sqr(x4) - x2 =E= 0;

e4.. x1*x2*x3*x4 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.8; 
x2.l = 0.8; 
x3.l = 0.8; 
x4.l = 0.8; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
