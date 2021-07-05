*  MPEC written by GAMS Convert at 03/08/02 16:07:55
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       1       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        18      10       8       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5;

Positive Variables x2,x3,x4,x5;

Equations  e1,e2,e3,e4,e5;


e1..    objvar - x4 =E= 0;

e2.. 3*sqr(x2) + 2*x2*x3 + 2*sqr(x3) + x4 + 3*x5 =G= 6;

e3.. 2*sqr(x2) + x2 + sqr(x3) + 10*x4 + 2*x5 =G= 2;

e4.. 3*sqr(x2) + x2*x3 + 2*sqr(x3) + 2*x4 + 9*x5 =G= 9;

e5.. sqr(x2) + 3*sqr(x3) + 2*x4 + 3*x5 =G= 3;

* set non default bounds


* set non default levels

x2.l = 100; 
x3.l = 100; 
x4.l = 100; 
x5.l = 100; 

* set non default marginals


Model m / e1,e2.x2,e3.x3,e4.x4,e5.x5 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
