*  MIP written by GAMS Convert at 09/21/07 20:31:08
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         37        7       30        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37        7       30        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        176      176        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,x31,x32,x33,x34,x35,x36
          ,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37;


e1..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13
      + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 + b25
      + b26 + b27 + b28 + b29 + b30 =E= 5;

e2..  - 6*b1 - x31 + x32 =G= -5;

e3..  - 6*b2 - x31 + x33 =G= -5;

e4..  - 6*b3 - x31 + x34 =G= -5;

e5..  - 6*b4 - x31 + x35 =G= -5;

e6..  - 6*b5 - x31 + x36 =G= -5;

e7..  - 6*b6 + x31 - x32 =G= -5;

e8..  - 6*b7 - x32 + x33 =G= -5;

e9..  - 6*b8 - x32 + x34 =G= -5;

e10..  - 6*b9 - x32 + x35 =G= -5;

e11..  - 6*b10 - x32 + x36 =G= -5;

e12..  - 6*b11 + x31 - x33 =G= -5;

e13..  - 6*b12 + x32 - x33 =G= -5;

e14..  - 6*b13 - x33 + x34 =G= -5;

e15..  - 6*b14 - x33 + x35 =G= -5;

e16..  - 6*b15 - x33 + x36 =G= -5;

e17..  - 6*b16 + x31 - x34 =G= -5;

e18..  - 6*b17 + x32 - x34 =G= -5;

e19..  - 6*b18 + x33 - x34 =G= -5;

e20..  - 6*b19 - x34 + x35 =G= -5;

e21..  - 6*b20 - x34 + x36 =G= -5;

e22..  - 6*b21 + x31 - x35 =G= -5;

e23..  - 6*b22 + x32 - x35 =G= -5;

e24..  - 6*b23 + x33 - x35 =G= -5;

e25..  - 6*b24 + x34 - x35 =G= -5;

e26..  - 6*b25 - x35 + x36 =G= -5;

e27..  - 6*b26 + x31 - x36 =G= -5;

e28..  - 6*b27 + x32 - x36 =G= -5;

e29..  - 6*b28 + x33 - x36 =G= -5;

e30..  - 6*b29 + x34 - x36 =G= -5;

e31..  - 6*b30 + x35 - x36 =G= -5;

e32..    b6 + b7 + b8 + b9 + b10 =E= 1;

e33..    b11 + b12 + b13 + b14 + b15 =E= 1;

e34..    b16 + b17 + b18 + b19 + b20 =E= 1;

e35..    b21 + b22 + b23 + b24 + b25 =E= 1;

e36..    b26 + b27 + b28 + b29 + b30 =E= 1;

e37..  - 120*b1 - 92*b2 - 265*b3 - 149*b4 - 194*b5 - 120*b6 - 141*b7 - 170*b8
       - 93*b9 - 164*b10 - 92*b11 - 141*b12 - 218*b13 - 103*b14 - 116*b15
       - 265*b16 - 170*b17 - 218*b18 - 110*b19 - 126*b20 - 149*b21 - 93*b22
       - 103*b23 - 110*b24 - 72*b25 - 194*b26 - 164*b27 - 116*b28 - 126*b29
       - 72*b30 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
