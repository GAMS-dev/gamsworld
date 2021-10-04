*  MIP written by GAMS Convert at 10/17/08 03:00:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         42       35        7        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         78       29       49        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        237      237        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,objvar;

Positive Variables  x50,x51,x52,x53,x54,x55,x56,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42;


e1..    b1 + b2 + b3 + b4 + b5 + b6 + b7 =E= 1;

e2..    b8 + b9 + b10 + b11 + b12 + b13 + b14 =E= 1;

e3..    b15 + b16 + b17 + b18 + b19 + b20 + b21 =E= 1;

e4..    b22 + b23 + b24 + b25 + b26 + b27 + b28 =E= 1;

e5..    b29 + b30 + b31 + b32 + b33 + b34 + b35 =E= 1;

e6..    b36 + b37 + b38 + b39 + b40 + b41 + b42 =E= 1;

e7..    b43 + b44 + b45 + b46 + b47 + b48 + b49 =E= 1;

e8..    b1 + b8 + b15 + b22 + b29 + b36 + b43 =E= 1;

e9..    b2 + b9 + b16 + b23 + b30 + b37 + b44 =E= 1;

e10..    b3 + b10 + b17 + b24 + b31 + b38 + b45 =E= 1;

e11..    b4 + b11 + b18 + b25 + b32 + b39 + b46 =E= 1;

e12..    b5 + b12 + b19 + b26 + b33 + b40 + b47 =E= 1;

e13..    b6 + b13 + b20 + b27 + b34 + b41 + b48 =E= 1;

e14..    b7 + b14 + b21 + b28 + b35 + b42 + b49 =E= 1;

e15..  - 5*b1 - 6*b2 - 8*b3 - 4*b4 - 2*b5 - 4*b6 - 2*b7 + x57 =E= 0;

e16..  - 5*b8 - 6*b9 - 8*b10 - 4*b11 - 2*b12 - 4*b13 - 2*b14 + x58 =E= 0;

e17..  - 5*b15 - 6*b16 - 8*b17 - 4*b18 - 2*b19 - 4*b20 - 2*b21 + x59 =E= 0;

e18..  - 5*b22 - 6*b23 - 8*b24 - 4*b25 - 2*b26 - 4*b27 - 2*b28 + x60 =E= 0;

e19..  - 5*b29 - 6*b30 - 8*b31 - 4*b32 - 2*b33 - 4*b34 - 2*b35 + x61 =E= 0;

e20..  - 5*b36 - 6*b37 - 8*b38 - 4*b39 - 2*b40 - 4*b41 - 2*b42 + x62 =E= 0;

e21..  - 5*b43 - 6*b44 - 8*b45 - 4*b46 - 2*b47 - 4*b48 - 2*b49 + x63 =E= 0;

e22..  - 2*b1 - 5*b2 - 4*b3 - 8*b6 - 9*b7 + x71 =E= 0;

e23..  - 2*b8 - 5*b9 - 4*b10 - 8*b13 - 9*b14 + x72 =E= 0;

e24..  - 2*b15 - 5*b16 - 4*b17 - 8*b20 - 9*b21 + x73 =E= 0;

e25..  - 2*b22 - 5*b23 - 4*b24 - 8*b27 - 9*b28 + x74 =E= 0;

e26..  - 2*b29 - 5*b30 - 4*b31 - 8*b34 - 9*b35 + x75 =E= 0;

e27..  - 2*b36 - 5*b37 - 4*b38 - 8*b41 - 9*b42 + x76 =E= 0;

e28..  - 2*b43 - 5*b44 - 4*b45 - 8*b48 - 9*b49 + x77 =E= 0;

e29..  - x50 + x51 - x57 =G= 0;

e30..  - x51 + x52 - x58 =G= 0;

e31..  - x52 + x53 - x59 =G= 0;

e32..  - x53 + x54 - x60 =G= 0;

e33..  - x54 + x55 - x61 =G= 0;

e34..  - x55 + x56 - x62 =G= 0;

e35..  - x50 - x57 + x64 =E= 0;

e36..  - x51 - x58 + x65 =E= 0;

e37..  - x52 - x59 + x66 =E= 0;

e38..  - x53 - x60 + x67 =E= 0;

e39..  - x54 - x61 + x68 =E= 0;

e40..  - x55 - x62 + x69 =E= 0;

e41..  - x56 - x63 + x70 =E= 0;

e42..  - x70 + objvar =G= 0;

* set non default bounds

x50.up = 40; 
x51.up = 40; 
x52.up = 40; 
x53.up = 40; 
x54.up = 40; 
x55.up = 40; 
x56.up = 40; 
x57.lo = 2; x57.up = 8; 
x58.lo = 2; x58.up = 8; 
x59.lo = 2; x59.up = 8; 
x60.lo = 2; x60.up = 8; 
x61.lo = 2; x61.up = 8; 
x62.lo = 2; x62.up = 8; 
x63.lo = 2; x63.up = 8; 
x64.up = 40; 
x65.up = 40; 
x66.up = 40; 
x67.up = 40; 
x68.up = 40; 
x69.up = 40; 
x70.up = 40; 
x71.up = 9; 
x72.up = 9; 
x73.up = 9; 
x74.up = 9; 
x75.up = 9; 
x76.up = 9; 
x77.up = 9; 

* set non default levels

x57.l = 2; 
x58.l = 2; 
x59.l = 2; 
x60.l = 2; 
x61.l = 2; 
x62.l = 2; 
x63.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
