*  LP written by GAMS Convert at 06/27/07 15:16:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         18       18        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x1,x2,x3,x4,x5;

Equations  e1,e2,e3,e4;


e1..    10*x1 + 8*x2 + 16*x3 =L= 288;

e2..    12*x1 + 20*x2 + 25*x4 + 15*x5 =L= 192;

e3..    20*x1 + 20*x2 + 20*x3 + 20*x4 + 20*x5 =L= 384;

e4..  - 550*x1 - 600*x2 - 350*x3 - 400*x4 - 200*x5 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;
