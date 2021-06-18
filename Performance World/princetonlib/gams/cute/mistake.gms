*  NLP written by GAMS Convert at 10/06/06 11:34:15
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         14        1       10        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         49        1       48        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Negative Variables  x6;

Positive Variables  x9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1..  - (x3*x3 + x4*x4) =G= -1;

e2..  - (x5*x5 + x6*x6) =G= -1;

e3..  - x9*x9 =G= -1;

e4..  - (x1*x1 + (x2 - x9)*(x2 - x9)) =G= -1;

e5..  - ((x1 - x5)*(x1 - x5) + (x2 - x6)*(x2 - x6)) =G= -1;

e6..  - ((x1 - x7)*(x1 - x7) + (x2 - x8)*(x2 - x8)) =G= -1;

e7..  - ((x3 - x5)*(x3 - x5) + (x4 - x6)*(x4 - x6)) =G= -1;

e8..  - ((x3 - x7)*(x3 - x7) + (x4 - x8)*(x4 - x8)) =G= -1;

e9..  - (x7*x7 + x8*x9) =G= -1;

e10..  - x8*x9 =L= 0;

e11..  - (x5*x8 - x6*x7) =L= 0;

e12..  - (x1*x4 - x2*x3) =L= 0;

e13.. x5*x9 =G= 0;

e14..  - (0.5*x2*x3 - 0.5*x1*x4 - 0.5*x3*x9 + 0.5*x5*x9 - 0.5*x5*x8 + 0.5*x6*x7
      ) + objvar =E= 0;

* set non default bounds

x6.up = 0.6; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 0.6; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
