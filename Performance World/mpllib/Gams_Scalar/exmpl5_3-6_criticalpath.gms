
*  LP written by GAMS Convert at 06/27/07 15:16:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10        1        9        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      7        7        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         20       20        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x1;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - x1 + x2 =G= 4;

e2..  - x1 + x3 =G= 12;

e3..  - x1 + x4 =G= 7;

e4..  - x2 + x4 =G= 2;

e5..  - x4 + x5 =G= 10;

e6..    x3 - x5 =G= 0;

e7..  - x3 + x6 =G= 5;

e8..  - x5 + x6 =G= 3;

e9..  - x6 + x7 =G= 4;

e10..  - x7 + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x2.fx = 4; 
x3.fx = 17; 
x4.fx = 7; 
x5.fx = 17; 
x6.fx = 22; 
x7.fx = 26; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;