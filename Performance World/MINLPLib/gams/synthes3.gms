$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:41:31
*  
*  Equation counts
*     Total       E       G       L       N       X
*        24       3       0      21       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        18      10       8       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        91      79      12       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,b10,b11,b12,b13,b14,b15,b16,b17,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9;

Binary Variables b10,b11,b12,b13,b14,b15,b16,b17;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24;


e1.. (-1.5*log(1 + x5)) - log(1 + x6) - x8 =L= 0;

e2..  - log(1 + x3 + x4) =L= 0;

e3..  - x1 - x2 + x3 + 2*x4 + 0.8*x5 + 0.8*x6 - 0.5*x7 - x8 - 2*x9 =L= 0;

e4..  - x1 - x2 + 2*x4 + 0.8*x5 + 0.8*x6 - 2*x7 - x8 - 2*x9 =L= 0;

e5..  - 2*x4 - 0.8*x5 - 0.8*x6 + 2*x7 + x8 + 2*x9 =L= 0;

e6..  - 0.8*x5 - 0.8*x6 + x8 =L= 0;

e7..  - x4 + x7 + x9 =L= 0;

e8..  - 0.4*x5 - 0.4*x6 + 1.5*x8 =L= 0;

e9..    0.16*x5 + 0.16*x6 - 1.2*x8 =L= 0;

e10..    x3 - 0.8*x4 =L= 0;

e11..  - x3 + 0.4*x4 =L= 0;

e12.. exp(x1) - 10*b10 =L= 1;

e13.. exp(0.833333*x2) - 10*b11 =L= 1;

e14..    x7 - 10*b12 =L= 0;

e15..    0.8*x5 + 0.8*x6 - 10*b13 =L= 0;

e16..    2*x4 - 2*x7 - 2*x9 - 10*b14 =L= 0;

e17..    x5 - 10*b15 =L= 0;

e18..    x6 - 10*b16 =L= 0;

e19..    x3 + x4 - 10*b17 =L= 0;

e20..    b10 + b11 =E= 1;

e21..    b13 + b14 =L= 1;

e22..  - b13 + b15 + b16 =E= 0;

e23..    b12 - b17 =L= 0;

e24..  - (exp(x1) - 10*x1 + exp(0.833333*x2) - 15*x2 - 65*log(1 + x3 + x4) + 15
      *x3 + 80*x4 - 90*log(1 + x5) + 25*x5 - 80*log(1 + x6) + 35*x6) + 40*x7
       - 15*x8 + 35*x9 - 5*b10 - 8*b11 - 6*b12 - 10*b13 - 6*b14 - 7*b15 - 4*b16
       - 5*b17 + objvar =E= 120;

* set non default bounds

x1.up = 2; 
x2.up = 2; 
x3.up = 1; 
x4.up = 2; 
x5.up = 2; 
x6.up = 2; 
x7.up = 2; 
x8.up = 1; 
x9.up = 3; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
