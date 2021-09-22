*  MIP written by GAMS Convert at 08/20/07 23:15:59
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16       11        0        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         51        1       50        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        151      151        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..    8*b1 + 15*b2 + 14*b3 + 23*b4 + 8*b5 + 16*b6 + 8*b7 + 25*b8 + 9*b9
      + 17*b10 =L= 17.999999;

e2..    15*b11 + 7*b12 + 23*b13 + 22*b14 + 11*b15 + 11*b16 + 12*b17 + 10*b18
      + 17*b19 + 16*b20 =L= 18.999999;

e3..    21*b21 + 20*b22 + 6*b23 + 22*b24 + 24*b25 + 10*b26 + 24*b27 + 9*b28
      + 21*b29 + 14*b30 =L= 24.999999;

e4..    20*b31 + 11*b32 + 8*b33 + 14*b34 + 9*b35 + 5*b36 + 6*b37 + 19*b38
      + 19*b39 + 7*b40 =L= 18.999999;

e5..    8*b41 + 13*b42 + 13*b43 + 13*b44 + 10*b45 + 20*b46 + 25*b47 + 16*b48
      + 16*b49 + 17*b50 =L= 19.999999;

e6..    b1 + b11 + b21 + b31 + b41 =E= 1;

e7..    b2 + b12 + b22 + b32 + b42 =E= 1;

e8..    b3 + b13 + b23 + b33 + b43 =E= 1;

e9..    b4 + b14 + b24 + b34 + b44 =E= 1;

e10..    b5 + b15 + b25 + b35 + b45 =E= 1;

e11..    b6 + b16 + b26 + b36 + b46 =E= 1;

e12..    b7 + b17 + b27 + b37 + b47 =E= 1;

e13..    b8 + b18 + b28 + b38 + b48 =E= 1;

e14..    b9 + b19 + b29 + b39 + b49 =E= 1;

e15..    b10 + b20 + b30 + b40 + b50 =E= 1;

e16..  - 17*b1 - 21*b2 - 22*b3 - 18*b4 - 24*b5 - 15*b6 - 20*b7 - 18*b8 - 19*b9
       - 18*b10 - 23*b11 - 16*b12 - 21*b13 - 16*b14 - 17*b15 - 16*b16 - 19*b17
       - 25*b18 - 18*b19 - 21*b20 - 16*b21 - 20*b22 - 16*b23 - 25*b24 - 24*b25
       - 16*b26 - 17*b27 - 19*b28 - 19*b29 - 18*b30 - 19*b31 - 19*b32 - 22*b33
       - 22*b34 - 20*b35 - 16*b36 - 19*b37 - 17*b38 - 21*b39 - 19*b40 - 18*b41
       - 19*b42 - 15*b43 - 15*b44 - 21*b45 - 25*b46 - 16*b47 - 16*b48 - 23*b49
       - 15*b50 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
