*  MIP written by GAMS Convert at 09/21/07 20:31:07
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         20       11        0        9        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         45        1       44        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        116      116        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20;


e1..  - b1 - b2 - b3 + b4 + b8 + b41 =E= 0;

e2..    b1 - b4 - b5 - b6 - b7 + b9 + b28 + b31 =E= 0;

e3..    b2 + b5 - b8 - b9 - b10 - b11 - b12 - b13 + b14 + b32 + b36 + b42
      =E= 0;

e4..    b10 - b14 - b15 - b16 - b17 + b18 + b21 + b43 =E= 0;

e5..    b15 - b18 - b19 - b20 + b33 + b44 =E= 0;

e6..    b16 - b21 - b22 - b23 - b24 + b25 + b34 + b37 =E= 0;

e7..    b22 - b25 - b26 - b27 + b29 + b38 =E= 0;

e8..    b6 + b26 - b28 - b29 - b30 + b39 =E= 0;

e9..    b7 + b11 + b19 + b23 - b31 - b32 - b33 - b34 - b35 + b40 =E= 0;

e10..    b1 + b2 + b3 =L= 1;

e11..    b4 + b5 + b6 + b7 =L= 1;

e12..    b8 + b9 + b10 + b11 + b12 + b13 =L= 1;

e13..    b14 + b15 + b16 + b17 =L= 1;

e14..    b18 + b19 + b20 =L= 1;

e15..    b21 + b22 + b23 + b24 =L= 1;

e16..    b25 + b26 + b27 =L= 1;

e17..    b28 + b29 + b30 =L= 1;

e18..    b31 + b32 + b33 + b34 + b35 =L= 1;

e19..    b12 + b24 + b27 + b30 + b35 =E= 0;

e20..  - b36 - b37 - b38 - b39 - b40 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
