$offlisting
*  MINLP written by GAMS Convert at 09/01/02 11:04:22
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         6       1       0       5       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11       1       0      10       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        52      42      10       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,objvar;

Integer Variables i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;

Equations  e1,e2,e3,e4,e5,e6;


e1..    8*i1 + 7*i2 + 9*i3 + 9*i5 + 8*i6 + 2*i7 + 4*i9 + i10 =L= 530;

e2..    3*i1 + 4*i2 + 6*i3 + 9*i4 + 6*i6 + 9*i7 + i8 + i10 =L= 395;

e3..    2*i2 + i3 + 5*i4 + 5*i5 + 7*i7 + 4*i8 + 2*i9 =L= 350;

e4..    5*i1 + 7*i3 + i4 + 7*i5 + 5*i6 + 7*i8 + 9*i9 + 5*i10 =L= 405;

e5..    i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9 + i10 =L= 200;

e6..  - (0.00055*i1*i1 - 0.0583*i1 + 0.0019*i2*i2 + 0.2318*i2 + 0.0002*i3*i3 - 
     0.0108*i3 + 0.00095*i4*i4 + 0.1634*i4 + 0.0046*i5*i5 - 0.138*i5 + 0.0035*
     i6*i6 + 0.357*i6 + 0.00315*i7*i7 - 0.1953*i7 + 0.00475*i8*i8 - 0.361*i8 + 
     0.0048*i9*i9 + 0.1824*i9 + 0.003*i10*i10 - 0.162*i10) + objvar =E= 0;

* set non default bounds

i1.up = 100; 
i2.up = 100; 
i3.up = 100; 
i4.up = 100; 
i5.up = 100; 
i6.up = 100; 
i7.up = 100; 
i8.up = 100; 
i9.up = 100; 
i10.up = 100; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
