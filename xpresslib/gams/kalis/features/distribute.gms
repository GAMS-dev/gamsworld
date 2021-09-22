*  MIP written by GAMS Convert at 01/14/09 03:34:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         33        1       32        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         65       65        0        0
*
*  Solve m using MIP minimizing objvar;
*


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    b1 + b2 + b3 + b4 =E= 1;

e2..    b5 + b6 + b7 + b8 =E= 1;

e3..    b9 + b10 + b11 + b12 =E= 1;

e4..    b13 + b14 + b15 + b16 =E= 1;

e5..    b17 + b18 + b19 + b20 =E= 1;

e6..    b21 + b22 + b23 + b24 =E= 1;

e7..    b25 + b26 + b27 + b28 =E= 1;

e8..    b29 + b30 + b31 + b32 =E= 1;

e9..    b1 + b5 + b9 + b13 + b17 + b21 + b25 + b29 =E= 3;

e10..    b2 + b6 + b10 + b14 + b18 + b22 + b26 + b30 =E= 2;

e11..    b3 + b7 + b11 + b15 + b19 + b23 + b27 + b31 =E= 2;

e12..    b4 + b8 + b12 + b16 + b20 + b24 + b28 + b32 =E= 1;

e13..    objvar =E= 1;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
