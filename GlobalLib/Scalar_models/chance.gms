*  NLP written by GAMS Convert at 07/30/01 10:10:32
*  
*  Equation counts
*     Total       E       G       L       N       X
*         4       2       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        17      13       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5;

Positive Variables x2,x3,x4,x5;

Equations  e1,e2,e3,e4;


e1..    objvar - 24.55*x2 - 26.75*x3 - 39*x4 - 40.5*x5 =E= 0;

e2..    x2 + x3 + x4 + x5 =E= 1;

e3.. 12*x2 - 1.645*sqrt(0.28*sqr(x2) + 0.19*sqr(x3) + 20.5*sqr(x4) + 0.62*sqr(
     x5)) + 11.9*x3 + 41.8*x4 + 52.1*x5 =G= 21;

e4..    2.3*x2 + 5.6*x3 + 11.1*x4 + 1.3*x5 =G= 5;

* set non default bounds


* set non default levels

objvar.l = 28.9426476516831; 
x2.l = 0.685244910300343; 
x3.l = 0.0126990526103601; 
x4.l = 0.302056037089293; 

* set non default marginals

e1.m = 1;
e2.m = 1;
x5.m = 1; 

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
