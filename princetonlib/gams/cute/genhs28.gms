*  NLP written by GAMS Convert at 10/06/06 11:32:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        9        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         35       25       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    x1 + 2*x2 + 3*x3 =E= 1;

e2..    x2 + 2*x3 + 3*x4 =E= 1;

e3..    x3 + 2*x4 + 3*x5 =E= 1;

e4..    x4 + 2*x5 + 3*x6 =E= 1;

e5..    x5 + 2*x6 + 3*x7 =E= 1;

e6..    x6 + 2*x7 + 3*x8 =E= 1;

e7..    x7 + 2*x8 + 3*x9 =E= 1;

e8..    x8 + 2*x9 + 3*x10 =E= 1;

e9..  - (sqr(x1 + x2) + sqr(x2 + x3) + sqr(x3 + x4) + sqr(x4 + x5) + sqr(x5 + 
     x6) + sqr(x6 + x7) + sqr(x7 + x8) + sqr(x8 + x9) + sqr(x9 + x10)) + objvar
      =E= 0;

* set non default bounds


* set non default levels

x1.l = -4; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 
x10.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
