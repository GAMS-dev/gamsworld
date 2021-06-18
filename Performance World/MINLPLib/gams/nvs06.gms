$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:20
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         1       1       0       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       1       0       2       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         3       1       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,objvar;

Integer Variables i1,i2;

Equations  e1;


e1..  - 0.1*(sqr(i1) + (1 + sqr(i2))/sqr(i1) + (100 + sqr(i1)*sqr(i2))/POWER(i1
     *i2,4)) + objvar =E= 1.2;

* set non default bounds

i1.lo = 1; i1.up = 200; 
i2.lo = 1; i2.up = 200; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
