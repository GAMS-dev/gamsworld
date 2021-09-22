*  MIP written by GAMS Convert at 07/05/07 16:06:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         27       12        0       15        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         45        1       44        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        177      177        0        0
*
*  Solve m using MIP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27;


e1..    b1 + b2 + b3 + b4 =E= 1;

e2..    b5 + b6 + b7 + b8 =E= 1;

e3..    b9 + b10 + b11 + b12 =E= 1;

e4..    b13 + b14 + b15 + b16 =E= 1;

e5..    b17 + b18 + b19 + b20 =E= 1;

e6..    b21 + b22 + b23 + b24 =E= 1;

e7..    b25 + b26 + b27 + b28 =E= 1;

e8..    b29 + b30 + b31 + b32 =E= 1;

e9..    b33 + b34 + b35 + b36 =E= 1;

e10..    b37 + b38 + b39 + b40 =E= 1;

e11..    b41 + b42 + b43 + b44 =E= 1;

e12..    b1 + b5 + b9 + b13 + b17 + b21 + b25 + b29 + b33 + b37 + b41 =L= 3;

e13..    b2 + b6 + b10 + b14 + b18 + b22 + b26 + b30 + b34 + b38 + b42 =L= 3;

e14..    b3 + b7 + b11 + b15 + b19 + b23 + b27 + b31 + b35 + b39 + b43 =L= 3;

e15..    b4 + b8 + b12 + b16 + b20 + b24 + b28 + b32 + b36 + b40 + b44 =L= 3;

e16..    b1 + 2*b2 + 3*b3 + 4*b4 =L= 4;

e17..    b5 + 2*b6 + 3*b7 + 4*b8 =L= 4;

e18..    b9 + 2*b10 + 3*b11 + 4*b12 =L= 1;

e19..    b13 + 2*b14 + 3*b15 + 4*b16 =L= 4;

e20..    b17 + 2*b18 + 3*b19 + 4*b20 =L= 2;

e21..    b21 + 2*b22 + 3*b23 + 4*b24 =L= 4;

e22..    b25 + 2*b26 + 3*b27 + 4*b28 =L= 4;

e23..    b29 + 2*b30 + 3*b31 + 4*b32 =L= 4;

e24..    b33 + 2*b34 + 3*b35 + 4*b36 =L= 3;

e25..    b37 + 2*b38 + 3*b39 + 4*b40 =L= 4;

e26..    b41 + 2*b42 + 3*b43 + 4*b44 =L= 4;

e27..  - 86*b1 - 172*b2 - 258*b3 - 344*b4 - 52*b5 - 104*b6 - 156*b7 - 208*b8
       - 74*b9 - 148*b10 - 222*b11 - 296*b12 - 56*b13 - 112*b14 - 168*b15
       - 224*b16 - 26*b17 - 52*b18 - 78*b19 - 104*b20 - 108*b21 - 216*b22
       - 324*b23 - 432*b24 - 124*b25 - 248*b26 - 372*b27 - 496*b28 - 98*b29
       - 196*b30 - 294*b31 - 392*b32 - 38*b33 - 76*b34 - 114*b35 - 152*b36
       - 56*b37 - 112*b38 - 168*b39 - 224*b40 - 60*b41 - 120*b42 - 180*b43
       - 240*b44 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP minimizing objvar;
