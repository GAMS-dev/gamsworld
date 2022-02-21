*  MIP written by GAMS Convert at 01/14/09 03:34:43
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        3        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        1        4        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        7        0        0
*
*  Solve m using MIP maximizing objvar;
*


Variables  b1,b2,b3,b4,objvar;

Binary Variables  b1,b2,b3,b4;

Equations  e1,e2,e3,e4;


e1..    b1 + b2 =E= 2;

e2..    b3 + b4 =E= 1;

e3..    b3 - b4 =L= 0;

e4..    objvar =E= 1;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
