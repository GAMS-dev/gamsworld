*  LP written by GAMS Convert at 06/27/07 15:16:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        1        4        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         28       28        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    x1 + x2 + x3 =L= 135;

e2..    x4 + x5 =L= 56;

e3..    x6 + x7 + x8 + x9 =L= 93;

e4..    x1 + x4 + x6 =G= 62;

e5..    x5 + x7 =G= 83;

e6..    x2 + x8 =G= 39;

e7..    x3 + x9 =G= 91;

e8..  - 132*x1 - 97*x2 - 103*x3 - 85*x4 - 91*x5 - 106*x6 - 89*x7 - 100*x8
      - 98*x9 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;