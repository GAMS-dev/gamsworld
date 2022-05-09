*  NLP written by GAMS Convert at 07/19/01 13:40:16
*  
*  Equation counts
*     Total       E       G       L       N       X
*         1       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        31      31       0       0       0       0       0       0
*  FX     6       6       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        31       1      30       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,objvar;

Positive Variables x1,x11,x12,x21,x22,x23;

Equations  e1;


e1..  - (sqr(1 - exp(3 - 3*(sqr(x1 - x2) + sqr(x11 - x12) + sqr(x21 - x22))**
     0.5)) + sqr(1 - exp(3 - 3*(sqr(x1 - x3) + sqr(x11 - x13) + sqr(x21 - x23))
     **0.5)) + sqr(1 - exp(3 - 3*(sqr(x1 - x4) + sqr(x11 - x14) + sqr(x21 - x24
     ))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x1 - x5) + sqr(x11 - x15) + sqr(x21 - 
     x25))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x1 - x6) + sqr(x11 - x16) + sqr(x21
      - x26))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x1 - x7) + sqr(x11 - x17) + sqr(
     x21 - x27))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x1 - x8) + sqr(x11 - x18) + 
     sqr(x21 - x28))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x1 - x9) + sqr(x11 - x19)
      + sqr(x21 - x29))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x1 - x10) + sqr(x11 - 
     x20) + sqr(x21 - x30))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x2 - x3) + sqr(x12
      - x13) + sqr(x22 - x23))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x2 - x4) + sqr(
     x12 - x14) + sqr(x22 - x24))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x2 - x5) + 
     sqr(x12 - x15) + sqr(x22 - x25))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x2 - x6)
      + sqr(x12 - x16) + sqr(x22 - x26))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x2 - 
     x7) + sqr(x12 - x17) + sqr(x22 - x27))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x2
      - x8) + sqr(x12 - x18) + sqr(x22 - x28))**0.5)) + sqr(1 - exp(3 - 3*(sqr(
     x2 - x9) + sqr(x12 - x19) + sqr(x22 - x29))**0.5)) + sqr(1 - exp(3 - 3*(
     sqr(x2 - x10) + sqr(x12 - x20) + sqr(x22 - x30))**0.5)) + sqr(1 - exp(3 - 
     3*(sqr(x3 - x4) + sqr(x13 - x14) + sqr(x23 - x24))**0.5)) + sqr(1 - exp(3
      - 3*(sqr(x3 - x5) + sqr(x13 - x15) + sqr(x23 - x25))**0.5)) + sqr(1 - 
     exp(3 - 3*(sqr(x3 - x6) + sqr(x13 - x16) + sqr(x23 - x26))**0.5)) + sqr(1
      - exp(3 - 3*(sqr(x3 - x7) + sqr(x13 - x17) + sqr(x23 - x27))**0.5)) + 
     sqr(1 - exp(3 - 3*(sqr(x3 - x8) + sqr(x13 - x18) + sqr(x23 - x28))**0.5))
      + sqr(1 - exp(3 - 3*(sqr(x3 - x9) + sqr(x13 - x19) + sqr(x23 - x29))**0.5
     )) + sqr(1 - exp(3 - 3*(sqr(x3 - x10) + sqr(x13 - x20) + sqr(x23 - x30))**
     0.5)) + sqr(1 - exp(3 - 3*(sqr(x4 - x5) + sqr(x14 - x15) + sqr(x24 - x25))
     **0.5)) + sqr(1 - exp(3 - 3*(sqr(x4 - x6) + sqr(x14 - x16) + sqr(x24 - x26
     ))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x4 - x7) + sqr(x14 - x17) + sqr(x24 - 
     x27))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x4 - x8) + sqr(x14 - x18) + sqr(x24
      - x28))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x4 - x9) + sqr(x14 - x19) + sqr(
     x24 - x29))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x4 - x10) + sqr(x14 - x20) + 
     sqr(x24 - x30))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x5 - x6) + sqr(x15 - x16)
      + sqr(x25 - x26))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x5 - x7) + sqr(x15 - 
     x17) + sqr(x25 - x27))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x5 - x8) + sqr(x15
      - x18) + sqr(x25 - x28))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x5 - x9) + sqr(
     x15 - x19) + sqr(x25 - x29))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x5 - x10) + 
     sqr(x15 - x20) + sqr(x25 - x30))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x6 - x7)
      + sqr(x16 - x17) + sqr(x26 - x27))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x6 - 
     x8) + sqr(x16 - x18) + sqr(x26 - x28))**0.5)) + sqr(1 - exp(3 - 3*(sqr(x6
      - x9) + sqr(x16 - x19) + sqr(x26 - x29))**0.5)) + sqr(1 - exp(3 - 3*(sqr(
     x6 - x10) + sqr(x16 - x20) + sqr(x26 - x30))**0.5)) + sqr(1 - exp(3 - 3*(
     sqr(x7 - x8) + sqr(x17 - x18) + sqr(x27 - x28))**0.5)) + sqr(1 - exp(3 - 3
     *(sqr(x7 - x9) + sqr(x17 - x19) + sqr(x27 - x29))**0.5)) + sqr(1 - exp(3
      - 3*(sqr(x7 - x10) + sqr(x17 - x20) + sqr(x27 - x30))**0.5)) + sqr(1 - 
     exp(3 - 3*(sqr(x8 - x9) + sqr(x18 - x19) + sqr(x28 - x29))**0.5)) + sqr(1
      - exp(3 - 3*(sqr(x8 - x10) + sqr(x18 - x20) + sqr(x28 - x30))**0.5)) + 
     sqr(1 - exp(3 - 3*(sqr(x9 - x10) + sqr(x19 - x20) + sqr(x29 - x30))**0.5))
     ) + objvar =E= -45;

* set non default bounds

x1.fx = 0; 
x2.lo = -5; x2.up = 5; 
x3.lo = -5; x3.up = 5; 
x4.lo = -5; x4.up = 5; 
x5.lo = -5; x5.up = 5; 
x6.lo = -5; x6.up = 5; 
x7.lo = -5; x7.up = 5; 
x8.lo = -5; x8.up = 5; 
x9.lo = -5; x9.up = 5; 
x10.lo = -5; x10.up = 5; 
x11.fx = 0; 
x12.fx = 0; 
x13.lo = -5; x13.up = 5; 
x14.lo = -5; x14.up = 5; 
x15.lo = -5; x15.up = 5; 
x16.lo = -5; x16.up = 5; 
x17.lo = -5; x17.up = 5; 
x18.lo = -5; x18.up = 5; 
x19.lo = -5; x19.up = 5; 
x20.lo = -5; x20.up = 5; 
x21.fx = 0; 
x22.fx = 0; 
x23.fx = 0; 
x24.lo = -5; x24.up = 5; 
x25.lo = -5; x25.up = 5; 
x26.lo = -5; x26.up = 5; 
x27.lo = -5; x27.up = 5; 
x28.lo = -5; x28.up = 5; 
x29.lo = -5; x29.up = 5; 
x30.lo = -5; x30.up = 5; 

* set non default levels

x2.l = 3.43266708; 
x3.l = 0.50375356; 
x4.l = -1.98862096; 
x5.l = -2.07787883; 
x6.l = -2.75947133; 
x7.l = -1.50169496; 
x8.l = 3.56270347; 
x9.l = -4.32886277; 
x10.l = 0.00210668999999974; 
x13.l = 4.91133039; 
x14.l = 2.62250467; 
x15.l = -3.69307517; 
x16.l = 1.39718759; 
x17.l = -3.40482136; 
x18.l = -2.49919467; 
x19.l = 1.68928609; 
x20.l = -0.64643619; 
x24.l = -3.49898212; 
x25.l = 0.8911365; 
x26.l = 3.30892812; 
x27.l = -2.69184262; 
x28.l = 1.6573446; 
x29.l = 2.75857606; 
x30.l = -1.96341523; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
