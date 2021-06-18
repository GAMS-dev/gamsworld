*  NLP written by GAMS Convert at 10/06/06 11:14:42
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         14        1        7        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         33       29        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1..    x1 + x2 =L= 7.5;

e2..    x1 + x2 =G= 2.5;

e3..    x1 + x3 =L= 7.5;

e4..    x1 + x3 =G= 2.5;

e5..    x1 + x4 =L= 7.5;

e6..    x1 + x4 =G= 2.5;

e7..    x2 + x3 =L= 7;

e8..    x2 + x3 =G= 2;

e9..    x2 + x4 =L= 7;

e10..    x2 + x4 =G= 2;

e11..    x3 + x4 =L= 6.5;

e12..    x3 + x4 =G= 1.5;

e13..    x1 + x2 + x3 + x4 =G= 5;

e14..  - (-x1*x3 - x2*x4) + objvar =E= 0;

* set non default bounds

x1.up = 5; 
x2.up = 5; 
x3.up = 5; 
x4.up = 5; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
