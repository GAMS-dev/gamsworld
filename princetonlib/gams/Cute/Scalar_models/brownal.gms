*  NLP written by GAMS Convert at 10/06/06 11:15:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1;


e1..  - (sqr((-11) + 2*x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10) + sqr(
     (-11) + x1 + 2*x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10) + sqr((-11) + 
     x1 + x2 + 2*x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10) + sqr((-11) + x1 + x2
      + x3 + 2*x4 + x5 + x6 + x7 + x8 + x9 + x10) + sqr((-11) + x1 + x2 + x3 + 
     x4 + 2*x5 + x6 + x7 + x8 + x9 + x10) + sqr((-11) + x1 + x2 + x3 + x4 + x5
      + 2*x6 + x7 + x8 + x9 + x10) + sqr((-11) + x1 + x2 + x3 + x4 + x5 + x6 + 
     2*x7 + x8 + x9 + x10) + sqr((-11) + x1 + x2 + x3 + x4 + x5 + x6 + x7 + 2*
     x8 + x9 + x10) + sqr((-11) + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + 2*x9
      + x10) + sqr((-1) + x1*x2*x3*x4*x5*x6*x7*x8*x9*x10)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.5; 
x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 
x5.l = 0.5; 
x6.l = 0.5; 
x7.l = 0.5; 
x8.l = 0.5; 
x9.l = 0.5; 
x10.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
