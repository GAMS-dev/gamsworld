*  NLP written by GAMS Convert at 07/19/01 13:39:40
*  
*  Equation counts
*     Total       E       G       L       N       X
*        14      14       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        17      17       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        43      25      18       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,objvar;

Positive Variables x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1..    x5 + x9 =E= 10;

e2..    x5 - x6 + x11 =E= 0;

e3..    x7 + x9 - x10 =E= 0;

e4..  - x6 + x7 + x8 =E= 0;

e5..  - x10 + x11 + x12 =E= 0;

e6.. x16*x11 - x13*x6 + 150*x5 =E= 0;

e7.. x15*x7 - x14*x10 + 150*x9 =E= 0;

e8.. x6*x15 - x6*x13 =E= 1000;

e9.. x10*x16 - x10*x14 =E= 600;

e10..    x1 + x15 =E= 500;

e11..    x2 + x13 =E= 250;

e12..    x3 + x16 =E= 350;

e13..    x4 + x14 =E= 200;

e14..  - (1300*(1000/(0.0333333333333333*x1*x2 + 0.166666666666667*x1 + 
      0.166666666666667*x2))**0.6 + 1300*(600/(0.0333333333333333*x3*x4 + 
      0.166666666666667*x3 + 0.166666666666667*x4))**0.6) + objvar =E= 0;

* set non default bounds

x1.lo = 10; x1.up = 350; 
x2.lo = 10; x2.up = 350; 
x3.lo = 10; x3.up = 200; 
x4.lo = 10; x4.up = 200; 
x5.up = 10; 
x6.up = 10; 
x7.up = 10; 
x8.up = 10; 
x9.up = 10; 
x10.up = 10; 
x11.up = 10; 
x12.up = 10; 
x13.lo = 150; x13.up = 310; 
x14.lo = 150; x14.up = 310; 
x15.lo = 150; x15.up = 310; 
x16.lo = 150; x16.up = 310; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
