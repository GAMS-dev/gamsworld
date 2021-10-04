*  MIP written by GAMS Convert at 10/31/07 21:24:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21       21        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37        1       36        0        0        0        0        0
*  FX      1        0        1        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        101      101        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..    b1 + b7 + b13 + b19 + b25 + b31 =E= 1;

e2..    b2 + b8 + b14 + b20 + b26 + b32 =E= 1;

e3..    b3 + b9 + b15 + b21 + b27 + b33 =E= 1;

e4..    b4 + b10 + b16 + b22 + b28 + b34 =E= 1;

e5..    b5 + b11 + b17 + b23 + b29 + b35 =E= 1;

e6..    b6 + b12 + b18 + b24 + b30 + b36 =E= 1;

e7..    b1 + b2 + b3 + b4 + b5 + b6 =E= 1;

e8..    b7 + b8 + b9 + b10 + b11 + b12 =E= 1;

e9..    b13 + b14 + b15 + b16 + b17 + b18 =E= 1;

e10..    b19 + b20 + b21 + b22 + b23 + b24 =E= 1;

e11..    b25 + b26 + b27 + b28 + b29 + b30 =E= 1;

e12..    b31 + b32 + b33 + b34 + b35 + b36 =E= 1;

e13..    b5 + b6 + b11 + b12 + b35 + b36 =E= 0;

e14..    b13 + b14 + b15 + b19 + b20 + b21 =E= 0;

e15..    b1 + b2 =E= 1;

e16..    b25 + b26 + b27 + b28 =E= 1;

e17..    b8 + b9 =E= 0;

e18..    b34 + b35 + b36 =E= 0;

e19..    b13 + b14 + b15 =E= 0;

e20..    b4 + b10 =E= 0;

e21..    objvar =E= 0;

* set non default bounds

b24.fx = 0; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
