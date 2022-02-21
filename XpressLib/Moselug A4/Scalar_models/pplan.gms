*  MIP written by GAMS Convert at 07/30/07 17:11:59
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10        4        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         19        1       18        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         30       30        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18
          ,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    b1 + b2 + b3 + b4 + b5 + b6 =E= 1;

e2..    b7 + b8 + b9 + b10 + b11 + b12 =E= 1;

e3..    b13 + b14 + b15 + b16 + b17 + b18 =E= 1;

e4..    3*b1 =L= 5;

e5..    5*b2 =L= 6;

e6..    6*b3 =L= 7;

e7..    8*b4 =L= 7;

e8..    8*b5 =L= 6;

e9..    8*b6 =L= 6;

e10..  - 30.6*b1 - 20.4*b2 - 36.9*b7 - 24.6*b8 - 22.4*b13 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
