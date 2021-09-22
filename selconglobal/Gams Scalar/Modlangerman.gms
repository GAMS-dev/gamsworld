*  NLP written by GAMS Convert at 11/11/08 09:12:06
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1;


e1.. 0.806*exp(-0.31830988618377*(sqr((-9.681) + x1) + sqr((-0.667) + x2) +
     sqr((-4.783) + x3) + sqr((-9.095) + x4) + sqr((-3.517) + x5) + sqr((-9.325
     ) + x6) + sqr((-6.544) + x7) + sqr((-0.211) + x8) + sqr((-5.122) + x9) +
     sqr((-2.02) + x10)))*cos(3.14159265359*(sqr((-9.681) + x1) + sqr((-0.667)
      + x2) + sqr((-4.783) + x3) + sqr((-9.095) + x4) + sqr((-3.517) + x5) +
     sqr((-9.325) + x6) + sqr((-6.544) + x7) + sqr((-0.211) + x8) + sqr((-5.122
     ) + x9) + sqr((-2.02) + x10))) + 0.517*exp(-0.31830988618377*(sqr((-9.4)
      + x1) + sqr((-2.041) + x2) + sqr((-3.788) + x3) + sqr((-7.931) + x4) +
     sqr((-2.882) + x5) + sqr((-2.672) + x6) + sqr((-3.568) + x7) + sqr((-1.284
     ) + x8) + sqr((-7.033) + x9) + sqr((-7.374) + x10)))*cos(3.14159265359*(
     sqr((-9.4) + x1) + sqr((-2.041) + x2) + sqr((-3.788) + x3) + sqr((-7.931)
      + x4) + sqr((-2.882) + x5) + sqr((-2.672) + x6) + sqr((-3.568) + x7) +
     sqr((-1.284) + x8) + sqr((-7.033) + x9) + sqr((-7.374) + x10))) + 0.1*exp(
     -0.31830988618377*(sqr((-8.025) + x1) + sqr((-9.152) + x2) + sqr((-5.114)
      + x3) + sqr((-7.621) + x4) + sqr((-4.564) + x5) + sqr((-4.711) + x6) +
     sqr((-2.996) + x7) + sqr((-6.126) + x8) + sqr((-0.734) + x9) + sqr((-4.982
     ) + x10)))*cos(3.14159265359*(sqr((-8.025) + x1) + sqr((-9.152) + x2) +
     sqr((-5.114) + x3) + sqr((-7.621) + x4) + sqr((-4.564) + x5) + sqr((-4.711
     ) + x6) + sqr((-2.996) + x7) + sqr((-6.126) + x8) + sqr((-0.734) + x9) +
     sqr((-4.982) + x10))) + 0.908*exp(-0.31830988618377*(sqr((-2.196) + x1) +
     sqr((-0.415) + x2) + sqr((-5.649) + x3) + sqr((-6.979) + x4) + sqr((-9.51)
      + x5) + sqr((-9.166) + x6) + sqr((-6.304) + x7) + sqr((-6.054) + x8) +
     sqr((-9.377) + x9) + sqr((-1.426) + x10)))*cos(3.14159265359*(sqr((-2.196)
      + x1) + sqr((-0.415) + x2) + sqr((-5.649) + x3) + sqr((-6.979) + x4) +
     sqr((-9.51) + x5) + sqr((-9.166) + x6) + sqr((-6.304) + x7) + sqr((-6.054)
      + x8) + sqr((-9.377) + x9) + sqr((-1.426) + x10))) + 0.965*exp(-
     0.31830988618377*(sqr((-8.074) + x1) + sqr((-8.777) + x2) + sqr((-3.467)
      + x3) + sqr((-1.867) + x4) + sqr((-6.708) + x5) + sqr((-6.349) + x6) +
     sqr((-4.534) + x7) + sqr((-0.276) + x8) + sqr((-7.633) + x9) + sqr((-1.567
     ) + x10)))*cos(3.14159265359*(sqr((-8.074) + x1) + sqr((-8.777) + x2) +
     sqr((-3.467) + x3) + sqr((-1.867) + x4) + sqr((-6.708) + x5) + sqr((-6.349
     ) + x6) + sqr((-4.534) + x7) + sqr((-0.276) + x8) + sqr((-7.633) + x9) +
     sqr((-1.567) + x10))) + objvar =E= 0;

* set non default bounds

 x1.up = 10;
 x2.up = 10;
 x3.up = 10;
 x4.up = 10;
 x5.up = 10;
 x6.up = 10;
 x7.up = 10;
 x8.up = 10;
 x9.up = 10;
x10.up = 10;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1

 x1.l = 8.074 ;
 x2.l = 8.777 ;
 x3.l = 3.467 ;
 x4.l = 1.867 ;
 x5.l = 6.708 ;
 x6.l = 6.349 ;
 x7.l = 4.534 ;
 x8.l = 0.276 ;
 x9.l = 7.633 ;
x10.l = 1.567 ;

objvar.l =-0.965 ;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
