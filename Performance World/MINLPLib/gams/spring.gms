$offlisting
*  MINLP written by GAMS Convert at 04/27/01 14:53:07
*  
*  Equation counts
*     Total       E       G       L       N       X
*         9       6       0       3       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        18       6      11       1       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        44      30      14       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,i4,x5,x6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,objvar;

Binary Variables b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17;

Integer Variables i4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - (1.570796327 + 0.7853981635*i4)*x1*sqr(x2) + objvar =E= 0;

e2..  - x1/x2 + x5 =E= 0;

e3..  - ((4*x5 - 1)/(4*x5 - 4) + 0.615/x5) + x6 =E= 0;

e4.. 2546.47908913782*x6*x5/sqr(x2) =L= 189000;

e5..  - 6.95652173913044e-7*i4*x5**3/x2 + x3 =E= 0;

e6.. (2.1 + 1.05*i4)*x2 + 1000*x3 =L= 14;

e7..    x1 + x2 =L= 3;

e8..    x2 - 0.207*b7 - 0.225*b8 - 0.244*b9 - 0.263*b10 - 0.283*b11 - 0.307*b12
      - 0.331*b13 - 0.362*b14 - 0.394*b15 - 0.4375*b16 - 0.5*b17 =E= 0;

e9..    b7 + b8 + b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 + b17 =E= 1;

* set non default bounds

x1.lo = 0.414; 
x2.lo = 0.207; 
x3.lo = 0.00178571428571429; x3.up = 0.02; 
i4.lo = 1; i4.up = 100; 
x5.lo = 1.1; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
