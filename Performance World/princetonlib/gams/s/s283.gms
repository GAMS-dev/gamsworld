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


e1..  - (POWER(sqr((-1) + x1),3) + 8*POWER(sqr((-1) + x2),3) + 27*POWER(sqr((-1
     ) + x3),3) + 64*POWER(sqr((-1) + x4),3) + 125*POWER(sqr((-1) + x5),3) + 
     216*POWER(sqr((-1) + x6),3) + 343*POWER(sqr((-1) + x7),3) + 512*POWER(sqr(
     (-1) + x8),3) + 729*POWER(sqr((-1) + x9),3) + 1000*POWER(sqr((-1) + x10),3
     )) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
