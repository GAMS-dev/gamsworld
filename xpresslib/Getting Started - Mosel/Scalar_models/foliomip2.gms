*  MIP written by GAMS Convert at 05/10/09 15:17:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        2        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         30       30        0        0
*
*  Solve m using MIP maximizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4;


e1..    x2 + x3 + x4 + x9 + x10 =L= 0.333333333333333;

e2..    x1 + x2 + x3 + x4 =G= 0.5;

e3..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

e4..  - 5*x1 - 17*x2 - 26*x3 - 12*x4 - 8*x5 - 9*x6 - 7*x7 - 6*x8 - 31*x9
      - 21*x10 + objvar =E= 0;

* set non default bounds

x1.up = 0.3; 
x2.up = 0.3; 
x3.up = 0.3; 
x4.up = 0.3; 
x5.up = 0.3; 
x6.up = 0.3; 
x7.up = 0.3; 
x8.up = 0.3; 
x9.up = 0.3; 
x10.up = 0.3; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
