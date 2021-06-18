*  MIP written by GAMS Convert at 10/31/07 21:24:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         25        1       24        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         81       81        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    b1 + b2 + b3 + b4 + b5 + b6 =E= 1;

e2..    b7 + b8 + b9 + b10 + b11 + b12 =E= 1;

e3..    b13 + b14 + b15 + b16 + b17 + b18 =E= 1;

e4..    b19 + b20 + b21 + b22 + b23 + b24 =E= 1;

e5..    b5 + b9 + b13 + b24 =E= 1;

e6..    b1 + b3 + b6 + b7 + b11 + b12 + b15 + b17 + b18 + b19 + b21 + b23
      =E= 1;

e7..    b2 + b12 + b13 + b20 =E= 1;

e8..    b1 + b6 + b7 + b8 + b14 + b18 + b19 + b24 =E= 0;

e9..    b3 + b10 + b13 + b22 =E= 1;

e10..    b1 + b4 + b7 + b9 + b15 + b16 + b19 + b21 =E= 1;

e11..    b2 + b9 + b17 + b22 =E= 0;

e12..    b3 + b4 + b5 + b8 + b10 + b11 + b14 + b15 + b16 + b20 + b21 + b23
       =E= 4;

e13..    objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
