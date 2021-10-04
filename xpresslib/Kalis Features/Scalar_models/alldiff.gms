*  MIP written by GAMS Convert at 01/14/09 03:34:43
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37        1        0       36        0        0        0        0
*  FX     15        0        0       15        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         73       73        0        0
*
*  Solve m using MIP maximizing objvar;
*


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36
          ,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34
          ,i35,i36;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    i1 + i7 + i13 + i19 + i25 + i31 =E= 1;

e2..    i2 + i8 + i14 + i20 + i26 + i32 =E= 1;

e3..    i3 + i9 + i15 + i21 + i27 + i33 =E= 1;

e4..    i4 + i10 + i16 + i22 + i28 + i34 =E= 1;

e5..    i5 + i11 + i17 + i23 + i29 + i35 =E= 1;

e6..    i6 + i12 + i18 + i24 + i30 + i36 =E= 1;

e7..    i1 + i2 + i3 + i4 + i5 + i6 =E= 1;

e8..    i7 + i8 + i9 + i10 + i11 + i12 =E= 1;

e9..    i13 + i14 + i15 + i16 + i17 + i18 =E= 1;

e10..    i19 + i20 + i21 + i22 + i23 + i24 =E= 1;

e11..    i25 + i26 + i27 + i28 + i29 + i30 =E= 1;

e12..    i31 + i32 + i33 + i34 + i35 + i36 =E= 1;

e13..    objvar =E= 1;

* set non default bounds

i1.fx = 0; 
i2.fx = 0; 
i7.fx = 0; 
i8.fx = 0; 
i11.fx = 0; 
i12.fx = 0; 
i13.fx = 0; 
i18.fx = 0; 
i19.fx = 0; 
i23.fx = 0; 
i24.fx = 0; 
i25.fx = 0; 
i26.fx = 0; 
i29.fx = 0; 
i30.fx = 0; 
i31.up = 1; 
i32.up = 1; 
i33.up = 1; 
i34.up = 1; 
i35.up = 1; 
i36.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
