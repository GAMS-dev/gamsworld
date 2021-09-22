*  NLP written by GAMS Convert at 10/06/06 11:16:10
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         28       28        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         28       28        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         91       64       27        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28;


e1..    x10 =E= 0;

e2..    x11 =E= 0;

e3..    x12 =E= 0;

e4..  - ((1.3725e-7*x1 + 937.62*x4 - 42.207*x7)*x1 + (1.3725e-7*x2 + 937.62*x5
      - 42.207*x8)*x4 + (1.3725e-7*x3 + 937.62*x6 - 42.207*x9)*x7) + x13 =E= 0;

e5..  - ((1.3725e-7*x1 + 937.62*x4 - 42.207*x7)*x2 + (1.3725e-7*x2 + 937.62*x5
      - 42.207*x8)*x5 + (1.3725e-7*x3 + 937.62*x6 - 42.207*x9)*x8) + x14 =E= 0;

e6..  - ((1.3725e-7*x1 + 937.62*x4 - 42.207*x7)*x3 + (1.3725e-7*x2 + 937.62*x5
      - 42.207*x8)*x6 + (1.3725e-7*x3 + 937.62*x6 - 42.207*x9)*x9) + x15 =E= 0;

e7..    x16 =E= 0;

e8..    x17 =E= 0;

e9..    x18 =E= 0;

e10..  - 0.0060893*x1 + 44.292*x4 - 2.0011*x7 + x19 =E= 0;

e11..  - 0.0060893*x2 + 44.292*x5 - 2.0011*x8 + x20 =E= 0;

e12..  - 0.0060893*x3 + 44.292*x6 - 2.0011*x9 + x21 =E= 0;

e13..  - 1.388E-7*x1 + 1886*x4 - 42.362*x7 + x22 =E= 0;

e14..  - 1.388E-7*x2 + 1886*x5 - 42.362*x8 + x23 =E= 0;

e15..  - 1.388E-7*x3 + 1886*x6 - 42.362*x9 + x24 =E= 0;

e16..    1.3877E-7*x1 - 42.362*x4 + 2.0705*x7 + x25 =E= 0;

e17..    1.3877E-7*x2 - 42.362*x5 + 2.0705*x8 + x26 =E= 0;

e18..    1.3877E-7*x3 - 42.362*x6 + 2.0705*x9 + x27 =E= 0;

e19..    x10 + x19 =E= 0;

e20..    x11 + x20 =E= -44.792;

e21..    x12 + x21 =E= 0;

e22..    x13 + x22 =E= 0;

e23..    x14 + x23 =E= -948.21;

e24..    x15 + x24 =E= 0;

e25..    x16 + x25 =E= 0;

e26..    x17 + x26 =E= 42.684;

e27..    x18 + x27 =E= 0;

e28..    objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
