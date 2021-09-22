*  MIP written by GAMS Convert at 01/17/08 23:45:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         49       21       28        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         71       22       49        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        342      342        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,objvar;

Positive Variables  x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63
          ,x64,x65,x66,x67,x68,x69,x70;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49;


e1..    b1 + b8 + b15 + b22 + b29 + b36 + b43 =E= 1;

e2..    b2 + b9 + b16 + b23 + b30 + b37 + b44 =E= 1;

e3..    b3 + b10 + b17 + b24 + b31 + b38 + b45 =E= 1;

e4..    b4 + b11 + b18 + b25 + b32 + b39 + b46 =E= 1;

e5..    b5 + b12 + b19 + b26 + b33 + b40 + b47 =E= 1;

e6..    b6 + b13 + b20 + b27 + b34 + b41 + b48 =E= 1;

e7..    b7 + b14 + b21 + b28 + b35 + b42 + b49 =E= 1;

e8..    b1 + b2 + b3 + b4 + b5 + b6 + b7 =E= 1;

e9..    b8 + b9 + b10 + b11 + b12 + b13 + b14 =E= 1;

e10..    b15 + b16 + b17 + b18 + b19 + b20 + b21 =E= 1;

e11..    b22 + b23 + b24 + b25 + b26 + b27 + b28 =E= 1;

e12..    b29 + b30 + b31 + b32 + b33 + b34 + b35 =E= 1;

e13..    b36 + b37 + b38 + b39 + b40 + b41 + b42 =E= 1;

e14..    b43 + b44 + b45 + b46 + b47 + b48 + b49 =E= 1;

e15..  - 5*b1 - 6*b8 - 8*b15 - 4*b22 - 2*b29 - 4*b36 - 2*b43 - x50 + x51 =G= 0;

e16..  - 5*b2 - 6*b9 - 8*b16 - 4*b23 - 2*b30 - 4*b37 - 2*b44 - x51 + x52 =G= 0;

e17..  - 5*b3 - 6*b10 - 8*b17 - 4*b24 - 2*b31 - 4*b38 - 2*b45 - x52 + x53
       =G= 0;

e18..  - 5*b4 - 6*b11 - 8*b18 - 4*b25 - 2*b32 - 4*b39 - 2*b46 - x53 + x54
       =G= 0;

e19..  - 5*b5 - 6*b12 - 8*b19 - 4*b26 - 2*b33 - 4*b40 - 2*b47 - x54 + x55
       =G= 0;

e20..  - 5*b6 - 6*b13 - 8*b20 - 4*b27 - 2*b34 - 4*b41 - 2*b48 - x55 + x56
       =G= 0;

e21..  - 5*b7 - 6*b14 - 8*b21 - 4*b28 - 2*b35 - 4*b42 - 2*b49 - x56 =G= 0;

e22..  - 2*b1 - 5*b8 - 4*b15 - 8*b36 - 9*b43 + x50 =G= 0;

e23..  - 2*b2 - 5*b9 - 4*b16 - 8*b37 - 9*b44 + x51 =G= 0;

e24..  - 2*b3 - 5*b10 - 4*b17 - 8*b38 - 9*b45 + x52 =G= 0;

e25..  - 2*b4 - 5*b11 - 4*b18 - 8*b39 - 9*b46 + x53 =G= 0;

e26..  - 2*b5 - 5*b12 - 4*b19 - 8*b40 - 9*b47 + x54 =G= 0;

e27..  - 2*b6 - 5*b13 - 4*b20 - 8*b41 - 9*b48 + x55 =G= 0;

e28..  - 2*b7 - 5*b14 - 4*b21 - 8*b42 - 9*b49 + x56 =G= 0;

e29..    10*b1 + 21*b8 + 15*b15 + 10*b22 + 5*b29 + 15*b36 + 22*b43 - x57 + x64
       =G= 0;

e30..    10*b2 + 21*b9 + 15*b16 + 10*b23 + 5*b30 + 15*b37 + 22*b44 - x58 + x65
       =G= 0;

e31..    10*b3 + 21*b10 + 15*b17 + 10*b24 + 5*b31 + 15*b38 + 22*b45 - x59 + x66
       =G= 0;

e32..    10*b4 + 21*b11 + 15*b18 + 10*b25 + 5*b32 + 15*b39 + 22*b46 - x60 + x67
       =G= 0;

e33..    10*b5 + 21*b12 + 15*b19 + 10*b26 + 5*b33 + 15*b40 + 22*b47 - x61 + x68
       =G= 0;

e34..    10*b6 + 21*b13 + 15*b20 + 10*b27 + 5*b34 + 15*b41 + 22*b48 - x62 + x69
       =G= 0;

e35..    10*b7 + 21*b14 + 15*b21 + 10*b28 + 5*b35 + 15*b42 + 22*b49 - x63 + x70
       =G= 0;

e36..  - 5*b1 - 6*b8 - 8*b15 - 4*b22 - 2*b29 - 4*b36 - 2*b43 - x50 + x57 =E= 0;

e37..  - 5*b2 - 6*b9 - 8*b16 - 4*b23 - 2*b30 - 4*b37 - 2*b44 - x51 + x58 =E= 0;

e38..  - 5*b3 - 6*b10 - 8*b17 - 4*b24 - 2*b31 - 4*b38 - 2*b45 - x52 + x59
       =E= 0;

e39..  - 5*b4 - 6*b11 - 8*b18 - 4*b25 - 2*b32 - 4*b39 - 2*b46 - x53 + x60
       =E= 0;

e40..  - 5*b5 - 6*b12 - 8*b19 - 4*b26 - 2*b33 - 4*b40 - 2*b47 - x54 + x61
       =E= 0;

e41..  - 5*b6 - 6*b13 - 8*b20 - 4*b27 - 2*b34 - 4*b41 - 2*b48 - x55 + x62
       =E= 0;

e42..  - 5*b7 - 6*b14 - 8*b21 - 4*b28 - 2*b35 - 4*b42 - 2*b49 - x56 + x63
       =E= 0;

e43..  - x57 + objvar =G= 0;

e44..  - x58 + objvar =G= 0;

e45..  - x59 + objvar =G= 0;

e46..  - x60 + objvar =G= 0;

e47..  - x61 + objvar =G= 0;

e48..  - x62 + objvar =G= 0;

e49..  - x63 + objvar =G= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
