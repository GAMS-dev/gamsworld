*  NLP written by GAMS Convert at 07/19/01 13:39:47
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


e1..  - ((31.4830434782609*x2 + 6*x4)*log(4.8274*x2 + 0.92*x4) - 
     1.36551138119385*x2 + 2.8555953099828*x4 + 11.5030434782609*x2*log(x2/(
     4.8274*x2 + 0.92*x4)) + 20.98*x2*log(x2/(4.196*x2 + 1.4*x4)) + 7*x4*log(x4
     /(4.196*x2 + 1.4*x4)) + (4.196*x2 + 1.4*x4)*log(4.196*x2 + 1.4*x4) + 1.62*
     x2*log(x2/(7.52678200680961*x2 + 0.443737968424621*x4)) + 0.848*x2*log(x2/
     (7.52678200680961*x2 + 0.443737968424621*x4)) + 1.728*x2*log(x2/(
     1.82245052351472*x2 + 1.4300083598626*x4)) + 1.4*x4*log(x4/(
     0.504772348000588*x2 + 1.4*x4)) + (31.4830434782609*x3 + 6*x5)*log(4.8274*
     x3 + 0.92*x5) - 1.36551138119385*x3 + 2.8555953099828*x5 + 
     11.5030434782609*x3*log(x3/(4.8274*x3 + 0.92*x5)) + 20.98*x3*log(x3/(4.196
     *x3 + 1.4*x5)) + 7*x5*log(x5/(4.196*x3 + 1.4*x5)) + (4.196*x3 + 1.4*x5)*
     log(4.196*x3 + 1.4*x5) + 1.62*x3*log(x3/(7.52678200680961*x3 + 
     0.443737968424621*x5)) + 0.848*x3*log(x3/(7.52678200680961*x3 + 
     0.443737968424621*x5)) + 1.728*x3*log(x3/(1.82245052351472*x3 + 
     1.4300083598626*x5)) + 1.4*x5*log(x5/(0.504772348000588*x3 + 1.4*x5)) - 
     35.6790434782609*x2*log(x2) - 7.4*x4*log(x4) - 35.6790434782609*x3*log(x3)
      - 7.4*x5*log(x5)) + objvar =E= 0;

e2..    x2 + x3 =E= 0.5;

e3..    x4 + x5 =E= 0.5;

* set non default bounds

x2.lo = 1E-7; x2.up = 0.5; 
x3.lo = 1E-7; x3.up = 0.5; 
x4.lo = 1E-7; x4.up = 0.5; 
x5.lo = 1E-7; x5.up = 0.5; 

* set non default levels

x2.l = 0.4998; 
x3.l = 0.0002; 
x4.l = 0.0451; 
x5.l = 0.4549; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
