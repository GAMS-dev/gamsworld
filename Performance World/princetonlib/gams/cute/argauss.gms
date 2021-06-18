*  NLP written by GAMS Convert at 10/06/06 11:14:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16       16        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         46        1       45        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1.. exp(-0.5*sqr(3.5 - x3)*x2)*x1 =E= 0.0009;

e2.. exp(-0.5*sqr(3 - x3)*x2)*x1 =E= 0.0044;

e3.. exp(-0.5*sqr(2.5 - x3)*x2)*x1 =E= 0.0175;

e4.. exp(-0.5*sqr(2 - x3)*x2)*x1 =E= 0.054;

e5.. exp(-0.5*sqr(1.5 - x3)*x2)*x1 =E= 0.1295;

e6.. exp(-0.5*sqr(1 - x3)*x2)*x1 =E= 0.242;

e7.. exp(-0.5*sqr(0.5 - x3)*x2)*x1 =E= 0.3521;

e8.. exp(-0.5*sqr(-x3)*x2)*x1 =E= 0.3989;

e9.. exp(-0.5*sqr((-0.5) - x3)*x2)*x1 =E= 0.3521;

e10.. exp(-0.5*sqr((-1) - x3)*x2)*x1 =E= 0.242;

e11.. exp(-0.5*sqr((-1.5) - x3)*x2)*x1 =E= 0.1295;

e12.. exp(-0.5*sqr((-2) - x3)*x2)*x1 =E= 0.054;

e13.. exp(-0.5*sqr((-2.5) - x3)*x2)*x1 =E= 0.0175;

e14.. exp(-0.5*sqr((-3) - x3)*x2)*x1 =E= 0.0044;

e15.. exp(-0.5*sqr((-3.5) - x3)*x2)*x1 =E= 0.0009;

e16..    objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.4; 
x2.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
