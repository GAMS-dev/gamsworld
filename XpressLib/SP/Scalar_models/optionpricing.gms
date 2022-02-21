*  LP written by GAMS Convert at 09/03/08 03:39:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          8        4        1        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         29       29        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - x1 + x4 - x7 + x8 =E= 0;

e2..  - x2 + x5 - x8 + x9 =E= 0;

e3..  - x3 + x6 - x9 + x10 =E= 0;

e4..    385.243996850244*x10 + 132.312981233744*x14 =G= 285.243996850244;

e5..    137.507645458687*x1 - 132.115188774032*x4 - 107.250818125422*x11
      + 107.250818125422*x12 =L= 0;

e6..    195.132637353889*x2 - 187.480377065501*x5 - 115.027379885723*x12
      + 115.027379885723*x13 =L= 0;

e7..    276.906393340321*x3 - 266.04731909168*x6 - 123.367805995674*x13
      + 123.367805995674*x14 =L= 0;

e8..  - 95*x7 - 100*x11 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
