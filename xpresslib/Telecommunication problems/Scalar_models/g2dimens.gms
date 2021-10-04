*  MIP written by GAMS Convert at 09/21/07 20:31:07
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         12       11        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         51        1       50        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        141      141        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1..    b1 + b2 + b3 + b4 + b5 =E= 2;

e2..    b6 + b7 + b8 + b9 + b10 =E= 2;

e3..    b11 + b12 + b13 + b14 + b15 =E= 2;

e4..    b16 + b17 + b18 + b19 + b20 =E= 2;

e5..    b21 + b22 + b23 + b24 + b25 =E= 3;

e6..    b26 + b27 + b28 + b29 + b30 =E= 1;

e7..    b31 + b32 + b33 + b34 + b35 =E= 3;

e8..    b36 + b37 + b38 + b39 + b40 =E= 2;

e9..    b41 + b42 + b43 + b44 + b45 =E= 2;

e10..    b46 + b47 + b48 + b49 + b50 =E= 2;

e11..    11*b1 + 11*b2 + 11*b3 + 11*b4 + 6*b6 + 6*b7 + 6*b8 + 6*b9 + 10*b11
       + 10*b12 + 10*b13 + 10*b14 + 6*b16 + 6*b17 + 6*b18 + 6*b19 + 5*b21
       + 5*b22 + 5*b23 + 5*b24 + 25*b26 + 25*b27 + 25*b28 + 25*b29 + 5*b31
       + 5*b32 + 5*b33 + 5*b34 + 7*b36 + 7*b37 + 7*b38 + 7*b39 + 4*b41 + 4*b42
       + 4*b43 + 4*b44 + 11*b46 + 11*b47 + 11*b48 + 11*b49 =L= 96;

e12..  - 15*b1 - 8*b2 - 7*b3 - 11*b4 - 10*b5 - 9*b6 - 11*b7 - 8*b8 - 5*b9
       - 14*b10 - 12*b11 - 6*b12 - 7*b13 - 15*b14 - 15*b15 - 17*b16 - 5*b17
       - 9*b18 - 18*b19 - 24*b20 - 8*b21 - 22*b22 - 21*b23 - 19*b24 - 6*b25
       - 7*b26 - 25*b27 - 15*b28 - 9*b29 - 17*b30 - 19*b31 - 25*b32 - 21*b33
       - 20*b34 - 22*b35 - 20*b36 - 9*b37 - 15*b38 - 18*b39 - 25*b40 - 21*b41
       - 22*b42 - 14*b43 - 16*b44 - 20*b45 - 25*b46 - 24*b47 - 13*b48 - 4*b49
       - 11*b50 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
