*  NLP written by GAMS Convert at 07/02/05 18:32:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        4        9        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4;


e1..  - (1.2537*(x1*(5.66598*x1 + 2.77141*x2) + x2*(2.77141*x1 + 2.12413*x2))
      - 0.564255*x1 + 0.392417*x2) + x3 =E= 0.13294;

e2..  - (-0.682005*(x1*(5.66598*x1 + 2.77141*x2) + x2*(2.77141*x1 + 2.12413*x2)
     ) - 0.404979*x1 + 0.927589*x2) + x4 =E= -0.244378;

e3..  - (0.51141*(x1*(5.66598*x1 + 2.77141*x2) + x2*(2.77141*x1 + 2.12413*x2))
      - 0.0735084*x1 + 0.535493*x2) + x5 =E= 0.325895;

e4..  - (sqr(x3) + sqr(x4) + sqr(x5)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
