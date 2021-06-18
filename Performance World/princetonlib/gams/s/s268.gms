*  NLP written by GAMS Convert at 07/02/05 18:32:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        1        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31       26        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - x1 - x2 - x3 - x4 - x5 =G= -5;

e2..    10*x1 + 10*x2 - 3*x3 + 5*x4 + 4*x5 =G= 20;

e3..  - 8*x1 + x2 - 2*x3 - 5*x4 + 3*x5 =G= -40;

e4..    8*x1 - x2 + 2*x3 + 5*x4 - 3*x5 =G= 11;

e5..  - 4*x1 - 2*x2 + 3*x3 - 5*x4 + x5 =G= -30;

e6..  - (x1*(10197*x1 - 12454*x2 - 1013*x3 + 1948*x4 + 329*x5) + x2*(20909*x2
      - 12454*x1 - 1733*x3 - 4914*x4 - 186*x5) + x3*(-1013*x1 - 1733*x2 + 1755*
     x3 + 1089*x4 - 174*x5) + x4*(1948*x1 - 4914*x2 + 1089*x3 + 1515*x4 - 22*x5
     ) + x5*(329*x1 - 186*x2 - 174*x3 - 22*x4 + 27*x5) + 18340*x1 - 34198*x2 + 
     4542*x3 + 8672*x4 + 86*x5) + objvar =E= 14463;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
