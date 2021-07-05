*  MIP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        1        0        8        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        4        3        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         22       22        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,x4,x5,x6,objvar;

Binary Variables  b1,b2,b3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - 2000*b1 + x4 =L= 0;

e2..  - 2000*b2 + x5 =L= 0;

e3..  - 1200*b3 + x6 =L= 0;

e4..    2000*b1 - x4 =L= 1000;

e5..    2000*b2 - x5 =L= 1000;

e6..    1200*b3 - x6 =L= 200;

e7..    30*x4 + 25*x5 + 40*x6 =L= 60000;

e8..    1.5*x4 + 3*x5 + 5*x6 =L= 6000;

e9..  - 2000*x4 - 3000*x5 - 4000*x6 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;