*  MIP written by GAMS Convert at 07/30/07 17:11:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        1        8        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         17       17        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8;

Equations  e1,e2;


e1..    2*b1 + 20*b2 + 20*b3 + 30*b4 + 40*b5 + 30*b6 + 60*b7 + 10*b8 =L= 102;

e2..  - 15*b1 - 100*b2 - 90*b3 - 60*b4 - 40*b5 - 15*b6 - 10*b7 - b8 + objvar
      =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
