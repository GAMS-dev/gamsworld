*  NLP written by GAMS Convert at 07/19/01 13:40:20
*  
*  Equation counts
*     Total       E       G       L       N       X
*        12       9       0       3       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11      11       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        27      17      10       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11;

Positive Variables x2,x3,x4,x5,x6,x7,x8,x9,x10,x11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1.. x2*x2 + (x3 - 10)*(x3 - 10) - objvar =E= 0;

e2..    x2 =L= 15;

e3..  - x2 + x3 =L= 0;

e4..  - x2 =L= 0;

e5..    x2 + x3 + x4 =E= 20;

e6..  - x3 + x5 =E= 0;

e7..    x3 + x6 =E= 20;

e8.. x4*x8 =E= 0;

e9.. x5*x9 =E= 0;

e10.. x6*x10 =E= 0;

e11.. x7*x11 =E= 0;

e12..    2*x2 + 4*x3 + x8 - x9 + x10 =E= 60;

* set non default bounds

x4.up = 20; 
x5.up = 20; 
x6.up = 20; 
x7.up = 20; 
x8.up = 20; 
x9.up = 20; 
x10.up = 20; 
x11.up = 20; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
