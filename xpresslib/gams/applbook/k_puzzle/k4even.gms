*  MIP written by GAMS Convert at 10/31/07 21:24:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10       10        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         25        1       16        8        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         57       57        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,i17,i18,i19
          ,i20,i21,i22,i23,i24,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16;

Integer Variables  i17,i18,i19,i20,i21,i22,i23,i24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13
      + b14 + b15 + b16 =E= 10;

e2..    b1 + b2 + b3 + b4 - 2*i17 =E= 0;

e3..    b5 + b6 + b7 + b8 - 2*i18 =E= 0;

e4..    b9 + b10 + b11 + b12 - 2*i19 =E= 0;

e5..    b13 + b14 + b15 + b16 - 2*i20 =E= 0;

e6..    b1 + b5 + b9 + b13 - 2*i21 =E= 0;

e7..    b2 + b6 + b10 + b14 - 2*i22 =E= 0;

e8..    b3 + b7 + b11 + b15 - 2*i23 =E= 0;

e9..    b4 + b8 + b12 + b16 - 2*i24 =E= 0;

e10..    objvar =E= 0;

* set non default bounds

i17.up = 2; 
i18.up = 2; 
i19.up = 2; 
i20.up = 2; 
i21.up = 2; 
i22.up = 2; 
i23.up = 2; 
i24.up = 2; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
