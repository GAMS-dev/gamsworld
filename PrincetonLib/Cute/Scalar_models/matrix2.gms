*  NLP written by GAMS Convert at 10/06/06 11:34:08
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        1       12        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Negative Variables  x4;

Positive Variables  x1,x3,x6;

Equations  e1,e2,e3;


e1.. x1*x3 - sqr(x2) =G= 0;

e2.. x4*x6 - sqr(x5) =L= 0;

e3..  - (sqr(x1 - x4) + 2*sqr(x2 - x5) + sqr(x3 - x6)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x5.l = 1; 
x6.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
