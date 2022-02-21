*  DNLP written by GAMS Convert at 01/14/09 03:34:45
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        0        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      3        3        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          4        1        3        0
*
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - max(x1,x2,x3) + objvar =G= 0;

* set non default bounds

x1.fx = 9; 
x2.fx = 9; 
x3.fx = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
