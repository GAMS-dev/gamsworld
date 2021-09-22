*  NLP written by GAMS Convert at 07/19/01 13:40:29
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

e2.. 0.361872516756437*x2/(x1 + 0.888649896608059*x2) + 0.868134622480909*x2/(
     0.696880695582072*x1 + x2) - (0.361872516756437*x1*x2/sqr(x1 + 
     0.888649896608059*x2) + 0.604986259573375*x2*x1/sqr(0.696880695582072*x1
      + x2)) - 2755.64173589155/(219.161 + x3) - x5 =L= -9.20816767045657;

e3.. 0.868134622480909*x1/(0.696880695582072*x1 + x2) + 0.361872516756437*x1/(
     x1 + 0.888649896608059*x2) - (0.321577974600906*x1*x2/sqr(x1 + 
     0.888649896608059*x2) + 0.868134622480909*x2*x1/sqr(0.696880695582072*x1
      + x2)) - 4117.06819797521/(227.438 + x3) - x5 =L= -12.6599269316621;

e4.. (-0.361872516756437*x2/(x1 + 0.888649896608059*x2)) - 0.868134622480909*x2
     /(0.696880695582072*x1 + x2) + 0.361872516756437*x1*x2/sqr(x1 + 
     0.888649896608059*x2) + 0.604986259573375*x2*x1/sqr(0.696880695582072*x1
      + x2) + 2755.64173589155/(219.161 + x3) - x5 =L= 9.20816767045657;

e5.. (-0.868134622480909*x1/(0.696880695582072*x1 + x2)) - 0.361872516756437*x1
     /(x1 + 0.888649896608059*x2) + 0.321577974600906*x1*x2/sqr(x1 + 
     0.888649896608059*x2) + 0.868134622480909*x2*x1/sqr(0.696880695582072*x1
      + x2) + 4117.06819797521/(227.438 + x3) - x5 =L= 12.6599269316621;

e6..    x1 + x2 =E= 1;

* set non default bounds

x1.lo = 1E-6; x1.up = 1; 
x2.lo = 1E-6; x2.up = 1; 
x3.lo = 60; x3.up = 100; 

* set non default levels

x1.l = 0.937; 
x3.l = 80.166; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
