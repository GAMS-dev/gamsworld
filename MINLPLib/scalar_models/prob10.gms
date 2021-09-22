$offlisting
*  MINLP written by GAMS Convert at 07/02/03 17:54:36
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       1       0       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       2       0       1       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         7       5       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  objvar,x2,i3;

Positive Variables x2;

Integer Variables i3;

Equations  e1,e2,e3;


e1..    0.7*x2 + i3 =L= 7;

e2..    2.5*x2 + i3 =L= 19;

e3.. 1.1*(sqr(2*x2 - 10) + sqr(i3 - 5)) + sin(sqr(2*x2 - 10) + sqr(i3 - 5))
      - objvar =E= 0;

* set non default bounds

objvar.lo = -1000; objvar.up = 10; 
x2.up = 10; 
i3.up = 10; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
