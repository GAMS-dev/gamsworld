*  NLP written by GAMS Convert at 08/20/07 23:15:58
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37       37        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         84       84        0        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    x1 + x13 - x25 =E= 28000;

e2..    x2 + x14 + x25 - x26 =E= 15000;

e3..    x3 + x15 + x26 - x27 =E= 15000;

e4..    x4 + x16 + x27 - x28 =E= 25000;

e5..    x5 + x17 + x28 - x29 =E= 33000;

e6..    x6 + x18 + x29 - x30 =E= 40000;

e7..    x7 + x19 + x30 - x31 =E= 45000;

e8..    x8 + x20 + x31 - x32 =E= 45000;

e9..    x9 + x21 + x32 - x33 =E= 26000;

e10..    x10 + x22 + x33 - x34 =E= 14000;

e11..    x11 + x23 + x34 - x35 =E= 25000;

e12..    x12 + x24 + x35 - x36 =E= 30000;

e13..  - 32*x1 - 32*x2 - 32*x3 - 32*x4 - 32*x5 - 32*x6 - 32*x7 - 32*x8 - 32*x9
       - 32*x10 - 32*x11 - 32*x12 - 40*x13 - 40*x14 - 40*x15 - 40*x16 - 40*x17
       - 40*x18 - 40*x19 - 40*x20 - 40*x21 - 40*x22 - 40*x23 - 40*x24 - 5*x25
       - 5*x26 - 5*x27 - 5*x28 - 5*x29 - 5*x30 - 5*x31 - 5*x32 - 5*x33 - 5*x34
       - 5*x35 - 5*x36 + objvar =E= 0;

* set non default bounds

x1.up = 30000; 
x2.up = 30000; 
x3.up = 30000; 
x4.up = 30000; 
x5.up = 30000; 
x6.up = 30000; 
x7.up = 30000; 
x8.up = 30000; 
x9.up = 30000; 
x10.up = 30000; 
x11.up = 30000; 
x12.up = 30000; 
x13.up = 15000; 
x14.up = 15000; 
x15.up = 15000; 
x16.up = 15000; 
x17.up = 15000; 
x18.up = 15000; 
x19.up = 15000; 
x20.up = 15000; 
x21.up = 15000; 
x22.up = 15000; 
x23.up = 15000; 
x24.up = 15000; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
