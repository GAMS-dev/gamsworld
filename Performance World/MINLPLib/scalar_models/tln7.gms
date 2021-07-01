$offlisting
*  MINLP written by GAMS Convert at 04/19/01 16:58:15
*  
*  Equation counts
*     Total       E       G       L       N       X
*        43       1       0      42       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        64       1       7      56       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       288     190      98       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36
          ,i37,i38,i39,i40,i41,i42,i43,i44,i45,i46,i47,i48,i49,i50,i51,i52,i53
          ,i54,i55,i56,i57,i58,i59,i60,i61,i62,i63,objvar;

Binary Variables b1,b2,b3,b4,b5,b6,b7;

Integer Variables i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22
          ,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36,i37,i38,i39
          ,i40,i41,i42,i43,i44,i45,i46,i47,i48,i49,i50,i51,i52,i53,i54,i55,i56
          ,i57,i58,i59,i60,i61,i62,i63;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43;


e1..  - 0.1*b1 - 0.2*b2 - 0.3*b3 - 0.4*b4 - 0.5*b5 - 0.6*b6 - 0.7*b7 - i8 - i9
      - i10 - i11 - i12 - i13 - i14 + objvar =E= 0;

e2..    550*i15 + 630*i22 + 685*i29 + 720*i36 + 760*i43 + 810*i50 + 850*i57
      =L= 3400;

e3..    550*i16 + 630*i23 + 685*i30 + 720*i37 + 760*i44 + 810*i51 + 850*i58
      =L= 3400;

e4..    550*i17 + 630*i24 + 685*i31 + 720*i38 + 760*i45 + 810*i52 + 850*i59
      =L= 3400;

e5..    550*i18 + 630*i25 + 685*i32 + 720*i39 + 760*i46 + 810*i53 + 850*i60
      =L= 3400;

e6..    550*i19 + 630*i26 + 685*i33 + 720*i40 + 760*i47 + 810*i54 + 850*i61
      =L= 3400;

e7..    550*i20 + 630*i27 + 685*i34 + 720*i41 + 760*i48 + 810*i55 + 850*i62
      =L= 3400;

e8..    550*i21 + 630*i28 + 685*i35 + 720*i42 + 760*i49 + 810*i56 + 850*i63
      =L= 3400;

e9..  - 550*i15 - 630*i22 - 685*i29 - 720*i36 - 760*i43 - 810*i50 - 850*i57
      =L= -3200;

e10..  - 550*i16 - 630*i23 - 685*i30 - 720*i37 - 760*i44 - 810*i51 - 850*i58
       =L= -3200;

e11..  - 550*i17 - 630*i24 - 685*i31 - 720*i38 - 760*i45 - 810*i52 - 850*i59
       =L= -3200;

e12..  - 550*i18 - 630*i25 - 685*i32 - 720*i39 - 760*i46 - 810*i53 - 850*i60
       =L= -3200;

e13..  - 550*i19 - 630*i26 - 685*i33 - 720*i40 - 760*i47 - 810*i54 - 850*i61
       =L= -3200;

e14..  - 550*i20 - 630*i27 - 685*i34 - 720*i41 - 760*i48 - 810*i55 - 850*i62
       =L= -3200;

e15..  - 550*i21 - 630*i28 - 685*i35 - 720*i42 - 760*i49 - 810*i56 - 850*i63
       =L= -3200;

e16..    i15 + i22 + i29 + i36 + i43 + i50 + i57 =L= 6;

e17..    i16 + i23 + i30 + i37 + i44 + i51 + i58 =L= 6;

e18..    i17 + i24 + i31 + i38 + i45 + i52 + i59 =L= 6;

e19..    i18 + i25 + i32 + i39 + i46 + i53 + i60 =L= 6;

e20..    i19 + i26 + i33 + i40 + i47 + i54 + i61 =L= 6;

e21..    i20 + i27 + i34 + i41 + i48 + i55 + i62 =L= 6;

e22..    i21 + i28 + i35 + i42 + i49 + i56 + i63 =L= 6;

e23..    b1 - i8 =L= 0;

e24..    b2 - i9 =L= 0;

e25..    b3 - i10 =L= 0;

e26..    b4 - i11 =L= 0;

e27..    b5 - i12 =L= 0;

e28..    b6 - i13 =L= 0;

e29..    b7 - i14 =L= 0;

e30..  - 15*b1 + i8 =L= 0;

e31..  - 15*b2 + i9 =L= 0;

e32..  - 15*b3 + i10 =L= 0;

e33..  - 15*b4 + i11 =L= 0;

e34..  - 15*b5 + i12 =L= 0;

e35..  - 15*b6 + i13 =L= 0;

e36..  - 15*b7 + i14 =L= 0;

e37..  - (i8*i15 + i9*i16 + i10*i17 + i11*i18 + i12*i19 + i13*i20 + i14*i21)
       =L= -8;

e38..  - (i8*i22 + i9*i23 + i10*i24 + i11*i25 + i12*i26 + i13*i27 + i14*i28)
       =L= -11;

e39..  - (i8*i29 + i9*i30 + i10*i31 + i11*i32 + i12*i33 + i13*i34 + i14*i35)
       =L= -15;

e40..  - (i8*i36 + i9*i37 + i10*i38 + i11*i39 + i12*i40 + i13*i41 + i14*i42)
       =L= -5;

e41..  - (i8*i43 + i9*i44 + i10*i45 + i11*i46 + i12*i47 + i13*i48 + i14*i49)
       =L= -8;

e42..  - (i8*i50 + i9*i51 + i10*i52 + i11*i53 + i12*i54 + i13*i55 + i14*i56)
       =L= -12;

e43..  - (i8*i57 + i9*i58 + i10*i59 + i11*i60 + i12*i61 + i13*i62 + i14*i63)
       =L= -6;

* set non default bounds

i8.up = 15; 
i9.up = 15; 
i10.up = 15; 
i11.up = 15; 
i12.up = 15; 
i13.up = 15; 
i14.up = 15; 
i15.up = 6; 
i16.up = 6; 
i17.up = 6; 
i18.up = 6; 
i19.up = 6; 
i20.up = 6; 
i21.up = 6; 
i22.up = 6; 
i23.up = 6; 
i24.up = 6; 
i25.up = 6; 
i26.up = 6; 
i27.up = 6; 
i28.up = 6; 
i29.up = 6; 
i30.up = 6; 
i31.up = 6; 
i32.up = 6; 
i33.up = 6; 
i34.up = 6; 
i35.up = 6; 
i36.up = 6; 
i37.up = 6; 
i38.up = 6; 
i39.up = 6; 
i40.up = 6; 
i41.up = 6; 
i42.up = 6; 
i43.up = 6; 
i44.up = 6; 
i45.up = 6; 
i46.up = 6; 
i47.up = 6; 
i48.up = 6; 
i49.up = 6; 
i50.up = 6; 
i51.up = 6; 
i52.up = 6; 
i53.up = 6; 
i54.up = 6; 
i55.up = 6; 
i56.up = 6; 
i57.up = 6; 
i58.up = 6; 
i59.up = 6; 
i60.up = 6; 
i61.up = 6; 
i62.up = 6; 
i63.up = 6; 

$if set nostart $goto modeldef
* set non default levels

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
i36.l = 1; 
i37.l = 1; 
i38.l = 1; 
i39.l = 1; 
i40.l = 1; 
i41.l = 1; 
i42.l = 1; 
i43.l = 1; 
i44.l = 1; 
i45.l = 1; 
i46.l = 1; 
i47.l = 1; 
i48.l = 1; 
i49.l = 1; 
i50.l = 1; 
i51.l = 1; 
i52.l = 1; 
i53.l = 1; 
i54.l = 1; 
i55.l = 1; 
i56.l = 1; 
i57.l = 1; 
i58.l = 1; 
i59.l = 1; 
i60.l = 1; 
i61.l = 1; 
i62.l = 1; 
i63.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
