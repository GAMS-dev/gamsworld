*  NLP written by GAMS Convert at 07/25/01 14:30:17
*  
*  Equation counts
*     Total       E       G       L       N       X
*        10       0       0      10       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        30       0      30       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1.. sqr(2.545724188 - x1) + sqr(9.983058643 - x2) - sqr(objvar) =L= 0;

e2.. sqr(8.589400372 - x1) + sqr(6.208600402 - x2) - sqr(objvar) =L= 0;

e3.. sqr(5.953378204 - x1) + sqr(9.920197351 - x2) - sqr(objvar) =L= 0;

e4.. sqr(3.710241136 - x1) + sqr(7.860254203 - x2) - sqr(objvar) =L= 0;

e5.. sqr(3.629909053 - x1) + sqr(2.176232347 - x2) - sqr(objvar) =L= 0;

e6.. sqr(3.016475803 - x1) + sqr(6.757468831 - x2) - sqr(objvar) =L= 0;

e7.. sqr(4.148474536 - x1) + sqr(2.435660776 - x2) - sqr(objvar) =L= 0;

e8.. sqr(8.706433123 - x1) + sqr(3.250724797 - x2) - sqr(objvar) =L= 0;

e9.. sqr(1.604023507 - x1) + sqr(7.020357481 - x2) - sqr(objvar) =L= 0;

e10.. sqr(5.501896021 - x1) + sqr(4.918207429 - x2) - sqr(objvar) =L= 0;

* set non default bounds

objvar.lo = 0; 

* set non default levels

x1.l = 5.155228315; 
x2.l = 5.793541075; 
objvar.l = 5.49209550544626; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
