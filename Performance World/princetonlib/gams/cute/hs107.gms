*  NLP written by GAMS Convert at 10/06/06 11:33:45
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         63       11       52        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..  - sin(x8) + x10 =E= 0;

e2..  - cos(x8) + x11 =E= 0;

e3..  - sin(x9) + x12 =E= 0;

e4..  - cos(x9) + x13 =E= 0;

e5..  - sin(x8 - x9) + x14 =E= 0;

e6..  - cos(x8 - x9) + x15 =E= 0;

e7.. 0.477293990271002*sqr(x5) - x5*x6*(0.934617371069739*x10 + 
     0.238646995135501*x11) - x5*x7*(0.934617371069739*x12 + 0.238646995135501*
     x13) - x1 =E= -0.4;

e8.. 0.477293990271002*sqr(x6) + x5*x6*(0.934617371069739*x10 - 
     0.238646995135501*x11) + x6*x7*(0.934617371069739*x14 - 0.238646995135501*
     x15) - x2 =E= -0.4;

e9.. 0.477293990271002*sqr(x7) + x5*x7*(0.934617371069739*x12 - 
     0.238646995135501*x13) - x6*x7*(0.934617371069739*x14 + 0.238646995135501*
     x15) =E= -0.8;

e10.. 1.86923474213948*sqr(x5) + x5*x6*(0.238646995135501*x10 - 
      0.934617371069739*x11) + x5*x7*(0.238646995135501*x12 - 0.934617371069739
      *x13) - x3 =E= -0.2;

e11.. 1.86923474213948*sqr(x6) - x5*x6*(0.238646995135501*x10 + 
      0.934617371069739*x11) - x6*x7*(0.238646995135501*x14 + 0.934617371069739
      *x15) - x4 =E= -0.2;

e12.. 1.86923474213948*sqr(x7) - x5*x7*(0.238646995135501*x12 + 
      0.934617371069739*x13) + x6*x7*(0.238646995135501*x14 - 0.934617371069739
      *x15) =E= 0.337;

e13..  - (1000*POWER(x1,3) + 3000*x1 + 666.667*POWER(x2,3) + 2000*x2) + objvar
       =E= 0;

* set non default bounds

x5.lo = 0.90909; x5.up = 1.0909; 
x6.lo = 0.90909; x6.up = 1.0909; 
x7.lo = 0.90909; x7.up = 1.0909; 

* set non default levels

x1.l = 0.8; 
x2.l = 0.8; 
x3.l = 0.2; 
x4.l = 0.2; 
x5.l = 1.0454; 
x6.l = 1.0454; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
