*  NLP written by GAMS Convert at 07/02/05 18:32:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10       10        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        101       81       20        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    0.5*x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

e2..    x1 + 0.5*x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

e3..    x1 + x2 + 0.5*x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

e4..    x1 + x2 + x3 + 0.5*x4 + x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

e5..    x1 + x2 + x3 + x4 + 0.5*x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

e6..    x1 + x2 + x3 + x4 + x5 + 0.5*x6 + x7 + x8 + x9 + x10 =E= 1;

e7..    x1 + x2 + x3 + x4 + x5 + x6 + 0.5*x7 + x8 + x9 + x10 =E= 1;

e8..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + 0.5*x8 + x9 + x10 =E= 1;

e9.. sqr(x1) + 0.75*sqr(x2) + 0.6*sqr(x3) + 0.5*sqr(x4) + 0.428571428571429*
     sqr(x5) + 0.375*sqr(x6) + 0.333333333333333*sqr(x7) + 0.3*sqr(x8) + 
     0.272727272727273*sqr(x9) + 0.25*sqr(x10) =E= 4;

e10.. sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + 
      sqr(x8) + sqr(x9) + sqr(x10) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
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
