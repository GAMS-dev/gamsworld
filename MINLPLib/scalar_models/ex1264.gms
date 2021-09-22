$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:06
*  
*  Equation counts
*     Total       E       G       L       N       X
*        56      21       5      30       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        89      21      68       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       237     205      32       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,x69,x70
          ,x71,x72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x69
          ,x70,x71,x72;

Binary Variables b17,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31
          ,b32,b33,b34,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48
          ,b49,b50,b51,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65
          ,b66,b67,b68,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86
          ,b87,b88;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56;


e1..  - 0.1*b65 - 0.2*b66 - 0.3*b67 - 0.4*b68 - x69 - x70 - x71 - x72 + objvar
      =E= 0;

e2.. x69*x1 + x70*x2 + x71*x3 + x72*x4 =G= 9;

e3.. x69*x5 + x70*x6 + x71*x7 + x72*x8 =G= 7;

e4.. x69*x9 + x70*x10 + x71*x11 + x72*x12 =G= 12;

e5.. x69*x13 + x70*x14 + x71*x15 + x72*x16 =G= 11;

e6..  - 330*x1 - 360*x5 - 385*x9 - 415*x13 + 1700*b65 =L= 0;

e7..  - 330*x2 - 360*x6 - 385*x10 - 415*x14 + 1700*b66 =L= 0;

e8..  - 330*x3 - 360*x7 - 385*x11 - 415*x15 + 1700*b67 =L= 0;

e9..  - 330*x4 - 360*x8 - 385*x12 - 415*x16 + 1700*b68 =L= 0;

e10..    330*x1 + 360*x5 + 385*x9 + 415*x13 - 1900*b65 =L= 0;

e11..    330*x2 + 360*x6 + 385*x10 + 415*x14 - 1900*b66 =L= 0;

e12..    330*x3 + 360*x7 + 385*x11 + 415*x15 - 1900*b67 =L= 0;

e13..    330*x4 + 360*x8 + 385*x12 + 415*x16 - 1900*b68 =L= 0;

e14..  - x1 - x5 - x9 - x13 + b65 =L= 0;

e15..  - x2 - x6 - x10 - x14 + b66 =L= 0;

e16..  - x3 - x7 - x11 - x15 + b67 =L= 0;

e17..  - x4 - x8 - x12 - x16 + b68 =L= 0;

e18..    x1 + x5 + x9 + x13 - 5*b65 =L= 0;

e19..    x2 + x6 + x10 + x14 - 5*b66 =L= 0;

e20..    x3 + x7 + x11 + x15 - 5*b67 =L= 0;

e21..    x4 + x8 + x12 + x16 - 5*b68 =L= 0;

e22..    b65 - x69 =L= 0;

e23..    b66 - x70 =L= 0;

e24..    b67 - x71 =L= 0;

e25..    b68 - x72 =L= 0;

e26..  - 15*b65 + x69 =L= 0;

e27..  - 12*b66 + x70 =L= 0;

e28..  - 9*b67 + x71 =L= 0;

e29..  - 6*b68 + x72 =L= 0;

e30..    x69 + x70 + x71 + x72 =G= 8;

e31..  - b65 + b66 =L= 0;

e32..  - b66 + b67 =L= 0;

e33..  - b67 + b68 =L= 0;

e34..  - x69 + x70 =L= 0;

e35..  - x70 + x71 =L= 0;

e36..  - x71 + x72 =L= 0;

e37..    x1 - b17 - 2*b18 - 4*b19 =E= 0;

e38..    x2 - b20 - 2*b21 - 4*b22 =E= 0;

e39..    x3 - b23 - 2*b24 - 4*b25 =E= 0;

e40..    x4 - b26 - 2*b27 - 4*b28 =E= 0;

e41..    x5 - b29 - 2*b30 - 4*b31 =E= 0;

e42..    x6 - b32 - 2*b33 - 4*b34 =E= 0;

e43..    x7 - b35 - 2*b36 - 4*b37 =E= 0;

e44..    x8 - b38 - 2*b39 - 4*b40 =E= 0;

e45..    x9 - b41 - 2*b42 - 4*b43 =E= 0;

e46..    x10 - b44 - 2*b45 - 4*b46 =E= 0;

e47..    x11 - b47 - 2*b48 - 4*b49 =E= 0;

e48..    x12 - b50 - 2*b51 - 4*b52 =E= 0;

e49..    x13 - b53 - 2*b54 - 4*b55 =E= 0;

e50..    x14 - b56 - 2*b57 - 4*b58 =E= 0;

e51..    x15 - b59 - 2*b60 - 4*b61 =E= 0;

e52..    x16 - b62 - 2*b63 - 4*b64 =E= 0;

e53..    x69 - b73 - 2*b74 - 4*b75 - 8*b76 =E= 0;

e54..    x70 - b77 - 2*b78 - 4*b79 - 8*b80 =E= 0;

e55..    x71 - b81 - 2*b82 - 4*b83 - 8*b84 =E= 0;

e56..    x72 - b85 - 2*b86 - 4*b87 - 8*b88 =E= 0;

* set non default bounds

x1.up = 5; 
x2.up = 5; 
x3.up = 5; 
x4.up = 5; 
x5.up = 5; 
x6.up = 5; 
x7.up = 5; 
x8.up = 5; 
x9.up = 5; 
x10.up = 5; 
x11.up = 5; 
x12.up = 5; 
x13.up = 5; 
x14.up = 5; 
x15.up = 5; 
x16.up = 5; 
x69.up = 15; 
x70.up = 12; 
x71.up = 9; 
x72.up = 6; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
