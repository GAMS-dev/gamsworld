*  NLP written by GAMS Convert at 08/29/02 12:49:53
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         7       4       0       3       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        21      18       3       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - 3*x1 + x2 - 3*x4 =E= 0;

e2..  - 2*x2 + x3 - 2*x5 =E= 0;

e3..    4*x4 - x6 =E= 0;

e4..    x1 + 2*x4 =L= 4;

e5..    x2 + x5 =L= 4;

e6..    x3 + x6 =L= 6;

e7..  - (x1**0.6 + x2**0.6 + x3**0.4 - 4*x3) - 2*x4 - 5*x5 + x6 + objvar =E= 0;

* set non default bounds

x1.up = 3; 
x2.up = 4; 
x3.up = 4; 
x4.up = 2; 
x5.up = 2; 
x6.up = 6; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
