*  NLP written by GAMS Convert at 01/14/09 03:34:47
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21       11        0       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         46       21       25        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables  x1,x2,x3,x4,x5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..  - x1 + x6 =E= -45;

e2..  - x2 + x7 =E= -48;

e3..  - x3 + x8 =E= -137;

e4..  - x4 + x9 =E= -70;

e5..  - x5 + x10 =E= -116;

e6.. (-21 - x1 + x2)*(-53 + x1 - x2) =L= 0;

e7.. (-21 - x1 + x3)*(-95 + x1 - x3) =L= 0;

e8.. (-21 - x1 + x4)*(-55 + x1 - x4) =L= 0;

e9.. (-21 - x1 + x5)*(-34 + x1 - x5) =L= 0;

e10.. (-53 - x2 + x3)*(-95 + x2 - x3) =L= 0;

e11.. (-53 - x2 + x4)*(-55 + x2 - x4) =L= 0;

e12.. (-53 - x2 + x5)*(-34 + x2 - x5) =L= 0;

e13.. (-95 - x3 + x4)*(-55 + x3 - x4) =L= 0;

e14.. (-95 - x3 + x5)*(-34 + x3 - x5) =L= 0;

e15.. (-55 - x4 + x5)*(-34 + x4 - x5) =L= 0;

e16..  - 0.5*(sqrt(x6*x6) + x6) + x11 =E= 0;

e17..  - 0.5*(sqrt(x7*x7) + x7) + x12 =E= 0;

e18..  - 0.5*(sqrt(x8*x8) + x8) + x13 =E= 0;

e19..  - 0.5*(sqrt(x9*x9) + x9) + x14 =E= 0;

e20..  - 0.5*(sqrt(x10*x10) + x10) + x15 =E= 0;

e21..  - x11 - x12 - x13 - x14 - x15 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
