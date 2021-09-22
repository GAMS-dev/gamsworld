*  NLP written by GAMS Convert at 07/19/01 13:40:27
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       2       0       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        20       8      12       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar,x5;

Positive Variables x5;

Equations  e1,e2,e3,e4,e5,e6;


e1..    objvar - x5 =E= 0;

e2.. log(x1 + 0.191987347447993*x2) + x1/(x1 + 0.191987347447993*x2) + 
     0.315693799947296*x2/(0.315693799947296*x1 + x2) + 3643.31361767678/(
     239.726 + x3) - x5 =L= 12.9738026256517;

e3.. log(0.315693799947296*x1 + x2) + 0.191987347447993*x1/(x1 + 
     0.191987347447993*x2) + x2/(0.315693799947296*x1 + x2) + 2755.64173589155/
     (219.161 + x3) - x5 =L= 10.2081676704566;

e4.. (-log(x1 + 0.191987347447993*x2)) - (x1/(x1 + 0.191987347447993*x2) + 
     0.315693799947296*x2/(0.315693799947296*x1 + x2)) - 3643.31361767678/(
     239.726 + x3) - x5 =L= -12.9738026256517;

e5.. (-log(0.315693799947296*x1 + x2)) - (0.191987347447993*x1/(x1 + 
     0.191987347447993*x2) + x2/(0.315693799947296*x1 + x2)) - 2755.64173589155
     /(219.161 + x3) - x5 =L= -10.2081676704566;

e6..    x1 + x2 =E= 1;

* set non default bounds

x1.lo = 1E-6; x1.up = 1; 
x2.lo = 1E-6; x2.up = 1; 
x3.lo = 20; x3.up = 80; 

* set non default levels

x1.l = 0.624; 
x2.l = 0.376; 
x3.l = 58.129; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
