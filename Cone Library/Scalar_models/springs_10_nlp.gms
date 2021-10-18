*  LP written by GAMS Convert at 10/14/03 16:55:42
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        46      35       0       0       0       0      11
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        69      69       0       0       0       0       0       0
*  FX     4       4       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       140     140       0       0
*
*  Solve m using LP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35
          ,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52
          ,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69;

Positive Variables x2,x13,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46;


e1..    objvar - 9.8*x14 - 9.8*x15 - 9.8*x16 - 9.8*x17 - 9.8*x18 - 9.8*x19
      - 9.8*x20 - 9.8*x21 - 9.8*x22 - 100*x69 =E= 0;

e2..  - x2 + x36 =E= 0;

e3..    x2 - x3 + x37 =E= 0;

e4..    x3 - x4 + x38 =E= 0;

e5..    x4 - x5 + x39 =E= 0;

e6..    x5 - x6 + x40 =E= 0;

e7..    x6 - x7 + x41 =E= 0;

e8..    x7 - x8 + x42 =E= 0;

e9..    x8 - x9 + x43 =E= 0;

e10..    x9 - x10 + x44 =E= 0;

e11..    x10 - x11 + x45 =E= 0;

e12..    x11 - x12 + x46 =E= 0;

e13..  - x13 + x47 =E= 0;

e14..    x13 - x14 + x48 =E= 0;

e15..    x14 - x15 + x49 =E= 0;

e16..    x15 - x16 + x50 =E= 0;

e17..    x16 - x17 + x51 =E= 0;

e18..    x17 - x18 + x52 =E= 0;

e19..    x18 - x19 + x53 =E= 0;

e20..    x19 - x20 + x54 =E= 0;

e21..    x20 - x21 + x55 =E= 0;

e22..    x21 - x22 + x56 =E= 0;

e23..    x22 - x23 + x57 =E= 0;

e24..    x35 =E= 1;

e25..    x24 - x58 =E= 0.447213595499958;

e26..    x25 - x59 =E= 0.447213595499958;

e27..    x26 - x60 =E= 0.447213595499958;

e28..    x27 - x61 =E= 0.447213595499958;

e29..    x28 - x62 =E= 0.447213595499958;

e30..    x29 - x63 =E= 0.447213595499958;

e31..    x30 - x64 =E= 0.447213595499958;

e32..    x31 - x65 =E= 0.447213595499958;

e33..    x32 - x66 =E= 0.447213595499958;

e34..    x33 - x67 =E= 0.447213595499958;

e35..    x34 - x68 =E= 0.447213595499958;

e36.. x25 =G= SQRT(SQR(x37)+SQR(x48));
e37.. x26 =G= SQRT(SQR(x38)+SQR(x49));
e38.. x27 =G= SQRT(SQR(x39)+SQR(x50));
e39.. x28 =G= SQRT(SQR(x40)+SQR(x51));
e40.. x29 =G= SQRT(SQR(x41)+SQR(x52));
e41.. x30 =G= SQRT(SQR(x42)+SQR(x53));
e42.. x31 =G= SQRT(SQR(x43)+SQR(x54));
e43.. x32 =G= SQRT(SQR(x44)+SQR(x55));
e44.. x33 =G= SQRT(SQR(x45)+SQR(x56));
e45.. x34 =G= SQRT(SQR(x46)+SQR(x57));
e46.. x35*x69*2 =G= SQR(x59)+SQR(x60)+SQR(x61)+SQR(x62)+SQR(x63)+SQR(x64)
      +SQR(x65)+SQR(x66)+SQR(x67)+SQR(x68);
* set non default bounds

x2.fx = 0; 
x12.fx = 2; 
x13.fx = 0; 
x23.fx = -1; 

* set non default levels

x3.l = 0.2; 
x4.l = 0.4; 
x5.l = 0.6; 
x6.l = 0.8; 
x7.l = 1; 
x8.l = 1.2; 
x9.l = 1.4; 
x10.l = 1.6; 
x11.l = 1.8; 
x14.l = -0.1; 
x15.l = -0.2; 
x16.l = -0.3; 
x17.l = -0.4; 
x18.l = -0.5; 
x19.l = -0.6; 
x20.l = -0.7; 
x21.l = -0.8; 
x22.l = -0.9; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
