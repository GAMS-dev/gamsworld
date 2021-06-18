*  MIP written by GAMS Convert at 10/23/07 22:15:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16       16        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         49        1       48        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        187      187        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..    b1 + b2 + b3 + b4 + b5 =E= 1;

e2..    b1 + b2 + b3 + b6 + b7 + b8 + b9 =E= 1;

e3..    b2 + b7 + b8 + b10 + b11 + b12 + b13 =E= 1;

e4..    b10 + b14 + b15 =E= 1;

e5..    b3 + b4 + b5 + b8 + b9 + b11 + b12 + b13 + b15 + b16 + b17 + b18 + b19
      + b20 + b21 =E= 1;

e6..    b5 + b12 + b16 + b17 + b18 + b19 + b22 + b23 + b24 + b25 =E= 1;

e7..    b17 + b22 + b23 + b26 + b27 + b28 + b29 + b30 =E= 1;

e8..    b18 + b19 + b23 + b24 + b25 + b26 + b27 + b28 + b31 + b32 + b33 + b34
      + b35 + b36 + b37 =E= 1;

e9..    b27 + b29 + b30 + b31 + b32 + b38 + b39 + b40 =E= 1;

e10..    b13 + b20 + b21 + b33 + b34 + b41 + b42 =E= 1;

e11..    b19 + b21 + b25 + b28 + b30 + b32 + b34 + b35 + b36 + b37 + b38 + b39
       + b41 + b43 + b44 + b45 =E= 1;

e12..    b36 + b40 + b43 + b46 + b47 =E= 1;

e13..    b37 + b39 + b42 + b44 + b45 + b48 =E= 1;

e14..    b45 + b47 + b48 =E= 1;

e15..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13
       + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 + b25
       + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35 + b36 + b37
       + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 =E= 6;

e16..  - b3 - b4 - b8 - b10 - b11 - b12 - b13 - b14 - b15 - b20 - b21 - b29
       - b30 - b31 - b37 - b38 - b39 - b40 - b41 - b42 - b44 - b45 - b48
       + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
