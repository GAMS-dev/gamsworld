*  NLP written by GAMS Convert at 07/30/01 17:04:27
*  
*  Equation counts
*     Total       E       G       L       N       X
*        22       7       0      15       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        19      19       0       0       0       0       0       0
*  FX     3       3       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        97      13      84       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,objvar;

Positive Variables x1,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22;


e1.. sqr(x1 - x2) + sqr(x7 - x8) =L= 1;

e2.. sqr(x1 - x3) + sqr(x7 - x9) =L= 1;

e3.. sqr(x1 - x4) + sqr(x7 - x10) =L= 1;

e4.. sqr(x1 - x5) + sqr(x7 - x11) =L= 1;

e5.. sqr(x1 - x6) + sqr(x7 - x12) =L= 1;

e6.. sqr(x2 - x3) + sqr(x8 - x9) =L= 1;

e7.. sqr(x2 - x4) + sqr(x8 - x10) =L= 1;

e8.. sqr(x2 - x5) + sqr(x8 - x11) =L= 1;

e9.. sqr(x2 - x6) + sqr(x8 - x12) =L= 1;

e10.. sqr(x3 - x4) + sqr(x9 - x10) =L= 1;

e11.. sqr(x3 - x5) + sqr(x9 - x11) =L= 1;

e12.. sqr(x3 - x6) + sqr(x9 - x12) =L= 1;

e13.. sqr(x4 - x5) + sqr(x10 - x11) =L= 1;

e14.. sqr(x4 - x6) + sqr(x10 - x12) =L= 1;

e15.. sqr(x5 - x6) + sqr(x11 - x12) =L= 1;

e16..  - x13 - x14 - x15 - x16 - x17 - x18 - objvar =E= 0;

e17..  - 0.5*(x1*x8 - x7*x2) + x13 =E= 0;

e18..  - 0.5*(x2*x9 - x8*x3) + x14 =E= 0;

e19..  - 0.5*(x3*x10 - x9*x4) + x15 =E= 0;

e20..  - 0.5*(x4*x11 - x10*x5) + x16 =E= 0;

e21..  - 0.5*(x5*x12 - x11*x6) + x17 =E= 0;

e22..  - 0.5*(x6*x7 - x12*x1) + x18 =E= 0;

* set non default bounds

x1.fx = 0; 
x7.fx = 0; 
x8.fx = 0; 

* set non default levels

x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 
x9.l = 0.4; 
x10.l = 0.8; 
x11.l = 0.8; 
x12.l = 0.4; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
