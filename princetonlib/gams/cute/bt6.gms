*  NLP written by GAMS Convert at 10/06/06 11:16:04
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
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3;


e1.. sqr(x1)*x4 + sin(x4 - x5) =E= 2.82842712474619;

e2.. POWER(x3,4)*sqr(x2) + x2 =E= 9.4142135623731;

e3..  - (sqr((-1) + x1) + sqr(x1 - x2) + sqr((-1) + x3) + POWER((-1) + x4,4) + 
     POWER((-1) + x5,6)) + objvar =E= 0;

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
