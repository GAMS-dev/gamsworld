*  NLP written by GAMS Convert at 07/19/01 13:39:44
*  
*  Equation counts
*     Total       E       G       L       N       X
*         4       4       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13       7       6       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4;


e1..  - (x2*log(x2/(3*x2 + 6*x4 + x6)) + x4*log(x4/(3*x2 + 6*x4 + x6)) + x6*
     log(x6/(3*x2 + 6*x4 + x6)) - 0.80323071133189*x2 + 1.79175946922805*x4 + 
     0.752006*x6 + (3*x2 + 6*x4 + 1.6*x6)*log(3*x2 + 6*x4 + 1.6*x6) + 2*x2*log(
     x2/(2.00000019368913*x2 + 4.64593*x4 + 0.480353*x6)) + x2*log(x2/(
     1.00772874182154*x2 + 0.724703350369523*x4 + 0.947722362492017*x6)) + 6*x4
     *log(x4/(3.36359157977228*x2 + 6*x4 + 1.13841069150863*x6)) + 1.6*x6*log(
     x6/(1.6359356134845*x2 + 3.39220996773471*x4 + 1.6*x6)) + x3*log(x3/(3*x3
      + 6*x5 + x7)) + x5*log(x5/(3*x3 + 6*x5 + x7)) + x7*log(x7/(3*x3 + 6*x5 + 
     x7)) - 0.80323071133189*x3 + 1.79175946922805*x5 + 0.752006*x7 + (3*x3 + 6
     *x5 + 1.6*x7)*log(3*x3 + 6*x5 + 1.6*x7) + 2*x3*log(x3/(2.00000019368913*x3
      + 4.64593*x5 + 0.480353*x7)) + x3*log(x3/(1.00772874182154*x3 + 
     0.724703350369523*x5 + 0.947722362492017*x7)) + 6*x5*log(x5/(
     3.36359157977228*x3 + 6*x5 + 1.13841069150863*x7)) + 1.6*x7*log(x7/(
     1.6359356134845*x3 + 3.39220996773471*x5 + 1.6*x7)) - 3*x2*log(x2) - 6*x4*
     log(x4) - 1.6*x6*log(x6) - 3*x3*log(x3) - 6*x5*log(x5) - 1.6*x7*log(x7))
      + objvar =E= 0;

e2..    x2 + x3 =E= 0.08;

e3..    x4 + x5 =E= 0.3;

e4..    x6 + x7 =E= 0.62;

* set non default bounds

x2.lo = 1E-7; x2.up = 0.08; 
x3.lo = 1E-7; x3.up = 0.08; 
x4.lo = 1E-7; x4.up = 0.3; 
x5.lo = 1E-7; x5.up = 0.3; 
x6.lo = 1E-7; x6.up = 0.62; 
x7.lo = 1E-7; x7.up = 0.62; 

* set non default levels

x2.l = 0.0739; 
x3.l = 0.0061; 
x4.l = 0.2773; 
x5.l = 0.0227; 
x6.l = 0.5731; 
x7.l = 0.0469; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
