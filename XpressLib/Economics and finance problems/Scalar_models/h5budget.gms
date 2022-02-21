*  LP written by GAMS Convert at 09/21/07 20:34:18
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        1        0       12        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         25       25        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         48       48        0        0
*
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,objvar;

Positive Variables  x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    x1 + x13 =L= 530;

e2..    x2 - x13 + x14 =L= 395;

e3..    x3 - x14 + x15 =L= 530;

e4..    x4 - x15 + x16 =L= 295;

e5..    x5 - x16 + x17 =L= 530;

e6..    x6 - x17 + x18 =L= -455;

e7..    x7 - x18 + x19 =L= 530;

e8..    x8 - x19 + x20 =L= 295;

e9..    x9 - x20 + x21 =L= 530;

e10..    x10 - x21 + x22 =L= 395;

e11..    x11 - x22 + x23 =L= 530;

e12..    x12 - x23 + x24 =L= -555;

e13..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 - x11 - x12 + objvar
       =E= 0;

* set non default bounds

x1.lo = 165; 
x2.lo = 165; 
x3.lo = 165; 
x4.lo = 165; 
x5.lo = 165; 
x6.lo = 165; 
x7.lo = 165; 
x8.lo = 165; 
x9.lo = 165; 
x10.lo = 165; 
x11.lo = 165; 
x12.lo = 165; 

* set non default levels

x1.l = 165; 
x2.l = 165; 
x3.l = 165; 
x4.l = 165; 
x5.l = 165; 
x6.l = 165; 
x7.l = 165; 
x8.l = 165; 
x9.l = 165; 
x10.l = 165; 
x11.l = 165; 
x12.l = 165; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
