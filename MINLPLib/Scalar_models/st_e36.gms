$offlisting
*  MINLP written by GAMS Convert at 08/29/02 11:38:03
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       2       0       1       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       2       0       1       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         7       1       6       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,x2,objvar;

Integer Variables i1;

Equations  e1,e2,e3;


e1.. (sqr(x2) - 6*x2 + 0.8*i1 - 11)*(sqr(3.25*x2 - 0.62*i1) + sqr(0.2*i1 + x2
      - 6.35))*(sqr(3.55*x2 - 0.66*i1) + sqr(0.2*i1 + x2 - 6.85))*(sqr(3.6*x2
      - 0.7*i1) + sqr(0.2*i1 + x2 - 7.1))*(sqr(3.8*x2 - 0.82*i1) + sqr(0.2*i1
      + x2 - 7.9)) =E= 0;

e2.. 0.6*i1 - 0.2*x2*i1 + exp(x2 - 3) =L= 1;

e3..  - (2*sqr(x2) + 0.008*POWER(i1,3) - 3.2*x2*i1 - 2*i1) + objvar =E= 0;

* set non default bounds

i1.lo = 15; i1.up = 25; 
x2.lo = 3; x2.up = 5.5; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
