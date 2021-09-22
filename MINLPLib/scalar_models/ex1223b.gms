$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:37:50
*  
*  Equation counts
*     Total       E       G       L       N       X
*        10       1       0       9       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         8       4       4       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        32      15      17       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,b4,b5,b6,b7,objvar;

Positive Variables x1,x2,x3;

Binary Variables b4,b5,b6,b7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    x1 + x2 + x3 + b4 + b5 + b6 =L= 5;

e2.. sqr(b6) + sqr(x1) + sqr(x2) + sqr(x3) =L= 5.5;

e3..    x1 + b4 =L= 1.2;

e4..    x2 + b5 =L= 1.8;

e5..    x3 + b6 =L= 2.5;

e6..    x1 + b7 =L= 1.2;

e7.. sqr(b5) + sqr(x2) =L= 1.64;

e8.. sqr(b6) + sqr(x3) =L= 4.25;

e9.. sqr(b5) + sqr(x3) =L= 4.64;

e10..  - (sqr(b4 - 1) + sqr(b5 - 2) + sqr(b6 - 1) - log(1 + b7) + sqr(x1 - 1)
       + sqr(x2 - 2) + sqr(x3 - 3)) + objvar =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 10; 
x3.up = 10; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
