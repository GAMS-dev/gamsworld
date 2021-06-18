*  NLP written by GAMS Convert at 10/06/06 11:47:12
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


e1..  - (sqr(26.6666666666667 + x1*x2*x3 - 0.5*x1*(1 + x1)*x2*x3*x3 - (1 - exp(
     -log(1 + x3)*x1))*x2) + sqr(60.4444444444444 + x1*x2*x3*(1 - exp(log(1 + 
     x3)*(-1 - x1))) - x1*(1 + x1)*x2*x3*x3) + sqr(71.1111111111111 - x1*(1 + 
     x1)*x2*x3*x3*(1 - exp(log(1 + x3)*(-2 - x1))))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x3.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
