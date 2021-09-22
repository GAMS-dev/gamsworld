*  NLP written by GAMS Convert at 11/29/04 16:21:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21        1       20        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         22       22        0        0        0        0        0        0
*  FX      2        2        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         62       41       21        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..  - x1 + x2 =G= 0;

e2..  - x2 + x3 =G= 0;

e3..  - x3 + x4 =G= 0;

e4..  - x4 + x5 =G= 0;

e5..  - x5 + x6 =G= 0;

e6..  - x6 + x7 =G= 0;

e7..  - x7 + x8 =G= 0;

e8..  - x8 + x9 =G= 0;

e9..  - x9 + x10 =G= 0;

e10..  - x10 + x11 =G= 0;

e11..  - x11 + x12 =G= 0;

e12..  - x12 + x13 =G= 0;

e13..  - x13 + x14 =G= 0;

e14..  - x14 + x15 =G= 0;

e15..  - x15 + x16 =G= 0;

e16..  - x16 + x17 =G= 0;

e17..  - x17 + x18 =G= 0;

e18..  - x18 + x19 =G= 0;

e19..  - x19 + x20 =G= 0;

e20..  - x20 + x21 =G= 0;

e21..  - 0.5*(sin(x2 - x1) + sin(x3 - x2) + sin(x4 - x3) + sin(x5 - x4) + sin(
      x6 - x5) + sin(x7 - x6) + sin(x8 - x7) + sin(x9 - x8) + sin(x10 - x9) + 
      sin(x11 - x10) + sin(x12 - x11) + sin(x13 - x12) + sin(x14 - x13) + sin(
      x15 - x14) + sin(x16 - x15) + sin(x17 - x16) + sin(x18 - x17) + sin(x19
       - x18) + sin(x20 - x19) + sin(x21 - x20)) + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x2.up = 6.28318530717959; 
x3.up = 6.28318530717959; 
x4.up = 6.28318530717959; 
x5.up = 6.28318530717959; 
x6.up = 6.28318530717959; 
x7.up = 6.28318530717959; 
x8.up = 6.28318530717959; 
x9.up = 6.28318530717959; 
x10.up = 6.28318530717959; 
x11.up = 6.28318530717959; 
x12.up = 6.28318530717959; 
x13.up = 6.28318530717959; 
x14.up = 6.28318530717959; 
x15.up = 6.28318530717959; 
x16.up = 6.28318530717959; 
x17.up = 6.28318530717959; 
x18.up = 6.28318530717959; 
x19.up = 6.28318530717959; 
x20.up = 6.28318530717959; 
x21.fx = 6.28318530717959; 

* set non default levels

x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 
x5.l = 0.5; 
x6.l = 0.5; 
x7.l = 0.5; 
x8.l = 0.5; 
x9.l = 0.5; 
x10.l = 0.5; 
x11.l = 0.5; 
x12.l = 0.5; 
x13.l = 0.5; 
x14.l = 0.5; 
x15.l = 0.5; 
x16.l = 0.5; 
x17.l = 0.5; 
x18.l = 0.5; 
x19.l = 0.5; 
x20.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP maximizing objvar;
