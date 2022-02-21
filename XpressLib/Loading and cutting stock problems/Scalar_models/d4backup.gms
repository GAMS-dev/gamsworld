*  MIP written by GAMS Convert at 08/20/07 23:19:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         35       16       16        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         49        1       48        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        160      160        0        0
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
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35;


e1..  - b1 - 2*b2 - 3*b3 + objvar =G= 0;

e2..  - b4 - 2*b5 - 3*b6 + objvar =G= 0;

e3..  - b7 - 2*b8 - 3*b9 + objvar =G= 0;

e4..  - b10 - 2*b11 - 3*b12 + objvar =G= 0;

e5..  - b13 - 2*b14 - 3*b15 + objvar =G= 0;

e6..  - b16 - 2*b17 - 3*b18 + objvar =G= 0;

e7..  - b19 - 2*b20 - 3*b21 + objvar =G= 0;

e8..  - b22 - 2*b23 - 3*b24 + objvar =G= 0;

e9..  - b25 - 2*b26 - 3*b27 + objvar =G= 0;

e10..  - b28 - 2*b29 - 3*b30 + objvar =G= 0;

e11..  - b31 - 2*b32 - 3*b33 + objvar =G= 0;

e12..  - b34 - 2*b35 - 3*b36 + objvar =G= 0;

e13..  - b37 - 2*b38 - 3*b39 + objvar =G= 0;

e14..  - b40 - 2*b41 - 3*b42 + objvar =G= 0;

e15..  - b43 - 2*b44 - 3*b45 + objvar =G= 0;

e16..  - b46 - 2*b47 - 3*b48 + objvar =G= 0;

e17..    b1 + b2 + b3 =E= 1;

e18..    b4 + b5 + b6 =E= 1;

e19..    b7 + b8 + b9 =E= 1;

e20..    b10 + b11 + b12 =E= 1;

e21..    b13 + b14 + b15 =E= 1;

e22..    b16 + b17 + b18 =E= 1;

e23..    b19 + b20 + b21 =E= 1;

e24..    b22 + b23 + b24 =E= 1;

e25..    b25 + b26 + b27 =E= 1;

e26..    b28 + b29 + b30 =E= 1;

e27..    b31 + b32 + b33 =E= 1;

e28..    b34 + b35 + b36 =E= 1;

e29..    b37 + b38 + b39 =E= 1;

e30..    b40 + b41 + b42 =E= 1;

e31..    b43 + b44 + b45 =E= 1;

e32..    b46 + b47 + b48 =E= 1;

e33..    46*b1 + 55*b4 + 62*b7 + 87*b10 + 108*b13 + 114*b16 + 137*b19 + 164*b22
       + 253*b25 + 364*b28 + 372*b31 + 388*b34 + 406*b37 + 432*b40 + 461*b43
       + 851*b46 =L= 1440;

e34..    46*b2 + 55*b5 + 62*b8 + 87*b11 + 108*b14 + 114*b17 + 137*b20 + 164*b23
       + 253*b26 + 364*b29 + 372*b32 + 388*b35 + 406*b38 + 432*b41 + 461*b44
       + 851*b47 =L= 1440;

e35..    46*b3 + 55*b6 + 62*b9 + 87*b12 + 108*b15 + 114*b18 + 137*b21 + 164*b24
       + 253*b27 + 364*b30 + 372*b33 + 388*b36 + 406*b39 + 432*b42 + 461*b45
       + 851*b48 =L= 1440;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
