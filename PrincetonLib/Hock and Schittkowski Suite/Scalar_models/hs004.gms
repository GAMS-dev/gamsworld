*  NLP written by GAMS Convert at 07/27/06 09:26:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          3        2        1        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x2;

Equations  e1;


e1..  - 0.333333333333333*POWER(1 + x1,3) - x2 + objvar =E= 0;

* set non default bounds

x1.lo = 1; 

* set non default levels

x1.l = 1.125; 
x2.l = 0.125; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
