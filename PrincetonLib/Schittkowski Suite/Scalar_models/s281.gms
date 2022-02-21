*  NLP written by GAMS Convert at 07/02/05 18:32:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1;


e1..  - exp(0.333333333333333*log(sqr((-1) + x1) + 8*sqr((-1) + x2) + 27*sqr((-
     1) + x3) + 64*sqr((-1) + x4) + 125*sqr((-1) + x5) + 216*sqr((-1) + x6) + 
     343*sqr((-1) + x7) + 512*sqr((-1) + x8) + 729*sqr((-1) + x9) + 1000*sqr((-
     1) + x10))) + objvar =E= 0;

* set non default bounds

x1.lo = 1.000000001; 
x2.lo = 1.000000001; 
x3.lo = 1.000000001; 
x4.lo = 1.000000001; 
x5.lo = 1.000000001; 
x6.lo = 1.000000001; 
x7.lo = 1.000000001; 
x8.lo = 1.000000001; 
x9.lo = 1.000000001; 
x10.lo = 1.000000001; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
