*  NLP written by GAMS Convert at 10/24/05 19:21:02
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        2        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2;


e1..  - (116*(10000000/(-288000 + 1440*x1)/(10 + x1/x2))**0.86 + 47300*x1/(-200
      + x1)) + objvar =E= -47300;

e2..  - 2100*log10(41.1522633744856/x2) + x1 =E= 0;

* set non default bounds

x1.lo = 900; 
x2.lo = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing objvar;
