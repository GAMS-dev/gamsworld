*  NLP written by GAMS Convert at 07/19/01 13:39:27
*  
*  Equation counts
*     Total       E       G       L       N       X
*        11       1       0      10       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        21      21       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       221     201      20       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - (0.5*(42*sqr(52 + x11) + 98*sqr(3 + x12) + 48*sqr(x13 - 81) + 91*sqr(
     x14 - 30) + 11*sqr(85 + x15) + 63*sqr(x16 - 68) + 61*sqr(x17 - 27) + 61*
     sqr(81 + x18) + 38*sqr(x19 - 97) + 26*sqr(73 + x20)) - 0.5*(63*sqr(19 + x1
     ) + 15*sqr(27 + x2) + 44*sqr(23 + x3) + 91*sqr(53 + x4) + 45*sqr(42 + x5)
      + 50*sqr(x6 - 26) + 89*sqr(33 + x7) + 58*sqr(23 + x8) + 86*sqr(x9 - 41)
      + 82*sqr(x10 - 19))) + objvar =E= 0;

e2..    3*x1 + 5*x2 + 5*x3 + 6*x4 + 4*x5 + 4*x6 + 5*x7 + 6*x8 + 4*x9 + 4*x10
      + 8*x11 + 4*x12 + 2*x13 + x14 + x15 + x16 + 2*x17 + x18 + 7*x19 + 3*x20
      =L= 380;

e3..    5*x1 + 4*x2 + 5*x3 + 4*x4 + x5 + 4*x6 + 4*x7 + 2*x8 + 5*x9 + 2*x10
      + 3*x11 + 6*x12 + x13 + 7*x14 + 7*x15 + 5*x16 + 8*x17 + 7*x18 + 2*x19
      + x20 =L= 415;

e4..    x1 + 5*x2 + 2*x3 + 4*x4 + 7*x5 + 3*x6 + x7 + 5*x8 + 7*x9 + 6*x10 + x11
      + 7*x12 + 2*x13 + 4*x14 + 7*x15 + 5*x16 + 3*x17 + 4*x18 + x19 + 2*x20
      =L= 385;

e5..    3*x1 + 2*x2 + 6*x3 + 3*x4 + 2*x5 + x6 + 6*x7 + x8 + 7*x9 + 3*x10
      + 7*x11 + 7*x12 + 8*x13 + 2*x14 + 3*x15 + 4*x16 + 5*x17 + 8*x18 + x19
      + 2*x20 =L= 405;

e6..    6*x1 + 6*x2 + 6*x3 + 4*x4 + 5*x5 + 2*x6 + 2*x7 + 4*x8 + 3*x9 + 2*x10
      + 7*x11 + 5*x12 + 3*x13 + 6*x14 + 7*x15 + 5*x16 + 8*x17 + 4*x18 + 6*x19
      + 3*x20 =L= 470;

e7..    5*x1 + 5*x2 + 2*x3 + x4 + 3*x5 + 5*x6 + 5*x7 + 7*x8 + 4*x9 + 3*x10
      + 4*x11 + x12 + 7*x13 + 3*x14 + 8*x15 + 3*x16 + x17 + 6*x18 + 2*x19
      + 8*x20 =L= 415;

e8..    3*x1 + 6*x2 + 6*x3 + 3*x4 + x5 + 6*x6 + x7 + 6*x8 + 7*x9 + x10 + 4*x11
      + 3*x12 + x13 + 4*x14 + 3*x15 + 6*x16 + 4*x17 + 6*x18 + 5*x19 + 4*x20
      =L= 400;

e9..    x1 + 2*x2 + x3 + 7*x4 + 8*x5 + 7*x6 + 6*x7 + 5*x8 + 8*x9 + 7*x10
      + 2*x11 + 3*x12 + 5*x13 + 5*x14 + 4*x15 + 5*x16 + 4*x17 + 2*x18 + 2*x19
      + 8*x20 =L= 460;

e10..    8*x1 + 5*x2 + 2*x3 + 5*x4 + 3*x5 + 8*x6 + x7 + 3*x8 + 3*x9 + 5*x10
       + 4*x11 + 5*x12 + 5*x13 + 6*x14 + x15 + 7*x16 + x17 + 2*x18 + 2*x19
       + 4*x20 =L= 400;

e11..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 =L= 200;

* set non default bounds


* set non default levels

x6.l = 4.348; 
x14.l = 62.609; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
