*  MIP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        1        4        0        0        0        0        0
*  FX      4        0        4        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        9        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  b1,b2,b3,b4,objvar;

Binary Variables  b1,b2,b3,b4;

Equations  e1,e2;


e1..    5000*b1 + 7000*b2 + 4000*b3 + 3000*b4 =L= 14000;

e2..  - 16000*b1 - 22000*b2 - 12000*b3 - 8000*b4 + objvar =E= 0;

* set non default bounds

b1.fx = 0; 
b2.fx = 1; 
b3.fx = 1; 
b4.fx = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;