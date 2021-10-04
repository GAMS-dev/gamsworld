*  NLP written by GAMS Convert at 10/06/06 11:33:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        1        1        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27       11       16        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Equations  e1,e2,e3,e4,e5;


e1.. 2*sqr(x1) + 3*POWER(x2,4) + 4*sqr(x4) + x3 + 5*x5 =L= 127;

e2.. 10*sqr(x3) + 7*x1 + 3*x2 + x4 - x5 =L= 282;

e3.. sqr(x2) + 6*sqr(x6) + 23*x1 - 8*x7 =L= 196;

e4.. (-4*sqr(x1)) - sqr(x2) + 3*x1*x2 - 2*sqr(x3) - 5*x6 + 11*x7 =G= 0;

e5..  - (sqr((-10) + x1) + 5*sqr((-12) + x2) + POWER(x3,4) + 3*sqr((-11) + x4)
      + 10*POWER(x5,6) + 7*sqr(x6) + POWER(x7,4) - 4*x6*x7 - 10*x6 - 8*x7)
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 2; 
x4.l = 4; 
x6.l = 1; 
x7.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
