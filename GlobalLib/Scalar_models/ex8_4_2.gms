*  NLP written by GAMS Convert at 07/19/01 13:40:09
*  
*  Equation counts
*     Total       E       G       L       N       X
*        11      11       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        25      25       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        81      21      60       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,objvar;

Positive Variables x21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - (sqr(x1) + sqr(x2 - 5.9) + sqr(x3 - 0.9) + sqr(x4 - 5.4) + sqr(x5 - 1.8
     ) + sqr(x6 - 4.4) + sqr(x7 - 2.6) + sqr(x8 - 4.6) + sqr(x9 - 3.3) + sqr(
     x10 - 3.5) + sqr(x11 - 4.4) + sqr(x12 - 3.7) + sqr(x13 - 5.2) + sqr(x14 - 
     2.8) + sqr(x15 - 6.1) + sqr(x16 - 2.8) + sqr(x17 - 6.5) + sqr(x18 - 2.4)
      + sqr(x19 - 7.4) + sqr(x20 - 1.5)) + objvar =E= 0;

e2.. x22*x1 + x23*sqr(x1) + x24*POWER(x1,3) - x2 + x21 =E= 0;

e3.. x22*x3 + x23*sqr(x3) + x24*POWER(x3,3) - x4 + x21 =E= 0;

e4.. x22*x5 + x23*sqr(x5) + x24*POWER(x5,3) - x6 + x21 =E= 0;

e5.. x22*x7 + x23*sqr(x7) + x24*POWER(x7,3) - x8 + x21 =E= 0;

e6.. x22*x9 + x23*sqr(x9) + x24*POWER(x9,3) - x10 + x21 =E= 0;

e7.. x22*x11 + x23*sqr(x11) + x24*POWER(x11,3) - x12 + x21 =E= 0;

e8.. x22*x13 + x23*sqr(x13) + x24*POWER(x13,3) - x14 + x21 =E= 0;

e9.. x22*x15 + x23*sqr(x15) + x24*POWER(x15,3) - x16 + x21 =E= 0;

e10.. x22*x17 + x23*sqr(x17) + x24*POWER(x17,3) - x18 + x21 =E= 0;

e11.. x22*x19 + x23*sqr(x19) + x24*POWER(x19,3) - x20 + x21 =E= 0;

* set non default bounds

x1.lo = -0.5; x1.up = 0.5; 
x2.lo = 5.4; x2.up = 6.4; 
x3.lo = 0.4; x3.up = 1.4; 
x4.lo = 4.9; x4.up = 5.9; 
x5.lo = 1.3; x5.up = 2.3; 
x6.lo = 3.9; x6.up = 4.9; 
x7.lo = 2.1; x7.up = 3.1; 
x8.lo = 4.1; x8.up = 5.1; 
x9.lo = 2.8; x9.up = 3.8; 
x10.lo = 3; x10.up = 4; 
x11.lo = 3.9; x11.up = 4.9; 
x12.lo = 3.2; x12.up = 4.2; 
x13.lo = 4.7; x13.up = 5.7; 
x14.lo = 2.3; x14.up = 3.3; 
x15.lo = 5.6; x15.up = 6.6; 
x16.lo = 2.3; x16.up = 3.3; 
x17.lo = 6; x17.up = 7; 
x18.lo = 1.9; x18.up = 2.9; 
x19.lo = 6.9; x19.up = 7.9; 
x20.lo = 1; x20.up = 2; 
x21.up = 10; 
x22.lo = -2; x22.up = 2; 
x23.lo = -2; x23.up = 2; 
x24.lo = -2; x24.up = 2; 

* set non default levels

x1.l = -0.328252868; 
x2.l = 6.243266708; 
x3.l = 0.950375356; 
x4.l = 5.201137904; 
x5.l = 1.592212117; 
x6.l = 4.124052867; 
x7.l = 2.449830504; 
x8.l = 4.956270347; 
x9.l = 2.867113723; 
x10.l = 3.500210669; 
x11.l = 4.898117627; 
x12.l = 3.778733378; 
x13.l = 5.691133039; 
x14.l = 3.062250467; 
x15.l = 5.730692483; 
x16.l = 2.939718759; 
x17.l = 6.159517864; 
x18.l = 2.150080533; 
x19.l = 7.568928609; 
x20.l = 1.435356381; 
x21.l = 3.59700266; 
x22.l = -0.594234528; 
x23.l = -1.47403364; 
x24.l = -1.399592848; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
