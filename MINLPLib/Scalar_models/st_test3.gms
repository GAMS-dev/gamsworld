$offlisting
*  MINLP written by GAMS Convert at 09/01/02 10:51:55
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        11       1       0      10       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        14       1       0      13       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        42      37       5       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,objvar;

Integer Variables i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    2*i1 + 2*i2 + i10 + i11 =L= 10;

e2..    2*i1 + 2*i3 + i10 + i12 =L= 10;

e3..    2*i2 + 2*i3 + i11 + i12 =L= 10;

e4..  - 8*i1 + i10 =L= 0;

e5..  - 8*i2 + i11 =L= 0;

e6..  - 8*i3 + i12 =L= 0;

e7..  - 2*i4 - i5 + i10 =L= 0;

e8..  - 2*i6 - i7 + i11 =L= 0;

e9..  - 2*i8 - i9 + i12 =L= 0;

e10..    i13 =L= 1;

e11..  - (5*i1*i1 + 5*i1 + 5*i2*i2 - 5*i2 + 5*i3*i3 + 5*i3 + 5*i4*i4 + 5*i4 + 9
      *i10*i10 - i10) + i5 - i6 + i7 + i8 + i9 + i11 + i12 + i13 + objvar
       =E= 0;

* set non default bounds

i1.up = 1; 
i2.up = 1; 
i3.up = 1; 
i4.up = 1; 
i5.up = 1; 
i6.up = 1; 
i7.up = 1; 
i8.up = 1; 
i9.up = 1; 
i10.up = 1E15; 
i11.up = 1E15; 
i12.up = 1E15; 
i13.up = 1; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
