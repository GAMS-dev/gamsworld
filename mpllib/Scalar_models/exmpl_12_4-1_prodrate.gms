
*  MIP written by GAMS Convert at 06/27/07 15:16:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        4        4        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21       21        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,b4,x5,x6,x7,objvar;

Positive Variables  x5,x6,x7;

Binary Variables  b1,b2,b3,b4;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - 999*b1 + x5 =L= 0;

e2..  - 999*b2 + x6 =L= 0;

e3..  - 999*b3 + x7 =L= 0;

e4..    b1 + b2 + b3 =L= 2;

e5..  - 999*b4 + 3*x5 + 4*x6 + 2*x7 =L= 30;

e6..    999*b4 + 4*x5 + 6*x6 + 2*x7 =L= 1039;

e7..  - 5*x5 - 7*x6 - 3*x7 + objvar =E= 0;

* set non default bounds

x5.up = 7; 
x6.up = 5; 
x7.up = 9; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;

