*  MIP written by GAMS Convert at 01/17/08 23:45:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         17        1       15        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         23        1       22        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         64       64        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17;


e1..    b1 - b8 =G= 0;

e2..    b1 + b2 - b9 =G= 0;

e3..    b2 - b10 =G= 0;

e4..    b1 + b3 - b11 =G= 0;

e5..    b2 + b4 - b12 =G= 0;

e6..    b4 - b13 =G= 0;

e7..    b3 + b6 - b14 =G= 0;

e8..    b3 + b4 + b5 - b15 =G= 0;

e9..    b4 + b5 - b16 =G= 0;

e10..    b3 + b6 - b17 =G= 0;

e11..    b6 - b18 =G= 0;

e12..    b5 + b6 + b7 - b19 =G= 0;

e13..    b7 - b20 =G= 0;

e14..    b7 - b21 =G= 0;

e15..    b6 + b7 - b22 =G= 0;

e16..    1.8*b1 + 1.3*b2 + 4*b3 + 3.5*b4 + 3.8*b5 + 2.6*b6 + 2.1*b7 =L= 10;

e17..  - 2*b8 - 4*b9 - 13*b10 - 6*b11 - 9*b12 - 4*b13 - 8*b14 - 12*b15 - 10*b16
       - 11*b17 - 6*b18 - 14*b19 - 9*b20 - 3*b21 - 6*b22 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
