*  NLP written by GAMS Convert at 07/19/01 13:39:41
*  
*  Equation counts
*     Total       E       G       L       N       X
*         7       7       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       9       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        25       5      20       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9;

Positive Variables x6,x7,x8,x9;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - (x2*(log(x2) - log(x2 + x4)) + x4*(log(x4) - log(x2 + x4)) + x3*(log(x3
     ) - log(x3 + x5)) + x5*(log(x5) - log(x3 + x5)) + 0.925356626778358*x2*x8
      + 0.746014540096753*x4*x6 + 0.925356626778358*x3*x9 + 0.746014540096753*
     x5*x7) + objvar =E= 0;

e2.. x6*(x2 + 0.159040857374844*x4) - x2 =E= 0;

e3.. x7*(x3 + 0.159040857374844*x5) - x3 =E= 0;

e4.. x8*(0.307941026821595*x2 + x4) - x4 =E= 0;

e5.. x9*(0.307941026821595*x3 + x5) - x5 =E= 0;

e6..    x2 + x3 =E= 0.5;

e7..    x4 + x5 =E= 0.5;

* set non default bounds

x2.lo = 1E-7; x2.up = 0.5; 
x3.lo = 1E-7; x3.up = 0.5; 
x4.lo = 1E-7; x4.up = 0.5; 
x5.lo = 1E-7; x5.up = 0.5; 

* set non default levels

x2.l = 0.4993; 
x3.l = 0.0007; 
x4.l = 0.3441; 
x5.l = 0.1559; 
x6.l = 0.901221308981222; 
x7.l = 0.0274569351394739; 
x8.l = 0.691165161172019; 
x9.l = 0.998619236157215; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
