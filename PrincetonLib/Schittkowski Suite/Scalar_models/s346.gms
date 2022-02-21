*  NLP written by GAMS Convert at 07/02/05 18:32:31
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        1        7        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1..  - sqr(x1)*x2 =G= -675;

e2..  - 1e-7*sqr(x1)*sqr(x3) =G= -0.419;

e3.. 2.01e-9*POWER(x1,4)*x2*sqr(x3) + objvar =E= 0;

* set non default bounds

x1.up = 36; 
x2.up = 5; 
x3.up = 125; 

* set non default levels

x1.l = 22.3; 
x2.l = 0.5; 
x3.l = 125; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
