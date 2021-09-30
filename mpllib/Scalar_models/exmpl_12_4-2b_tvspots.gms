
*  MIP written by GAMS Convert at 06/27/07 15:16:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        2        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10        1        9        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         29       29        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - b1 + b2 =L= 0;

e2..  - b2 + b3 =L= 0;

e3..  - b4 + b5 =L= 0;

e4..  - b5 + b6 =L= 0;

e5..  - b7 + b8 =L= 0;

e6..  - b8 + b9 =L= 0;

e7..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 =E= 5;

e8..  - b1 - 2*b2 - 2*b5 - b6 + b7 - 3*b8 - 2*b9 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;