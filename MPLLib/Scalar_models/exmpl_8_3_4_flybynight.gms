*  LP written by GAMS Convert at 06/27/07 15:16:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        6        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         15       15        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6;


e1..    x1 - x6 =E= 0;

e2..  - x1 + x2 + x3 =E= 0;

e3..  - x2 + x4 =E= 0;

e4..  - x3 + x5 =E= 0;

e5..  - x4 - x5 + x6 =E= 0;

e6..  - x4 - x5 + objvar =E= 0;

* set non default bounds

x1.up = 3; 
x2.up = 3; 
x3.up = 2; 
x4.up = 2; 
x5.up = 1; 
x6.up = 9; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;