$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:57
*  
*  Equation counts
*     Total       E       G       L       N       X
*        45       9      14      22       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        36      22      14       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       111     104       7       0
*
*  Solve m using MINLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35
          ,b36;

Positive Variables x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22;

Binary Variables b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45;


e1..    x2 + x3 + x4 + x5 + x6 + x7 + x8 =E= 1;

e2..    x2 - x9 + x16 =E= 0.2;

e3..    x3 - x10 + x17 =E= 0.2;

e4..    x4 - x11 + x18 =E= 0;

e5..    x5 - x12 + x19 =E= 0;

e6..    x6 - x13 + x20 =E= 0.2;

e7..    x7 - x14 + x21 =E= 0.2;

e8..    x8 - x15 + x22 =E= 0.2;

e9..    x9 + x10 + x11 + x12 + x13 + x14 + x15 =L= 0.3;

e10..    x9 - 0.11*b23 =L= 0;

e11..    x10 - 0.1*b24 =L= 0;

e12..    x11 - 0.07*b25 =L= 0;

e13..    x12 - 0.11*b26 =L= 0;

e14..    x13 - 0.2*b27 =L= 0;

e15..    x14 - 0.1*b28 =L= 0;

e16..    x15 - 0.1*b29 =L= 0;

e17..    x9 - 0.03*b23 =G= 0;

e18..    x10 - 0.04*b24 =G= 0;

e19..    x11 - 0.04*b25 =G= 0;

e20..    x12 - 0.03*b26 =G= 0;

e21..    x13 - 0.03*b27 =G= 0;

e22..    x14 - 0.03*b28 =G= 0;

e23..    x15 - 0.03*b29 =G= 0;

e24..    x16 - 0.2*b30 =L= 0;

e25..    x17 - 0.15*b31 =L= 0;

e26..    x18 =L= 0;

e27..    x19 =L= 0;

e28..    x20 - 0.1*b34 =L= 0;

e29..    x21 - 0.15*b35 =L= 0;

e30..    x22 - 0.2*b36 =L= 0;

e31..    x16 - 0.02*b30 =G= 0;

e32..    x17 - 0.02*b31 =G= 0;

e33..    x18 - 0.04*b32 =G= 0;

e34..    x19 - 0.04*b33 =G= 0;

e35..    x20 - 0.04*b34 =G= 0;

e36..    x21 - 0.04*b35 =G= 0;

e37..    x22 - 0.04*b36 =G= 0;

e38..    b23 + b30 =L= 1;

e39..    b24 + b31 =L= 1;

e40..    b25 + b32 =L= 1;

e41..    b26 + b33 =L= 1;

e42..    b27 + b34 =L= 1;

e43..    b28 + b35 =L= 1;

e44..    b29 + b36 =L= 1;

e45..  - (42.18*x2*x2 + 40.36*x2*x3 + 21.76*x2*x4 + 10.6*x2*x5 + 24.64*x2*x6 + 
      47.68*x2*x7 + 34.82*x2*x8 + 70.89*x3*x3 + 43.16*x3*x4 + 30.82*x3*x5 + 
      46.48*x3*x6 + 47.6*x3*x7 + 25.24*x3*x8 + 25.51*x4*x4 + 19.2*x4*x5 + 45.26
      *x4*x6 + 26.44*x4*x7 + 9.4*x4*x8 + 22.33*x5*x5 + 20.64*x5*x6 + 20.92*x5*
      x7 + 2*x5*x8 + 30.01*x6*x6 + 32.72*x6*x7 + 14.4*x6*x8 + 42.23*x7*x7 + 
      19.8*x7*x8 + 16.42*x8*x8 - 0.06435*x2 - 0.0548*x3 - 0.02505*x4 - 0.0762*
      x5 - 0.03815*x6 - 0.0927*x7 - 0.031*x8) + objvar =E= 0;

* set non default bounds


$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
