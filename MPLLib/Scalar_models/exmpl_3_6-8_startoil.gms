*  LP written by GAMS Convert at 06/27/07 15:16:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         16       16        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Negative Variables  x1,x2,x3,x4,x5;

Equations  e1,e2,e3;


e1..    11*x1 + 53*x2 + 5*x3 + 5*x4 + 29*x5 =L= 40;

e2..    3*x1 + 6*x2 + 5*x3 + x4 + 34*x5 =L= 20;

e3..  - 13*x1 - 16*x2 - 16*x3 - 14*x4 - 39*x5 + objvar =E= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;