*  NLP written by GAMS Convert at 07/02/05 18:32:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        2        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2;


e1..  - 0.159159637116027*arctan(x2/x1) + x4 =E= 0;

e2..  - (100*(sqr(x3 - 10*x4) + sqr((-1) + sqrt(sqr(x1) + sqr(x2)))) + sqr(x3))
      + objvar =E= 0;

* set non default bounds

x1.lo = 0.0001; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
