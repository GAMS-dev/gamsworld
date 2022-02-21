*  NLP written by GAMS Convert at 10/06/06 11:32:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3;


e1.. x1 - (0.1136*x1 + 0.3408*x2)*(1 - x1) =E= 0;

e2.. (15*x1 - 7.5*x2)*(1 - x2) + x2 =E= 0;

e3..    objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.5; 
x2.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
