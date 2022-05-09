*  NLP written by GAMS Convert at 07/19/01 13:39:30
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
*       185     165      20       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1.. 0.5*(sqr(x1 - 2) + 2*sqr(x2 - 2) + 3*sqr(x3 - 2) + 4*sqr(x4 - 2) + 5*sqr(
     x5 - 2) + 6*sqr(x6 - 2) + 7*sqr(x7 - 2) + 8*sqr(x8 - 2) + 9*sqr(x9 - 2) + 
     10*sqr(x10 - 2) + 11*sqr(x11 - 2) + 12*sqr(x12 - 2) + 13*sqr(x13 - 2) + 14
     *sqr(x14 - 2) + 15*sqr(x15 - 2) + 16*sqr(x16 - 2) + 17*sqr(x17 - 2) + 18*
     sqr(x18 - 2) + 19*sqr(x19 - 2) + 20*sqr(x20 - 2)) + objvar =E= 0;

e2..  - 3*x1 + 7*x2 - 5*x4 + x5 + x6 + 2*x8 - x9 - x10 - 9*x11 + 3*x12 + 5*x13
      + x16 + 7*x17 - 7*x18 - 4*x19 - 6*x20 =L= -5;

e3..    7*x1 - 5*x3 + x4 + x5 + 2*x7 - x8 - x9 - 9*x10 + 3*x11 + 5*x12 + x15
      + 7*x16 - 7*x17 - 4*x18 - 6*x19 - 3*x20 =L= 2;

e4..  - 5*x2 + x3 + x4 + 2*x6 - x7 - x8 - 9*x9 + 3*x10 + 5*x11 + x14 + 7*x15
      - 7*x16 - 4*x17 - 6*x18 - 3*x19 + 7*x20 =L= -1;

e5..  - 5*x1 + x2 + x3 + 2*x5 - x6 - x7 - 9*x8 + 3*x9 + 5*x10 + x13 + 7*x14
      - 7*x15 - 4*x16 - 6*x17 - 3*x18 + 7*x19 =L= -3;

e6..    x1 + x2 + 2*x4 - x5 - x6 - 9*x7 + 3*x8 + 5*x9 + x12 + 7*x13 - 7*x14
      - 4*x15 - 6*x16 - 3*x17 + 7*x18 - 5*x20 =L= 5;

e7..    x1 + 2*x3 - x4 - x5 - 9*x6 + 3*x7 + 5*x8 + x11 + 7*x12 - 7*x13 - 4*x14
      - 6*x15 - 3*x16 + 7*x17 - 5*x19 + x20 =L= 4;

e8..    2*x2 - x3 - x4 - 9*x5 + 3*x6 + 5*x7 + x10 + 7*x11 - 7*x12 - 4*x13
      - 6*x14 - 3*x15 + 7*x16 - 5*x18 + x19 + x20 =L= -1;

e9..    2*x1 - x2 - x3 - 9*x4 + 3*x5 + 5*x6 + x9 + 7*x10 - 7*x11 - 4*x12
      - 6*x13 - 3*x14 + 7*x15 - 5*x17 + x18 + x19 =L= 0;

e10..  - x1 - x2 - 9*x3 + 3*x4 + 5*x5 + x8 + 7*x9 - 7*x10 - 4*x11 - 6*x12
       - 3*x13 + 7*x14 - 5*x16 + x17 + x18 + 2*x20 =L= 9;

e11..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 =L= 40;

* set non default bounds


* set non default levels

x3.l = 1.04289; 
x11.l = 1.74674; 
x13.l = 0.43147; 
x16.l = 4.43305; 
x18.l = 15.85893; 
x20.l = 16.4889; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
