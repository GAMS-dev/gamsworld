*  NLP written by GAMS Convert at 06/26/06 16:29:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1;


e1.. 1/(0.1 + sqr((-4) + x1) + sqr((-4) + x2) + sqr((-4) + x3) + sqr((-4) + x4)
     ) + 1/(0.2 + sqr((-1) + x1) + sqr((-1) + x2) + sqr((-1) + x3) + sqr((-1)
      + x4)) + 1/(0.2 + sqr((-8) + x1) + sqr((-8) + x2) + sqr((-8) + x3) + sqr(
     (-8) + x4)) + 1/(0.4 + sqr((-6) + x1) + sqr((-6) + x2) + sqr((-6) + x3) + 
     sqr((-6) + x4)) + 1/(0.4 + sqr((-3) + x1) + sqr((-7) + x2) + sqr((-3) + x3
     ) + sqr((-7) + x4)) + objvar =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 10; 
x3.up = 10; 
x4.up = 10; 

* set non default levels

x1.l = 1; 
x2.l = 2; 
x3.l = 3; 
x4.l = 4; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
