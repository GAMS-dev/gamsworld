*  LP written by GAMS Convert at 09/21/07 20:34:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        4        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         28       28        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 + x4 + x7 =E= 2500000;

e2..    x2 + x5 + x8 =E= 1000000;

e3..    x3 + x6 + x9 =E= 1700000;

e4..    x1 + x2 + x3 =L= 3000000;

e5..    x4 + x5 + x6 =L= 3000000;

e6..    x7 + x8 + x9 =L= 3000000;

e7..  - 0.154721813627681*x1 - 0.16423729705258*x2 - 0.161673869595732*x3
      - 0.155975105365106*x4 - 0.162312971007917*x5 - 0.162312971007917*x6
      - 0.157864011822695*x7 - 0.159763622100108*x8 - 0.16423729705258*x9
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
