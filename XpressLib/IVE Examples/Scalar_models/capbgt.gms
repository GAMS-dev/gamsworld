*  MIP written by GAMS Convert at 01/17/08 23:45:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        1        8        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         25       25        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8;

Equations  e1,e2,e3;


e1..    104*b1 + 53*b2 + 29*b3 + 187*b4 + 98*b5 + 32*b6 + 75*b7 + 200*b8
      =L= 478;

e2..    22*b1 + 14*b2 + 7*b3 + 36*b4 + 24*b5 + 10*b6 + 20*b7 + 41*b8 =L= 106;

e3..  - 124*b1 - 75*b2 - 42*b3 - 188*b4 - 108*b5 - 56*b6 - 88*b7 - 225*b8
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
