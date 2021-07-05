*  NLP written by GAMS Convert at 06/27/07 15:16:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10       10        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         58       58        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    x1 + x2 + x3 + x4 + x5 =E= 50;

e2..    x6 + x7 + x8 + x9 + x10 =E= 60;

e3..    x11 + x12 + x13 + x14 + x15 =E= 50;

e4..    x16 + x17 + x18 + x19 + x20 =E= 50;

e5..    x1 + x6 + x11 + x16 =E= 30;

e6..    x2 + x7 + x12 + x17 =E= 20;

e7..    x3 + x8 + x13 + x18 =E= 70;

e8..    x4 + x9 + x14 + x19 =E= 30;

e9..    x5 + x10 + x15 + x20 =E= 60;

e10..  - 160000000*x1 - 160000000*x2 - 130000000*x3 - 220000000*x4
       - 170000000*x5 - 140000000*x6 - 140000000*x7 - 130000000*x8
       - 190000000*x9 - 150000000*x10 - 190000000*x11 - 190000000*x12
       - 200000000*x13 - 230000000*x14 - 9990000000*x15 - 9990000000*x16
       - 9990000000*x18 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;
