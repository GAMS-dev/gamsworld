*  NLP written by GAMS Convert at 07/27/06 09:26:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         17        9        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1.. 4/x1 + 2.25/x2 + 1/x3 + 0.25/x4 =L= 0.0401;

e2.. 0.16/x1 + 0.36/x2 + 0.64/x3 + 0.64/x4 =L= 0.010085;

e3..    x1 =L= 400000;

e4..    x2 =L= 300000;

e5..    x3 =L= 200000;

e6..    x4 =L= 100000;

e7..  - x1 - x2 - x3 - x4 + objvar =E= 1;

* set non default bounds

x1.lo = 0.001; 
x2.lo = 0.001; 
x3.lo = 0.001; 
x4.lo = 0.001; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
