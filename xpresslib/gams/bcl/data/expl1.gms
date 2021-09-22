*  MIP written by GAMS Convert at 02/22/08 02:22:03
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        8        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         38        5       33        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         80       80        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,x34,x35,x36
          ,x37,objvar;

Positive Variables  x34,x35,x36,x37;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..  - x34 + objvar =G= 3;

e2..  - x35 + objvar =G= 4;

e3..  - x36 + objvar =G= 2;

e4..  - x37 + objvar =G= 2;

e5..  - x34 + x36 =G= 3;

e6..    b1 + 2*b2 + 3*b3 + 4*b4 + 5*b5 + 6*b6 + 7*b7 + 8*b8 - x34 =E= 0;

e7..    b9 + 2*b10 + 3*b11 + 4*b12 + 5*b13 + 6*b14 + 7*b15 - x35 =E= 0;

e8..    b16 + 2*b17 + 3*b18 + 4*b19 + 5*b20 + 6*b21 + 7*b22 + 8*b23 + 9*b24
      - x36 =E= 0;

e9..    b25 + 2*b26 + 3*b27 + 4*b28 + 5*b29 + 6*b30 + 7*b31 + 8*b32 + 9*b33
      - x37 =E= 0;

e10..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 =E= 1;

e11..    b9 + b10 + b11 + b12 + b13 + b14 + b15 =E= 1;

e12..    b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 =E= 1;

e13..    b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 =E= 1;

* set non default bounds

x34.up = 8; 
x35.up = 7; 
x36.up = 9; 
x37.up = 9; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
