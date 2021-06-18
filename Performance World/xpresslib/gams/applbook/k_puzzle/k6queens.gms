*  MIP written by GAMS Convert at 10/31/07 21:24:47
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         47       17        0       30        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         65        1       64        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        321      321        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51
          ,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47;


e1..    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 =E= 1;

e2..    b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 =E= 1;

e3..    b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 =E= 1;

e4..    b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 =E= 1;

e5..    b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 =E= 1;

e6..    b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 =E= 1;

e7..    b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56 =E= 1;

e8..    b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 =E= 1;

e9..    b1 + b9 + b17 + b25 + b33 + b41 + b49 + b57 =E= 1;

e10..    b2 + b10 + b18 + b26 + b34 + b42 + b50 + b58 =E= 1;

e11..    b3 + b11 + b19 + b27 + b35 + b43 + b51 + b59 =E= 1;

e12..    b4 + b12 + b20 + b28 + b36 + b44 + b52 + b60 =E= 1;

e13..    b5 + b13 + b21 + b29 + b37 + b45 + b53 + b61 =E= 1;

e14..    b6 + b14 + b22 + b30 + b38 + b46 + b54 + b62 =E= 1;

e15..    b7 + b15 + b23 + b31 + b39 + b47 + b55 + b63 =E= 1;

e16..    b8 + b16 + b24 + b32 + b40 + b48 + b56 + b64 =E= 1;

e17..    b1 + b10 + b19 + b28 + b37 + b46 + b55 + b64 =L= 1;

e18..    b2 + b11 + b20 + b29 + b38 + b47 + b56 =L= 1;

e19..    b3 + b12 + b21 + b30 + b39 + b48 =L= 1;

e20..    b4 + b13 + b22 + b31 + b40 =L= 1;

e21..    b5 + b14 + b23 + b32 =L= 1;

e22..    b6 + b15 + b24 =L= 1;

e23..    b7 + b16 =L= 1;

e24..    b8 =L= 1;

e25..    b9 + b18 + b27 + b36 + b45 + b54 + b63 =L= 1;

e26..    b17 + b26 + b35 + b44 + b53 + b62 =L= 1;

e27..    b25 + b34 + b43 + b52 + b61 =L= 1;

e28..    b33 + b42 + b51 + b60 =L= 1;

e29..    b41 + b50 + b59 =L= 1;

e30..    b49 + b58 =L= 1;

e31..    b57 =L= 1;

e32..    b1 =L= 1;

e33..    b2 + b9 =L= 1;

e34..    b3 + b10 + b17 =L= 1;

e35..    b4 + b11 + b18 + b25 =L= 1;

e36..    b5 + b12 + b19 + b26 + b33 =L= 1;

e37..    b6 + b13 + b20 + b27 + b34 + b41 =L= 1;

e38..    b7 + b14 + b21 + b28 + b35 + b42 + b49 =L= 1;

e39..    b8 + b15 + b22 + b29 + b36 + b43 + b50 + b57 =L= 1;

e40..    b16 + b23 + b30 + b37 + b44 + b51 + b58 =L= 1;

e41..    b24 + b31 + b38 + b45 + b52 + b59 =L= 1;

e42..    b32 + b39 + b46 + b53 + b60 =L= 1;

e43..    b40 + b47 + b54 + b61 =L= 1;

e44..    b48 + b55 + b62 =L= 1;

e45..    b56 + b63 =L= 1;

e46..    b64 =L= 1;

e47..  - b1 - b2 - b3 - b4 - b5 - b6 - b7 - b8 - b9 - b10 - b11 - b12 - b13
       - b14 - b15 - b16 - b17 - b18 - b19 - b20 - b21 - b22 - b23 - b24 - b25
       - b26 - b27 - b28 - b29 - b30 - b31 - b32 - b33 - b34 - b35 - b36 - b37
       - b38 - b39 - b40 - b41 - b42 - b43 - b44 - b45 - b46 - b47 - b48 - b49
       - b50 - b51 - b52 - b53 - b54 - b55 - b56 - b57 - b58 - b59 - b60 - b61
       - b62 - b63 - b64 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
