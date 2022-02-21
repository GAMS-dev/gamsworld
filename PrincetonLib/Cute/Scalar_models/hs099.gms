*  NLP written by GAMS Convert at 10/06/06 11:33:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         19       19        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         24       24        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         61       40       21        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19;


e1..    x15 =E= 100000;

e2..    x23 =E= 1000;

e3..    x8 =E= 0;

e4..    x16 =E= 0;

e5..  - 15625*sin(x1) - x8 + x9 - 25*x16 =E= -10000;

e6..  - 15625*sin(x2) - x9 + x10 - 25*x17 =E= -10000;

e7..  - 93750*sin(x3) - x10 + x11 - 50*x18 =E= -40000;

e8..  - 93750*sin(x4) - x11 + x12 - 50*x19 =E= -40000;

e9..  - 93750*sin(x5) - x12 + x13 - 50*x20 =E= -40000;

e10..  - 405000*sin(x6) - x13 + x14 - 90*x21 =E= -129600;

e11..  - 405000*sin(x7) - x14 + x15 - 90*x22 =E= -129600;

e12..  - 1250*sin(x1) - x16 + x17 =E= -800;

e13..  - 1250*sin(x2) - x17 + x18 =E= -800;

e14..  - 3750*sin(x3) - x18 + x19 =E= -1600;

e15..  - 3750*sin(x4) - x19 + x20 =E= -1600;

e16..  - 3750*sin(x5) - x20 + x21 =E= -1600;

e17..  - 9000*sin(x6) - x21 + x22 =E= -2880;

e18..  - 9000*sin(x7) - x22 + x23 =E= -2880;

e19.. sqr(1250*cos(x1) + 1250*cos(x2) + 3750*cos(x3) + 3750*cos(x4) + 3750*cos(
      x5) + 9000*cos(x6) + 9000*cos(x7)) + objvar =E= 0;

* set non default bounds

x1.up = 1.58; 
x2.up = 1.58; 
x3.up = 1.58; 
x4.up = 1.58; 
x5.up = 1.58; 
x6.up = 1.58; 
x7.up = 1.58; 

* set non default levels

x1.l = 0.5; 
x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 
x5.l = 0.5; 
x6.l = 0.5; 
x7.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
