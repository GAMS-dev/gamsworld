*  MIP written by GAMS Convert at 10/04/07 19:41:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37        1       36        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        109      109        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    b1 + b2 + b3 + b4 + b5 + b6 =E= 1;

e2..    b7 + b8 + b9 + b10 + b11 + b12 =E= 1;

e3..    b13 + b14 + b15 + b16 + b17 + b18 =E= 1;

e4..    b19 + b20 + b21 + b22 + b23 + b24 =E= 1;

e5..    b25 + b26 + b27 + b28 + b29 + b30 =E= 1;

e6..    b31 + b32 + b33 + b34 + b35 + b36 =E= 1;

e7..    b1 + b7 + b13 + b19 + b25 + b31 =E= 1;

e8..    b2 + b8 + b14 + b20 + b26 + b32 =E= 1;

e9..    b3 + b9 + b15 + b21 + b27 + b33 =E= 1;

e10..    b4 + b10 + b16 + b22 + b28 + b34 =E= 1;

e11..    b5 + b11 + b17 + b23 + b29 + b35 =E= 1;

e12..    b6 + b12 + b18 + b24 + b30 + b36 =E= 1;

e13..  - 13*b1 - 24*b2 - 31*b3 - 19*b4 - 40*b5 - 29*b6 - 18*b7 - 25*b8 - 30*b9
       - 15*b10 - 43*b11 - 22*b12 - 20*b13 - 20*b14 - 27*b15 - 25*b16 - 34*b17
       - 33*b18 - 23*b19 - 26*b20 - 28*b21 - 18*b22 - 37*b23 - 30*b24 - 28*b25
       - 33*b26 - 34*b27 - 17*b28 - 38*b29 - 20*b30 - 19*b31 - 36*b32 - 25*b33
       - 27*b34 - 45*b35 - 24*b36 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
