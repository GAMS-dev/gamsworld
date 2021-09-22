$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:21
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         1       1       0       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11       1       0      10       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        11       1      10       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,objvar;

Integer Variables i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;

Equations  e1;


e1..  - (sqr(log(i1 - 2)) + sqr(log(10 - i1)) + sqr(log(i2 - 2)) + sqr(log(10
      - i2)) + sqr(log(i3 - 2)) + sqr(log(10 - i3)) + sqr(log(i4 - 2)) + sqr(
     log(10 - i4)) + sqr(log(i5 - 2)) + sqr(log(10 - i5)) + sqr(log(i6 - 2)) + 
     sqr(log(10 - i6)) + sqr(log(i7 - 2)) + sqr(log(10 - i7)) + sqr(log(i8 - 2)
     ) + sqr(log(10 - i8)) + sqr(log(i9 - 2)) + sqr(log(10 - i9)) + sqr(log(i10
      - 2)) + sqr(log(10 - i10)) - (i1*i2*i3*i4*i5*i6*i7*i8*i9*i10)**0.2)
      + objvar =E= 0;

* set non default bounds

i1.lo = 3; i1.up = 9; 
i2.lo = 3; i2.up = 9; 
i3.lo = 3; i3.up = 9; 
i4.lo = 3; i4.up = 9; 
i5.lo = 3; i5.up = 9; 
i6.lo = 3; i6.up = 9; 
i7.lo = 3; i7.up = 9; 
i8.lo = 3; i8.up = 9; 
i9.lo = 3; i9.up = 9; 
i10.lo = 3; i10.up = 9; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 5; 
i2.l = 5; 
i3.l = 5; 
i4.l = 5; 
i5.l = 5; 
i6.l = 5; 
i7.l = 5; 
i8.l = 5; 
i9.l = 5; 
i10.l = 5; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
