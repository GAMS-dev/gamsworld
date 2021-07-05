$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:20
*  
*  Equation counts
*     Total       E       G       L       N       X
*        96      43       7      46       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       181      43     138       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       476     404      72       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103
          ,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114,b115,b116
          ,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127,b128,b129
          ,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140,b141,b142
          ,b143,b144,b145,b146,b147,b148,b149,b150,x151,x152,x153,x154,x155
          ,x156,b157,b158,b159,b160,b161,b162,b163,b164,b165,b166,b167,b168
          ,b169,b170,b171,b172,b173,b174,b175,b176,b177,b178,b179,b180,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x151,x152,x153,x154,x155,x156;

Binary Variables b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51
          ,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68
          ,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85
          ,b86,b87,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101
          ,b102,b103,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114
          ,b115,b116,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127
          ,b128,b129,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140
          ,b141,b142,b143,b144,b145,b146,b147,b148,b149,b150,b157,b158,b159
          ,b160,b161,b162,b163,b164,b165,b166,b167,b168,b169,b170,b171,b172
          ,b173,b174,b175,b176,b177,b178,b179,b180;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96;


e1..  - 0.1*b145 - 0.2*b146 - 0.3*b147 - 0.4*b148 - 0.5*b149 - x151 - x152
      - x153 - x154 - x155 - x156 + objvar =E= 0;

e2.. x151*x1 + x152*x2 + x153*x3 + x154*x4 + x155*x5 + x156*x6 =G= 8;

e3.. x151*x7 + x152*x8 + x153*x9 + x154*x10 + x155*x11 + x156*x12 =G= 16;

e4.. x151*x13 + x152*x14 + x153*x15 + x154*x16 + x155*x17 + x156*x18 =G= 12;

e5.. x151*x19 + x152*x20 + x153*x21 + x154*x22 + x155*x23 + x156*x24 =G= 7;

e6.. x151*x25 + x152*x26 + x153*x27 + x154*x28 + x155*x29 + x156*x30 =G= 14;

e7.. x151*x31 + x152*x32 + x153*x33 + x154*x34 + x155*x35 + x156*x36 =G= 16;

e8..  - 330*x1 - 360*x7 - 380*x13 - 430*x19 - 490*x25 - 530*x31 + 2100*b145
      =L= 0;

e9..  - 330*x2 - 360*x8 - 380*x14 - 430*x20 - 490*x26 - 530*x32 + 2100*b146
      =L= 0;

e10..  - 330*x3 - 360*x9 - 380*x15 - 430*x21 - 490*x27 - 530*x33 + 2100*b147
       =L= 0;

e11..  - 330*x4 - 360*x10 - 380*x16 - 430*x22 - 490*x28 - 530*x34 + 2100*b148
       =L= 0;

e12..  - 330*x5 - 360*x11 - 380*x17 - 430*x23 - 490*x29 - 530*x35 + 2100*b149
       =L= 0;

e13..  - 330*x6 - 360*x12 - 380*x18 - 430*x24 - 490*x30 - 530*x36 + 2100*b150
       =L= 0;

e14..    330*x1 + 360*x7 + 380*x13 + 430*x19 + 490*x25 + 530*x31 - 2200*b145
       =L= 0;

e15..    330*x2 + 360*x8 + 380*x14 + 430*x20 + 490*x26 + 530*x32 - 2200*b146
       =L= 0;

e16..    330*x3 + 360*x9 + 380*x15 + 430*x21 + 490*x27 + 530*x33 - 2200*b147
       =L= 0;

e17..    330*x4 + 360*x10 + 380*x16 + 430*x22 + 490*x28 + 530*x34 - 2200*b148
       =L= 0;

e18..    330*x5 + 360*x11 + 380*x17 + 430*x23 + 490*x29 + 530*x35 - 2200*b149
       =L= 0;

e19..    330*x6 + 360*x12 + 380*x18 + 430*x24 + 490*x30 + 530*x36 - 2200*b150
       =L= 0;

e20..  - x1 - x7 - x13 - x19 - x25 - x31 + b145 =L= 0;

e21..  - x2 - x8 - x14 - x20 - x26 - x32 + b146 =L= 0;

e22..  - x3 - x9 - x15 - x21 - x27 - x33 + b147 =L= 0;

e23..  - x4 - x10 - x16 - x22 - x28 - x34 + b148 =L= 0;

e24..  - x5 - x11 - x17 - x23 - x29 - x35 + b149 =L= 0;

e25..  - x6 - x12 - x18 - x24 - x30 - x36 + b150 =L= 0;

e26..    x1 + x7 + x13 + x19 + x25 + x31 - 5*b145 =L= 0;

e27..    x2 + x8 + x14 + x20 + x26 + x32 - 5*b146 =L= 0;

e28..    x3 + x9 + x15 + x21 + x27 + x33 - 5*b147 =L= 0;

e29..    x4 + x10 + x16 + x22 + x28 + x34 - 5*b148 =L= 0;

e30..    x5 + x11 + x17 + x23 + x29 + x35 - 5*b149 =L= 0;

e31..    x6 + x12 + x18 + x24 + x30 + x36 - 5*b150 =L= 0;

e32..    b145 - x151 =L= 0;

e33..    b146 - x152 =L= 0;

e34..    b147 - x153 =L= 0;

e35..    b148 - x154 =L= 0;

e36..    b149 - x155 =L= 0;

e37..    b150 - x156 =L= 0;

e38..  - 15*b145 + x151 =L= 0;

e39..  - 12*b146 + x152 =L= 0;

e40..  - 8*b147 + x153 =L= 0;

e41..  - 7*b148 + x154 =L= 0;

e42..  - 4*b149 + x155 =L= 0;

e43..  - 2*b150 + x156 =L= 0;

e44..    x151 + x152 + x153 + x154 + x155 + x156 =G= 16;

e45..  - b145 + b146 =L= 0;

e46..  - b146 + b147 =L= 0;

e47..  - b147 + b148 =L= 0;

e48..  - b148 + b149 =L= 0;

e49..  - b149 + b150 =L= 0;

e50..  - x151 + x152 =L= 0;

e51..  - x152 + x153 =L= 0;

e52..  - x153 + x154 =L= 0;

e53..  - x154 + x155 =L= 0;

e54..  - x155 + x156 =L= 0;

e55..    x1 - b37 - 2*b38 - 4*b39 =E= 0;

e56..    x2 - b40 - 2*b41 - 4*b42 =E= 0;

e57..    x3 - b43 - 2*b44 - 4*b45 =E= 0;

e58..    x4 - b46 - 2*b47 - 4*b48 =E= 0;

e59..    x5 - b49 - 2*b50 - 4*b51 =E= 0;

e60..    x6 - b52 - 2*b53 - 4*b54 =E= 0;

e61..    x7 - b55 - 2*b56 - 4*b57 =E= 0;

e62..    x8 - b58 - 2*b59 - 4*b60 =E= 0;

e63..    x9 - b61 - 2*b62 - 4*b63 =E= 0;

e64..    x10 - b64 - 2*b65 - 4*b66 =E= 0;

e65..    x11 - b67 - 2*b68 - 4*b69 =E= 0;

e66..    x12 - b70 - 2*b71 - 4*b72 =E= 0;

e67..    x13 - b73 - 2*b74 - 4*b75 =E= 0;

e68..    x14 - b76 - 2*b77 - 4*b78 =E= 0;

e69..    x15 - b79 - 2*b80 - 4*b81 =E= 0;

e70..    x16 - b82 - 2*b83 - 4*b84 =E= 0;

e71..    x17 - b85 - 2*b86 - 4*b87 =E= 0;

e72..    x18 - b88 - 2*b89 - 4*b90 =E= 0;

e73..    x19 - b91 - 2*b92 - 4*b93 =E= 0;

e74..    x20 - b94 - 2*b95 - 4*b96 =E= 0;

e75..    x21 - b97 - 2*b98 - 4*b99 =E= 0;

e76..    x22 - b100 - 2*b101 - 4*b102 =E= 0;

e77..    x23 - b103 - 2*b104 - 4*b105 =E= 0;

e78..    x24 - b106 - 2*b107 - 4*b108 =E= 0;

e79..    x25 - b109 - 2*b110 - 4*b111 =E= 0;

e80..    x26 - b112 - 2*b113 - 4*b114 =E= 0;

e81..    x27 - b115 - 2*b116 - 4*b117 =E= 0;

e82..    x28 - b118 - 2*b119 - 4*b120 =E= 0;

e83..    x29 - b121 - 2*b122 - 4*b123 =E= 0;

e84..    x30 - b124 - 2*b125 - 4*b126 =E= 0;

e85..    x31 - b127 - 2*b128 - 4*b129 =E= 0;

e86..    x32 - b130 - 2*b131 - 4*b132 =E= 0;

e87..    x33 - b133 - 2*b134 - 4*b135 =E= 0;

e88..    x34 - b136 - 2*b137 - 4*b138 =E= 0;

e89..    x35 - b139 - 2*b140 - 4*b141 =E= 0;

e90..    x36 - b142 - 2*b143 - 4*b144 =E= 0;

e91..    x151 - b157 - 2*b158 - 4*b159 - 8*b160 =E= 0;

e92..    x152 - b161 - 2*b162 - 4*b163 - 8*b164 =E= 0;

e93..    x153 - b165 - 2*b166 - 4*b167 - 8*b168 =E= 0;

e94..    x154 - b169 - 2*b170 - 4*b171 - 8*b172 =E= 0;

e95..    x155 - b173 - 2*b174 - 4*b175 - 8*b176 =E= 0;

e96..    x156 - b177 - 2*b178 - 4*b179 - 8*b180 =E= 0;

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
x26.up = 5; 
x27.up = 5; 
x28.up = 5; 
x29.up = 5; 
x30.up = 5; 
x31.up = 5; 
x32.up = 5; 
x33.up = 5; 
x34.up = 5; 
x35.up = 5; 
x36.up = 5; 
x151.up = 15; 
x152.up = 12; 
x153.up = 8; 
x154.up = 7; 
x155.up = 4; 
x156.up = 2; 

$if set nostart $goto modeldef
* set non default levels

x1.l = 1; 
x7.l = 2; 
x14.l = 2; 
x20.l = 1; 
x26.l = 2; 
x31.l = 1; 
x151.l = 8; 
x152.l = 7; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;