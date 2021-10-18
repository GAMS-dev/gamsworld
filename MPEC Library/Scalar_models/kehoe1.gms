*  MPEC written by GAMS Convert at 03/08/02 16:07:53
*  
*  Equation counts
*     Total       E       G       L       N       X
*        11       5       6       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11      11       0       0       0       0       0       0
*  FX     1       1       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        49      29      20       0
*
*  Solve m using MPEC minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables x1,x2;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - x3 - x4 - x5 - x6 + objvar =E= 0;

e2..  - 6*x3 + x4 + 4*x5 + x6 =G= 0;

e3..    x3 - 3*x4 + x5 + x6 =G= 0;

e4..  - (0.52*x7/x3 + 0.86*x8/x3 + 0.5*x9/x3 + 0.06*x10/x3) + 6*x1 - x2 =G= -5;

e5..  - (0.4*x7/x4 + 0.1*x8/x4 + 0.2*x9/x4 + 0.25*x10/x4) - x1 + 3*x2 =G= -5;

e6..  - (0.04*x7/x5 + 0.02*x8/x5 + 0.2975*x9/x5 + 0.0025*x10/x5) - 4*x1 - x2
      =G= -40;

e7..  - (0.04*x7/x6 + 0.02*x8/x6 + 0.0025*x9/x6 + 0.6875*x10/x6) - x1 - x2
      =G= -40;

e8..  - 5*x3 + x7 =E= 0;

e9..  - 5*x4 + x8 =E= 0;

e10..  - 40*x5 + x9 =E= 0;

e11..  - 40*x6 + x10 =E= 0;

* set non default bounds

x3.fx = 1; 
x4.lo = 0.0001; 
x5.lo = 0.0001; 
x6.lo = 0.0001; 

* set non default levels

x4.l = 1; 
x5.l = 1; 
x6.l = 1; 

* set non default marginals


Model m / e1,e2.x1,e3.x2,e4.x3,e5.x4,e6.x5,e7.x6,e8,e9,e10,e11 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
