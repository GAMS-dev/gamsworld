*  NLP written by GAMS Convert at 07/19/01 13:39:45
*  
*  Equation counts
*     Total       E       G       L       N       X
*         3       3       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         9       5       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5;

Equations  e1,e2,e3;


e1..  - (x2*(log(x2/(x2 + x4)) + log(x2/(x2 + 0.095173*x4))) + x4*(log(x4/(x2
      + x4)) + log(x4/(0.30384*x2 + x4))) + (x2 + 2.6738*x4)*log(x2 + 2.6738*x4
     ) + (0.374*x2 + x4)*log(0.374*x2 + x4) + 2.6738*x4*log(x4/(x2 + 2.6738*x4)
     ) + 0.374*x2*log(x2/(0.374*x2 + x4)) + x3*(log(x3/(x3 + x5)) + log(x3/(x3
      + 0.095173*x5))) + x5*(log(x5/(x3 + x5)) + log(x5/(0.30384*x3 + x5))) + (
     x3 + 2.6738*x5)*log(x3 + 2.6738*x5) + (0.374*x3 + x5)*log(0.374*x3 + x5)
      + 2.6738*x5*log(x5/(x3 + 2.6738*x5)) + 0.374*x3*log(x3/(0.374*x3 + x5))
      - 3.6838*x2*log(x2) - 1.59549*x4*log(x4) - 3.6838*x3*log(x3) - 1.59549*x5
     *log(x5)) + objvar =E= 0;

e2..    x2 + x3 =E= 0.5;

e3..    x4 + x5 =E= 0.5;

* set non default bounds

x2.lo = 1E-7; x2.up = 0.5; 
x3.lo = 1E-7; x3.up = 0.5; 
x4.lo = 1E-7; x4.up = 0.5; 
x5.lo = 1E-7; x5.up = 0.5; 

* set non default levels

x2.l = 0.0583; 
x3.l = 0.4417; 
x4.l = 0.408; 
x5.l = 0.092; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
