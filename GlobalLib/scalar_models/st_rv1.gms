*  NLP written by GAMS Convert at 08/30/02 11:48:58
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         6       1       0       5       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11      11       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        52      42      10       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4,e5,e6;


e1..    8*x1 + 7*x2 + 9*x3 + 9*x5 + 8*x6 + 2*x7 + 4*x9 + x10 =L= 530;

e2..    3*x1 + 4*x2 + 6*x3 + 9*x4 + 6*x6 + 9*x7 + x8 + x10 =L= 395;

e3..    2*x2 + x3 + 5*x4 + 5*x5 + 7*x7 + 4*x8 + 2*x9 =L= 350;

e4..    5*x1 + 7*x3 + x4 + 7*x5 + 5*x6 + 7*x8 + 9*x9 + 5*x10 =L= 405;

e5..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 =L= 200;

e6..  - (-0.00055*sqr(x1) - 0.0583*x1 - 0.0019*sqr(x2) - 0.2318*x2 - 0.0002*
     sqr(x3) - 0.0108*x3 - 0.00095*sqr(x4) - 0.1634*x4 - 0.0046*sqr(x5) - 0.138
     *x5 - 0.0035*sqr(x6) - 0.357*x6 - 0.00315*sqr(x7) - 0.1953*x7 - 0.00475*
     sqr(x8) - 0.361*x8 - 0.0048*sqr(x9) - 0.1824*x9 - 0.003*sqr(x10) - 0.162*
     x10) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
