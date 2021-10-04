*  NLP written by GAMS Convert at 10/06/06 11:16:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        6        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2;


e1.. 61/POWER(x1,3) + 37/POWER(x2,3) + 19/POWER(x3,3) + 7/POWER(x4,3) + 1/
     POWER(x5,3) =L= 1;

e2..  - 0.0624*x1 - 0.0624*x2 - 0.0624*x3 - 0.0624*x4 - 0.0624*x5 + objvar
      =E= 0;

* set non default bounds

x1.lo = 1E-6; 
x2.lo = 1E-6; 
x3.lo = 1E-6; 
x4.lo = 1E-6; 
x5.lo = 1E-6; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
