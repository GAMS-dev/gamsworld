*  NLP written by GAMS Convert at 06/27/07 15:16:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        8        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         37       37        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    x1 + x2 + x3 + x4 =E= 75;

e2..    x5 + x6 + x7 + x8 =E= 125;

e3..    x9 + x10 + x11 + x12 =E= 100;

e4..    x1 + x5 + x9 =E= 80;

e5..    x2 + x6 + x10 =E= 65;

e6..    x3 + x7 + x11 =E= 70;

e7..    x4 + x8 + x12 =E= 85;

e8..  - 464*x1 - 513*x2 - 654*x3 - 867*x4 - 352*x5 - 416*x6 - 690*x7 - 791*x8
      - 995*x9 - 682*x10 - 388*x11 - 685*x12 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;