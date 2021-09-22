*  MIP written by GAMS Convert at 01/17/08 23:45:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15       15        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         43        1       42        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        127      127        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    b7 + b13 + b19 + b25 + b31 + b37 =E= 1;

e2..    b1 + b14 + b20 + b26 + b32 + b38 =E= 1;

e3..    b2 + b8 + b21 + b27 + b33 + b39 =E= 1;

e4..    b3 + b9 + b15 + b28 + b34 + b40 =E= 1;

e5..    b4 + b10 + b16 + b22 + b35 + b41 =E= 1;

e6..    b5 + b11 + b17 + b23 + b29 + b42 =E= 1;

e7..    b6 + b12 + b18 + b24 + b30 + b36 =E= 1;

e8..    b1 + b2 + b3 + b4 + b5 + b6 =E= 1;

e9..    b7 + b8 + b9 + b10 + b11 + b12 =E= 1;

e10..    b13 + b14 + b15 + b16 + b17 + b18 =E= 1;

e11..    b19 + b20 + b21 + b22 + b23 + b24 =E= 1;

e12..    b25 + b26 + b27 + b28 + b29 + b30 =E= 1;

e13..    b31 + b32 + b33 + b34 + b35 + b36 =E= 1;

e14..    b37 + b38 + b39 + b40 + b41 + b42 =E= 1;

e15..  - 786*b1 - 549*b2 - 657*b3 - 331*b4 - 559*b5 - 250*b6 - 786*b7 - 668*b8
       - 979*b9 - 593*b10 - 224*b11 - 905*b12 - 549*b13 - 668*b14 - 316*b15
       - 607*b16 - 472*b17 - 467*b18 - 657*b19 - 979*b20 - 316*b21 - 890*b22
       - 769*b23 - 400*b24 - 331*b25 - 593*b26 - 607*b27 - 890*b28 - 386*b29
       - 559*b30 - 559*b31 - 224*b32 - 472*b33 - 769*b34 - 386*b35 - 681*b36
       - 250*b37 - 905*b38 - 467*b39 - 400*b40 - 559*b41 - 681*b42 + objvar
       =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
