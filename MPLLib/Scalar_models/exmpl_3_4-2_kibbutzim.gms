*  NLP written by GAMS Convert at 06/27/07 15:16:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        4        0        9        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         55       55        0        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    x1 + x4 + x7 =L= 400;

e2..    x2 + x5 + x8 =L= 600;

e3..    x3 + x6 + x9 =L= 300;

e4..    3*x1 + 2*x4 + x7 =L= 600;

e5..    3*x2 + 2*x5 + x8 =L= 800;

e6..    3*x3 + 2*x6 + x9 =L= 375;

e7..    x1 + x2 + x3 =L= 600;

e8..    x4 + x5 + x6 =L= 500;

e9..    x7 + x8 + x9 =L= 325;

e10..    0.0025*x1 - 0.00166666666666667*x2 + 0.0025*x4
       - 0.00166666666666667*x5 + 0.0025*x7 - 0.00166666666666667*x8 =E= 0;

e11..    0.00166666666666667*x2 - 0.00333333333333333*x3
       + 0.00166666666666667*x5 - 0.00333333333333333*x6
       + 0.00166666666666667*x8 - 0.00333333333333333*x9 =E= 0;

e12..  - 0.0025*x1 + 0.00333333333333333*x3 - 0.0025*x4
       + 0.00333333333333333*x6 - 0.0025*x7 + 0.00333333333333333*x9 =E= 0;

e13..  - 1000*x1 - 1000*x2 - 1000*x3 - 750*x4 - 750*x5 - 750*x6 - 250*x7
       - 250*x8 - 250*x9 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP maximizing objvar;