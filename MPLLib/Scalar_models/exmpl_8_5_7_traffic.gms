*  LP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
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

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 + x2 =E= 900;

e2..  - x1 + x3 + x4 =E= 0;

e3..  - x2 + x5 + x6 =E= 0;

e4..  - x3 - x5 + x7 + x8 =E= 0;

e5..  - x4 - x6 - x7 + x9 =E= 0;

e6..    x8 + x9 =E= 900;

e7..  - 10*x1 - 50*x2 - 30*x3 - 70*x4 - 10*x5 - 60*x6 - 30*x7 - 60*x8 - 30*x9
      + objvar =E= 0;

* set non default bounds

x1.up = 800; 
x2.up = 600; 
x3.up = 600; 
x4.up = 100; 
x5.up = 300; 
x6.up = 400; 
x7.up = 600; 
x8.up = 400; 
x9.up = 600; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;