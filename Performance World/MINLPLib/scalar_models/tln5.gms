$offlisting
*  MINLP written by GAMS Convert at 04/19/01 16:58:14
*  
*  Equation counts
*     Total       E       G       L       N       X
*        31       1       0      30       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        36       1       5      30       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       156     106      50       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35
          ,objvar;

Binary Variables b1,b2,b3,b4,b5;

Integer Variables i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21
          ,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31;


e1..  - 0.1*b1 - 0.2*b2 - 0.3*b3 - 0.4*b4 - 0.5*b5 - i6 - i7 - i8 - i9 - i10
      + objvar =E= 0;

e2..    330*i11 + 360*i16 + 370*i21 + 415*i26 + 435*i31 =L= 2000;

e3..    330*i12 + 360*i17 + 370*i22 + 415*i27 + 435*i32 =L= 2000;

e4..    330*i13 + 360*i18 + 370*i23 + 415*i28 + 435*i33 =L= 2000;

e5..    330*i14 + 360*i19 + 370*i24 + 415*i29 + 435*i34 =L= 2000;

e6..    330*i15 + 360*i20 + 370*i25 + 415*i30 + 435*i35 =L= 2000;

e7..  - 330*i11 - 360*i16 - 370*i21 - 415*i26 - 435*i31 =L= -1800;

e8..  - 330*i12 - 360*i17 - 370*i22 - 415*i27 - 435*i32 =L= -1800;

e9..  - 330*i13 - 360*i18 - 370*i23 - 415*i28 - 435*i33 =L= -1800;

e10..  - 330*i14 - 360*i19 - 370*i24 - 415*i29 - 435*i34 =L= -1800;

e11..  - 330*i15 - 360*i20 - 370*i25 - 415*i30 - 435*i35 =L= -1800;

e12..    i11 + i16 + i21 + i26 + i31 =L= 5;

e13..    i12 + i17 + i22 + i27 + i32 =L= 5;

e14..    i13 + i18 + i23 + i28 + i33 =L= 5;

e15..    i14 + i19 + i24 + i29 + i34 =L= 5;

e16..    i15 + i20 + i25 + i30 + i35 =L= 5;

e17..    b1 - i6 =L= 0;

e18..    b2 - i7 =L= 0;

e19..    b3 - i8 =L= 0;

e20..    b4 - i9 =L= 0;

e21..    b5 - i10 =L= 0;

e22..  - 15*b1 + i6 =L= 0;

e23..  - 15*b2 + i7 =L= 0;

e24..  - 15*b3 + i8 =L= 0;

e25..  - 15*b4 + i9 =L= 0;

e26..  - 15*b5 + i10 =L= 0;

e27..  - (i6*i11 + i7*i12 + i8*i13 + i9*i14 + i10*i15) =L= -12;

e28..  - (i6*i16 + i7*i17 + i8*i18 + i9*i19 + i10*i20) =L= -6;

e29..  - (i6*i21 + i7*i22 + i8*i23 + i9*i24 + i10*i25) =L= -15;

e30..  - (i6*i26 + i7*i27 + i8*i28 + i9*i29 + i10*i30) =L= -6;

e31..  - (i6*i31 + i7*i32 + i8*i33 + i9*i34 + i10*i35) =L= -9;

* set non default bounds

i6.up = 15; 
i7.up = 15; 
i8.up = 15; 
i9.up = 15; 
i10.up = 15; 
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
i25.up = 5; 
i26.up = 5; 
i27.up = 5; 
i28.up = 5; 
i29.up = 5; 
i30.up = 5; 
i31.up = 5; 
i32.up = 5; 
i33.up = 5; 
i34.up = 5; 
i35.up = 5; 

$if set nostart $goto modeldef
* set non default levels

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
i25.l = 1; 
i26.l = 1; 
i27.l = 1; 
i28.l = 1; 
i29.l = 1; 
i30.l = 1; 
i31.l = 1; 
i32.l = 1; 
i33.l = 1; 
i34.l = 1; 
i35.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
