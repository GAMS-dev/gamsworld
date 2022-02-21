
*  MIP written by GAMS Convert at 06/27/07 15:16:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        2       11        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13        1       12        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         70       70        0        0
*
*  Solve m using MIP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    b1 + b4 + b7 + b10 =G= 1;

e2..    b2 + b5 + b8 + b11 =G= 1;

e3..    b3 + b6 + b9 + b12 =G= 1;

e4..    b4 + b7 + b9 + b10 + b12 =G= 1;

e5..    b1 + b6 + b10 + b11 =G= 1;

e6..    b4 + b5 + b9 =G= 1;

e7..    b7 + b8 + b10 + b11 + b12 =G= 1;

e8..    b2 + b4 + b5 + b9 =G= 1;

e9..    b5 + b8 + b11 =G= 1;

e10..    b3 + b7 + b8 + b12 =G= 1;

e11..    b6 + b9 + b10 + b11 + b12 =G= 1;

e12..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 =E= 3;

e13..  - 2*b1 - 3*b2 - 4*b3 - 6*b4 - 7*b5 - 5*b6 - 7*b7 - 8*b8 - 9*b9 - 9*b10
       - 8*b11 - 9*b12 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP minimizing objvar;

