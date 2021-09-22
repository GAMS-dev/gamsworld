$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:39
*  
*  Equation counts
*     Total       E       G       L       N       X
*        19      11       2       6       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        23      17       6       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        75      59      16       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,b17,b18,b19
          ,b20,b21,b22,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Binary Variables b17,b18,b19,b20,b21,b22;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19;


e1..  - (50*(x1 + x2 + x3 + x4 + x9 + x10 + x11 + x12)**2.5 + 70*(x5 + x6 + x7
      + x8 + x13 + x14 + x15 + x16)**2.5 + 10*x1 + 15*x2 + 20*x3 + 10*x4 + 5*x5
      + 5*x6 + 30*x7 + 10*x8 + 25*x9 + 20*x10 + 15*x11 + 20*x12 + 30*x13 + 10*
     x14 + 10*x15 + 30*x16) - 2000*b21 - 2500*b22 + objvar =E= 0;

e2..    x1 + x3 + x5 + x7 =L= 100;

e3..    x2 + x4 + x6 + x8 =L= 200;

e4..    x9 + x11 + x13 + x15 =L= 150;

e5..    x10 + x12 + x14 + x16 =L= 120;

e6..    x1 + x9 - 120*b17 =E= 0;

e7..    x2 + x10 - 140*b17 =E= 0;

e8..    x3 + x11 - 130*b18 =E= 0;

e9..    x4 + x12 - 180*b18 =E= 0;

e10..    x5 + x13 - 120*b19 =E= 0;

e11..    x6 + x14 - 140*b19 =E= 0;

e12..    x7 + x15 - 130*b20 =E= 0;

e13..    x8 + x16 - 180*b20 =E= 0;

e14..    260*b17 + 310*b18 - 2500*b21 =L= 0;

e15..    260*b19 + 310*b20 - 3200*b22 =L= 0;

e16..    260*b17 + 310*b18 - 50*b21 =G= 0;

e17..    260*b19 + 310*b20 - 50*b22 =G= 0;

e18..    b17 + b19 =E= 1;

e19..    b18 + b20 =E= 1;

* set non default bounds

x1.up = 300; 
x2.up = 300; 
x3.up = 300; 
x4.up = 300; 
x5.up = 300; 
x6.up = 300; 
x7.up = 300; 
x8.up = 300; 
x9.up = 300; 
x10.up = 300; 
x11.up = 300; 
x12.up = 300; 
x13.up = 300; 
x14.up = 300; 
x15.up = 300; 
x16.up = 300; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
