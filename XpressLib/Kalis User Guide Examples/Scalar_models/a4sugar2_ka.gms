*  MIP written by GAMS Convert at 10/17/08 03:00:55
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         27       23        0        4        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         56       12        0       44        0        0        0        0
*  FX      6        0        0        6        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        155      155        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36
          ,i37,i38,i39,i40,i41,i42,i43,i44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34
          ,i35,i36,i37,i38,i39,i40,i41,i42,i43,i44;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27;


e1..  - 86*i1 - 172*i12 - 258*i23 - 344*i34 + x45 =E= 0;

e2..  - 52*i2 - 104*i13 - 156*i24 - 208*i35 + x46 =E= 0;

e3..  - 74*i3 - 148*i14 - 222*i25 - 296*i36 + x47 =E= 0;

e4..  - 56*i4 - 112*i15 - 168*i26 - 224*i37 + x48 =E= 0;

e5..  - 26*i5 - 52*i16 - 78*i27 - 104*i38 + x49 =E= 0;

e6..  - 108*i6 - 216*i17 - 324*i28 - 432*i39 + x50 =E= 0;

e7..  - 124*i7 - 248*i18 - 372*i29 - 496*i40 + x51 =E= 0;

e8..  - 98*i8 - 196*i19 - 294*i30 - 392*i41 + x52 =E= 0;

e9..  - 38*i9 - 76*i20 - 114*i31 - 152*i42 + x53 =E= 0;

e10..  - 56*i10 - 112*i21 - 168*i32 - 224*i43 + x54 =E= 0;

e11..  - 60*i11 - 120*i22 - 180*i33 - 240*i44 + x55 =E= 0;

e12..    i1 + i12 + i23 + i34 =E= 1;

e13..    i2 + i13 + i24 + i35 =E= 1;

e14..    i3 + i14 + i25 + i36 =E= 1;

e15..    i4 + i15 + i26 + i37 =E= 1;

e16..    i5 + i16 + i27 + i38 =E= 1;

e17..    i6 + i17 + i28 + i39 =E= 1;

e18..    i7 + i18 + i29 + i40 =E= 1;

e19..    i8 + i19 + i30 + i41 =E= 1;

e20..    i9 + i20 + i31 + i42 =E= 1;

e21..    i10 + i21 + i32 + i43 =E= 1;

e22..    i11 + i22 + i33 + i44 =E= 1;

e23..    i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9 + i10 + i11 =L= 3;

e24..    i12 + i13 + i14 + i15 + i16 + i17 + i18 + i19 + i20 + i21 + i22 =L= 3;

e25..    i23 + i24 + i25 + i26 + i27 + i28 + i29 + i30 + i31 + i32 + i33 =L= 3;

e26..    i34 + i35 + i36 + i37 + i38 + i39 + i40 + i41 + i42 + i43 + i44 =L= 3;

e27..  - x45 - x46 - x47 - x48 - x49 - x50 - x51 - x52 - x53 - x54 - x55
       + objvar =E= 0;

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
i10.up = 1; 
i11.up = 1; 
i12.up = 1; 
i13.up = 1; 
i14.fx = 0; 
i15.up = 1; 
i16.up = 1; 
i17.up = 1; 
i18.up = 1; 
i19.up = 1; 
i20.up = 1; 
i21.up = 1; 
i22.up = 1; 
i23.up = 1; 
i24.up = 1; 
i25.fx = 0; 
i26.up = 1; 
i27.fx = 0; 
i28.up = 1; 
i29.up = 1; 
i30.up = 1; 
i31.up = 1; 
i32.up = 1; 
i33.up = 1; 
i34.up = 1; 
i35.up = 1; 
i36.fx = 0; 
i37.up = 1; 
i38.fx = 0; 
i39.up = 1; 
i40.up = 1; 
i41.up = 1; 
i42.fx = 0; 
i43.up = 1; 
i44.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
