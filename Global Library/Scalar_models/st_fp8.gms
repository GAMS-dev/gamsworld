*  NLP written by GAMS Convert at 08/30/02 10:59:21
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        21       1       0      20       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        25      25       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       121      97      24       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..  - x1 - x5 - x9 - x13 - x17 - x21 =L= -29;

e2..    x1 + x5 + x9 + x13 + x17 + x21 =L= 29;

e3..  - x2 - x6 - x10 - x14 - x18 - x22 =L= -41;

e4..    x2 + x6 + x10 + x14 + x18 + x22 =L= 41;

e5..  - x3 - x7 - x11 - x15 - x19 - x23 =L= -13;

e6..    x3 + x7 + x11 + x15 + x19 + x23 =L= 13;

e7..  - x4 - x8 - x12 - x16 - x20 - x24 =L= -21;

e8..    x4 + x8 + x12 + x16 + x20 + x24 =L= 21;

e9..  - x1 - x2 - x3 - x4 =L= -8;

e10..    x1 + x2 + x3 + x4 =L= 8;

e11..  - x5 - x6 - x7 - x8 =L= -24;

e12..    x5 + x6 + x7 + x8 =L= 24;

e13..  - x9 - x10 - x11 - x12 =L= -20;

e14..    x9 + x10 + x11 + x12 =L= 20;

e15..  - x13 - x14 - x15 - x16 =L= -24;

e16..    x13 + x14 + x15 + x16 =L= 24;

e17..  - x17 - x18 - x19 - x20 =L= -16;

e18..    x17 + x18 + x19 + x20 =L= 16;

e19..  - x21 - x22 - x23 - x24 =L= -12;

e20..    x21 + x22 + x23 + x24 =L= 12;

e21..  - (300*x1 - 7*sqr(x1) - 4*sqr(x2) + 270*x2 - 6*sqr(x3) + 460*x3 - 8*sqr(
      x4) + 800*x4 - 12*sqr(x5) + 740*x5 - 9*sqr(x6) + 600*x6 - 14*sqr(x7) + 
      540*x7 - 7*sqr(x8) + 380*x8 - 13*sqr(x9) + 300*x9 - 12*sqr(x10) + 490*x10
       - 8*sqr(x11) + 380*x11 - 4*sqr(x12) + 760*x12 - 7*sqr(x13) + 430*x13 - 9
      *sqr(x14) + 250*x14 - 16*sqr(x15) + 390*x15 - 8*sqr(x16) + 600*x16 - 4*
      sqr(x17) + 210*x17 - 10*sqr(x18) + 830*x18 - 21*sqr(x19) + 470*x19 - 13*
      sqr(x20) + 680*x20 - 17*sqr(x21) + 360*x21 - 9*sqr(x22) + 290*x22 - 8*
      sqr(x23) + 400*x23 - 4*sqr(x24) + 310*x24) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
