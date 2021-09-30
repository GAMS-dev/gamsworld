*  NLP written by GAMS Convert at 06/27/07 15:16:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        1       10        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         24       24        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    x1 =G= 48;

e2..    x1 + x2 =G= 79;

e3..    x1 + x2 =G= 65;

e4..    x1 + x2 + x3 =G= 87;

e5..    x2 + x3 =G= 64;

e6..    x3 + x4 =G= 73;

e7..    x3 + x4 =G= 82;

e8..    x4 =G= 43;

e9..    x4 + x5 =G= 52;

e10..    x5 =G= 15;

e11..  - 170*x1 - 160*x2 - 175*x3 - 180*x4 - 195*x5 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;