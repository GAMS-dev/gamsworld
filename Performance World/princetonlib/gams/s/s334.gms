*  NLP written by GAMS Convert at 07/02/05 18:32:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          4        1        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - (sqr(0.14 - 1/(15*x2 + x3) - x1) + sqr(0.18 - 2/(14*x2 + 2*x3) - x1) + 
     sqr(0.22 - 3/(13*x2 + 3*x3) - x1) + sqr(0.25 - 4/(12*x2 + 4*x3) - x1) + 
     sqr(0.29 - 5/(11*x2 + 5*x3) - x1) + sqr(0.32 - 6/(10*x2 + 6*x3) - x1) + 
     sqr(0.35 - 7/(9*x2 + 7*x3) - x1) + sqr(0.39 - 8/(8*x2 + 8*x3) - x1) + sqr(
     0.37 - 9/(7*x2 + 7*x3) - x1) + sqr(0.58 - 10/(6*x2 + 6*x3) - x1) + sqr(
     0.73 - 11/(5*x2 + 5*x3) - x1) + sqr(0.96 - 12/(4*x2 + 4*x3) - x1) + sqr(
     1.34 - 13/(3*x2 + 3*x3) - x1) + sqr(2.1 - 14/(2*x2 + 2*x3) - x1) + sqr(
     4.39 - 15/(x2 + x3) - x1)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
