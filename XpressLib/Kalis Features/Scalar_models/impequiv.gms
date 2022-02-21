*  DNLP written by GAMS Convert at 01/14/09 03:34:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        2        4        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         16       12        4        0
*
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    x1 - x2 - x3 - x4 =G= 5;

e2..    x4 =E= 1;

e3.. (x1 - x2)*(x1 - x2) =G= 1E-5;

e4.. (x1 - x3)*(x1 - x3) =G= 1E-5;

e5..  - x2 + x3 =G= 1E-5;

e6..    x2 - x3 =L= 0;

e7..  - x2 + x3 =L= 2;

e8..    objvar =E= 1;

* set non default bounds

x2.up = 5; 
x3.up = 5; 
x4.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
