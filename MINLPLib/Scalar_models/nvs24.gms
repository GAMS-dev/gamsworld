$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:20
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        11       1      10       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11       1       0      10       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       111       1     110       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,objvar;

Integer Variables i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1.. (-9*sqr(i1)) - 10*i1*i2 - 8*sqr(i2) - 5*sqr(i3) - 6*i3*i1 - 10*i3*i2 - 7*
     sqr(i4) - 10*i4*i1 - 6*i4*i2 - 2*i4*i3 - 2*i5*i2 - 7*sqr(i5) - 6*i6*i1 - 2
     *i6*i2 - 2*i6*i4 - 5*sqr(i6) + 6*i7*i1 + 2*i7*i2 + 4*i7*i3 + 2*i7*i4 - 4*
     i7*i5 + 4*i7*i6 - 8*sqr(i7) - 2*i8*i1 - 6*i8*i2 - 2*i8*i3 + 6*i8*i5 - 2*i8
     *i7 - 6*sqr(i8) + 2*i9*i3 - 4*i9*i4 + 8*i9*i5 + 4*i9*i6 - 6*i9*i8 - 6*sqr(
     i9) + 2*i10*i1 + 2*i10*i2 - 2*i10*i4 + 2*i10*i5 - 2*i10*i6 - 2*i10*i8 - 6*
     i10*i9 - 8*sqr(i10) =G= -1930;

e2.. (-6*sqr(i1)) - 8*i1*i2 - 6*sqr(i2) - 4*sqr(i3) - 2*i3*i1 - 2*i3*i2 - 8*
     sqr(i4) + 2*i4*i1 + 10*i4*i2 - 2*i5*i1 - 6*i5*i2 + 6*i5*i4 + 7*sqr(i5) - 2
     *i6*i2 + 8*i6*i3 + 2*i6*i4 - 4*i6*i5 - 8*sqr(i6) - 6*i7*i1 - 10*i7*i2 - 2*
     i7*i3 + 10*i7*i4 - 10*i7*i5 - 8*sqr(i7) - 2*i8*i1 - 4*i8*i2 - 2*i8*i3 - 8*
     i8*i5 - 8*i8*i7 - 5*sqr(i8) - 2*i9*i1 - 2*i9*i2 + 4*i9*i6 + 2*i9*i7 - 6*
     sqr(i9) + 4*i10*i1 - 2*i10*i3 + 4*i10*i4 + 6*i10*i6 - 2*i10*i7 - 2*i10*i8
      - 6*sqr(i10) =G= -3140;

e3.. (-9*sqr(i1)) - 6*sqr(i2) - 8*sqr(i3) + 2*i2*i1 + 2*i3*i2 - 6*sqr(i4) + 4*
     i4*i1 + 4*i4*i2 - 2*i4*i3 - 6*i5*i1 - 2*i5*i2 + 4*i5*i4 + 6*sqr(i5) + 2*i6
     *i1 + 4*i6*i2 - 6*i6*i4 - 2*i6*i5 - 5*sqr(i6) + 2*i7*i2 - 4*i7*i3 - 6*i7*
     i5 - 4*i7*i6 - 7*sqr(i7) - 2*i8*i1 + 4*i8*i3 + 2*i8*i4 - 4*sqr(i8) + 10*i9
     *i1 + 6*i9*i2 - 4*i9*i3 - 10*i9*i4 + 8*i9*i5 - 6*i9*i6 - 2*i9*i7 - 8*sqr(
     i9) - 4*i10*i2 + 2*i10*i3 + 4*i10*i4 + 6*i10*i5 + 2*i10*i7 - 2*i10*i8 + 2*
     i10*i9 - 7*sqr(i10) + 4*i10*i6 =G= -1600;

e4.. (-8*sqr(i1)) - 4*sqr(i2) - 9*sqr(i3) - 7*sqr(i4) - 2*i2*i1 - 2*i3*i1 - 4*
     i3*i2 + 6*i4*i1 + 2*i4*i2 - 2*i4*i3 - 6*i5*i1 - 4*i5*i2 - 2*i5*i3 + 6*i5*
     i4 + 6*sqr(i5) - 10*i6*i1 - 10*i6*i3 + 4*i6*i4 - 2*i6*i5 - 7*sqr(i6) + 6*
     i7*i1 - 2*i7*i2 - 2*i7*i3 + 6*i7*i5 + 2*i7*i6 - 6*sqr(i7) + 4*i8*i1 - 4*i8
     *i2 + 2*i8*i3 - 4*i8*i4 - 4*i8*i5 + 8*i8*i6 + 6*i8*i6 - 8*sqr(i8) - 4*i9*
     i1 + 4*i9*i2 + 6*i9*i3 - 2*i9*i4 + 2*i9*i6 + 8*i9*i7 - 4*i9*i8 - 10*sqr(i9
     ) + 8*i10*i1 + 4*i10*i2 + 2*i10*i3 + 2*i10*i4 + 4*i10*i6 - 6*sqr(i10)
      =G= -1260;

e5.. 2*i2*i1 - 4*sqr(i1) - 5*sqr(i2) - 6*i3*i1 - 8*sqr(i3) - 2*i4*i1 + 6*i4*i2
      - 2*i4*i3 - 6*sqr(i4) - 4*i5*i1 + 2*i5*i2 - 6*i5*i3 - 8*i5*i4 - 7*sqr(i5)
      + 4*i6*i1 - 4*i6*i2 + 6*i6*i3 + 4*i6*i5 - 7*sqr(i6) + 4*i7*i1 - 4*i7*i2
      - 4*i7*i3 + 4*i7*i4 + 4*i7*i5 + 4*i7*i6 - 8*sqr(i7) - 2*i8*i1 + 4*i8*i4
      + 2*i8*i6 + 2*i8*i7 - 4*sqr(i8) - 2*i9*i2 + 4*i9*i3 + 4*i9*i4 - 2*i9*i5
      + 2*i9*i6 + 6*i9*i7 - 6*i9*i8 - 7*sqr(i9) - 6*i10*i3 - 2*i10*i4 - 4*i10*
     i5 - 4*i10*i9 - 8*sqr(i10) + 2*i10*i8 =G= -1430;

e6.. 2*i2*i1 - 7*sqr(i1) - 7*sqr(i2) - 6*i3*i1 - 2*i3*i2 - 6*sqr(i3) - 2*i4*i1
      + 2*i4*i2 - 2*i4*i3 - 5*sqr(i4) - 2*i5*i1 - 4*i5*i3 + 2*i5*i4 - 5*sqr(i5)
      + 2*i6*i1 - 4*i6*i2 + 4*i6*i3 + 2*i6*i4 + 6*i6*i5 - 9*sqr(i6) + 4*i7*i2
      - 4*i7*i3 + 4*i7*i4 - 4*i7*i5 + 8*i7*i6 - 6*sqr(i7) + 4*i8*i1 + 8*i8*i2
      + 2*i8*i3 - 4*i8*i4 - 2*i8*i5 + 4*i8*i6 - 9*sqr(i8) - 4*i9*i1 + 2*i9*i4
      + 6*i9*i5 - 4*i9*i6 - 2*i9*i7 + 2*i9*i8 - 6*sqr(i9) + 2*i10*i1 - 2*i10*i5
      - 4*i10*i6 + 2*i10*i7 + 2*i10*i8 + 6*i10*i9 - 5*sqr(i10) =G= -1020;

e7.. (-9*sqr(i1)) - 4*i2*i1 - 8*sqr(i2) + 4*i3*i1 + 2*i3*i2 - 7*sqr(i3) + 4*i4*
     i1 + 4*i4*i3 - 7*sqr(i4) - 2*i5*i1 - 12*i5*i2 - 4*i5*i3 - 8*sqr(i5) - 8*i6
     *i1 + 2*i6*i2 - 2*i6*i5 - 6*sqr(i6) - 4*i7*i1 - 6*i7*i2 - 2*i7*i3 + 10*i7*
     i4 - 2*i7*i5 + 2*i7*i6 - 7*sqr(i7) - 2*i8*i1 + 2*i8*i2 + 2*i8*i3 + 2*i8*i4
      - 6*i8*i6 - 2*i8*i7 - 6*sqr(i8) + 4*i9*i1 + 2*i9*i2 + 4*i9*i3 + 4*i9*i4
      + 2*i9*i5 - 2*i9*i6 - 9*sqr(i9) + 6*i10*i1 - 6*i10*i3 + 10*i10*i4 + 6*i10
     *i6 - 8*i10*i7 - 4*i10*i9 - 8*sqr(i10) =G= -2860;

e8.. 4*i2*i1 - 7*sqr(i1) - 8*sqr(i2) + 4*i3*i1 - 8*sqr(i3) + 4*i4*i1 + 8*i4*i2
      - 6*i4*i3 - 7*sqr(i4) - 2*i5*i2 + 2*i5*i4 - 5*sqr(i5) - 2*i6*i1 - 2*i6*i2
      + 4*i6*i4 - 4*i6*i5 - 7*sqr(i6) - 2*i7*i1 + 8*i7*i2 - 2*i7*i3 - 2*i7*i4
      + 6*i7*i5 + 2*i7*i6 - 7*sqr(i7) + 2*i8*i1 - 6*i8*i2 + 6*i8*i3 + 4*i8*i4
      + 2*i8*i5 - 4*i8*i6 - 6*sqr(i8) + 4*i9*i1 - 6*i9*i2 + 2*i9*i3 - 2*i9*i4
      + 2*i9*i5 + 6*i9*i6 + 2*i9*i7 - 4*i9*i8 - 6*sqr(i9) - 2*i10*i1 - 2*i10*i2
      - 4*i10*i3 + 4*i10*i5 + 4*i10*i6 + 2*i10*i8 - 4*i10*i9 - 6*sqr(i10)
      =G= -880;

e9.. 2*i2*i1 - 4*sqr(i1) - 7*sqr(i2) + 8*i3*i1 - 4*i3*i2 - 9*sqr(i3) - 2*i4*i1
      - 4*i4*i2 - 2*i4*i3 - 6*sqr(i4) + 4*i5*i1 + 2*i5*i2 + 4*i5*i3 + 6*i5*i4
      - 6*sqr(i5) + 4*i6*i3 - 6*i6*i4 - 7*sqr(i6) - 2*i7*i2 - 4*i7*i3 + 4*i7*i5
      + 8*i7*i6 - 7*sqr(i7) + 2*i8*i2 - 4*i8*i3 + 2*i8*i4 + 2*i8*i5 + 6*i8*i7
      - 7*sqr(i8) + 4*i9*i1 + 2*i9*i2 - 10*i9*i3 + 2*i9*i5 + 2*i9*i6 - 8*i9*i8
      - 6*sqr(i9) + 2*i10*i1 + 2*i10*i2 + 4*i10*i3 + 8*i10*i4 - 4*i10*i5 - 2*
     i10*i6 + 2*i10*i7 - 2*i10*i8 + 2*i10*i9 - 8*sqr(i10) =G= -700;

e10.. 6*i2*i1 - 7*sqr(i1) - 6*sqr(i2) - 10*i3*i1 + 6*i3*i2 - 8*sqr(i3) + 4*i4*
      i1 + 2*i4*i2 + 2*i4*i3 - 8*sqr(i4) - 2*i5*i1 + 2*i5*i2 + 8*i5*i4 - 4*sqr(
      i5) + 4*i6*i1 + 2*i6*i3 - 4*i6*i4 + 2*i6*i5 - 2*sqr(i6) - 2*i7*i1 + 2*i7*
      i2 - 4*i7*i3 + 2*i7*i4 + 2*i7*i5 + 2*i7*i6 - 6*sqr(i7) - 2*i8*i1 + 2*i8*
      i2 - 6*i8*i3 + 6*i8*i4 - 2*i8*i5 + 2*i8*i6 - 4*i8*i7 - 5*sqr(i8) + 4*i9*
      i1 - 4*i9*i2 - 10*i9*i4 + 6*i9*i5 - 2*i9*i6 + 2*i9*i7 + 4*i9*i8 - 6*sqr(
      i9) + 2*i10*i2 - 4*i10*i3 + 2*i10*i4 - 2*i10*i5 + 2*i10*i6 + 4*i10*i7 - 6
      *i10*i8 + 2*i10*i9 - 7*sqr(i10) =G= -360;

e11..  - (7*sqr(i1) + 6*sqr(i2) + 37.6*i1 + 19.6*i2 + 8*sqr(i3) - 6*i3*i1 + 4*
      i3*i2 - 5.6*i3 + 6*sqr(i4) + 2*i4*i1 + 2*i4*i3 - 26*i4 + 7*sqr(i5) - 4*i5
      *i1 - 2*i5*i2 - 6*i5*i3 - 125*i5 + 4*sqr(i6) + 2*i6*i1 - 4*i6*i2 - 4*i6*
      i3 - 2*i6*i4 + 6*i6*i5 - 79.6*i6 + 6*sqr(i7) - 2*i7*i1 - 6*i7*i2 - 2*i7*
      i3 + 4*i7*i5 + 4*i7*i6 - 104.2*i7 + 7*sqr(i8) - 4*i8*i1 - 2*i8*i2 + 6*i8*
      i3 + 4*i8*i4 - 4*i8*i5 - 2*i8*i6 + 4*i8*i7 - 4.6*i8 + 8*sqr(i9) - 2*i9*i1
       - 4*i9*i2 + 4*i9*i3 + 4*i9*i4 - 4*i9*i5 - 4*i9*i6 + 8*i9*i7 + 4*i9*i8 - 
      22.8*i9 + 6*sqr(i10) - 4*i10*i1 - 6*i10*i2 + 2*i10*i3 - 4*i10*i4 + 2*i10*
      i5 + 2*i10*i6 - 2*i10*i7 - 4*i10*i8 - 2*i10*i9 + 9*i10) + objvar =E= 0;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
i3.up = 200; 
i4.up = 200; 
i5.up = 200; 
i6.up = 200; 
i7.up = 200; 
i8.up = 200; 
i9.up = 200; 
i10.up = 200; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 100; 
i2.l = 100; 
i3.l = 100; 
i4.l = 100; 
i5.l = 100; 
i6.l = 100; 
i7.l = 100; 
i8.l = 100; 
i9.l = 100; 
i10.l = 100; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
