*  NLP written by GAMS Convert at 10/06/06 11:47:09
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        1        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x2,x3,x4,x6,x7,x8;

Equations  e1;


e1..  - (0.5*(sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(
     x7) + sqr(x8)) + x1 + 2*x5 - x8) + objvar =E= 0;

* set non default bounds

x1.lo = 2.5; 
x2.up = 4.1; 
x5.lo = 0.5; x5.up = 4; 
x8.up = 4.3; 

* set non default levels

x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 
x6.l = 0.5; 
x7.l = 0.5; 
x8.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
