*  DNLP written by GAMS Convert at 12/15/08 01:25:59
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
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1;


e1.. exp(-0.503292121044837*max(-1e299,abs((-1) + x1),abs((-1.3) + x2),abs((-
     0.8) + x3),abs(0.4 + x4),abs(1.3 + x5),abs((-1.6) + x6),abs(2 + x7),abs(6
      + x8),abs((-0.5) + x9),abs((-1.4) + x10)))*cos(9.93458826579676*max(-
     1e299,abs((-1) + x1),abs((-1.3) + x2),abs((-0.8) + x3),abs(0.4 + x4),abs(
     1.3 + x5),abs((-1.6) + x6),abs(2 + x7),abs(6 + x8),abs((-0.5) + x9),abs((-
     1.4) + x10)))*(1 + 0.2*sqrt(sqr((-1) + x1) + sqr((-1.3) + x2) + sqr((-0.8)
      + x3) + sqr(0.4 + x4) + sqr(1.3 + x5) + sqr((-1.6) + x6) + sqr(2 + x7) + 
     sqr(6 + x8) + sqr((-0.5) + x9) + sqr((-1.4) + x10))/(0.01 + 
     3.16227766016838*max(-1e299,abs((-1) + x1),abs((-1.3) + x2),abs((-0.8) + 
     x3),abs(0.4 + x4),abs(1.3 + x5),abs((-1.6) + x6),abs(2 + x7),abs(6 + x8),
     abs((-0.5) + x9),abs((-1.4) + x10)))) + objvar =E= 0;

* set non default bounds

x1.lo = -15; x1.up = 15; 
x2.lo = -15; x2.up = 15; 
x3.lo = -15; x3.up = 15; 
x4.lo = -15; x4.up = 15; 
x5.lo = -15; x5.up = 15; 
x6.lo = -15; x6.up = 15; 
x7.lo = -15; x7.up = 15; 
x8.lo = -15; x8.up = 15; 
x9.lo = -15; x9.up = 15; 
x10.lo = -15; x10.up = 15; 

* set non default levels


* set non default marginals
$if not set startsol $goto cont
$goto %startsol%

$label sol1
x1.l =  1.01285997459458  ;
x2.l =  1.31284592740884  ;
x3.l =  0.812859974594591 ;
x4.l = -0.387152990075962 ;
x5.l = -1.31285997459451  ;
x6.l =  1.61285997459438  ;
x7.l = -1.98714002540541  ;
x8.l = -5.98714002540594  ;
x9.l =  0.487140025405665 ;
x10.l=  1.3871400254057   ;

objvar.l = -1.14360886217244 ;

$goto cont

$label cont

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;










