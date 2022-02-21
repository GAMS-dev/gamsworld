*  MIP written by GAMS Convert at 01/17/08 23:45:24
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         32       12        0       20        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         49        1       48        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        228      228        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32;


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

e12..    b45 + b46 + b47 + b48 =E= 1;

e13..    b1 + 2*b2 + 3*b3 + 4*b4 - b5 - 2*b6 - 3*b7 - 4*b8 =L= 0;

e14..    b1 + 2*b2 + 3*b3 + 4*b4 - b9 - 2*b10 - 3*b11 - 4*b12 =L= 0;

e15..    b5 + 2*b6 + 3*b7 + 4*b8 - b13 - 2*b14 - 3*b15 - 4*b16 =L= 0;

e16..    b5 + 2*b6 + 3*b7 + 4*b8 - b17 - 2*b18 - 3*b19 - 4*b20 =L= 0;

e17..    b5 + 2*b6 + 3*b7 + 4*b8 - b21 - 2*b22 - 3*b23 - 4*b24 =L= 0;

e18..    b9 + 2*b10 + 3*b11 + 4*b12 - b21 - 2*b22 - 3*b23 - 4*b24 =L= 0;

e19..    b9 + 2*b10 + 3*b11 + 4*b12 - b25 - 2*b26 - 3*b27 - 4*b28 =L= 0;

e20..    b13 + 2*b14 + 3*b15 + 4*b16 - b33 - 2*b34 - 3*b35 - 4*b36 =L= 0;

e21..    b17 + 2*b18 + 3*b19 + 4*b20 - b33 - 2*b34 - 3*b35 - 4*b36 =L= 0;

e22..    b21 + 2*b22 + 3*b23 + 4*b24 - b29 - 2*b30 - 3*b31 - 4*b32 =L= 0;

e23..    b25 + 2*b26 + 3*b27 + 4*b28 - b41 - 2*b42 - 3*b43 - 4*b44 =L= 0;

e24..    b29 + 2*b30 + 3*b31 + 4*b32 - b33 - 2*b34 - 3*b35 - 4*b36 =L= 0;

e25..    b29 + 2*b30 + 3*b31 + 4*b32 - b37 - 2*b38 - 3*b39 - 4*b40 =L= 0;

e26..    b33 + 2*b34 + 3*b35 + 4*b36 - b45 - 2*b46 - 3*b47 - 4*b48 =L= 0;

e27..    b37 + 2*b38 + 3*b39 + 4*b40 - b45 - 2*b46 - 3*b47 - 4*b48 =L= 0;

e28..  - b37 - 2*b38 - 3*b39 - 4*b40 + b41 + 2*b42 + 3*b43 + 4*b44 =L= 0;

e29..    3*b1 + 6*b5 + 7*b9 + 6*b13 + 4*b17 + 8*b21 + 9*b25 + 11*b29 + 2*b33
       + 13*b37 + 4*b41 + 3*b45 - objvar =L= 0;

e30..    3*b2 + 6*b6 + 7*b10 + 6*b14 + 4*b18 + 8*b22 + 9*b26 + 11*b30 + 2*b34
       + 13*b38 + 4*b42 + 3*b46 - objvar =L= 0;

e31..    3*b3 + 6*b7 + 7*b11 + 6*b15 + 4*b19 + 8*b23 + 9*b27 + 11*b31 + 2*b35
       + 13*b39 + 4*b43 + 3*b47 - objvar =L= 0;

e32..    3*b4 + 6*b8 + 7*b12 + 6*b16 + 4*b20 + 8*b24 + 9*b28 + 11*b32 + 2*b36
       + 13*b40 + 4*b44 + 3*b48 - objvar =L= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
