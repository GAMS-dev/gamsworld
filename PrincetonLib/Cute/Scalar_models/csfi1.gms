*  NLP written by GAMS Convert at 10/06/06 11:16:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        3        1        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         15        4       11        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x3,x4,x5;

Equations  e1,e2,e3,e4,e5,e6;


e1.. 117.370892*x4/(x2*x1) - x5 =E= 0;

e2.. 0.0208333333333333*sqr(x1)*x5 - x3 =E= 0;

e3.. x2/x1 =L= 2;

e4.. x1*x2 =L= 250;

e5.. x1*x2 =G= 200;

e6..    x4 + objvar =E= 0;

* set non default bounds

x1.lo = 7; 
x2.lo = 0.0001; 
x3.up = 60; 

* set non default levels

x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 
x5.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
