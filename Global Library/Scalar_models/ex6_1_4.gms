*  NLP written by GAMS Convert at 07/19/01 13:39:42
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       5       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        22       4      18       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7;

Positive Variables x5,x6,x7;

Equations  e1,e2,e3,e4,e5;


e1..  - (x2*(0.28809 + log(x2)) + x3*(log(x3) - 0.29158) + x4*(0.59336 + log(x4
     )) + x2*(1.44805026165593*x6 + 0.989428667054834*x7) + x3*(
     1.12676386427658*x5 + 1.00363012835441*x7) + x4*(0.0347225450624344*x5 + 
     0.82681418300153*x6)) + objvar =E= 0;

e2.. x5*(x2 + 0.145002897355373*x3 + 0.989528214945409*x4) - x2 =E= 0;

e3.. x6*(0.293701311601799*x2 + x3 + 0.646291923054068*x4) - x3 =E= 0;

e4.. x7*(0.619143628558899*x2 + 0.239837817616513*x3 + x4) - x4 =E= 0;

e5..    x2 + x3 + x4 =E= 1;

* set non default bounds

x2.lo = 1E-6; x2.up = 1; 
x3.lo = 1E-6; x3.up = 1; 
x4.lo = 1E-6; x4.up = 1; 

* set non default levels

x2.l = 7E-5; 
x3.l = 0.99686; 
x4.l = 0.00307; 
x5.l = 0.000474076675116379; 
x6.l = 0.997993046160137; 
x7.l = 0.0126755759820888; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
