*  NLP written by GAMS Convert at 07/30/01 10:20:25
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       5       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        12      12       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        37      26      11       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,objvar;

Equations  e1,e2,e3,e4,e5;


e1..    x1 + 2*x2 + 2*x3 + x6 + x10 =E= 2;

e2..    x4 + 2*x5 + x6 + x7 =E= 1;

e3..    x3 + x7 + x8 + 2*x9 + x10 =E= 1;

e4..  - (x1*(log(x1/x11) - 6.05576803624071) + x2*(log(x2/x11) - 
     17.1307680362407) + x3*(log(x3/x11) - 34.0207680362407) + x4*(log(x4/x11)
      - 5.88076803624071) + x5*(log(x5/x11) - 24.6877680362407) + x6*(log(x6/
     x11) - 14.9527680362407) + x7*(log(x7/x11) - 24.0667680362407) + x8*(log(
     x8/x11) - 10.6747680362407) + x9*(log(x9/x11) - 26.6287680362407) + x10*(
     log(x10/x11) - 22.1447680362407)) + objvar =E= 0;

e5..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 + x11 =E= 0;

* set non default bounds

x1.lo = 0.001; 
x2.lo = 0.001; 
x3.lo = 0.001; 
x4.lo = 0.001; 
x5.lo = 0.001; 
x6.lo = 0.001; 
x7.lo = 0.001; 
x8.lo = 0.001; 
x9.lo = 0.001; 
x10.lo = 0.001; 
x11.lo = 0.01; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
