*  NLP written by GAMS Convert at 07/19/01 13:40:24
*  
*  Equation counts
*     Total       E       G       L       N       X
*        10       2       0       8       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        43      17      26       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - x6 + objvar =E= 0;

e2.. x1*x2 + x1 - 3*x5 =E= 0;

e3.. 2.8845e-6*sqr(x2) + 4.4975e-7*x2 + 2*x1*x2 + x1 + 0.000545176668613029*x2*
     x3 + 3.40735417883143e-5*x2*x4 + x2*sqr(x3) - 10*x5 - x6 =L= 0;

e4.. (-2.8845e-6*sqr(x2)) - 4.4975e-7*x2 - 2*x1*x2 - x1 - 0.000545176668613029*
     x2*x3 - 3.40735417883143e-5*x2*x4 - x2*sqr(x3) + 10*x5 - x6 =L= 0;

e5.. 0.386*sqr(x3) + 0.000410621754172864*x3 + 0.000545176668613029*x2*x3 + 2*
     x2*sqr(x3) - 8*x5 - x6 =L= 0;

e6.. (-0.386*sqr(x3)) - 0.000410621754172864*x3 - 0.000545176668613029*x2*x3 - 
     2*x2*sqr(x3) + 8*x5 - x6 =L= 0;

e7.. 2*sqr(x4) + 3.40735417883143e-5*x2*x4 - 40*x5 - x6 =L= 0;

e8.. (-2*sqr(x4)) - 3.40735417883143e-5*x2*x4 + 40*x5 - x6 =L= 0;

e9.. 9.615e-7*sqr(x2) + 4.4975e-7*x2 + 0.193*sqr(x3) + 0.000410621754172864*x3
      + sqr(x4) + x1*x2 + x1 + 0.000545176668613029*x2*x3 + 3.40735417883143e-5
     *x2*x4 + x2*sqr(x3) - x6 =L= 1;

e10.. (-9.615e-7*sqr(x2)) - 4.4975e-7*x2 - 0.193*sqr(x3) - 0.000410621754172864
      *x3 - sqr(x4) - x1*x2 - x1 - 0.000545176668613029*x2*x3 - 
      3.40735417883143e-5*x2*x4 - x2*sqr(x3) - x6 =L= -1;

* set non default bounds

x1.lo = 0.0001; x1.up = 100; 
x2.lo = 0.0001; x2.up = 100; 
x3.lo = 0.0001; x3.up = 100; 
x4.lo = 0.0001; x4.up = 100; 
x5.lo = 0.0001; x5.up = 100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
