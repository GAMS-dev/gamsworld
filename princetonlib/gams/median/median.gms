*  DNLP written by GAMS Convert at 11/09/04 15:23:55
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          2        2        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          2        1        1        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,objvar;

Equations  e1;


e1..  - (abs((-0.171747132) + x1) + abs((-0.843266708) + x1) + abs((-
     0.550375356) + x1) + abs((-0.301137904) + x1) + abs((-0.292212117) + x1)
      + abs((-0.224052867) + x1) + abs((-0.349830504) + x1) + abs((-0.856270347
     ) + x1) + abs((-0.067113723) + x1) + abs((-0.500210669) + x1) + abs((-
     0.998117627) + x1) + abs((-0.578733378) + x1) + abs((-0.991133039) + x1)
      + abs((-0.762250467) + x1) + abs((-0.130692483) + x1) + abs((-0.639718759
     ) + x1) + abs((-0.159517864) + x1) + abs((-0.250080533) + x1) + abs((-
     0.668928609) + x1)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
