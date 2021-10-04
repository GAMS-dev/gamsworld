*  LP written by GAMS Convert at 10/23/07 22:12:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         19       19        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4;


e1..    x2 - x3 - 2.2*x4 - 3.4*x5 - 4.8*x6 - 6.5*x7 =E= 0;

e2..    x1 - x2 =E= 0;

e3..    x3 + x4 + x5 + x6 + x7 =E= 1;

e4..  - 2*x3 - 3.2*x4 - 1.4*x5 - 2.5*x6 - 0.8*x7 + objvar =E= 0;

* set non default bounds

x1.lo = 1; x1.up = 6.5; 

* set non default levels

x1.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
