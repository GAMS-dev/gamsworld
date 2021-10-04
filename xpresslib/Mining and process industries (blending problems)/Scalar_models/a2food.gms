*  LP written by GAMS Convert at 07/05/07 16:06:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         12        3        4        5        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         45       45        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1..    x1 + x3 + x5 - x7 =E= 0;

e2..    x2 + x4 + x6 - x8 =E= 0;

e3..    13.6*x1 + 4.1*x3 + 5*x5 - 9.5*x7 =G= 0;

e4..    7.1*x1 + 2.4*x3 + 0.3*x5 - 2*x7 =G= 0;

e5..    13.6*x2 + 4.1*x4 + 5*x6 - 9.5*x8 =G= 0;

e6..    7.1*x2 + 2.4*x4 + 0.3*x6 - 2*x8 =G= 0;

e7..    7*x1 + 3.7*x3 + 25*x5 - 6*x7 =L= 0;

e8..    7*x2 + 3.7*x4 + 25*x6 - 6*x8 =L= 0;

e9..    x1 + x2 =L= 11900;

e10..    x3 + x4 =L= 23500;

e11..    x5 + x6 =L= 750;

e12..  - 0.85*x1 - 0.6*x2 - 0.89*x3 - 0.64*x4 - 0.59*x5 - 0.34*x6 + objvar
       =E= 0;

* set non default bounds

x7.lo = 9000; 
x8.lo = 12000; 

* set non default levels

x7.l = 9000; 
x8.l = 12000; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;
