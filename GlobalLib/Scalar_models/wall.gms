*  NLP written by GAMS Convert at 07/26/01 12:11:40
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       6       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       6       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        20      10      10       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6;


e1.. objvar*x2 =E= 1;

e2.. x3/objvar/x4 =E= 4.8;

e3.. x5/x2/x6 =E= 0.98;

e4.. x6*x4 =E= 1;

e5..    objvar - x2 + 1E-7*x3 - 1E-5*x5 =E= 0;

e6..    2*objvar - 2*x2 + 1E-7*x3 - 0.01*x4 - 1E-5*x5 + 0.01*x6 =E= 0;

* set non default bounds


* set non default levels

objvar.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
