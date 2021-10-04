*  LP written by GAMS Convert at 01/14/09 03:34:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         31       31        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31       31        0        0
*
*  Solve m using LP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31;


e1..    x1 =E= 0;

e2..    x2 =E= 1;

e3..    x3 =E= 2;

e4..    x4 =E= 3;

e5..    x5 =E= 4;

e6..    x6 =E= 5;

e7..    x7 =E= 6;

e8..    x8 =E= 7;

e9..    x9 =E= 8;

e10..    x10 =E= 9;

e11..    x11 =E= 10;

e12..    x12 =E= 11;

e13..    x13 =E= 12;

e14..    x14 =E= 13;

e15..    x15 =E= 14;

e16..    x16 =E= 15;

e17..    x17 =E= 16;

e18..    x18 =E= 17;

e19..    x19 =E= 18;

e20..    x20 =E= 19;

e21..    x21 =E= 20;

e22..    x22 =E= 21;

e23..    x23 =E= 22;

e24..    x24 =E= 23;

e25..    x25 =E= 24;

e26..    x26 =E= 25;

e27..    x27 =E= 26;

e28..    x28 =E= 27;

e29..    x29 =E= 28;

e30..    x30 =E= 29;

e31..    objvar =E= 1;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
