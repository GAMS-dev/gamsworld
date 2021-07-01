$offlisting
*  MINLP written by GAMS Convert at 08/29/02 16:26:45
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        14       5       0       9       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        12       8       4       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        40      23      17       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,b8,b9,b10,b11,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7;

Binary Variables b8,b9,b10,b11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1..    x1 + x2 + x3 + b8 + b9 + b10 =L= 5;

e2.. POWER(x6,2) + POWER(x1,2) + POWER(x2,2) + POWER(x3,2) =L= 5.5;

e3..    x1 + b8 =L= 1.2;

e4..    x2 + b9 =L= 1.8;

e5..    x3 + b10 =L= 2.5;

e6..    x1 + b11 =L= 1.2;

e7.. POWER(x5,2) + POWER(x2,2) =L= 1.64;

e8.. POWER(x6,2) + POWER(x3,2) =L= 4.25;

e9.. POWER(x5,2) + POWER(x3,2) =L= 4.64;

e10..    x4 - b8 =E= 0;

e11..    x5 - b9 =E= 0;

e12..    x6 - b10 =E= 0;

e13..    x7 - b11 =E= 0;

e14..  - (POWER(x4 - 1,2) + POWER(x5 - 2,2) + POWER(x6 - 1,2) - log(1 + x7) + 
      POWER(x1 - 1,2) + POWER(x2 - 2,2) + POWER(x3 - 3,2)) + objvar =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 10; 
x3.up = 10; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 
x7.up = 1; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
