*  NLP written by GAMS Convert at 10/06/06 11:34:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         41        1        0       40        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         22       22        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         82       82        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41;


e1..  - x1 + x2 =L= 0;

e2..  - x1 + x3 =L= 0;

e3..  - x1 + x4 =L= 0;

e4..  - x1 + x5 =L= 0;

e5..  - x1 + x6 =L= 0;

e6..  - x1 + x7 =L= 0;

e7..  - x1 + x8 =L= 0;

e8..  - x1 + x9 =L= 0;

e9..  - x1 + x10 =L= 0;

e10..  - x1 + x11 =L= 0;

e11..  - x1 + x12 =L= 0;

e12..  - x1 + x13 =L= 0;

e13..  - x1 + x14 =L= 0;

e14..  - x1 + x15 =L= 0;

e15..  - x1 + x16 =L= 0;

e16..  - x1 + x17 =L= 0;

e17..  - x1 + x18 =L= 0;

e18..  - x1 + x19 =L= 0;

e19..  - x1 + x20 =L= 0;

e20..  - x1 + x21 =L= 0;

e21..  - x1 - x2 =L= 0;

e22..  - x1 - x3 =L= 0;

e23..  - x1 - x4 =L= 0;

e24..  - x1 - x5 =L= 0;

e25..  - x1 - x6 =L= 0;

e26..  - x1 - x7 =L= 0;

e27..  - x1 - x8 =L= 0;

e28..  - x1 - x9 =L= 0;

e29..  - x1 - x10 =L= 0;

e30..  - x1 - x11 =L= 0;

e31..  - x1 - x12 =L= 0;

e32..  - x1 - x13 =L= 0;

e33..  - x1 - x14 =L= 0;

e34..  - x1 - x15 =L= 0;

e35..  - x1 - x16 =L= 0;

e36..  - x1 - x17 =L= 0;

e37..  - x1 - x18 =L= 0;

e38..  - x1 - x19 =L= 0;

e39..  - x1 - x20 =L= 0;

e40..  - x1 - x21 =L= 0;

e41..  - x1 + objvar =E= 0;

* set non default bounds


* set non default levels

x2.l = 1; 
x3.l = 2; 
x4.l = 3; 
x5.l = 4; 
x6.l = 5; 
x7.l = 6; 
x8.l = 7; 
x9.l = 8; 
x10.l = 9; 
x11.l = 10; 
x12.l = -11; 
x13.l = -12; 
x14.l = -13; 
x15.l = -14; 
x16.l = -15; 
x17.l = -16; 
x18.l = -17; 
x19.l = -18; 
x20.l = -19; 
x21.l = -20; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
