*  MIP written by GAMS Convert at 01/17/08 23:45:24
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        1        0        8        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16        1       15        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         46       46        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    b1 + b2 + b3 =L= 1;

e2..    b1 + b4 + b5 + b6 =L= 1;

e3..    b4 + b7 + b8 =L= 1;

e4..    b2 + b5 + b9 + b10 + b11 =L= 1;

e5..    b3 + b9 + b10 + b12 + b13 + b14 + b15 =L= 1;

e6..    b6 + b7 + b11 + b12 + b13 =L= 1;

e7..    b8 =L= 1;

e8..    b14 + b15 =L= 1;

e9..  - b1 - b2 - b3 - b4 - b5 - b6 - b7 - b8 - b9 - b10 - b11 - b12 - b13
      - b14 - b15 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
