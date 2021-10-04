*  DNLP written by GAMS Convert at 10/06/06 11:33:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        2        6        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2;


e1..  - (0.159159637116027*max(x1,0)*arctan(x2/x1) + min(x1,0)*(0.5 + 
     0.159159637116027*arctan(x2/x1))) + x4 =E= 0;

e2..  - (sqr(10*x3 - 100*x4) + sqr((-10) + 10*sqrt(sqr(x1) + sqr(x2))) + sqr(x3
     )) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
