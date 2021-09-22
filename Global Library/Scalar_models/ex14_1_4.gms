*  NLP written by GAMS Convert at 07/19/01 13:40:24
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       1       0       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       4       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        14       8       6       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3,e4,e5;


e1.. 0.5*sin(x1*x2) - 0.5*x1 - 0.0795774703703634*x2 - x3 =L= 0;

e2.. 0.920422529629637*exp(2*x1) - 5.4365636*x1 + 0.865255957591193*x2 - x3
      =L= 2.5019678106022;

e3.. 0.5*x1 - 0.5*sin(x1*x2) + 0.0795774703703634*x2 - x3 =L= 0;

e4..  - x3 + objvar =E= 0;

e5.. 5.4365636*x1 - 0.920422529629637*exp(2*x1) - 0.865255957591193*x2 - x3
      =L= -2.5019678106022;

* set non default bounds

x1.lo = 0.25; x1.up = 1; 
x2.lo = 1.5; x2.up = 6.28; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
