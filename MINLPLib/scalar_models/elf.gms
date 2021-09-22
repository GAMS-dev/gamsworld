$offlisting
*  MINLP written by GAMS Convert at 04/18/01 12:06:34
*  
*  Equation counts
*     Total       E       G       L       N       X
*        39       7      32       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        55      31      24       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       178     148      30       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,objvar;

Positive Variables x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39
          ,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54;

Binary Variables b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39;


e1..  - sqr(8 - x49) - 100*b1 + x25 =G= -100;

e2..  - sqr(8 - x50) - 100*b2 + x26 =G= -100;

e3..  - sqr(8 - x51) - 100*b3 + x27 =G= -100;

e4..  - sqr(8.5 - x49) - 100*b4 + x28 =G= -100;

e5..  - sqr(8.5 - x50) - 100*b5 + x29 =G= -100;

e6..  - sqr(8.5 - x51) - 100*b6 + x30 =G= -100;

e7..  - sqr(8.3 - x49) - 100*b7 + x31 =G= -100;

e8..  - sqr(8.3 - x50) - 100*b8 + x32 =G= -100;

e9..  - sqr(8.3 - x51) - 100*b9 + x33 =G= -100;

e10..  - sqr(8.7 - x49) - 100*b10 + x34 =G= -100;

e11..  - sqr(8.7 - x50) - 100*b11 + x35 =G= -100;

e12..  - sqr(8.7 - x51) - 100*b12 + x36 =G= -100;

e13..  - sqr(8.6 - x49) - 100*b13 + x37 =G= -100;

e14..  - sqr(8.6 - x50) - 100*b14 + x38 =G= -100;

e15..  - sqr(8.6 - x51) - 100*b15 + x39 =G= -100;

e16..  - sqr(9 - x49) - 100*b16 + x40 =G= -100;

e17..  - sqr(9 - x50) - 100*b17 + x41 =G= -100;

e18..  - sqr(9 - x51) - 100*b18 + x42 =G= -100;

e19..  - sqr(9.2 - x49) - 100*b19 + x43 =G= -100;

e20..  - sqr(9.2 - x50) - 100*b20 + x44 =G= -100;

e21..  - sqr(9.2 - x51) - 100*b21 + x45 =G= -100;

e22..  - sqr(9.5 - x49) - 100*b22 + x46 =G= -100;

e23..  - sqr(9.5 - x50) - 100*b23 + x47 =G= -100;

e24..  - sqr(9.5 - x51) - 100*b24 + x48 =G= -100;

e25..    b1 + b2 + b3 =G= 1;

e26..    b4 + b5 + b6 =G= 1;

e27..    b7 + b8 + b9 =G= 1;

e28..    b10 + b11 + b12 =G= 1;

e29..    b13 + b14 + b15 =G= 1;

e30..    b16 + b17 + b18 =G= 1;

e31..    b19 + b20 + b21 =G= 1;

e32..    b22 + b23 + b24 =G= 1;

e33..  - b1 - b4 - b7 - b10 - b13 - b16 - b19 - b22 + x52 =E= 0;

e34..  - b2 - b5 - b8 - b11 - b14 - b17 - b20 - b23 + x53 =E= 0;

e35..  - b3 - b6 - b9 - b12 - b15 - b18 - b21 - b24 + x54 =E= 0;

e36.. x52*x49 - 8*b1 - 8.5*b4 - 8.3*b7 - 8.7*b10 - 8.6*b13 - 9*b16 - 9.2*b19
       - 9.5*b22 =E= 0;

e37.. x53*x50 - 8*b2 - 8.5*b5 - 8.3*b8 - 8.7*b11 - 8.6*b14 - 9*b17 - 9.2*b20
       - 9.5*b23 =E= 0;

e38.. x54*x51 - 8*b3 - 8.5*b6 - 8.3*b9 - 8.7*b12 - 8.6*b15 - 9*b18 - 9.2*b21
       - 9.5*b24 =E= 0;

e39..  - x25 - x26 - x27 - x28 - x29 - x30 - x31 - x32 - x33 - x34 - x35 - x36
       - x37 - x38 - x39 - x40 - x41 - x42 - x43 - x44 - x45 - x46 - x47 - x48
       + objvar =E= 0;

* set non default bounds


$if set nostart $goto modeldef
* set non default levels


* set non default marginals

 b1.l = 0.33;
 b2.l = 0.33;
 b3.l = 0.33;
 b4.l = 0.33;
 b5.l = 0.33;
 b6.l = 0.33;
 b7.l = 0.33;
 b8.l = 0.33;
 b9.l = 0.33;
 b10.l = 0.33;
 b11.l = 0.33;
 b12.l = 0.33;
 b13.l = 0.33;
 b14.l = 0.33;
 b15.l = 0.33;
 b16.l = 0.33;
 b17.l = 0.33;
 b18.l = 0.33;
 b19.l = 0.33;
 b20.l = 0.33;
 b21.l = 0.33;
 b22.l = 0.33;
 b23.l = 0.33;
 b23.l = 0.33;

$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
