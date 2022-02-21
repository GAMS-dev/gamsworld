*  NLP written by GAMS Convert at 06/26/06 16:29:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          3        1        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1;


e1.. (cos(1 + 2*x1) + 2*cos(2 + 3*x1) + 3*cos(3 + 4*x1) + 4*cos(4 + 5*x1) + 5*
     cos(5 + 6*x1))*(cos(1 + 2*x2) + 2*cos(2 + 3*x2) + 3*cos(3 + 4*x2) + 4*cos(
     4 + 5*x2) + 5*cos(5 + 6*x2)) + objvar =E= 0;

* set non default bounds

x1.lo = -10; x1.up = 10; 
x2.lo = -10; x2.up = 10; 

* set non default levels

x1.l = 4.976; 
x2.l = 4.976; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
