*  NLP written by GAMS Convert at 06/27/07 15:16:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11       11        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         26       26        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         72       72        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    x1 + x2 + x3 + x4 + x5 =E= 1;

e2..    x6 + x7 + x8 + x9 + x10 =E= 1;

e3..    x11 + x12 + x13 + x14 + x15 =E= 1;

e4..    x16 + x17 + x18 + x19 + x20 =E= 1;

e5..    x21 + x22 + x23 + x24 + x25 =E= 1;

e6..    x1 + x6 + x11 + x16 + x21 =E= 1;

e7..    x2 + x7 + x12 + x17 + x22 =E= 1;

e8..    x3 + x8 + x13 + x18 + x23 =E= 1;

e9..    x4 + x9 + x14 + x19 + x24 =E= 1;

e10..    x5 + x10 + x15 + x20 + x25 =E= 1;

e11..  - 820*x1 - 810*x2 - 840*x3 - 960*x4 - 820*x6 - 810*x7 - 840*x8 - 960*x9
       - 800*x11 - 870*x12 - 99999*x13 - 920*x14 - 800*x16 - 870*x17
       - 99999*x18 - 920*x19 - 740*x21 - 900*x22 - 810*x23 - 840*x24
       - 99999*x25 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;