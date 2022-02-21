$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:53
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       5       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        29       5      24       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        33      29       4       0
*
*  Solve m using MINLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18
          ,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29;

Binary Variables b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21
          ,b22,b23,b24,b25,b26,b27,b28,b29;

Equations  e1,e2,e3,e4,e5;


e1..  - sqr(0.14427932477276 - x2*x3/(x4*x5)) + objvar =E= 0;

e2..    x2 - b6 - 2*b7 - 4*b8 - 8*b9 - 16*b10 - 32*b11 =E= 0;

e3..    x3 - b12 - 2*b13 - 4*b14 - 8*b15 - 16*b16 - 32*b17 =E= 0;

e4..    x4 - b18 - 2*b19 - 4*b20 - 8*b21 - 16*b22 - 32*b23 =E= 0;

e5..    x5 - b24 - 2*b25 - 4*b26 - 8*b27 - 16*b28 - 32*b29 =E= 0;

* set non default bounds

x2.lo = 12; x2.up = 60; 
x3.lo = 12; x3.up = 60; 
x4.lo = 12; x4.up = 60; 
x5.lo = 12; x5.up = 60; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
