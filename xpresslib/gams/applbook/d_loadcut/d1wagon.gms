*  MIP written by GAMS Convert at 08/20/07 23:19:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         19       16        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         49        1       48        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         99       99        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19;


e1..    b1 + b2 + b3 =E= 1;

e2..    b4 + b5 + b6 =E= 1;

e3..    b7 + b8 + b9 =E= 1;

e4..    b10 + b11 + b12 =E= 1;

e5..    b13 + b14 + b15 =E= 1;

e6..    b16 + b17 + b18 =E= 1;

e7..    b19 + b20 + b21 =E= 1;

e8..    b22 + b23 + b24 =E= 1;

e9..    b25 + b26 + b27 =E= 1;

e10..    b28 + b29 + b30 =E= 1;

e11..    b31 + b32 + b33 =E= 1;

e12..    b34 + b35 + b36 =E= 1;

e13..    b37 + b38 + b39 =E= 1;

e14..    b40 + b41 + b42 =E= 1;

e15..    b43 + b44 + b45 =E= 1;

e16..    b46 + b47 + b48 =E= 1;

e17..    34*b1 + 6*b4 + 8*b7 + 17*b10 + 16*b13 + 5*b16 + 13*b19 + 21*b22
       + 25*b25 + 31*b28 + 14*b31 + 13*b34 + 33*b37 + 9*b40 + 25*b43 + 25*b46
       - objvar =L= 0;

e18..    34*b2 + 6*b5 + 8*b8 + 17*b11 + 16*b14 + 5*b17 + 13*b20 + 21*b23
       + 25*b26 + 31*b29 + 14*b32 + 13*b35 + 33*b38 + 9*b41 + 25*b44 + 25*b47
       - objvar =L= 0;

e19..    34*b3 + 6*b6 + 8*b9 + 17*b12 + 16*b15 + 5*b18 + 13*b21 + 21*b24
       + 25*b27 + 31*b30 + 14*b33 + 13*b36 + 33*b39 + 9*b42 + 25*b45 + 25*b48
       - objvar =L= 0;

* set non default bounds

objvar.lo = 99; objvar.up = 100; 

* set non default levels

objvar.l = 99; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
