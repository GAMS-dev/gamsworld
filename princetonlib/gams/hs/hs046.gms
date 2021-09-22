*  NLP written by GAMS Convert at 07/27/06 09:26:10
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
*         12        2       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3;


e1.. sqr(x1)*x4 + sin(x4 - x5) =E= 1;

e2.. sqr(sqr(x3))*sqr(x4) + x2 =E= 2;

e3..  - (sqr(x1 - x2) + sqr((-1) + x3) + sqr(sqr((-1) + x4)) + POWER((-1) + x5,
     6)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.707106781186548; 
x2.l = 1.75; 
x3.l = 0.5; 
x4.l = 2; 
x5.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
