*  NLP written by GAMS Convert at 07/19/01 13:39:47
*  
*  Equation counts
*     Total       E       G       L       N       X
*        15       1       0      14       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         8       8       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        46      11      35       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..  - (0.035*x1*x6 - 0.063*x3*x5 + 1.715*x1 + 4.0565*x3) - 10*x2 + objvar
      =E= 3000;

e2.. 0.0059553571*sqr(x6) + 0.88392857*x3/x1 - 0.1175625*x6 =L= 1;

e3.. 1.1088*x1/x3 + 0.1303533*x1/x3*x6 - 0.0066033*x1/x3*sqr(x6) =L= 1;

e4.. 0.00066173269*sqr(x6) - 0.019120592*x6 - 0.0056595559*x4 + 0.017239878*x5
      =L= 1;

e5.. 56.85075/x5 + 1.08702*x6/x5 + 0.32175*x4/x5 - 0.03762*sqr(x6)/x5 =L= 1;

e6.. 2462.3121*x2/x3/x4 - 25.125634*x2/x3 + 0.006198*x7 =L= 1;

e7.. 161.18996/x7 + 5000*x2/x3/x7 - 489510*x2/x3/x4/x7 =L= 1;

e8.. 44.333333/x5 + 0.33*x7/x5 =L= 1;

e9..    0.022556*x5 - 0.007595*x7 =L= 1;

e10..  - 0.0005*x1 + 0.00061*x3 =L= 1;

e11.. 0.819672*x1/x3 + 0.819672/x3 =L= 1;

e12.. 24500*x2/x3/x4 - 250*x2/x3 =L= 1;

e13.. 1.2244898e-5*x3/x2*x4 + 0.010204082*x4 =L= 1;

e14.. 6.25e-5*x1*x6 + 6.25e-5*x1 - 7.625E-5*x3 =L= 1;

e15.. 1.22*x3/x1 + 1/x1 - x6 =L= 1;

* set non default bounds

x1.lo = 1500; x1.up = 2000; 
x2.lo = 1; x2.up = 120; 
x3.lo = 3000; x3.up = 3500; 
x4.lo = 85; x4.up = 93; 
x5.lo = 90; x5.up = 95; 
x6.lo = 3; x6.up = 12; 
x7.lo = 145; x7.up = 162; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
