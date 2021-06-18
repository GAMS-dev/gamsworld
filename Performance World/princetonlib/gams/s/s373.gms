*  NLP written by GAMS Convert at 07/02/05 18:32:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31       13       18        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1.. exp(-5*x3)*x2 + x1 + x4 =E= 127;

e2.. exp(-3*x3)*x2 + x1 + x5 =E= 151;

e3.. exp(-x3)*x2 + x1 + x6 =E= 379;

e4.. exp(x3)*x2 + x1 + x7 =E= 421;

e5.. exp(3*x3)*x2 + x1 + x8 =E= 460;

e6.. exp(5*x3)*x2 + x1 + x9 =E= 426;

e7..  - (sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + sqr(x8) + sqr(x9)) + objvar
      =E= 0;

* set non default bounds


* set non default levels

x1.l = 300; 
x2.l = -100; 
x3.l = -0.1997; 
x4.l = -127; 
x5.l = -151; 
x6.l = 379; 
x7.l = 421; 
x8.l = 460; 
x9.l = 426; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
