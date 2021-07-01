$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:37:51
*  
*  Equation counts
*     Total       E       G       L       N       X
*         8       3       0       5       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        12       4       8       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        31      25       6       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,b4,b5,b6,b7,b8,b9,b10,b11,objvar;

Positive Variables x1,x2,x3;

Binary Variables b4,b5,b6,b7,b8,b9,b10,b11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1.. x1*x2*x3 + objvar =E= 0;

e2..  - log(1 - x1) - 2.30258509299405*b4 - 1.6094379124341*b5
      - 1.89711998488588*b6 =E= 0;

e3..  - log(1 - x2) - 2.99573227355399*b7 - 1.6094379124341*b8
      - 1.89711998488588*b9 =E= 0;

e4..  - log(1 - x3) - 3.91202300542815*b10 - 2.81341071676004*b11 =L= 0;

e5..  - b4 - b5 - b6 =L= -1;

e6..  - b7 - b8 - b9 =L= -1;

e7..  - b10 - b11 =L= -1;

e8..    3*b4 + b5 + 2*b6 + 3*b7 + 2*b8 + b9 + 3*b10 + 2*b11 =L= 10;

* set non default bounds

x1.up = 0.997; 
x2.up = 0.9985; 
x3.up = 0.9988; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
