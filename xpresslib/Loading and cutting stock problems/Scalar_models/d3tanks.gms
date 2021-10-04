*  MIP written by GAMS Convert at 08/20/07 23:19:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15        1        5        9        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         46        1       45        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        136      136        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    500*b1 + 400*b2 + 400*b3 + 600*b4 + 600*b5 + 900*b6 + 800*b7 + 800*b8
      + 800*b9 =G= 900;

e2..    500*b10 + 400*b11 + 400*b12 + 600*b13 + 600*b14 + 900*b15 + 800*b16
      + 800*b17 + 800*b18 =G= 700;

e3..    500*b19 + 400*b20 + 400*b21 + 600*b22 + 600*b23 + 900*b24 + 800*b25
      + 800*b26 + 800*b27 =G= 1000;

e4..    500*b28 + 400*b29 + 400*b30 + 600*b31 + 600*b32 + 900*b33 + 800*b34
      + 800*b35 + 800*b36 =G= 450;

e5..    500*b37 + 400*b38 + 400*b39 + 600*b40 + 600*b41 + 900*b42 + 800*b43
      + 800*b44 + 800*b45 =G= 700;

e6..    b1 + b10 + b19 + b28 + b37 =L= 1;

e7..    b2 + b11 + b20 + b29 + b38 =L= 1;

e8..    b3 + b12 + b21 + b30 + b39 =L= 1;

e9..    b4 + b13 + b22 + b31 + b40 =L= 1;

e10..    b5 + b14 + b23 + b32 + b41 =L= 1;

e11..    b6 + b15 + b24 + b33 + b42 =L= 1;

e12..    b7 + b16 + b25 + b34 + b43 =L= 1;

e13..    b8 + b17 + b26 + b35 + b44 =L= 1;

e14..    b9 + b18 + b27 + b36 + b45 =L= 1;

e15..  - 500*b1 - 400*b2 - 400*b3 - 600*b4 - 600*b5 - 900*b6 - 800*b7 - 800*b8
       - 800*b9 - 500*b10 - 400*b11 - 400*b12 - 600*b13 - 600*b14 - 900*b15
       - 800*b16 - 800*b17 - 800*b18 - 500*b19 - 400*b20 - 400*b21 - 600*b22
       - 600*b23 - 900*b24 - 800*b25 - 800*b26 - 800*b27 - 500*b28 - 400*b29
       - 400*b30 - 600*b31 - 600*b32 - 900*b33 - 800*b34 - 800*b35 - 800*b36
       - 500*b37 - 400*b38 - 400*b39 - 600*b40 - 600*b41 - 900*b42 - 800*b43
       - 800*b44 - 800*b45 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
