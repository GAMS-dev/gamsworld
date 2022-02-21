*  MIP written by GAMS Convert at 09/07/07 23:02:32
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


e1..    b1 + b7 + b13 + b19 + b25 + b31 =E= 1;

e2..    b2 + b8 + b14 + b20 + b26 + b32 =E= 1;

e3..    b3 + b9 + b15 + b21 + b27 + b33 =E= 1;

e4..    b4 + b10 + b16 + b22 + b28 + b34 =E= 1;

e5..    b5 + b11 + b17 + b23 + b29 + b35 =E= 1;

e6..    b6 + b12 + b18 + b24 + b30 + b36 =E= 1;

e7..    b1 + b2 + b3 + b4 + b5 + b6 =E= 1;

e8..    b7 + b8 + b9 + b10 + b11 + b12 =E= 1;

e9..    b13 + b14 + b15 + b16 + b17 + b18 =E= 1;

e10..    b19 + b20 + b21 + b22 + b23 + b24 =E= 1;

e11..    b25 + b26 + b27 + b28 + b29 + b30 =E= 1;

e12..    b31 + b32 + b33 + b34 + b35 + b36 =E= 1;

e13..  - 35*b1 - 12*b2 - 16*b3 - 38*b4 - 5*b5 - 2*b6 - 25*b7 - 8*b8 - 9*b9
       - 24*b10 - 6*b11 - 8*b12 - 12*b13 - 8*b14 - 11*b15 - 27*b16 - 3*b17
       - 2*b18 - 38*b19 - 15*b20 - 14*b21 - 30*b22 - 2*b23 - 9*b24 + 1000*b25
       - 9*b26 - 8*b27 - 25*b28 - 10*b29 - 5*b30 + 1000*b31 + 1000*b32
       + 1000*b33 - 14*b34 - 6*b35 - 7*b36 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
