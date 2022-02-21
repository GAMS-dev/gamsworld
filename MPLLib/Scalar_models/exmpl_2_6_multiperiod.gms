*  LP written by GAMS Convert at 06/27/07 15:16:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11       11        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         23       23        0        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         50       50        0        0
*
*  Solve m using LP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,objvar;

Negative Variables  x13,x14,x15,x16,x17,x18;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - 180*x13 - 180*x14 - 250*x15 - 270*x16 - 300*x17 - 320*x18 + x19 =E= 0;

e2..  - 20*x1 - 25*x2 - 30*x3 - 40*x4 - 50*x5 - 60*x6 + x20 =E= 0;

e3..  - 2*x7 - 2*x8 - 2*x9 - 2*x10 - 2*x11 - 2*x12 + x21 =E= 0;

e4..  - x20 - x21 + x22 =E= 0;

e5..  - x1 + x7 + x13 =E= 500;

e6..  - x2 - x7 + x8 + x14 =E= 0;

e7..  - x3 - x8 + x9 + x15 =E= 0;

e8..  - x4 - x9 + x10 + x16 =E= 0;

e9..  - x5 - x10 + x11 + x17 =E= 0;

e10..  - x6 - x11 + x12 + x18 =E= 0;

e11..  - x19 + x22 + objvar =E= 0;

* set non default bounds

x1.up = 1500; 
x2.up = 2000; 
x3.up = 2200; 
x4.up = 3000; 
x5.up = 2700; 
x6.up = 2500; 
x12.fx = 500; 
x13.up = 1100; 
x14.up = 1500; 
x15.up = 1800; 
x16.up = 1600; 
x17.up = 2300; 
x18.up = 2500; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP maximizing objvar;