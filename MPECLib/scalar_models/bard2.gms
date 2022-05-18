*  MPEC written by GAMS Convert at 11/06/01 17:01:54
*  
*  Equation counts
*     Total       E       G       L       N       X
*        10       5       0       5       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        13      13       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        33      29       4       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13;

Negative Variables x8,x9,x12,x13;

Positive Variables x2,x3,x4,x5,x6,x7,x10,x11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - (-(200 + (-x6) - x10)*(x6 + x10) - (160 + (-x7) - x11)*(x7 + x11))
      + objvar =E= 0;

e2..    x2 + x3 + x4 + x5 =L= 40;

e3..    2*x6 - 0.4*x8 - 0.6*x9 =E= 8;

e4..    2*x7 - 0.7*x8 - 0.3*x9 =E= 26;

e5..  - x2 + 0.4*x6 + 0.7*x7 =L= 0;

e6..  - x3 + 0.6*x6 + 0.3*x7 =L= 0;

e7..    2*x10 - 0.4*x12 - 0.6*x13 =E= 70;

e8..    2*x11 - 0.7*x12 - 0.3*x13 =E= 4;

e9..  - x4 + 0.4*x10 + 0.7*x11 =L= 0;

e10..  - x5 + 0.6*x10 + 0.3*x11 =L= 0;

* set non default bounds

x2.up = 10; 
x3.up = 5; 
x4.up = 15; 
x5.up = 20; 
x6.up = 20; 
x7.up = 20; 
x10.up = 40; 
x11.up = 40; 

* set non default levels


* set non default marginals


Model m / e1,e2,e3.x6,e4.x7,e5.x8,e6.x9,e7.x10,e8.x11,e9.x12,e10.x13 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
