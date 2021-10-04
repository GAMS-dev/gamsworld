*  LP written by GAMS Convert at 09/21/07 20:34:18
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        2        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         20       20        0        0
*
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,objvar;

Equations  e1,e2,e3,e4;


e1..    x1 + x2 + x3 =L= 30000;

e2..    x2 + x3 + x5 + x6 =G= 50000;

e3..    x1 + x2 + x3 + x4 + x5 + x6 =E= 100000;

e4..  - 0.053*x1 - 0.062*x2 - 0.051*x3 - 0.049*x4 - 0.065*x5 - 0.034*x6
      + objvar =E= 0;

* set non default bounds

x1.lo = 5000; x1.up = 40000; 
x2.lo = 5000; x2.up = 40000; 
x3.lo = 5000; x3.up = 40000; 
x4.lo = 5000; x4.up = 40000; 
x5.lo = 5000; x5.up = 40000; 
x6.lo = 5000; x6.up = 40000; 

* set non default levels

x1.l = 5000; 
x2.l = 5000; 
x3.l = 5000; 
x4.l = 5000; 
x5.l = 5000; 
x6.l = 5000; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
