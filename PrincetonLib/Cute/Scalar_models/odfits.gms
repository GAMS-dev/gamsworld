*  NLP written by GAMS Convert at 10/06/06 11:47:02
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         25       15       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 - x5 =E= 0;

e2..    x2 - x6 =E= 0;

e3..    x3 - x7 =E= 0;

e4..    x2 + x3 - x8 =E= 0;

e5..    x3 + x4 - x9 =E= 0;

e6..    x4 - x10 =E= 0;

e7..  - (0.5*(log(0.0111111111111111*x1)*x1 - x1) + 0.5*(log(
     0.00222222222222222*x2)*x2 - x2) + 0.5*(log(0.00277777777777778*x3)*x3 - 
     x3) + 0.2*(log(x4)*x4 - x4) + 0.666666666666667*(log(0.01*x5)*x5 - x5) + 
     0.666666666666667*(log(0.002*x6)*x6 - x6) + 0.666666666666667*(log(0.0025*
     x7)*x7 - x7) + 0.666666666666667*(log(0.000909090909090909*x8)*x8 - x8) + 
     0.666666666666667*(log(0.00166666666666667*x9)*x9 - x9) + 
     0.666666666666667*(log(0.00142857142857143*x10)*x10 - x10)) + objvar
      =E= 0;

* set non default bounds

x1.lo = 0.1; 
x2.lo = 0.1; 
x3.lo = 0.1; 
x4.lo = 0.1; 
x5.lo = 0.1; 
x6.lo = 0.1; 
x7.lo = 0.1; 
x8.lo = 0.1; 
x9.lo = 0.1; 
x10.lo = 0.1; 

* set non default levels

x1.l = 90; 
x2.l = 450; 
x3.l = 360; 
x4.l = 1; 
x5.l = 100; 
x6.l = 500; 
x7.l = 400; 
x8.l = 1100; 
x9.l = 600; 
x10.l = 700; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
