*  NLP written by GAMS Convert at 10/06/06 11:14:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        1        0       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      2        2        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         39       31        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    x1 + x2 =L= 1;

e2..    x3 + x4 =L= 1;

e3..    x5 + x6 =L= 1;

e4..    x7 + x8 =L= 1;

e5..    x1 + x3 + x5 + x7 =L= 2;

e6..    x2 + x4 + x6 + x8 =L= 2;

e7..  - 2*x1 - x3 + x7 =L= 0;

e8..  - 5*x1 - 3*x3 + 3*x5 + x7 =L= 0;

e9..  - x2 + x4 + 3*x6 + 5*x8 =L= 0;

e10..  - x2 + 3*x6 + 2*x8 =L= 0;

e11..  - (2*sqr(x1) + 2*sqr(x2) + 2*sqr(x3) + 2*sqr(x4) + 2*sqr(x5) + 2*sqr(x6)
       + 2*sqr(x7) + 2*sqr(x8) + (-x1*x2) - x2*x3 - x3*x4 - x4*x5 - x5*x6 - x6*
      x7 - x7*x8 - 2*x2 - x3 - 3*x4 - 2*x5 - 4*x6 - 3*x7 - 5*x8) + objvar
       =E= 0;

* set non default bounds

x6.fx = 0; 
x8.fx = 0; 

* set non default levels

x1.l = 0.5; 
x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 
x5.l = 0.5; 
x7.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
