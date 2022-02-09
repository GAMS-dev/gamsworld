*  NLP written by GAMS Convert at 07/19/01 13:40:27
*  
*  Equation counts
*     Total       E       G       L       N       X
*         8       2       0       6       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       6       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        35      11      24       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar,x6;

Positive Variables x6;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    objvar - x6 =E= 0;

e2.. log(x1 + 0.48*x2 + 0.768*x3) + x1/(x1 + 0.48*x2 + 0.768*x3) + 1.55*x2/(
     1.55*x1 + x2 + 0.544*x3) + 0.566*x3/(0.566*x1 + 0.65*x2 + x3) + 
     2787.49800065313/(229.664 + x4) - x6 =L= 10.7545020354713;

e3.. log(1.55*x1 + x2 + 0.544*x3) + 0.48*x1/(x1 + 0.48*x2 + 0.768*x3) + x2/(
     1.55*x1 + x2 + 0.544*x3) + 0.65*x3/(0.566*x1 + 0.65*x2 + x3) + 
     2665.5415812027/(219.726 + x4) - x6 =L= 10.6349978691449;

e4.. log(0.566*x1 + 0.65*x2 + x3) + 0.768*x1/(x1 + 0.48*x2 + 0.768*x3) + 0.544*
     x2/(1.55*x1 + x2 + 0.544*x3) + x3/(0.566*x1 + 0.65*x2 + x3) + 
     3643.31361767678/(239.726 + x4) - x6 =L= 12.9738026256517;

e5.. (-log(x1 + 0.48*x2 + 0.768*x3)) - (x1/(x1 + 0.48*x2 + 0.768*x3) + 1.55*x2/
     (1.55*x1 + x2 + 0.544*x3) + 0.566*x3/(0.566*x1 + 0.65*x2 + x3)) - 
     2787.49800065313/(229.664 + x4) - x6 =L= -10.7545020354713;

e6.. (-log(1.55*x1 + x2 + 0.544*x3)) - (0.48*x1/(x1 + 0.48*x2 + 0.768*x3) + x2/
     (1.55*x1 + x2 + 0.544*x3) + 0.65*x3/(0.566*x1 + 0.65*x2 + x3)) - 
     2665.5415812027/(219.726 + x4) - x6 =L= -10.6349978691449;

e7.. (-log(0.566*x1 + 0.65*x2 + x3)) - (0.768*x1/(x1 + 0.48*x2 + 0.768*x3) + 
     0.544*x2/(1.55*x1 + x2 + 0.544*x3) + x3/(0.566*x1 + 0.65*x2 + x3)) - 
     3643.31361767678/(239.726 + x4) - x6 =L= -12.9738026256517;

e8..    x1 + x2 + x3 =E= 1;

* set non default bounds

x1.lo = 1E-6; x1.up = 1; 
x2.lo = 1E-6; x2.up = 1; 
x3.lo = 1E-6; x3.up = 1; 
x4.lo = 20; x4.up = 80; 

* set non default levels

x1.l = 0.272; 
x2.l = 0.465; 
x3.l = 0.253; 
x4.l = 54.254; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
