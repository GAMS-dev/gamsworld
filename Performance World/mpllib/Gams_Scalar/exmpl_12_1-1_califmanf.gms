
*  MIP written by GAMS Convert at 06/27/07 15:16:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        0        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        1        4        0        0        0        0        0
*  FX      4        0        4        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         16       16        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,b4,objvar;

Binary Variables  b1,b2,b3,b4;

Equations  e1,e2,e3,e4,e5,e6;


e1..    5*b1 + 6*b2 + 2*b3 + 3*b4 =L= 10;

e2..    b1 + b2 + b3 =L= 1;

e3..  - b2 + b4 =L= 0;

e4..  - b3 =L= 0;

e5..  - b4 =L= 0;

e6..  - 6*b1 - 9*b2 - 4*b3 - 5*b4 + objvar =E= 0;

* set non default bounds

b1.fx = 0; 
b2.fx = 1; 
b3.fx = 0; 
b4.fx = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;

