$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:13
*  
*  Equation counts
*     Total       E       G       L       N       X
*        75      31       6      38       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       131      31     100       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       347     297      50       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103
          ,b104,b105,x106,x107,x108,x109,x110,b111,b112,b113,b114,b115,b116
          ,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127,b128,b129
          ,b130,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x106,x107,x108,x109,x110;

Binary Variables b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36,b37,b38,b39,b40
          ,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53,b54,b55,b56,b57
          ,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70,b71,b72,b73,b74
          ,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87,b88,b89,b90,b91
          ,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103,b104,b105,b111
          ,b112,b113,b114,b115,b116,b117,b118,b119,b120,b121,b122,b123,b124
          ,b125,b126,b127,b128,b129,b130;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75;


e1..  - 0.1*b101 - 0.2*b102 - 0.3*b103 - 0.4*b104 - 0.5*b105 - x106 - x107
      - x108 - x109 - x110 + objvar =E= 0;

e2.. x106*x1 + x107*x2 + x108*x3 + x109*x4 + x110*x5 =G= 12;

e3.. x106*x6 + x107*x7 + x108*x8 + x109*x9 + x110*x10 =G= 6;

e4.. x106*x11 + x107*x12 + x108*x13 + x109*x14 + x110*x15 =G= 15;

e5.. x106*x16 + x107*x17 + x108*x18 + x109*x19 + x110*x20 =G= 6;

e6.. x106*x21 + x107*x22 + x108*x23 + x109*x24 + x110*x25 =G= 9;

e7..  - 330*x1 - 360*x6 - 370*x11 - 415*x16 - 435*x21 + 1800*b101 =L= 0;

e8..  - 330*x2 - 360*x7 - 370*x12 - 415*x17 - 435*x22 + 1800*b102 =L= 0;

e9..  - 330*x3 - 360*x8 - 370*x13 - 415*x18 - 435*x23 + 1800*b103 =L= 0;

e10..  - 330*x4 - 360*x9 - 370*x14 - 415*x19 - 435*x24 + 1800*b104 =L= 0;

e11..  - 330*x5 - 360*x10 - 370*x15 - 415*x20 - 435*x25 + 1800*b105 =L= 0;

e12..    330*x1 + 360*x6 + 370*x11 + 415*x16 + 435*x21 - 2000*b101 =L= 0;

e13..    330*x2 + 360*x7 + 370*x12 + 415*x17 + 435*x22 - 2000*b102 =L= 0;

e14..    330*x3 + 360*x8 + 370*x13 + 415*x18 + 435*x23 - 2000*b103 =L= 0;

e15..    330*x4 + 360*x9 + 370*x14 + 415*x19 + 435*x24 - 2000*b104 =L= 0;

e16..    330*x5 + 360*x10 + 370*x15 + 415*x20 + 435*x25 - 2000*b105 =L= 0;

e17..  - x1 - x6 - x11 - x16 - x21 + b101 =L= 0;

e18..  - x2 - x7 - x12 - x17 - x22 + b102 =L= 0;

e19..  - x3 - x8 - x13 - x18 - x23 + b103 =L= 0;

e20..  - x4 - x9 - x14 - x19 - x24 + b104 =L= 0;

e21..  - x5 - x10 - x15 - x20 - x25 + b105 =L= 0;

e22..    x1 + x6 + x11 + x16 + x21 - 5*b101 =L= 0;

e23..    x2 + x7 + x12 + x17 + x22 - 5*b102 =L= 0;

e24..    x3 + x8 + x13 + x18 + x23 - 5*b103 =L= 0;

e25..    x4 + x9 + x14 + x19 + x24 - 5*b104 =L= 0;

e26..    x5 + x10 + x15 + x20 + x25 - 5*b105 =L= 0;

e27..    b101 - x106 =L= 0;

e28..    b102 - x107 =L= 0;

e29..    b103 - x108 =L= 0;

e30..    b104 - x109 =L= 0;

e31..    b105 - x110 =L= 0;

e32..  - 15*b101 + x106 =L= 0;

e33..  - 12*b102 + x107 =L= 0;

e34..  - 9*b103 + x108 =L= 0;

e35..  - 6*b104 + x109 =L= 0;

e36..  - 6*b105 + x110 =L= 0;

e37..    x106 + x107 + x108 + x109 + x110 =G= 10;

e38..  - b101 + b102 =L= 0;

e39..  - b102 + b103 =L= 0;

e40..  - b103 + b104 =L= 0;

e41..  - b104 + b105 =L= 0;

e42..  - x106 + x107 =L= 0;

e43..  - x107 + x108 =L= 0;

e44..  - x108 + x109 =L= 0;

e45..  - x109 + x110 =L= 0;

e46..    x1 - b26 - 2*b27 - 4*b28 =E= 0;

e47..    x2 - b29 - 2*b30 - 4*b31 =E= 0;

e48..    x3 - b32 - 2*b33 - 4*b34 =E= 0;

e49..    x4 - b35 - 2*b36 - 4*b37 =E= 0;

e50..    x5 - b38 - 2*b39 - 4*b40 =E= 0;

e51..    x6 - b41 - 2*b42 - 4*b43 =E= 0;

e52..    x7 - b44 - 2*b45 - 4*b46 =E= 0;

e53..    x8 - b47 - 2*b48 - 4*b49 =E= 0;

e54..    x9 - b50 - 2*b51 - 4*b52 =E= 0;

e55..    x10 - b53 - 2*b54 - 4*b55 =E= 0;

e56..    x11 - b56 - 2*b57 - 4*b58 =E= 0;

e57..    x12 - b59 - 2*b60 - 4*b61 =E= 0;

e58..    x13 - b62 - 2*b63 - 4*b64 =E= 0;

e59..    x14 - b65 - 2*b66 - 4*b67 =E= 0;

e60..    x15 - b68 - 2*b69 - 4*b70 =E= 0;

e61..    x16 - b71 - 2*b72 - 4*b73 =E= 0;

e62..    x17 - b74 - 2*b75 - 4*b76 =E= 0;

e63..    x18 - b77 - 2*b78 - 4*b79 =E= 0;

e64..    x19 - b80 - 2*b81 - 4*b82 =E= 0;

e65..    x20 - b83 - 2*b84 - 4*b85 =E= 0;

e66..    x21 - b86 - 2*b87 - 4*b88 =E= 0;

e67..    x22 - b89 - 2*b90 - 4*b91 =E= 0;

e68..    x23 - b92 - 2*b93 - 4*b94 =E= 0;

e69..    x24 - b95 - 2*b96 - 4*b97 =E= 0;

e70..    x25 - b98 - 2*b99 - 4*b100 =E= 0;

e71..    x106 - b111 - 2*b112 - 4*b113 - 8*b114 =E= 0;

e72..    x107 - b115 - 2*b116 - 4*b117 - 8*b118 =E= 0;

e73..    x108 - b119 - 2*b120 - 4*b121 - 8*b122 =E= 0;

e74..    x109 - b123 - 2*b124 - 4*b125 - 8*b126 =E= 0;

e75..    x110 - b127 - 2*b128 - 4*b129 - 8*b130 =E= 0;

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
x17.up = 5; 
x18.up = 5; 
x19.up = 5; 
x20.up = 5; 
x21.up = 5; 
x22.up = 5; 
x23.up = 5; 
x24.up = 5; 
x25.up = 5; 
x106.up = 15; 
x107.up = 12; 
x108.up = 9; 
x109.up = 6; 
x110.up = 6; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
