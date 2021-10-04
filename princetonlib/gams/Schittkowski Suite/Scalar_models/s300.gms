*  NLP written by GAMS Convert at 07/02/05 18:32:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21        1       20        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Equations  e1;


e1..  - (x1*(x1 - x2) + x2*(2*x2 - x1 - x3) + x3*(2*x3 - x2 - x4) + x4*(2*x4 - 
     x3 - x5) + x5*(2*x5 - x4 - x6) + x6*(2*x6 - x5 - x7) + x7*(2*x7 - x6 - x8)
      + x8*(2*x8 - x7 - x9) + x9*(2*x9 - x8 - x10) + x10*(2*x10 - x9 - x11) + 
     x11*(2*x11 - x10 - x12) + x12*(2*x12 - x11 - x13) + x13*(2*x13 - x12 - x14
     ) + x14*(2*x14 - x13 - x15) + x15*(2*x15 - x14 - x16) + x16*(2*x16 - x15
      - x17) + x17*(2*x17 - x16 - x18) + x18*(2*x18 - x17 - x19) + x19*(2*x19
      - x18 - x20) + x20*(2*x20 - x19) - 2*x1) + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
