*  NLP written by GAMS Convert at 03/22/08 22:27:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        6        7        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3;


e1..  - 2*x1 - 2*x2 - 2*x3 =G= 0;

e2..    x1 + x2 =G= 0;

e3..  - (0.25*x2*x2 + 0.25*x3*x3 + 0.25*x4*x4 + 0.25*x5*x5 + 0.25*x6*x6 + 0.25*
     x7*x7 + 0.25*x8*x8 - 0.0940920203427366*x2 - 0.42236029126985*x3 - 
     0.501670019658833*x4 - 0.611214353720234*x5 - 0.788555031107833*x6 - 
     0.978569589047156*x7 - 1.09893582466234*x8) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;