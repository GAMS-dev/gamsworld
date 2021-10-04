*  MIP written by GAMS Convert at 09/07/07 23:01:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         35        8       27        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         40        1       39        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        151      151        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35;


e1..    b1 + b5 + b9 =E= 1;

e2..    b2 + b6 + b10 =E= 1;

e3..    b3 + b7 + b11 =E= 1;

e4..    b4 + b8 + b12 =E= 1;

e5..    b13 + b16 + b19 + b22 + b25 + b28 + b31 + b34 + b37 =E= 1;

e6..    b14 + b17 + b20 + b23 + b26 + b29 + b32 + b35 + b38 =E= 1;

e7..    b15 + b18 + b21 + b24 + b27 + b30 + b33 + b36 + b39 =E= 1;

e8..    b1 + b2 - 2*b13 =G= 0;

e9..    b2 + b3 - 2*b14 =G= 0;

e10..    b3 + b4 - 2*b15 =G= 0;

e11..    b1 + b6 - 2*b16 =G= 0;

e12..    b2 + b7 - 2*b17 =G= 0;

e13..    b3 + b8 - 2*b18 =G= 0;

e14..    b1 + b10 - 2*b19 =G= 0;

e15..    b2 + b11 - 2*b20 =G= 0;

e16..    b3 + b12 - 2*b21 =G= 0;

e17..    b2 + b5 - 2*b22 =G= 0;

e18..    b3 + b6 - 2*b23 =G= 0;

e19..    b4 + b7 - 2*b24 =G= 0;

e20..    b5 + b6 - 2*b25 =G= 0;

e21..    b6 + b7 - 2*b26 =G= 0;

e22..    b7 + b8 - 2*b27 =G= 0;

e23..    b5 + b10 - 2*b28 =G= 0;

e24..    b6 + b11 - 2*b29 =G= 0;

e25..    b7 + b12 - 2*b30 =G= 0;

e26..    b2 + b9 - 2*b31 =G= 0;

e27..    b3 + b10 - 2*b32 =G= 0;

e28..    b4 + b11 - 2*b33 =G= 0;

e29..    b6 + b9 - 2*b34 =G= 0;

e30..    b7 + b10 - 2*b35 =G= 0;

e31..    b8 + b11 - 2*b36 =G= 0;

e32..    b9 + b10 - 2*b37 =G= 0;

e33..    b10 + b11 - 2*b38 =G= 0;

e34..    b11 + b12 - 2*b39 =G= 0;

e35..  - 30*b1 - 25*b2 - 40*b3 - 60*b4 - 25*b5 - 40*b6 - 45*b7 - 50*b8 - 40*b9
       - 20*b10 - 50*b11 - 45*b12 - 5*b16 - 5*b17 - 5*b18 - 12*b19 - 12*b20
       - 12*b21 - 8*b22 - 8*b23 - 8*b24 - 10*b28 - 10*b29 - 10*b30 - 15*b31
       - 15*b32 - 15*b33 - 10*b34 - 10*b35 - 10*b36 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
