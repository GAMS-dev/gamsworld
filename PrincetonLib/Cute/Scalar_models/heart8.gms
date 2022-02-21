*  NLP written by GAMS Convert at 10/06/06 11:33:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        9        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         53        5       48        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    x1 + x2 =E= -0.69;

e2..    x3 + x4 =E= -0.044;

e3.. x5*x1 + x6*x2 - x7*x3 - x8*x4 =E= -1.57;

e4.. x7*x1 + x8*x2 + x5*x3 + x6*x4 =E= -1.31;

e5.. (x5*x5 - x7*x7)*x1 - 2*x3*x5*x7 + (x6*x6 - x8*x8)*x2 - 2*x4*x6*x8
      =E= -2.65;

e6.. (x5*x5 - x7*x7)*x3 + 2*x1*x5*x7 + (x6*x6 - x8*x8)*x4 + 2*x2*x6*x8 =E= 2;

e7.. x1*x5*(x5*x5 - 3*x7*x7) + x3*x7*(x7*x7 - 3*x5*x5) + x2*x6*(x6*x6 - 3*x8*x8
     ) + x4*x8*(x8*x8 - 3*x6*x6) =E= -12.6;

e8.. x3*x5*(x5*x5 - 3*x7*x7) - x1*x7*(x7*x7 - 3*x5*x5) + x4*x6*(x6*x6 - 3*x8*x8
     ) - x2*x8*(x8*x8 - 3*x6*x6) =E= 9.48;

e9..    objvar =E= 0;

* set non default bounds


* set non default levels

x2.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
