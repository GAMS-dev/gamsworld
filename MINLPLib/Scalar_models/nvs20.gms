$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:19
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         9       1       8       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        17      12       0       5       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        70      54      16       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,objvar;

Positive Variables x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Integer Variables i1,i2,i3,i4,i5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    0.22*i1 + 0.2*i2 + 0.19*i3 + 0.25*i4 + 0.15*i5 + 0.11*x6 + 0.12*x7
      + 0.13*x8 + x9 =G= 2.5;

e2..  - 1.46*i1 - 1.3*i3 + 1.82*i4 - 1.15*i5 + 0.8*x7 + x10 =G= 1.1;

e3..    1.29*i1 - 0.89*i2 - 1.16*i5 - 0.96*x6 - 0.49*x8 + x11 =G= -3.1;

e4..  - 1.1*i1 - 1.06*i2 + 0.95*i3 - 0.54*i4 - 1.78*x6 - 0.41*x7 + x12
      =G= -3.5;

e5..  - 1.43*i4 + 1.51*i5 + 0.59*x6 - 0.33*x7 - 0.43*x8 + x13 =G= 1.3;

e6..  - 1.72*i2 - 0.33*i3 + 1.62*i5 + 1.24*x6 + 0.21*x7 - 0.26*x8 + x14
      =G= 2.1;

e7..    1.12*i1 + 0.31*i4 + 1.12*x7 - 0.36*x9 + x15 =G= 2.3;

e8..    0.45*i2 + 0.26*i3 - 1.1*i4 + 0.58*i5 - 1.03*x7 + 0.1*x8 + x16 =G= -1.5;

e9..  - (sqr(1 + sqr(i1) + i1) + (1 + sqr(i1) + i1)*(1 + sqr(i4) + i4) + (1 + 
     sqr(i1) + i1)*(1 + sqr(x7) + x7) + (1 + sqr(i1) + i1)*(1 + sqr(x8) + x8)
      + (1 + sqr(i1) + i1)*(1 + sqr(x16) + x16) + sqr(1 + sqr(i2) + i2) + (1 + 
     sqr(i2) + i2)*(1 + sqr(i3) + i3) + (1 + sqr(i2) + i2)*(1 + sqr(x7) + x7)
      + (1 + sqr(i2) + i2)*(1 + sqr(x10) + x10) + sqr(1 + sqr(i3) + i3) + (1 + 
     sqr(i3) + i3)*(1 + sqr(x7) + x7) + (1 + sqr(i3) + i3)*(1 + sqr(x9) + x9)
      + (1 + sqr(i3) + i3)*(1 + sqr(x10) + x10) + (1 + sqr(i3) + i3)*(1 + sqr(
     x14) + x14) + sqr(1 + sqr(i4) + i4) + (1 + sqr(i4) + i4)*(1 + sqr(x7) + x7
     ) + (1 + sqr(i4) + i4)*(1 + sqr(x11) + x11) + (1 + sqr(i4) + i4)*(1 + sqr(
     x15) + x15) + sqr(1 + sqr(i5) + i5) + (1 + sqr(i5) + i5)*(1 + sqr(x6) + x6
     ) + (1 + sqr(i5) + i5)*(1 + sqr(x10) + x10) + (1 + sqr(i5) + i5)*(1 + sqr(
     x12) + x12) + (1 + sqr(i5) + i5)*(1 + sqr(x16) + x16) + sqr(1 + sqr(x6) + 
     x6) + (1 + sqr(x6) + x6)*(1 + sqr(x8) + x8) + (1 + sqr(x6) + x6)*(1 + sqr(
     x15) + x15) + sqr(1 + sqr(x7) + x7) + (1 + sqr(x7) + x7)*(1 + sqr(x11) + 
     x11) + (1 + sqr(x7) + x7)*(1 + sqr(x13) + x13) + sqr(1 + sqr(x8) + x8) + (
     1 + sqr(x8) + x8)*(1 + sqr(x10) + x10) + (1 + sqr(x8) + x8)*(1 + sqr(x15)
      + x15) + sqr(1 + sqr(x9) + x9) + (1 + sqr(x9) + x9)*(1 + sqr(x12) + x12)
      + (1 + sqr(x9) + x9)*(1 + sqr(x16) + x16) + sqr(1 + sqr(x10) + x10) + (1
      + sqr(x10) + x10)*(1 + sqr(x14) + x14) + sqr(1 + sqr(x11) + x11) + (1 + 
     sqr(x11) + x11)*(1 + sqr(x13) + x13) + sqr(1 + sqr(x12) + x12) + (1 + sqr(
     x12) + x12)*(1 + sqr(x14) + x14) + sqr(1 + sqr(x13) + x13) + (1 + sqr(x13)
      + x13)*(1 + sqr(x14) + x14) + sqr(1 + sqr(x14) + x14) + sqr(1 + sqr(x15)
      + x15) + sqr(1 + sqr(x16) + x16)) + objvar =E= 0;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
i3.up = 200; 
i4.up = 200; 
i5.up = 200; 
x6.up = 200; 
x7.up = 200; 
x8.up = 200; 
x9.up = 200; 
x10.up = 200; 
x11.up = 200; 
x12.up = 200; 
x13.up = 200; 
x14.up = 200; 
x15.up = 200; 
x16.up = 200; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 1; 
i2.l = 1; 
i3.l = 1; 
i4.l = 1; 
i5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 
x10.l = 1; 
x11.l = 1; 
x12.l = 1; 
x13.l = 1; 
x14.l = 1; 
x15.l = 1; 
x16.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
