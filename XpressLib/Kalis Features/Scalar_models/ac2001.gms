*  DNLP written by GAMS Convert at 01/14/09 03:34:42
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        6        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          6        6        0        0
*
*  Solve m using DNLP maximizing objvar;
*


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x1,x2,x3,x4,x5;

Equations  e1,e2,e3,e4,e5,e6;


e1..    x1 =E= 1;

e2..    x2 =E= 2;

e3..    x3 =E= 3;

e4..    x4 =E= 0;

e5..    x5 =E= 1;

e6..    objvar =E= 1;

* set non default bounds

x1.up = 10; 
x2.up = 10; 
x3.up = 10; 
x4.up = 10; 
x5.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP maximizing objvar;
