*  LP written by GAMS Convert at 06/27/07 15:16:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        9        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         12       12        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         34       34        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - x1 =E= -10;

e2..  - x2 =E= -15;

e3..    x1 - x3 - x4 - x5 + x8 =E= 0;

e4..    x2 + x3 - x6 - x7 =E= 0;

e5..    x4 + x6 - x8 - x9 - x10 =E= 0;

e6..    x5 + x9 =E= 9;

e7..    x10 + x11 =E= 10;

e8..    x7 - x11 =E= 6;

e9..  - 5*x1 - 4*x2 - 2*x3 - 6*x4 - 5*x5 - x6 - 2*x7 - 4*x8 - 6*x9 - 3*x10
      - 4*x11 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;