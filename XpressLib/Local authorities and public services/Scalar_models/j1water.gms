*  LP written by GAMS Convert at 10/23/07 22:15:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11       11        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         39       39        0        0
*
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    x1 + x2 + x3 - x19 =E= 0;

e2..    x4 + x5 - x20 =E= 0;

e3..  - x1 + x6 + x7 =E= 0;

e4..  - x6 + x8 + x9 =E= 0;

e5..  - x2 - x4 - x7 + x10 + x11 + x12 =E= 0;

e6..  - x3 - x5 + x13 =E= 0;

e7..  - x13 + x14 + x15 =E= 0;

e8..  - x8 - x10 + x16 =E= 0;

e9..  - x9 - x11 - x14 + x17 =E= 0;

e10..  - x12 - x15 + x18 =E= 0;

e11..  - x16 - x17 - x18 + objvar =E= 0;

* set non default bounds

x1.up = 20; 
x2.up = 15; 
x3.up = 12; 
x4.up = 6; 
x5.up = 22; 
x6.up = 15; 
x7.up = 10; 
x8.up = 7; 
x9.up = 10; 
x10.up = 10; 
x11.up = 15; 
x12.up = 15; 
x13.up = 22; 
x14.up = 10; 
x15.up = 10; 
x16.up = 18; 
x17.up = 15; 
x18.up = 20; 
x19.up = 35; 
x20.up = 25; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
