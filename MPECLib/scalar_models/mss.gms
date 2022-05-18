*  MPEC written by GAMS Convert at 11/06/01 17:02:09
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       1       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       6       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        26       1      25       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6;

Positive Variables x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5;


e1..  - (0.142653871201291*x2**1.83333333333333 + 10*x2 - x2*(5000/(x2 + x3 + 
     x4 + x5 + x6))**1) + objvar =E= 0;

e2.. (0.2*x3)**0.909090909090909 - (5000/(x2 + x3 + x4 + x5 + x6))**1 + x3*(
     5000/(x2 + x3 + x4 + x5 + x6))**1/(x2 + x3 + x4 + x5 + x6) =G= -8;

e3.. (0.2*x4)**1 - (5000/(x2 + x3 + x4 + x5 + x6))**1 + x4*(5000/(x2 + x3 + x4
      + x5 + x6))**1/(x2 + x3 + x4 + x5 + x6) =G= -6;

e4.. (0.2*x5)**1.11111111111111 - (5000/(x2 + x3 + x4 + x5 + x6))**1 + x5*(5000
     /(x2 + x3 + x4 + x5 + x6))**1/(x2 + x3 + x4 + x5 + x6) =G= -4;

e5.. (0.2*x6)**1.25 - (5000/(x2 + x3 + x4 + x5 + x6))**1 + x6*(5000/(x2 + x3 + 
     x4 + x5 + x6))**1/(x2 + x3 + x4 + x5 + x6) =G= -2;

* set non default bounds

x2.up = 150; 
x3.up = 150; 
x4.up = 150; 
x5.up = 150; 
x6.up = 150; 

* set non default levels

x2.l = 75; 
x3.l = 75; 
x4.l = 75; 
x5.l = 75; 
x6.l = 75; 

* set non default marginals


Model m / e1,e2.x3,e3.x4,e4.x5,e5.x6 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
