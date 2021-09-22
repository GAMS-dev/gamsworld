*  NLP written by GAMS Convert at 07/19/01 13:39:41
*  
*  Equation counts
*     Total       E       G       L       N       X
*         4       4       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13       3      10       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5;

Positive Variables x4,x5;

Equations  e1,e2,e3,e4;


e1..  - (x2*(0.06391 + log(x2)) + x3*(log(x3) - 0.02875) + 0.925356626778358*x2
     *x5 + 0.746014540096753*x3*x4) + objvar =E= 0;

e2.. x4*(x2 + 0.159040857374844*x3) - x2 =E= 0;

e3.. x5*(0.307941026821595*x2 + x3) - x3 =E= 0;

e4..    x2 + x3 =E= 1;

* set non default bounds

x2.lo = 1E-6; x2.up = 1; 
x3.lo = 1E-6; x3.up = 1; 

* set non default levels

x2.l = 0.00421; 
x3.l = 0.99579; 
x4.l = 0.0258947377097763; 
x5.l = 0.998699779997328; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
