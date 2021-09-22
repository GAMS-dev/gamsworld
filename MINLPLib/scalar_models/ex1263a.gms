$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:04
*  
*  Equation counts
*     Total       E       G       L       N       X
*        36       1       5      30       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        25       1       4      20       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       153     121      32       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,b17,b18,b19
          ,b20,i21,i22,i23,i24,objvar;

Binary Variables b17,b18,b19,b20;

Integer Variables i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i21
          ,i22,i23,i24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36;


e1..  - 0.1*b17 - 0.2*b18 - 0.3*b19 - 0.4*b20 - i21 - i22 - i23 - i24 + objvar
      =E= 0;

e2.. i21*i1 + i22*i2 + i23*i3 + i24*i4 =G= 15;

e3.. i21*i5 + i22*i6 + i23*i7 + i24*i8 =G= 28;

e4.. i21*i9 + i22*i10 + i23*i11 + i24*i12 =G= 21;

e5.. i21*i13 + i22*i14 + i23*i15 + i24*i16 =G= 30;

e6..  - 290*i1 - 315*i5 - 350*i9 - 455*i13 + 1750*b17 =L= 0;

e7..  - 290*i2 - 315*i6 - 350*i10 - 455*i14 + 1750*b18 =L= 0;

e8..  - 290*i3 - 315*i7 - 350*i11 - 455*i15 + 1750*b19 =L= 0;

e9..  - 290*i4 - 315*i8 - 350*i12 - 455*i16 + 1750*b20 =L= 0;

e10..    290*i1 + 315*i5 + 350*i9 + 455*i13 - 1850*b17 =L= 0;

e11..    290*i2 + 315*i6 + 350*i10 + 455*i14 - 1850*b18 =L= 0;

e12..    290*i3 + 315*i7 + 350*i11 + 455*i15 - 1850*b19 =L= 0;

e13..    290*i4 + 315*i8 + 350*i12 + 455*i16 - 1850*b20 =L= 0;

e14..  - i1 - i5 - i9 - i13 + b17 =L= 0;

e15..  - i2 - i6 - i10 - i14 + b18 =L= 0;

e16..  - i3 - i7 - i11 - i15 + b19 =L= 0;

e17..  - i4 - i8 - i12 - i16 + b20 =L= 0;

e18..    i1 + i5 + i9 + i13 - 5*b17 =L= 0;

e19..    i2 + i6 + i10 + i14 - 5*b18 =L= 0;

e20..    i3 + i7 + i11 + i15 - 5*b19 =L= 0;

e21..    i4 + i8 + i12 + i16 - 5*b20 =L= 0;

e22..    b17 - i21 =L= 0;

e23..    b18 - i22 =L= 0;

e24..    b19 - i23 =L= 0;

e25..    b20 - i24 =L= 0;

e26..  - 30*b17 + i21 =L= 0;

e27..  - 30*b18 + i22 =L= 0;

e28..  - 30*b19 + i23 =L= 0;

e29..  - 30*b20 + i24 =L= 0;

e30..    i21 + i22 + i23 + i24 =G= 19;

e31..  - b17 + b18 =L= 0;

e32..  - b18 + b19 =L= 0;

e33..  - b19 + b20 =L= 0;

e34..  - i21 + i22 =L= 0;

e35..  - i22 + i23 =L= 0;

e36..  - i23 + i24 =L= 0;

* set non default bounds

i1.up = 5; 
i2.up = 5; 
i3.up = 5; 
i4.up = 5; 
i5.up = 5; 
i6.up = 5; 
i7.up = 5; 
i8.up = 5; 
i9.up = 5; 
i10.up = 5; 
i11.up = 5; 
i12.up = 5; 
i13.up = 5; 
i14.up = 5; 
i15.up = 5; 
i16.up = 5; 
i21.up = 30; 
i22.up = 30; 
i23.up = 30; 
i24.up = 30; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
