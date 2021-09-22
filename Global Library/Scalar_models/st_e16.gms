*  NLP written by GAMS Convert at 08/29/02 12:49:53
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        10      10       0       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        13      13       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        35      17      18       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    x1 + x2 =E= 10;

e2..    x1 - x3 + x6 =E= 0;

e3..    x2 - x4 + x5 =E= 0;

e4..  - x3 + x5 + x7 =E= 0;

e5..  - x4 + x6 + x8 =E= 0;

e6.. x12*x6 - x9*x3 + 100*x1 =E= 0;

e7.. x10*x5 - x11*x4 + 100*x2 =E= 0;

e8.. x3*(x10 - x9) =E= 800;

e9.. x4*(x12 - x11) =E= 1000;

e10..  - (1200*(800/(258.333333333333 + 2.5*(0.666666666666667*((320 - x10)*(
      300 - x9))**0.5 - 0.166666666666667*x9 - 0.166666666666667*x10)))**0.6 + 
      1200*(5000/(106.666666666667 + 0.666666666666667*((340 - x12)*(300 - x11)
      )**0.5 - 0.166666666666667*x11 - 0.166666666666667*x12))**0.6) + objvar
       =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 10; 
x3.up = 10; 
x4.up = 10; 
x5.up = 10; 
x6.up = 10; 
x7.up = 10; 
x8.up = 10; 
x9.lo = 100; x9.up = 290; 
x10.lo = 100; x10.up = 310; 
x11.lo = 100; x11.up = 290; 
x12.lo = 100; x12.up = 330; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
