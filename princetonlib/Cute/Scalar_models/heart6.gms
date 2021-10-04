*  NLP written by GAMS Convert at 10/06/06 11:33:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         37        1       36        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1.. x3*x1 + x4*(-0.816 - x1) - x5*x2 - x6*(-0.017 - x2) =E= -1.826;

e2.. x5*x1 + x6*(-0.816 - x1) + x3*x2 + x4*(-0.017 - x2) =E= -0.754;

e3.. (x3*x3 - x5*x5)*x1 - 2*x2*x3*x5 + (x4*x4 - x6*x6)*(-0.816 - x1) - (-0.034
      - 2*x2)*x4*x6 =E= -4.839;

e4.. (x3*x3 - x5*x5)*x2 + 2*x1*x3*x5 + (x4*x4 - x6*x6)*(-0.017 - x2) + (-1.632
      - 2*x1)*x4*x6 =E= -3.259;

e5.. x1*x3*(x3*x3 - 3*x5*x5) + x2*x5*(x5*x5 - 3*x3*x3) + (-0.816 - x1)*x4*(x4*
     x4 - 3*x6*x6) + (-0.017 - x2)*x6*(x6*x6 - 3*x4*x4) =E= -14.023;

e6.. x2*x3*(x3*x3 - 3*x5*x5) - x1*x5*(x5*x5 - 3*x3*x3) + (-0.017 - x2)*x4*(x4*
     x4 - 3*x6*x6) - (-0.816 - x1)*x6*(x6*x6 - 3*x4*x4) =E= 15.467;

e7..    objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.01; 
x2.l = 0.01; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
