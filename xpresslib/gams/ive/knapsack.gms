*  MIP written by GAMS Convert at 01/17/08 23:45:24
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        1        8        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         17       17        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  b1,b2,b3,b4,b5,b6,b7,b8,objvar;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8;

Equations  e1,e2;


e1..    68.46133664*b1 + 25.09103232*b2 + 18.92422936*b3 + 69.50162776*b4
      + 41.01685352*b5 + 47.29867024*b6 + 61.98003736*b7 + 52.17750072*b8
      =L= 102;

e2..  - 67.1747132*b1 - 105.0375356*b2 - 79.2212117*b3 - 84.9830504*b4
      - 56.7113723*b5 - 149.8117627*b6 - 149.1133039*b7 - 63.0692483*b8
      + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
