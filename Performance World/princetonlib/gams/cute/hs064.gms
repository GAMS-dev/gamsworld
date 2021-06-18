*  NLP written by GAMS Convert at 10/06/06 11:33:42
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2;


e1.. 4/x1 + 32/x2 + 120/x3 =L= 1;

e2..  - (50000/x1 + 5*x1 + 72000/x2 + 20*x2 + 144000/x3 + 10*x3) + objvar
      =E= 0;

* set non default bounds

x1.lo = 1E-5; 
x2.lo = 1E-5; 
x3.lo = 1E-5; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
