*  MIP written by GAMS Convert at 10/17/08 03:00:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16       16        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31        6       25        0        0        0        0        0
*  FX      5        0        5        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         81       81        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,x26,x27,x28,x29,x30,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - 11*b2 - 7*b3 - 13*b4 - 11*b5 + x26 =E= 0;

e2..  - 5*b6 - 13*b8 - 15*b9 - 15*b10 + x27 =E= 0;

e3..  - 13*b11 - 15*b12 - 23*b14 - 11*b15 + x28 =E= 0;

e4..  - 9*b16 - 13*b17 - 5*b18 - 3*b20 + x29 =E= 0;

e5..  - 3*b21 - 7*b22 - 7*b23 - 7*b24 + x30 =E= 0;

e6..    b1 + b2 + b3 + b4 + b5 =E= 1;

e7..    b6 + b7 + b8 + b9 + b10 =E= 1;

e8..    b11 + b12 + b13 + b14 + b15 =E= 1;

e9..    b16 + b17 + b18 + b19 + b20 =E= 1;

e10..    b21 + b22 + b23 + b24 + b25 =E= 1;

e11..    b1 + b6 + b11 + b16 + b21 =E= 1;

e12..    b2 + b7 + b12 + b17 + b22 =E= 1;

e13..    b3 + b8 + b13 + b18 + b23 =E= 1;

e14..    b4 + b9 + b14 + b19 + b24 =E= 1;

e15..    b5 + b10 + b15 + b20 + b25 =E= 1;

e16..  - x26 - x27 - x28 - x29 - x30 + objvar =E= 202;

* set non default bounds

b1.fx = 0; 
b7.fx = 0; 
b13.fx = 0; 
b19.fx = 0; 
b25.fx = 0; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
