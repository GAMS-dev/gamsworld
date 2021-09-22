*  NLP written by GAMS Convert at 11/11/08 09:35:11
*
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*
*  Nonzero counts
*      Total    const       NL      DLL
*          6        1        5        0
*
*  Solve m using NLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x1,x2,x3,x4,x5;

Equations  e1;


e1.. 1/(0.806 + sqr((-9.681) + x1) + sqr((-0.667) + x2) + sqr((-4.783) + x3) +
     sqr((-9.095) + x4) + sqr((-3.517) + x5)) + 1/(0.517 + sqr((-9.4) + x1) +
     sqr((-2.041) + x2) + sqr((-3.788) + x3) + sqr((-7.931) + x4) + sqr((-2.882
     ) + x5)) + 1/(0.1 + sqr((-8.025) + x1) + sqr((-9.152) + x2) + sqr((-5.114)
      + x3) + sqr((-7.621) + x4) + sqr((-4.564) + x5)) + 1/(0.908 + sqr((-2.196
     ) + x1) + sqr((-0.415) + x2) + sqr((-5.649) + x3) + sqr((-6.979) + x4) +
     sqr((-9.51) + x5)) + 1/(0.965 + sqr((-8.074) + x1) + sqr((-8.777) + x2) +
     sqr((-3.467) + x3) + sqr((-1.863) + x4) + sqr((-6.708) + x5)) + 1/(0.669
      + sqr((-7.65) + x1) + sqr((-5.658) + x2) + sqr((-0.72) + x3) + sqr((-
     2.764) + x4) + sqr((-3.278) + x5)) + 1/(0.524 + sqr((-1.256) + x1) + sqr((
     -3.605) + x2) + sqr((-8.623) + x3) + sqr((-6.905) + x4) + sqr((-4.584) +
     x5)) + 1/(0.902 + sqr((-8.314) + x1) + sqr((-2.261) + x2) + sqr((-4.224)
      + x3) + sqr((-1.781) + x4) + sqr((-4.124) + x5)) + 1/(0.531 + sqr((-0.226
     ) + x1) + sqr((-8.858) + x2) + sqr((-1.42) + x3) + sqr((-0.945) + x4) +
     sqr((-1.622) + x5)) + 1/(0.876 + sqr((-7.305) + x1) + sqr((-2.228) + x2)
      + sqr((-1.242) + x3) + sqr((-5.928) + x4) + sqr((-9.133) + x5)) + 1/(
     0.462 + sqr((-0.652) + x1) + sqr((-7.027) + x2) + sqr((-0.508) + x3) +
     sqr((-4.876) + x4) + sqr((-8.807) + x5)) + 1/(0.491 + sqr((-2.699) + x1)
      + sqr((-3.516) + x2) + sqr((-5.874) + x3) + sqr((-4.119) + x4) + sqr((-
     4.461) + x5)) + 1/(0.463 + sqr((-8.327) + x1) + sqr((-3.897) + x2) + sqr((
     -2.017) + x3) + sqr((-9.57) + x4) + sqr((-9.825) + x5)) + 1/(0.714 + sqr((
     -2.132) + x1) + sqr((-7.006) + x2) + sqr((-7.136) + x3) + sqr((-2.641) +
     x4) + sqr((-1.882) + x5)) + 1/(0.352 + sqr((-4.707) + x1) + sqr((-5.579)
      + x2) + sqr((-4.08) + x3) + sqr((-0.581) + x4) + sqr((-9.698) + x5)) + 1/
     (0.869 + sqr((-8.304) + x1) + sqr((-7.559) + x2) + sqr((-8.567) + x3) +
     sqr((-0.322) + x4) + sqr((-7.128) + x5)) + 1/(0.813 + sqr((-8.632) + x1)
      + sqr((-4.409) + x2) + sqr((-4.832) + x3) + sqr((-5.768) + x4) + sqr((-
     7.05) + x5)) + 1/(0.811 + sqr((-4.887) + x1) + sqr((-9.112) + x2) + sqr((-
     0.17) + x3) + sqr((-8.967) + x4) + sqr((-9.693) + x5)) + 1/(0.828 + sqr((-
     2.44) + x1) + sqr((-6.686) + x2) + sqr((-4.299) + x3) + sqr((-1.007) + x4)
      + sqr((-7.008) + x5)) + 1/(0.964 + sqr((-6.306) + x1) + sqr((-8.583) + x2
     ) + sqr((-6.084) + x3) + sqr((-1.138) + x4) + sqr((-4.35) + x5)) + 1/(
     0.789 + sqr((-0.652) + x1) + sqr((-2.343) + x2) + sqr((-1.37) + x3) + sqr(
     (-0.821) + x4) + sqr((-1.31) + x5)) + 1/(0.36 + sqr((-5.558) + x1) + sqr((
     -1.272) + x2) + sqr((-5.756) + x3) + sqr((-9.857) + x4) + sqr((-2.279) +
     x5)) + 1/(0.369 + sqr((-3.352) + x1) + sqr((-7.549) + x2) + sqr((-9.817)
      + x3) + sqr((-9.437) + x4) + sqr((-8.687) + x5)) + 1/(0.992 + sqr((-8.798
     ) + x1) + sqr((-0.88) + x2) + sqr((-2.37) + x3) + sqr((-0.168) + x4) +
     sqr((-1.701) + x5)) + 1/(0.332 + sqr((-1.46) + x1) + sqr((-8.057) + x2) +
     sqr((-1.336) + x3) + sqr((-7.217) + x4) + sqr((-7.914) + x5)) + 1/(0.817
      + sqr((-0.432) + x1) + sqr((-8.645) + x2) + sqr((-8.774) + x3) + sqr((-
     0.249) + x4) + sqr((-8.081) + x5)) + 1/(0.632 + sqr((-0.679) + x1) + sqr((
     -2.8) + x2) + sqr((-5.523) + x3) + sqr((-3.049) + x4) + sqr((-2.968) + x5)
     ) + 1/(0.883 + sqr((-4.263) + x1) + sqr((-1.074) + x2) + sqr((-7.286) + x3
     ) + sqr((-5.599) + x4) + sqr((-8.291) + x5)) + 1/(0.608 + sqr((-9.496) +
     x1) + sqr((-4.83) + x2) + sqr((-3.15) + x3) + sqr((-8.27) + x4) + sqr((-
     5.079) + x5)) + 1/(0.326 + sqr((-4.138) + x1) + sqr((-2.562) + x2) + sqr((
     -2.532) + x3) + sqr((-9.661) + x4) + sqr((-5.611) + x5)) + objvar =E= 0;

* set non default bounds

x1.up = 10;
x2.up = 10;
x3.up = 10;
x4.up = 10;
x5.up = 10;

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1
x1.l = 8.025 ;
x2.l = 9.152 ;
x3.l = 5.114 ;
x4.l = 7.621 ;
x5.l = 4.564 ;

objvar.l = -10.4056 ;

$goto cont

$label cont
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
