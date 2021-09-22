*  NLP written by GAMS Convert at 07/19/01 13:39:41
*  
*  Equation counts
*     Total       E       G       L       N       X
*        20      20       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        28      28       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        76      43      33       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,objvar;

Positive Variables x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20;


e1..    x7 + x12 + x17 =E= 45;

e2..    x7 - x8 + x14 + x20 =E= 0;

e3..    x9 + x12 - x13 + x19 =E= 0;

e4..    x10 + x15 + x17 - x18 =E= 0;

e5..  - x8 + x9 + x10 + x11 =E= 0;

e6..  - x13 + x14 + x15 + x16 =E= 0;

e7..  - x18 + x19 + x20 + x21 =E= 0;

e8.. x25*x14 + x27*x20 - x22*x8 + 100*x7 =E= 0;

e9.. x23*x9 + x27*x19 - x24*x13 + 100*x12 =E= 0;

e10.. x23*x10 + x25*x15 - x26*x18 + 100*x17 =E= 0;

e11.. x8*x23 - x8*x22 =E= 2000;

e12.. x13*x25 - x13*x24 =E= 1000;

e13.. x18*x27 - x18*x26 =E= 1500;

e14..    x1 + x23 =E= 210;

e15..    x2 + x22 =E= 130;

e16..    x3 + x25 =E= 210;

e17..    x4 + x24 =E= 160;

e18..    x5 + x27 =E= 210;

e19..    x6 + x26 =E= 180;

e20..  - (1300*(2000/(0.333333333333333*x1*x2 + 0.166666666666667*x1 + 
      0.166666666666667*x2))**0.6 + 1300*(1000/(0.666666666666667*x3*x4 + 
      0.166666666666667*x3 + 0.166666666666667*x4))**0.6 + 1300*(1500/(
      0.666666666666667*x5*x6 + 0.166666666666667*x5 + 0.166666666666667*x6))**
      0.6) + objvar =E= 0;

* set non default bounds

x1.lo = 10; x1.up = 110; 
x2.lo = 10; x2.up = 110; 
x3.lo = 10; x3.up = 110; 
x4.lo = 10; x4.up = 110; 
x5.lo = 10; x5.up = 110; 
x6.lo = 10; x6.up = 110; 
x7.up = 45; 
x8.up = 45; 
x9.up = 45; 
x10.up = 45; 
x11.up = 45; 
x12.up = 45; 
x13.up = 45; 
x14.up = 45; 
x15.up = 45; 
x16.up = 45; 
x17.up = 45; 
x18.up = 45; 
x19.up = 45; 
x20.up = 45; 
x21.up = 45; 
x22.lo = 100; x22.up = 200; 
x23.lo = 100; x23.up = 200; 
x24.lo = 100; x24.up = 200; 
x25.lo = 100; x25.up = 200; 
x26.lo = 100; x26.up = 200; 
x27.lo = 100; x27.up = 200; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
