*  MIP written by GAMS Convert at 02/22/08 02:33:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11        1       10        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21       21        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10;

Equations  e1,e2;


e1..    9*b1 + 7*b2 + 5*b3 + 3*b4 + b5 + 2*b6 + 4*b7 + 6*b8 + 8*b9 + 10*b10
      =L= 100;

e2..  - 2*b1 - 4*b2 - 6*b3 - 8*b4 - 10*b5 - 9*b6 - 7*b7 - 5*b8 - 3*b9 - b10
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
