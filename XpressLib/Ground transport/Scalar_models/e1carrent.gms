*  MIP written by GAMS Convert at 09/07/07 23:01:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11       11        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         25        1        0       24        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         73       73        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    i1 + i2 + i3 + i4 + i5 + i6 =E= 7;

e2..    i7 + i8 + i9 + i10 + i11 + i12 =E= 3;

e3..    i13 + i14 + i15 + i16 + i17 + i18 =E= 4;

e4..    i19 + i20 + i21 + i22 + i23 + i24 =E= 6;

e5..    i1 + i7 + i13 + i19 =E= 2;

e6..    i2 + i8 + i14 + i20 =E= 4;

e7..    i3 + i9 + i15 + i21 =E= 3;

e8..    i4 + i10 + i16 + i22 =E= 5;

e9..    i5 + i11 + i17 + i23 =E= 1;

e10..    i6 + i12 + i18 + i24 =E= 5;

e11..  - 18.3847763108502*i1 - 6.62872536767062*i2 - 8.3240615086627*i3
       - 9.05345238016968*i4 - 10.7594144822105*i5 - 12.1430020999751*i6
       - 22.75*i7 - 12.8200039001554*i8 - 8.45*i9 - 16.3019170651798*i10
       - 26.2345668917937*i11 - 23.5619396485094*i12 - 7.26722092687432*i13
       - 8.45*i14 - 16.3019170651798*i15 - 20.6470942265492*i16 - 11.05*i17
       - 3.79011873164945*i18 - 7.15*i19 - 7.93426115022691*i20
       - 14.6069332852588*i21 - 21.6460735469507*i22 - 17.9781116917211*i23
       - 11.3703561949483*i24 + objvar =E= 0;

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
i11.up = 100; 
i12.up = 100; 
i13.up = 100; 
i14.up = 100; 
i15.up = 100; 
i16.up = 100; 
i17.up = 100; 
i18.up = 100; 
i19.up = 100; 
i20.up = 100; 
i21.up = 100; 
i22.up = 100; 
i23.up = 100; 
i24.up = 100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
