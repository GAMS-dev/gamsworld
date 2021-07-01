$offlisting
*  MINLP written by GAMS Convert at 04/19/01 16:58:13
*  
*  Equation counts
*     Total       E       G       L       N       X
*        25       1       0      24       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        25       1       4      20       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       105      73      32       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,objvar;

Binary Variables b1,b2,b3,b4;

Integer Variables i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20
          ,i21,i22,i23,i24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25;


e1..  - 0.1*b1 - 0.2*b2 - 0.3*b3 - 0.4*b4 - i5 - i6 - i7 - i8 + objvar =E= 0;

e2..    330*i9 + 360*i13 + 385*i17 + 415*i21 =L= 1900;

e3..    330*i10 + 360*i14 + 385*i18 + 415*i22 =L= 1900;

e4..    330*i11 + 360*i15 + 385*i19 + 415*i23 =L= 1900;

e5..    330*i12 + 360*i16 + 385*i20 + 415*i24 =L= 1900;

e6..  - 330*i9 - 360*i13 - 385*i17 - 415*i21 =L= -1700;

e7..  - 330*i10 - 360*i14 - 385*i18 - 415*i22 =L= -1700;

e8..  - 330*i11 - 360*i15 - 385*i19 - 415*i23 =L= -1700;

e9..  - 330*i12 - 360*i16 - 385*i20 - 415*i24 =L= -1700;

e10..    i9 + i13 + i17 + i21 =L= 5;

e11..    i10 + i14 + i18 + i22 =L= 5;

e12..    i11 + i15 + i19 + i23 =L= 5;

e13..    i12 + i16 + i20 + i24 =L= 5;

e14..    b1 - i5 =L= 0;

e15..    b2 - i6 =L= 0;

e16..    b3 - i7 =L= 0;

e17..    b4 - i8 =L= 0;

e18..  - 12*b1 + i5 =L= 0;

e19..  - 12*b2 + i6 =L= 0;

e20..  - 12*b3 + i7 =L= 0;

e21..  - 12*b4 + i8 =L= 0;

e22..  - (i5*i9 + i6*i10 + i7*i11 + i8*i12) =L= -8;

e23..  - (i5*i13 + i6*i14 + i7*i15 + i8*i16) =L= -7;

e24..  - (i5*i17 + i6*i18 + i7*i19 + i8*i20) =L= -12;

e25..  - (i5*i21 + i6*i22 + i7*i23 + i8*i24) =L= -11;

* set non default bounds

i5.up = 12; 
i6.up = 12; 
i7.up = 12; 
i8.up = 12; 
i9.up = 5; 
i10.up = 5; 
i11.up = 5; 
i12.up = 5; 
i13.up = 5; 
i14.up = 5; 
i15.up = 5; 
i16.up = 5; 
i17.up = 5; 
i18.up = 5; 
i19.up = 5; 
i20.up = 5; 
i21.up = 5; 
i22.up = 5; 
i23.up = 5; 
i24.up = 5; 

$if set nostart $goto modeldef
* set non default levels

i5.l = 1; 
i6.l = 1; 
i7.l = 1; 
i8.l = 1; 
i9.l = 1; 
i10.l = 1; 
i11.l = 1; 
i12.l = 1; 
i13.l = 1; 
i14.l = 1; 
i15.l = 1; 
i16.l = 1; 
i17.l = 1; 
i18.l = 1; 
i19.l = 1; 
i20.l = 1; 
i21.l = 1; 
i22.l = 1; 
i23.l = 1; 
i24.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
