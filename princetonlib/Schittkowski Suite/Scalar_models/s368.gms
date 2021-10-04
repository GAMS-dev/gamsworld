*  NLP written by GAMS Convert at 07/02/05 18:32:34
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

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1;


e1..  - (sqr(POWER(x1,3) + POWER(x2,3) + POWER(x3,3) + POWER(x4,3) + POWER(x5,3
     ) + POWER(x6,3) + POWER(x7,3) + POWER(x8,3)) - (sqr(x1) + sqr(x2) + sqr(x3
     ) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + sqr(x8))*(POWER(x1,4) + POWER(
     x2,4) + POWER(x3,4) + POWER(x4,4) + POWER(x5,4) + POWER(x6,4) + POWER(x7,4
     ) + POWER(x8,4))) + objvar =E= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 
x7.up = 1; 
x8.up = 1; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
