*  MIP written by GAMS Convert at 09/21/07 20:31:08
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         12        8        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         17        1       16        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         52       52        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1..    b1 + b2 + b3 + b4 =E= 1;

e2..    b5 + b6 + b7 + b8 =E= 1;

e3..    b9 + b10 + b11 + b12 =E= 1;

e4..    b13 + b14 + b15 + b16 =E= 1;

e5..    b1 + b5 + b9 + b13 =E= 1;

e6..    b2 + b6 + b10 + b14 =E= 1;

e7..    b3 + b7 + b11 + b15 =E= 1;

e8..    b4 + b8 + b12 + b16 =E= 1;

e9..    7*b1 + 12*b2 + 11*b3 + 15*b4 - objvar =G= 0;

e10..    15*b5 + 8*b6 + 13*b7 + 9*b8 - objvar =G= 0;

e11..    17*b9 + 12*b10 + 6*b11 + 10*b12 - objvar =G= 0;

e12..    6*b13 + 13*b14 + 15*b15 + 11*b16 - objvar =G= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
