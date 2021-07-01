$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:14
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         6       1       5       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       1       0       5       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        31       1      30       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,objvar;

Integer Variables i1,i2,i3,i4,i5;

Equations  e1,e2,e3,e4,e5,e6;


e1.. (-9*sqr(i1)) - 10*i1*i2 - 8*sqr(i2) - 5*sqr(i3) - 6*i3*i1 - 10*i3*i2 - 7*
     sqr(i4) - 10*i4*i1 - 6*i4*i2 - 2*i4*i3 - 2*i5*i2 - 7*sqr(i5) =G= -1430;

e2.. (-6*sqr(i1)) - 8*i1*i2 - 6*sqr(i2) - 4*sqr(i3) - 2*i3*i1 - 2*i3*i2 - 8*
     sqr(i4) + 2*i4*i1 + 10*i4*i2 - 2*i5*i1 - 6*i5*i2 + 6*i5*i4 + 7*sqr(i5)
      =G= -1150;

e3.. (-9*sqr(i1)) - 6*sqr(i2) - 8*sqr(i3) + 2*i2*i1 + 2*i3*i2 - 6*sqr(i4) + 4*
     i4*i1 + 4*i4*i2 - 2*i4*i3 - 6*i5*i1 - 2*i5*i2 + 4*i5*i4 + 6*sqr(i5)
      =G= -850;

e4.. (-8*sqr(i1)) - 4*sqr(i2) - 9*sqr(i3) - 7*sqr(i4) - 2*i2*i1 - 2*i3*i1 - 4*
     i3*i2 + 6*i4*i1 + 2*i4*i2 - 2*i4*i3 - 6*i5*i1 - 4*i5*i2 - 2*i5*i3 + 6*i5*
     i4 + 6*sqr(i5) =G= -1125;

e5.. 2*i2*i1 - 4*sqr(i1) - 5*sqr(i2) - 6*i3*i1 - 8*sqr(i3) - 2*i4*i1 + 6*i4*i2
      - 2*i4*i3 - 6*sqr(i4) - 4*i5*i1 + 2*i5*i2 - 6*i5*i3 - 8*i5*i4 - 7*sqr(i5)
      =G= -1030;

e6..  - (7*sqr(i1) + 6*sqr(i2) + 12*i1 - 77.2*i2 + 8*sqr(i3) - 6*i3*i1 + 4*i3*
     i2 - 19.2*i3 + 6*sqr(i4) + 2*i4*i1 + 2*i4*i3 - 36.6*i4 + 7*sqr(i5) - 4*i5*
     i1 - 2*i5*i2 - 6*i5*i3 - 69.4*i5) + objvar =E= 0;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
i3.up = 200; 
i4.up = 200; 
i5.up = 200; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 1; 
i2.l = 1; 
i3.l = 1; 
i4.l = 1; 
i5.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
