*  NLP written by GAMS Convert at 10/06/06 11:33:41
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        5        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         14        7        7        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5;


e1..  - 4.2*sqr(sin(x4)) + x1 =E= 0;

e2..  - 4.2*sqr(sin(x5)) + x2 =E= 0;

e3..  - 4.2*sqr(sin(x6)) + x3 =E= 0;

e4..  - 7.2*sqr(sin(x7)) + x1 + 2*x2 + 2*x3 =E= 0;

e5.. x1*x2*x3 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 0.56962131907293; 
x5.l = 0.56962131907293; 
x6.l = 0.56962131907293; 
x7.l = 1.21935153279134; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
