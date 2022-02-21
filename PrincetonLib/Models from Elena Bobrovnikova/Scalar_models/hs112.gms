*  NLP written by GAMS Convert at 06/26/06 16:29:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
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

Equations  e1,e2,e3,e4;


e1..    x1 + 2*x2 + 2*x3 + x6 + x10 =E= 2;

e2..    x4 + 2*x5 + x6 + x7 =E= 1;

e3..    x3 + x7 + x8 + 2*x9 + x10 =E= 1.5;

e4..  - ((-6.089 + log(x1/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10)))*
     x1 + (-17.164 + log(x2/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10))
     )*x2 + (-34.054 + log(x3/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10
     )))*x3 + (-5.914 + log(x4/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + 
     x10)))*x4 + (-24.721 + log(x5/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9
      + x10)))*x5 + (-14.986 + log(x6/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + 
     x9 + x10)))*x6 + (-24.1 + log(x7/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + 
     x9 + x10)))*x7 + (-10.708 + log(x8/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8
      + x9 + x10)))*x8 + (-26.662 + log(x9/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + 
     x8 + x9 + x10)))*x9 + (-22.179 + log(x10/(x1 + x2 + x3 + x4 + x5 + x6 + x7
      + x8 + x9 + x10)))*x10) + objvar =E= 0;

* set non default bounds

x1.lo = 1E-6; 
x2.lo = 1E-6; 
x3.lo = 1E-6; 
x4.lo = 1E-6; 
x5.lo = 1E-6; 
x6.lo = 1E-6; 
x7.lo = 1E-6; 
x8.lo = 1E-6; 
x9.lo = 1E-6; 
x10.lo = 1E-6; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 
x10.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
