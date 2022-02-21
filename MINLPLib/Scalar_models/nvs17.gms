$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:18
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         8       1       7       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         8       1       0       7       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        57       1      56       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,objvar;

Integer Variables i1,i2,i3,i4,i5,i6,i7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1.. (-9*sqr(i1)) - 10*i1*i2 - 8*sqr(i2) - 5*sqr(i3) - 6*i3*i1 - 10*i3*i2 - 7*
     sqr(i4) - 10*i4*i1 - 6*i4*i2 - 2*i4*i3 - 2*i5*i2 - 7*sqr(i5) - 6*i6*i1 - 2
     *i6*i2 - 2*i6*i4 - 5*sqr(i6) + 6*i7*i1 + 2*i7*i2 + 4*i7*i3 + 2*i7*i4 - 4*
     i7*i5 + 4*i7*i6 - 8*sqr(i7) =G= -1930;

e2.. (-6*sqr(i1)) - 6*i1*i2 - 6*sqr(i2) - 4*sqr(i3) - 2*i3*i1 - 2*i3*i2 - 8*
     sqr(i4) + 2*i4*i1 + 10*i4*i2 - 2*i5*i1 - 6*i5*i2 + 6*i5*i4 + 7*sqr(i5) - 2
     *i6*i2 + 8*i6*i3 + 2*i6*i4 - 4*i6*i5 - 8*sqr(i6) - 6*i7*i1 - 10*i7*i2 - 2*
     i7*i3 + 10*i7*i4 - 10*i7*i5 - 8*sqr(i7) =G= -2940;

e3.. (-9*sqr(i1)) - 6*sqr(i2) - 8*sqr(i3) + 2*i2*i1 + 2*i3*i2 - 6*sqr(i4) + 4*
     i4*i1 + 4*i4*i2 - 2*i4*i3 - 6*i5*i1 - 2*i5*i2 + 4*i5*i4 + 6*sqr(i5) + 2*i6
     *i1 + 4*i6*i2 - 6*i6*i4 - 2*i6*i5 - 5*sqr(i6) + 2*i7*i2 - 4*i7*i3 - 6*i7*
     i5 - 4*i7*i6 - 7*sqr(i7) =G= -1840;

e4.. (-8*sqr(i1)) - 4*sqr(i2) - 9*sqr(i3) - 7*sqr(i4) - 2*i2*i1 - 2*i3*i1 - 4*
     i3*i2 + 6*i4*i1 + 2*i4*i2 - 2*i4*i3 - 6*i5*i1 - 4*i5*i2 - 2*i5*i3 + 6*i5*
     i4 + 6*sqr(i5) - 10*i6*i1 - 10*i6*i3 + 4*i6*i4 - 2*i6*i5 - 7*sqr(i6) + 6*
     i7*i1 - 2*i7*i2 - 2*i7*i3 + 6*i7*i5 + 2*i7*i6 - 6*sqr(i7) =G= -1650;

e5.. 2*i2*i1 - 4*sqr(i1) - 5*sqr(i2) - 6*i3*i1 - 8*sqr(i3) - 2*i4*i1 + 6*i4*i2
      - 2*i4*i3 - 6*sqr(i4) - 4*i5*i1 + 2*i5*i2 - 6*i5*i3 - 8*i5*i4 - 7*sqr(i5)
      + 4*i6*i1 - 4*i6*i2 + 6*i6*i3 + 4*i6*i5 - 7*sqr(i6) + 4*i7*i1 - 4*i7*i2
      - 4*i7*i3 + 4*i7*i4 + 4*i7*i5 + 4*i7*i6 - 8*sqr(i7) =G= -1220;

e6.. 2*i2*i1 - 7*sqr(i1) - 7*sqr(i2) - 6*i3*i1 - 2*i3*i2 - 6*sqr(i3) - 2*i4*i1
      + 2*i4*i2 - 2*i4*i3 - 5*sqr(i4) - 2*i5*i1 - 4*i5*i3 + 2*i5*i4 - 5*sqr(i5)
      + 2*i6*i1 - 4*i6*i2 + 4*i6*i3 + 2*i6*i4 + 6*i6*i5 - 9*sqr(i6) + 4*i7*i2
      - 4*i7*i3 + 4*i7*i4 - 4*i7*i5 + 8*i7*i6 - 6*sqr(i7) =G= -1020;

e7.. (-9*sqr(i1)) - 4*i2*i1 - 8*sqr(i2) + 4*i3*i1 + 2*i3*i2 - 7*sqr(i3) + 4*i4*
     i1 + 4*i4*i3 - 7*sqr(i4) - 2*i5*i1 - 12*i5*i2 - 4*i5*i3 - 8*sqr(i5) - 8*i6
     *i1 + 2*i6*i2 - 2*i6*i5 - 6*sqr(i6) - 4*i7*i1 - 6*i7*i2 - 2*i7*i3 + 10*i7*
     i4 - 2*i7*i5 + 2*i7*i6 - 7*sqr(i2) =G= -2740;

e8..  - (7*sqr(i1) + 6*sqr(i2) + 14.2*i1 - 11.6*i2 + 8*sqr(i3) - 6*i3*i1 + 4*i3
     *i2 + 18.4*i3 + 6*sqr(i4) + 2*i4*i1 + 2*i4*i3 - 24.8*i4 + 7*sqr(i5) - 4*i5
     *i1 - 2*i5*i2 - 6*i5*i3 - 132.8*i5 + 4*sqr(i6) + 2*i6*i1 - 4*i6*i2 - 4*i6*
     i3 - 2*i6*i4 + 6*i6*i5 - 84.4*i6 + 6*sqr(i7) - 2*i7*i1 - 6*i7*i2 - 2*i7*i3
      + 4*i7*i5 + 4*i7*i6 - 88*i7) + objvar =E= 0;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
i3.up = 200; 
i4.up = 200; 
i5.up = 200; 
i6.up = 200; 
i7.up = 200; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 1; 
i2.l = 1; 
i3.l = 1; 
i4.l = 1; 
i5.l = 1; 
i6.l = 1; 
i7.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
